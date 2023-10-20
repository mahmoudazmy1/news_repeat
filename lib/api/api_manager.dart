import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:repeat_news_api/api/api_constants.dart';
import 'package:repeat_news_api/model/sourceResponse.dart';

class ApiManager {
  static Future<SourceResponse?> getSources() async {
    /*
    https://newsapi.org/v2/top-headlines/sources?apiKey=1fb12d9f605e48feb5213f8ac20344c5
     */
    Uri url = Uri.https(ApiConstants.apiFirst, ApiConstants.apiSecond,
        {'apiKey': '1fb12d9f605e48feb5213f8ac20344c5'});
    try {
      var response = await http.get(url);
      String stringBody = response.body;
      var json = jsonDecode(stringBody);
      SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
