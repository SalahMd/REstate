import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/services/shared_pref.dart';
import 'package:restate/view/widgets/divider.dart';

class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {

 SharedPref myServices = Get.find();
  late ThemeMode themeMode;
  changeMode(String theme) {
    ThemeMode mode;
    if (theme == "dark") {
      mode = ThemeMode.dark;
    } else {
      mode = ThemeMode.light;
    }
    myServices.sharedPreferences.setString("mode", theme);
    setState(() {
      Get.changeThemeMode(mode);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10.h,
          ),
          SafeArea(
              child: Row(
            children: [
              SizedBox(width: 10.w),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_outlined)),
              SizedBox(width: 10.w),
              Text(
                "choosemode".tr,
                style: TextStyles.bold20(context),
              ),
            ],
          )),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: () {
           changeMode("dark");
            },
            child: Container(
                height: 60.h,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "darkmode".tr,
                        style: TextStyles.bold17(context),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 7.w),
                        child: SizedBox(
                          width: 35.w,
                          height: 35.h,
                          child: Image.asset(
                            AppImages.moon,
                            color: Colors.blue,
                          ),
                          // child: AppAnimations.darkMode,
                        ),
                      ),
                    ])),
          ),
          MyDivider(),
          GestureDetector(
            onTap: () {
              changeMode("light");
            },
            child: Container(
              height: 60.h,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lightmode".tr,
                    style: TextStyles.bold17(context),
                  ),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    margin: EdgeInsetsDirectional.only(end: 3.w),
                    child: Image.asset(
                      AppImages.sun,
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
    
    );
  }
}