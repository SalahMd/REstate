import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/core/services/shared_pref.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  bool isArabic = false;
  bool isEnglish = false;
  Locale? language;
  SharedPref myservices = Get.put(SharedPref());
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          SafeArea(
            child: Text(
              "chooselanguage".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(
            height: 200.h,
            child: Image.asset(AppImages.language),
          ),
          const Padding(padding: EdgeInsets.only(top: 40)),
          Container(
            width: double.infinity,
            height: Dimensions.screenHeight(context) / 5,
            margin: const EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isArabic = true;
                      isEnglish = false;
                    });

                    changeLang("ar");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context) / 13,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isArabic
                            ? Colors.blue[700]
                            : Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "arabic".tr,
                              style: TextStyles.bold17(context),
                            ),
                            SizedBox(
                                width: 40,
                                height: Dimensions.screenHeight(context) / 14,
                                child: Image.asset(AppImages.arabicimage))
                          ],
                        ),
                      )),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isArabic = false;
                      isEnglish = true;
                    });

                    changeLang("en");
                  },
                  child: Container(
                      width: double.infinity,
                      height: Dimensions.screenHeight(context) / 13,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: isEnglish
                            ? Colors.blue[700]
                            : Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "english".tr,
                              style: TextStyles.bold17(context),
                            ),
                            SizedBox(
                                width: 40,
                                height: Dimensions.screenHeight(context) / 14,
                                child: Image.asset(AppImages.englishimage))
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40.h)),
          GestureDetector(
            onTap: () {
              context.pushReplacementNamed(Routes.onBoardingScreen);
            },
            child: Container(
              width: Dimensions.screenWidth(context),
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LightAppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text("continuebutton".tr,
                  style: TextStyles.w50016White(context)),
            ),
          ),
        ],
      ),
    );
  }
}
