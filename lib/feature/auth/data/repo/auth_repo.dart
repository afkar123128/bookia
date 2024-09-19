import 'dart:math';

import 'package:bookia/core/constants/constants.dart';
import 'package:bookia/feature/auth/data/models/request/login_model.dart';
import 'package:bookia/feature/auth/data/repo/auth_endpoint.dart';
import 'package:http/http.dart' as http;
class authrepo{
static Future<bool>login(loginmodelparams params) async {
  try {
  var url=Uri.parse(Appconstant.baseurl+authendpoint.login);
  var response=  await http.post(url,body:params.toJson());
  if(response.statusCode==200){
    return true;
  }else{
    return false;
  }
} on Exception catch (e) {
  log(e.toString() as num);
return false;
}
}
}