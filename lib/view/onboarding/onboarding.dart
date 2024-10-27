import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/static.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/core/services/shared_pref.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  PageController pageController = PageController();
  SharedPref multiService = Get.find();

  void next() {
    currentPage++;
    if (currentPage > onbordingModel.length - 1) {
      multiService.sharedPreferences.setString("step", "1");
      context.pushReplacementNamed(
        Routes.loginScreen,
      );
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
    }
  }

  onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: Dimensions.screenHeight(context) - 150.h,
        width: Dimensions.screenWidth(context),
        child: PageView.builder(
            controller: pageController,
            onPageChanged: (val) {
              onPageChanged(val);
            },
            itemCount: onbordingModel.length,
            itemBuilder: (context, int i) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80.h,
                    ),
                    SafeArea(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40.w),
                        width: Dimensions.screenWidth(context),
                        height: 250.h,
                        child: Image.asset(
                          onbordingModel[i].image!,
                          fit: BoxFit.cover,
                        )
                            .animate()
                            .fade(
                              duration: 1200.ms,
                            )
                            .slideY(begin: 0.1, curve: Curves.easeInOut),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsetsDirectional.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      child: Text(
                        onbordingModel[i].title!,
                        style: TextStyles.bold20(context),
                        textAlign: TextAlign.center,
                      ),
                    )
                        .animate()
                        .animate()
                        .fade(duration: 800.ms, delay: 400.ms)
                        .slideY(begin: 0.5),
                    SizedBox(height: 10.h),
                    Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            margin: const EdgeInsetsDirectional.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              onbordingModel[i].body!,
                              textAlign: TextAlign.center,
                              style: TextStyles.w40014grey(context),
                            ))
                        .animate()
                        .animate()
                        .fade(duration: 800.ms, delay: 400.ms)
                        .slideY(begin: 0.5),
                  ],
                )),
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  onbordingModel.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 700),
                        width: currentPage == index ? 20 : 8,
                        height: 8,
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: LightAppColors.primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 40.h)),
          ElevatedButton(
            onPressed: () {
              next();
            },
            style: AppButtons.onboardingButtonStyle,
            child: Text(
              "continuebutton".tr,
              style: TextStyles.w50016White(context),
            ),
          ).animate().fade(duration: 500.ms).slideY(begin: 0.5),
        ],
      )
    ]));
  }
}
