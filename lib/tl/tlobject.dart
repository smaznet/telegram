abstract class TLObject {
  List<int> getBytes();

  String toString() {
    return "${this.runtimeType}";
  }

  int getConstId();
  int getSubId();
}
