import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/custom_text_form_filed.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';

class NumberCheck extends StatelessWidget {
  const NumberCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SingleChildScrollView(
        child: Form(
         // key: controller.formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              SafeArea(
                  child: Text(
                "resetyourpassword".tr,
                style: Theme.of(context).textTheme.headlineLarge,
              )),
              SizedBox(
                height: 50.h,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                    padding:
                        EdgeInsetsDirectional.only(start: 15.w, end: 5.w),
                    child: Text(
                      "enternumber".tr,
                      maxLines: 3,
                      style: TextStyles.w50015grey(context),
                    )),
              ),
              Customtextformfiled(
                hintText: "phonenum".tr,
                labelText: "".tr,
                iconData: Icons.phone_outlined,
                controller: null,
                min: 10,
                max: 10,
                isNumber: true,
                isPassword: false,
                isBorder: true,
                isFilled: true,
                isLabel: false,
              ),
              SizedBox(
                height: 60.h,
              ),
              GestureDetector(
                onTap: () {
            //      controller.sendCode();
                },
                child: Container(
                  width: Dimensions.screenWidth(context),
                  height: 40.h,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  alignment: Alignment.center,
                  decoration: AppButtons.buttonDecoration,
                  child: Text(
                    "send".tr,
                    style: TextStyles.w50016White(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),);
  }
}