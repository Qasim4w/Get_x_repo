import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_x_repo/data/app_exceptions.dart';
import 'package:get_x_repo/data/network/base_api_services.dart';
import 'package:get_x_repo/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token ;
    token = sp.getString('token');

    try {
      final response =
          await http.get(Uri.parse(url),headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          }).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException(' dynamic');
    } on RequestTimeOut {
      throw TimeoutException('');
    }
    return responseJson;
  }

  Future<dynamic> postApi(var data, String url) async {
    if(kDebugMode){
      print(data);
      print(url);
    }
    dynamic responseJson;

    try {
      final response = await http.post(Uri.parse(url),headers: {
        'Accept': 'application/json',
      },
          body: data);
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('Connect to Internet');
    } on RequestTimeOut {
      throw TimeoutException('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);

        print(responseJson);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        Map<String, dynamic> data = json.decode(response.body);
        if(kDebugMode){
          print(response.body);
        }
        throw FetchDataException(

            data['message']);
    }
  }
}
