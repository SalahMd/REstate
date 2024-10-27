import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/services/shared_pref.dart';
import 'package:restate/view/widgets/divider.dart';

// ignore: must_be_immutable
class ChangeLanguage extends StatelessWidget{
  Locale? language;
  SharedPref myservices = Get.find();
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                "changelanguage".tr,
                style: TextStyles.w50019(context),
              ),
            ],
          )),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: () {
              changeLang("ar");
              context.pop();
            },
            child: Container(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "arabic".tr,
                        style: TextStyles.bold17(context),
                      ),
                      Container(
                          width: 35.w,
                          height: 35.h,
                          child: Image.asset(AppImages.arabicimage)),
                    ])),
          ),
          MyDivider(),
          GestureDetector(
            onTap: () {
             changeLang("en");

context.pop();            },
            child: Container(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "english".tr,
                    style: TextStyles.bold17(context),
                  ),
                  Container(
                      width: 35.w,
                      height: 35.h,
                      child: Image.asset(AppImages.englishimage))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
