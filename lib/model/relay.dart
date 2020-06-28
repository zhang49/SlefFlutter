class Relay {
  List<int> status = <int>[];

  Relay({this.status});

  Relay.fromJson(Map<String, dynamic> json) {
    var relay=json['relay'];
    var st = relay['status'];
    status.clear();
    for(var el in st){
      status.add(el);
    }
  }
}
