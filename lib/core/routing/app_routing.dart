import 'package:flutter/material.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/view/screens/auth/login/login.dart';
import 'package:restate/view/screens/auth/sign_up/sign_up.dart';
import 'package:restate/view/screens/nav_bar.dart';
import 'package:restate/view/screens/onboarding/onboarding.dart';
import 'package:restate/view/screens/place_info/item_info.dart';
import 'package:restate/view/screens/settings/change_language.dart';
import 'package:restate/view/screens/settings/dark_mode.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => ButtomBar(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.changeLanguage:
        return MaterialPageRoute(builder: (_) => ChangeLanguage());
      case Routes.changeMode:
        return MaterialPageRoute(builder: (_) => DarkMode());
      case Routes.placeInfo:
        return MaterialPageRoute(builder: (_) => PlaceInfo());
      default:
        return null;
    }
  }
}
