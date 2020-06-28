import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_des/flutter_des.dart';

class CommMethod{
  static Future<String> desEncrypt(String raw) async {
    const key = "ABCDEFGH";
    const iv = "12345678";
    if(raw==''){
      return '';
    }
    var bytes = await FlutterDes.encrypt(raw, key, iv: iv);
    List<int> data = new List<int>();
    for (var item in bytes) {
      data.add(item);
    }
    String result = base64Encode(data);
    return result;
  }

  static Future<String> getHostName(String hostName, {InternetAddressType type = InternetAddressType.any}) async {
    var httpClient = HttpClient();
    httpClient.connectionTimeout = const Duration(milliseconds: 5000);
    var baseUrl = "https://dns.nextdns.io/";
    var _uri = Uri.parse(baseUrl);
    var query = {'name': hostName};
    // Hide my IP?
    if (false) {
      query['edns_client_subnet'] = '0.0.0.0/0';
    }
    var response;
    try {
      response =
          await http.get(Uri.https(_uri.authority, _uri.path, query), headers: {'accept': 'application/dns-json'});
    } catch (e) {
      print(e.toString);
    }
    String ip;
    if (response != null) {
      var record = jsonDecode(response.body);
      ip = record['Answer'][0]['data'];
    }
    return ip;
  }
  
  static int readInt(List<int> buf, int offset) {
    return ((buf[offset] & 0xff) << 24) +
        ((buf[offset + 1] & 0xff) << 16) +
        ((buf[offset + 2] & 0xff) << 8) +
        (buf[offset + 3] & 0xff);
  }
}