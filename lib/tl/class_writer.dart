import 'dart:io';

class ClassWriter {
  File file;
  ClassWriter({required this.file});
  write(String s) {
    file.writeAsStringSync(s, mode: FileMode.writeOnlyAppend);
  }
}
