import 'package:get/get.dart';
import 'package:restate/core/localization/arabic_language.dart';
import 'package:restate/core/localization/english_language.dart';


class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": arabic,
        "en":english
      };
}
