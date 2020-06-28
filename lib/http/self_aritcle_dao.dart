import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutterapp/model/article.dart';
import 'package:flutterapp/model/self_article.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

var basUrl = 'http://zzcpersonal.tpddns.cn:18080';
var getAriticleListUrl =
    'http://zzcpersonal.tpddns.cn:18080/article-request/get-list';

class SelfArticleDao {
  static Future<List<SelfArticle>> GetList() async {
    Map paramsMap = new Map();
    var dio = Dio();
    var cookieJar = CookieJar();
    dio.interceptors.add(await CookieManager(cookieJar));
    var rr = await dio.get(basUrl);
    var dd = rr.data.toString();
    var bIdx = dd.indexOf('X-CSRF-TOKEN" content="') +
        'X-CSRF-TOKEN" content="'.length;
    var x_csrf_token = dd.substring(bIdx, dd.indexOf('\"', bIdx));
    Map<String, dynamic> headers = Map();
    headers['X-CSRF-TOKEN'] = x_csrf_token;

    final response =
        await dio.post(getAriticleListUrl, options: Options(headers: headers));
    if (response.statusCode == 200) {
      List<SelfArticle> retList = <SelfArticle>[];
      Utf8Decoder utf8decoder = Utf8Decoder(); //fix中文乱码
      var jsonRoot = response.data;
      if (jsonRoot['error'] == 0) {
        var dataList = jsonRoot['data'];
        for (var el in dataList) {
          retList.add(SelfArticle.fromJson(el));
        }
        return retList;
      }
    } else {
      throw Exception("Failed to load travel");
    }
  }
}
