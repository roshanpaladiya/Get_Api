import 'dart:convert';

import 'package:api_demo/screens/model/model_class.dart';
import 'package:api_demo/services/http_services.dart';
import 'package:api_demo/utils/api_andpoint.dart';
import 'package:http/http.dart' as http;

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: EndPointRes.photosEndPoint);
      if (response != null && response.statusCode == 200) {
        return imagemodelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
