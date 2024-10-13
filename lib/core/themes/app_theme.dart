import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/colors.dart';

class AppTheme {
  static var darkTheme = ColorScheme.dark(
      primary: DarkAppColors.primaryColor,
      onSecondary: Colors.white,
//     //for numbers after picking in date picker
//     //onPrimary: Colors.indigo,
      surfaceTint: Colors.black,
      primaryContainer: DarkAppColors.whiteColor,
      onPrimaryContainer: Color.fromARGB(255, 53, 52, 52),
//     onErrorContainer: Color(0xFFF9DEDC),
//     outline: Color(0xFF938F99),
      background: Colors.grey[900]!,
//     onBackground: Color.fromARGB(255, 2, 2, 2),
//     surface: Color.fromARGB(255, 52, 50, 50),
      surface: Colors.black.withOpacity(0.2),
      onSurface: Color(0xFFF3F3F3),
      onBackground: Colors.black.withOpacity(0.3)
//     surfaceVariant: Color.fromARGB(255, 222, 52, 30),
//     //for chips after picking
//  //   inversePrimary: Colors.amber,
//     inverseSurface: Colors.white,
//     onInverseSurface: Colors.white,
//     // onSecondaryContainer: Colors.amber,
//     // onTertiaryContainer: Colors.amber,
//     // onTertiary: Colors.amber,
//     // tertiary: Colors.amber,
//     // scrim: Colors.amber,
//     // secondary: Colors.amber,
//     //for dividers
//     outlineVariant: Colors.grey[600],
//  //   secondaryContainer: Colors.amber,
//     //for textfileds
//     onSurfaceVariant: Color.fromARGB(255, 254, 254, 254),
      );

  static ColorScheme lightTheme = ColorScheme.light(
    primary: LightAppColors.primaryColor,
    primaryContainer: LightAppColors.whiteColor,
    onSecondary: Colors.black,
    secondaryContainer: Color.fromARGB(228, 233, 221, 221),

    // onPrimaryContainer: lightAppColors.blackColor,
    background: LightAppColors.backGround,
    // //onPrimary: Colors.indigo,
    // //onSecondary: Colors.indigo,
    onBackground: LightAppColors.whiteColor,
    // //for date picker
    surface: LightAppColors.whiteColor,
    // surface: lightAppColors.whiteColor,
    // surfaceVariant: lightAppColors.blackColor,
    onSurface: LightAppColors.blackColor,

//    secondaryContainer: Colors.amber,
//   onPrimary: Colors.indigo,
//     onSecondary: Colors.indigo,
//     onSecondaryContainer: Colors.amber,
//     onTertiaryContainer: Colors.amber,
//     onTertiary: Colors.amber,
//     tertiary: Colors.amber,
//     scrim: Colors.amber,
//     secondary: Colors.amber,
    //for dividers
  );
  static final light = ThemeData(
      useMaterial3: true,
      colorScheme: lightTheme,
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: "PlayfairDisplay"),
        headlineMedium: TextStyle(
            color: Get.theme.cardColor,
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
            fontFamily: "PlayfairDisplay"),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 17.sp, height: 1.5),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ));
  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkTheme,
  );
}
