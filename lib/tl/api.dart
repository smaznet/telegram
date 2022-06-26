import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'class_writer.dart';
import 'generation_helpers.dart';

buildApiFromTlSchema() {
  var definitions;
  definitions = loadFromTlSchemas();
  final requestSpaces = [];
  final constructorSpaces = [];
  for (final params in definitions['constructors']) {
    if (params["namespace"] != null) {
      constructorSpaces.add(params['namespace']);
    }
  }
  for (final params in definitions['requests']) {
    if (params["namespace"] != null) {
      requestSpaces.add(params['namespace']);
    }
  }

  final file = new File('lib/tl/all_tl_objects.dart');
  if (!file.existsSync()) {
    file.createSync(recursive: true);
  }
  ClassWriter writer = new ClassWriter(file: file);

  for (final x in requestSpaces.toSet()) {
    writer.write("import 'requests/$x.dart' as $x;\n");
  }
  writer.write("import 'requests/requests.dart';\n");
  for (final x in constructorSpaces.toSet()) {
    writer.write("import 'constructors/$x.dart' as $x;\n");
  }
  writer.write("import 'constructors/constructors.dart';\n");
  writer.write("\nconst int LAYER = ${definitions['layer']};\n");
  writer.write("typedef Generator = Function(dynamic reader);\n\n");
  writer.write("final Map<int, Generator> tlobjects = {");
  for (final tlobject in definitions['constructors']) {
    writer.write(tlobject['constructorId'].toString() + ": (reader)=>");
    if (tlobject['namespace'] != null) {
      writer.write("${tlobject['namespace']}.");
    }
    writer.write("${tlobject['name']}.fromReader(reader),\n");
  }
  for (final tlobject in definitions['requests']) {
    writer.write(tlobject['constructorId'].toString() + ": (reader)=>");
    if (tlobject['namespace'] != null) {
      writer.write("${tlobject['namespace']}.");
    }
    writer.write("${tlobject['name']}.fromReader(reader),\n");
  }
  writer.write("};");
  checkAbstract(definitions['constructors']);
  createClasses('constructors', definitions['constructors']);

  createClasses('requests', definitions['requests']);

  for (final path in imports.keys) {
    List<String> fileImports = Set<String>.from(imports[path]!).toList();
    final output = File(path);
    String append = "// Auto generated file\n\n" +
        fileImports.map((e) => "import $e;").join("\n") +
        "\n\n";
    final String fileData = output.readAsStringSync();
    output.writeAsStringSync(
      append + fileData,
      mode: FileMode.writeOnly,
    );
  }
}

void checkAbstract(definition) {
  Map<String, int> _used = {};
  Set<String> orphans = {};
  for (final classParams in definition) {
    final String name = classParams['name'];
    final String result = classParams['result'];
    if (name.toLowerCase() != result.split(".").last.toLowerCase()) {
      orphans.add(result);
    } else {
      orphans.remove(result);
    }

    _used[result] = (_used[result] ?? 0) + 1;
    if (_used[result]! > 1) {
      abstracts[result] = false;
    }
  }
  orphans.forEach((element) {
    abstracts[element] = false;
  });
}

final tlContent = new File('lib/static/api.tl').readAsStringSync();

final schemeContent = new File('lib/static/schema.tl').readAsStringSync();

extractLayer(String tlContent) {
  final layerRegex = new RegExp(r'^//\s*LAYER\s*(\d+)');
  for (String line in tlContent.split("\n")) {
    if (layerRegex.hasMatch(line)) {
      return layerRegex.allMatches(line).first.group(1);
      throw ("stop");
    }
  }
}

loadFromTlSchemas() {
  var res = extractParams(tlContent);
  var layer = extractLayer(tlContent);
  final constructorParamsApi = res[0];
  final functionParamsApi = res[1];
  res = extractParams(schemeContent);
  final constructorParamsSchema = res[0];
  final functionParamsSchema = res[1];
  final constructors = [constructorParamsApi, constructorParamsSchema]
      .expand((element) => element)
      .toList();
  final requests = [functionParamsApi, functionParamsSchema]
      .expand((element) => element)
      .toList();

  return {'constructors': constructors, 'requests': requests, 'layer': layer};
}

