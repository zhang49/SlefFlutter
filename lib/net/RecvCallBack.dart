
class RecvCallBack {
  int type;
  Function(int, Object) csRecv;
  Function(int, int, String, Object) cscRecv;

  RecvCallBack({this.type: -1, this.csRecv, this.cscRecv}) {}
}