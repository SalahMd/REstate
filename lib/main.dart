import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/functions/notification_permission.dart';
import 'package:restate/core/localization/change_language.dart';
import 'package:restate/core/localization/translation.dart';
import 'package:restate/core/routing/app_routing.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/core/services/shared_pref.dart';
import 'package:restate/core/themes/app_theme.dart';
import 'package:restate/core/themes/dark_mode.dart';
import 'package:restate/view/choose_language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  getNotificationPermession();
  getLang();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
  getFCMToken();
}

getFCMToken() async {
  String? FCMToken;
  FirebaseMessaging.instance.getToken().then((value) {
    FCMToken = value;
    print("token is" + FCMToken!);
  });
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    DarkModeImpl themeController = DarkModeImpl();

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(320, 790),
      child: GetMaterialApp(
        locale: getLang(),
        translations: Translation(),
        debugShowCheckedModeBanner: false,
        themeMode: themeController.themeMode,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        initialRoute: Routes.chooseLanguage,
        onGenerateRoute: appRouter.generateRoute,
        home: const ChooseLanguage(),
      ),
    );
  }
}
