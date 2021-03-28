import 'dart:async';

import 'package:diabetes_assistant/src/utils/network.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final baseUrl =
      "http://66.228.55.114:8000"; // @Danford => replace with the respective Url

  Future<String> selfAssessment(String fastingSugar, String postBreakfast) {
    String selfAssessmentUrl = "/api_selfAssessment/";
    return _netUtil.post(baseUrl + selfAssessmentUrl, body: {
      "fasting_sugar": fastingSugar,
      "post_breakfast": postBreakfast
    }).then((dynamic res) {
      return (res["code"].toString());
    });
  }
}
