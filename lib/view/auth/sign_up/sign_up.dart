import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/auth/sign_up/fields.dart';

import '../../../core/functions/dimenesions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 15.w),
                child: Text(
                  "setupyourprofile".tr,
                  style: TextStyles.bold20(context),
                  //textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: 15.w, top: 10.h, end: 5.w),
                  child: Text(
                    'Createanaccount'.tr,
                    style: TextStyles.w50013grey(context),
                  )),
              Fields(),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  width: Dimensions.screenWidth(context),
                  height: 40.h,
                  decoration: AppButtons.buttonDecoration,
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  alignment: Alignment.center,
                  child: Text('signup'.tr,
                      style: TextStyles.w50016White(context))),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("alreadyhaveaccount ".tr,
                        style: TextStyles.w40012grey(context)),
                    Text(
                      "login".tr,
                      style: TextStyles.w50011blue(context),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