// {name: DestroySession, constructorId: 3880853798, argsConfig: {sessionId: {isVector: false, isFlag: false, skipConstructorId: true,
//flagIndex: -1, flagIndicator: false, type: long, useVectorId: null}}, subclassOfId: 2936858557, result:
//DestroySessionRes, isFunction: true, namespace: null}
String getType(String tgType, bool isVector, [bool isFlag = false]) {
  String result = "";
  if (isVector) {
    result += "List<";
  }

  switch (tgType) {
    case "long":
      result += "BigInt";
      break;
    case "int":
      result += "int";
      break;
    case "int128":
      result += "BigInt";
      break;
    case "int256":
      result += "BigInt";
      break;
    case "double":
      result += "double";
      break;
    case "string":
      result += "String";
      break;
    case "date":
      result += "DateTime";
      break;
    case "bytes":
      result += "List<int>";
      break;
    case "Bool":
      result += "bool";
      break;
    case "X":
      result += "dynamic";
      break;
    case "true":
      result += "bool";
      break;
    default:
      if (tgType.contains("_")) {
        tgType = "dynamic";
      } else {
        String? nameSpace = checkImport(currentFilePath!, tgType);
        String append = "";
        if (abstracts[tgType] != null) {
          append = "Base";
        }
        if (nameSpace != null) {
          tgType = tgType.replaceFirst(nameSpace, nameSpace + "_ns");
        }
        if(tgType == "JSONObjectValue"){
          tgType = "JsonObjectValue";
        }
        tgType += append;
      }
      if (isVector) {
        result += "${tgType}";
      } else {
        result += "${tgType}";
      }
      break;
  }
  if (isVector) {
    result += ">";
  }
  if (isFlag && result != "var") {
    result += "?";
  }

  return result;
}

writeFromReader(writer, name, Map<String, dynamic> argsConfig) {
  //fromReader
  writer.write("\t");

  writer.write("static $name fromReader(BinaryReader reader) {");
  writer.write("\n");
  bool usedLen = false;
  argsConfig.forEach((key, value) {
    if (usedLen == false) {
      if (value["isVector"]) {
        usedLen = true;
      }
    }
  });
  if (usedLen) writer.write("\tvar len;");

  final args = {};
  argsConfig.forEach((argName, arg) {
    if (arg['isFlag']) {
      final num = 1 << arg['flagIndex'];
      if (arg['type'] == 'true') {
        writer.write("final $argName = " +
            ("(flags & ${num})==${num}").toString() +
            ";");
        return;
      }
      writer.write("var $argName;");

      writer.write("if ((flags & " + (num).toString());
      writer.write(") == ${num}){");
      if (!arg['isVector']) {
        writer.write("$argName = ");
      }
      getArgFromReader(writer, arg, argName);
      writer.write(" } else {");
      writer.write("$argName=null;");
      writer.write("}");
    } else {
      if (arg['flagIndicator']) {
        writer.write("final $argName = ");
      } else {
        if (!arg['isVector']) {
          writer.write("var $argName = ");
        }
      }
      getArgFromReader(writer, arg, argName);
    }
  });
  writer.write("\t\t");

  writer.write(
      "return new $name(${argsConfig.keys.where((element) => !((element == "flags" || element == "flags2") && argsConfig[element]['flagIndicator'])).map((e) => "$e : $e").join(", ")});");
  writer.write("\n\t");

  writer.write("}");
}

