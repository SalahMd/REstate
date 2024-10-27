import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/custom_text_form_filed.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/auth/sign_up/drop_down.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Customtextformfiled(
            hintText: 'firstname2'.tr,
            labelText: '',
            iconData: Icons.person_outline,
            controller: null,
            min: 3,
            max: 12,
            isNumber: false,
            isFilled: true,
            isPassword: false),
        Customtextformfiled(
            hintText: 'lastname2'.tr,
            labelText: '',
            iconData: Icons.person_outline,
            controller: null,
            min: 3,
            max: 12,
            isNumber: false,
            isFilled: true,
            isPassword: false),
        Customtextformfiled(
            hintText: 'phone2'.tr,
            labelText: '',
            iconData: Icons.phone_outlined,
            controller: null,
            min: 10,
            max: 10,
            isNumber: true,
            isFilled: true,
            isPassword: false),
        Customtextformfiled(
            hintText: 'password2'.tr,
            labelText: '',
            iconData: Icons.remove_red_eye_outlined,
            controller: null,
            min: 8,
            max: 18,
            isNumber: false,
            isFilled: true,
            isPassword: true),
        Customtextformfiled(
            hintText: 'confirmpassword2'.tr,
            labelText: '',
            iconData: Icons.remove_red_eye_outlined,
            controller: null,
            min: 8,
            max: 18,
            isNumber: false,
            isFilled: true,
            isPassword: true),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Container(
            margin: EdgeInsetsDirectional.only(
              top: 15.h,
              start: 20.w,
            ),
            child: Text(
              "gender".tr,
              style: TextStyles.w50012(context),
            ),
          ),
        ),
        DropDownWidget(
          title: "gender",
          choices: [],
          elementValue: '',
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Container(
            margin: EdgeInsetsDirectional.only(
              top: 15.h,
              start: 20.w,
            ),
            child: Text(
              "location".tr,
              style: TextStyles.w50012(context),
            ),
          ),
        ),
        DropDownWidget(
          title: "location",
          choices: [],
          elementValue: '',
        ),
      ],
    );
  }
}
