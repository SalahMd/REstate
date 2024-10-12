import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restate/core/services/shared_pref.dart';

class MiddleWare {
  int? get priority => 1;
  SharedPref myservices = Get.find();
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: "homeScreen");
    }
    if (myservices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: "login");
    }
    return null;
  }
}