bool writeArgToBytes(ClassWriter writer, arg, Map<dynamic, dynamic> argsConfig,
    {name: null}) {
  if (arg['genericDefinition'] != null && arg['genericDefinition']) {
    return false;
  }
  if (name == null) {
    name = 'this.${arg['name']}';
  }

  name = variableSnakeToCamelCase(name);
  if (arg['isFlag']) {
    if (arg['type'] == 'true') {
      return false;
    } else if (arg['isVector']) {
      writer.write("($name==null||$name==false)?new List<int>.empty():[");
    } else {
      writer.write("($name==null||$name==false)?new List<int>.empty():[");
    }
  }

  if (arg['isVector']) {
    if (arg['useVectorId']) {
      writer.write(
          "readBufferFromBigInt(0x15c4b51c,4,little:false,signed:false),");
    }
    writer.write(
        "readBufferFromBigInt($name!.length,4,little:true,signed:true),");

    writer.write(("$name!.map((x)=>"));
    final bool oldFlag = arg['isFlag'];
    arg['isVector'] = false;
    arg['isFlag'] = false;
    writeArgToBytes(writer, arg, argsConfig, name: 'x');
    arg['isVector'] = true;
    arg['isFlag'] = oldFlag;
    writer.write(").expand((element) => element)");
  } else if (arg["flagIndicator"]) {
    bool found = false;
    argsConfig.forEach((key, value) {
      if (found) {
        return;
      }
      if (value['isFlag']) {
        found = true;
        writer.write("[0,0,0,0]");
      }
    });
    if (!found) {
      argsConfig.forEach((key, value) {
        if (value['isFlag']) {
          writer.write(
              "(this.${variableSnakeToCamelCase(value['name'])}==null || this.${variableSnakeToCamelCase(value['name'])}==null ? 0 : ${1 << value['flagIndex']} | ");
        }
      });
      writer.write(")");
    }
  } else if (arg['type'] == 'int') {
    writer.write('readBufferFromBigInt($name,4,little:true,signed:true)');
  } else if (arg['type'] == 'long') {
    writer.write('readBufferFromBigInt($name,8,little:true,signed:true)');
  } else if (arg['type'] == 'int128') {
    writer.write('readBufferFromBigInt($name,16,little:true,signed:true)');
  } else if (arg['type'] == 'int256') {
    writer.write('readBufferFromBigInt($name,32,little:true,signed:true)');
  } else if (arg['type'] == 'double') {
    writer.write('readBufferFromBigInt($name,4)');
  } else if (arg['type'] == 'string') {
    writer.write('serializeBytes($name)');
  } else if (arg['type'] == 'Bool') {
    writer.write('[$name == true ? 0xb5757299 : 0x379779bc]');
  } else if (arg['type'] == 'true') {
  } else if (arg['type'] == 'bytes') {
    writer.write('serializeBytes($name)');
  } else if (arg['type'] == 'date') {
    writer.write('serializeDatetime($name)');
  } else {
    writer.write("($name!.getBytes() as List<int>)");

    var boxed = arg['type'][arg['type'].indexOf('.') + 1];
    boxed = boxed == boxed.toUpperCase();

    if (!boxed) {
      writer.write('.sublist(4)');
    }
  }
  if (arg['isFlag']) {
    writer.write("].expand((element) => element).toList()");
    if (arg['isVector']) {
      writer.write("");
    }
  }

  return true;
}

writeGetBytes(ClassWriter writer, String name, argsConfig, constructorId) {
  writer.write("\n\t@override\n\tList<int> getBytes(){");
  final Map<int, List<dynamic>> repeatedArgs = {};
  argsConfig.forEach((argName, arg) {
    if (arg['isFlag']) {
      if (!repeatedArgs.containsKey([arg['flagIndex']])) {
        repeatedArgs[arg['flagIndex']] = [];
      }
      repeatedArgs[arg['flagIndex']]!.add(arg);
    }
  });
  writer.write(
      "return [readBufferFromBigInt(" + constructorId.toString() + ",4),");
  argsConfig.forEach((argName, arg) {
    arg["name"] = argName;
    if (writeArgToBytes(writer, arg, argsConfig)) {
      writer.write(",");
    }
  });
  writer.write("].expand((element) => element).toList();");
  writer.write("}");
}

