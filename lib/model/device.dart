class Device {
  int id;
  String name;
  int type;
  DateTime creatTime;
  DateTime lastLoginTime;
  int netState;
  String data;

  Device({this.id = 0,
    this.name = "",
    this.type,
    this.creatTime,
    this.lastLoginTime,
    this.netState = 0}) {}
}
