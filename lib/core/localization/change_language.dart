
import 'dart:ui';

import 'package:get/get.dart';
import 'package:restate/core/services/shared_pref.dart';

 getLang() {
  // ignore: unused_local_variable
  Locale? language;
  SharedPref myservices = Get.put(SharedPref());
  String? sharedpreflang = myservices.sharedPreferences.getString("lang");
  if (sharedpreflang == "ar") {
    language = const Locale("ar");
  } else if (sharedpreflang == "en") {
    language = const Locale("en");
  } else {
    language = Locale("en");
  }
  return language;
}