Map<String, List<String>> imports = {};
Map<String, bool> abstracts = {};
Map<String, List<String>> genericDefinitions = {};
String? currentFilePath;
createClasses(classesType, params) {
  int total = params.length;
  int done = 0;
  for (final classParams in params) {
    final String name = classParams['name'];
    final constructorId = classParams['constructorId'];
    final subclassOfId = classParams['subclassOfId'];
    final Map<String, dynamic> argsConfig = classParams['argsConfig'];
    final namespace = classParams['namespace'];
    final String result = classParams['result'];
    String abstractClassName = result.split(".").last;
    final needAbstract =
        classesType == "constructors" && abstracts.containsKey(result);

    abstractClassName += "Base";
    final file =
        new File('lib/tl/${classesType}/${namespace ?? classesType}.dart');
    var append = "\n\n";
    //Creating files
    if (!file.existsSync()) {
      // append = "part of ${classesType == "requests" ? "request" : "constructor"};\n";
      imports[file.path] = [
        "'../../utils.dart'",
        "'../../extensions/binary_reader.dart'",
        classesType == "requests"
            ? "'../base_request.dart'"
            : "'../base_contructor.dart'"
      ];
      file.createSync(recursive: true);
    }
    currentFilePath = file.path;
    ClassWriter writer = new ClassWriter(file: file);
    writer.write(append);

    if (needAbstract && abstracts[result] == false) {
      writer.write(
          "abstract class $abstractClassName extends BaseConstructor {}\n\n");
      abstracts[result] = true;
    }

    //Declaring classes
    var extend = "";
    if (classesType == "requests") {
      var returnType = getReturnType(result);

      final secondType = returnType.length == 2 ? returnType.last : "dynamic";

      genericDefinitions[name] = [returnType.first!, secondType!];
      extend = "extends BaseRequest<${returnType.first},$secondType> ";
    } else {
      if (needAbstract) {
        extend = "extends $abstractClassName ";
      } else {
        extend = "extends BaseConstructor ";
      }
    }

    writer.write("""class $name $extend{\n""");
    writer.write("""    static const CONSTRUCTOR_ID = $constructorId;
    static const SUBCLASS_OF_ID = $subclassOfId;
    final classType = "${classesType.substring(0, classesType.length - 1)}";
    final ID = $constructorId;
""");
    //Declaring types
    final filtered = [];

    argsConfig.forEach((key, value) {
      if ((key == "flags" || key == "flags2") && value['flagIndicator']) {
        return;
      }
      filtered.add("${value["isFlag"] ? "" : "required "}this.$key");

      writer.write(
          """\t${getType(value['type'], value['isVector'], value["isFlag"])} $key;\n""");
    });
    //Constructor
    argsConfig.forEach((key, value) {});
    writer.write(
        """\n\n\t$name(${argsConfig.length > 0 ? '{${filtered.map((e) => "$e").join(", ")}}' : ''});""");
    writer.write("""\n\n""");
    writeFromReader(writer, name, argsConfig);
    writeGetBytes(writer, name, argsConfig, constructorId);
    writeReadResults(writer, name, argsConfig, classesType, result);
    writeSubAndCatGetter(writer, name, argsConfig);
    writer.write("\n\n");
    writer.write("}");
    print("Progress ${++done}/$total");
  }
}

String? checkImport(
  String currentFilePath,
  String type,
) {
  var importPath = "";
  String? nameSpace;
  if (type.contains(".")) {
    nameSpace =
        type.split(".").first.replaceFirst("List<", "").replaceFirst(">", "");
    importPath = "'../constructors/$nameSpace.dart' as ${nameSpace}_ns";
  } else {
    importPath = "'../constructors/constructors.dart'";
  }
  if (importPath.isNotEmpty) {
    imports[currentFilePath]!.add(importPath);
  }
  return nameSpace;
}

List<String?> getReturnType(String result) {
  if (result == "long") {
    return ['BigInt'];
  }
  if (result == "Bool") {
    return ["bool"];
  } else if (result == "X" || result == "JSONValue" || result.contains("_"))
    return ["dynamic"];

  result = result.replaceFirst("Vector", "List");
  if (result == "List<long>") {
    return ["List<BigInt>", "BigInt"];
  }
  final Match? listType = (RegExp(r"List\<([\w\.]+)\>")).matchAsPrefix(result);

  String? nameSpace = checkImport(currentFilePath!, result);

  if (abstracts[result] != null) {
    result += "Base";
  }

  String? secoundType;
  if (listType != null) {
    if (abstracts[listType.group(1)] != null) {
      result = "List<${listType.group(1)}Base>";
      secoundType = listType.group(1)! + "Base";
    } else {
      secoundType = listType.group(1);
    }
  }
  if (nameSpace != null) {
    result = result.replaceFirst(nameSpace, nameSpace + "_ns");
    if (secoundType != null) {
      secoundType = secoundType.replaceFirst(nameSpace, nameSpace + "_ns");
    }
  }
  return [result, if (secoundType != null) secoundType];
}

void writeSubAndCatGetter(
    ClassWriter write, String name, Map<String, dynamic> argsConfig) {
  write.write(""" @override
  int getConstId() {
    return CONSTRUCTOR_ID;
  }

  @override
  int getSubId() {
    return SUBCLASS_OF_ID;
  }
  @override
  String toString() {
    return '$name{ID: \$ID, ${argsConfig.keys.where((key) => !argsConfig[key]['flagIndicator']).map((key) => "$key: \$$key").join(", ")}}';
  }
  
  """);
}

