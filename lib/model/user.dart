class User {
  bool hasSync = false;
  int id;
  String name;
  DateTime creatTime;
  DateTime lastLoginTime;
  int netState;

  User(
      {this.id = 0,
      this.name = '',
      this.creatTime,
      this.lastLoginTime,
      this.netState = 0});
}
