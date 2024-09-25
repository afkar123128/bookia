import 'dart:convert';
import 'dart:math';

import 'package:bookia/core/constants/constants.dart';
import 'package:bookia/feature/auth/data/models/request/login_model.dart';
import 'package:bookia/feature/auth/data/models/response/loginresponse/modelrespone.dart';
import 'package:bookia/core/constants/auth_endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class authrepo {
  static Future<Modelrespone?> register(loginmodelparams params) async {
    try {
      var url = Uri.parse(Appconstant.baseurl + authendpoint.register);
      var response = await http.post(url, body: params.toJson());
      if (response.statusCode == 200) {
        var jsonresponse=jsonDecode(response.body);
  var model= Modelrespone.fromJson(jsonresponse);
 
        return model;
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString() as num);
      return null;
    }
  }
  static Future<Modelrespone?> login(loginmodelparams params) async {
    try {
      var url = Uri.parse(Appconstant.baseurl + authendpoint.login);
      var response = await http.post(url, body: params.toJson());
      if (response.statusCode == 200) {
        var jsonresponse=jsonDecode(response.body);
  var model= Modelrespone.fromJson(jsonresponse);
 
        return model;
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString() as num);
      return null;
    }
  }
}