void writeReadResults(ClassWriter writer, String name,
    Map<String, dynamic> argsConfig, classType, result) {
  if (classType != "requests") {
    return;
  }
  final m = new RegExp(r'Vector<(int|long)>').firstMatch(result);

  print("Func ${name} result: $result");
  if (m == null) {
    writer.write("\n\t@override\n\treadResult(BinaryReader reader) {");
    writer.write("\n\t");
    writer.write(
        "return reader.tgReadObject<${genericDefinitions[name]!.join(",")}>();\n\t}");
    return;
  }
  final type = m.group(1);
  writer.write(
      "\n\t@override\n\tList<${type == "int" ? "int" : "BigInt"}> readResult(BinaryReader reader) {");
  writer.write("\n\t");

  writer.write("\nreader.readInt();");
  writer.write("\nfinal range = reader.readInt();");
  writer
      .write("\nfinal List<${type == "int" ? "int" : "BigInt"}> result = [];");
  writer.write("\n for (int i=0;i<range;i++){\n\t");
  writer.write(
      "result.add(reader.read${type!.substring(0, 1).toUpperCase()}${type.substring(1, type.length)}());");
  writer.write("}\n\treturn result;");
  writer.write("\n\t}");
}

getArgFromReader(ClassWriter writer, arg, argName, {end: true}) {
  if (arg['isVector']) {
    if (arg['useVectorId']) {
      writer.write("var _vector${argName} = reader.readInt();");
      writer.write(
          "if(_vector${argName} != 481674261) throw Exception('Wrong vectorId');");
      writer.write("\n");
    }

    arg['isVector'] = false;
    writer.write("${getType(arg['type'], true)} $argName = [];");
    writer.write("len = reader.readInt();");
    writer.write("\n\t");
    writer.write("for (var i=0;i<len;i++){");
    writer.write("\n\t\t");
    writer.write("$argName.add(");

    getArgFromReader(writer, arg, argName, end: false);
    writer.write(");");

    writer.write("\n}");
    arg['isVector'] = true;
  } else if (arg['flagIndicator']) {
    writer.write("reader.readInt();");
  } else {
    switch (arg['type']) {
      case 'int':
        writer.write("reader.readInt()");
        break;
      case 'long':
        writer.write("reader.readLong()");
        break;
      case 'int128':
        writer.write("reader.readLargeInt(128)");
        break;
      case 'int256':
        writer.write("reader.readLargeInt(256)");
        break;
      case 'double':
        writer.write("reader.readDouble()");
        break;
      case 'string':
        writer.write("reader.tgReadString()");
        break;
      case 'Bool':
        writer.write("reader.tgReadBool()");
        break;
      case 'true':
        writer.write("true");
        break;
      case 'bytes':
        writer.write("reader.tgReadBytes()");
        break;
      case 'date':
        writer.write("reader.tgReadDate()");
        break;
      default:
        if (!arg["skipConstructorId"]) {
          writer.write("reader.tgReadObject()");
        } else {
          writer.write("${snakeToCamelCase(arg['type'])}.fromReader(reader)");
        }
    }
    if (end) {
      writer.write(";");
    }
  }
}

mergeWithNamespaces(obj1, obj2) {
  final result = obj1;
  for (var key in obj2) {
    if (obj2[key] == 'function' || !result[key]) {
      result[key] = obj2[key];
    } else {
      result[key].addAll(obj2[key]);
    }
  }

  return result;
}

extractParams(fileContent) {
  final f = parseTl(fileContent, 109);

  final constructors = [];
  final functions = [];
  for (final d in f) {
    d['isFunction'] ? functions.add(d) : constructors.add(d);
  }
  return [constructors, functions];
}

deleteDir(String path) {
  try {
    new Directory(path).deleteSync(recursive: true);
  } catch (err) {
    print("ERROR: delete $path\n$err");
  }
}

Future formatCode(String path) async {
  var dartPath = Platform.executable;
  var process = await Process.start(
    dartPath,
    ['format', "--fix", path],
  );
  Completer end = Completer();
  process.stdout.listen((event) {
    print(utf8.decode(event));
  }).onDone(() {
    end.complete();
  });
  return end.future;
}

Future fixCode(String path) async {
  var dartPath = Platform.executable;
  var process = await Process.start(
    dartPath,
    ['fix', "--apply", path],
  );
  Completer end = Completer();
  process.stdout.listen((event) {
    print(utf8.decode(event));
  }).onDone(() {
    end.complete();
  });
  return end.future;
}

void main() async {
  List<String> paths = [
    'lib/tl/constructors',
    'lib/tl/requests',
    'lib/tl/all_tl_objects.dart'
  ];
  paths.forEach(deleteDir);
  print("${Directory.current}");
  buildApiFromTlSchema();
  for (final path in paths) {
    await formatCode(path);
  }
  for (final path in paths) {
    await fixCode(path);
  }
}
