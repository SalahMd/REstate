import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/custom_text_form_filed.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/routing/routes.dart';
import 'package:restate/view/auth/login/logic/cubit/login_cubit.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    BlocProvider.of<LoginCubit>(context).getFCMToken();
    super.initState();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is LoginLoading) {
//       return build(context);
      } else if (state is LoginOffline) {
        //return buildNoInternet(context);
      } else {
        //return buildFail(context);
      }
      return build(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: BlocProvider.of<LoginCubit>(context).formState,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: Dimensions.screenWidth(context),
                  height: 260.h,
                  child: Image.asset(
                    AppImages.logoRemovedBackground2,
                    fit: BoxFit.cover,
                    height: 250.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 15.w,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'fillyourinformationtologin'.tr,
                      style: TextStyles.w50015(context),
                    ),
                  ),
                ),
                Customtextformfiled(
                  hintText: "phone2".tr,
                  labelText: '',
                  iconData: Icons.phone_outlined,
                  controller: context.read<LoginCubit>().phoneNumber,
                  min: 10,
                  max: 10,
                  isNumber: true,
                  isPassword: false,
                  isFilled: true,
                  isLabel: false,
                ),
                Customtextformfiled(
                  hintText: "password2".tr,
                  labelText: '',
                  iconData: Icons.remove_red_eye_outlined,
                  controller: context.read<LoginCubit>().password,
                  min: 8,
                  max: 18,
                  isNumber: false,
                  isPassword: true,
                  isFilled: true,
                  isLabel: false,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 15.w, top: 10.h),
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'forgotyourpassword'.tr,
                      style: TextStyles.w50011blue(context),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.pushReplacementNamed(Routes.homeScreen);
                  },
                  child: Container(
                      width: Dimensions.screenWidth(context),
                      height: 40.h,
                      decoration: AppButtons.buttonDecoration,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
                      alignment: Alignment.center,
                      child: Text('login'.tr,
                          style: TextStyles.w50016White(context))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('createaccount'.tr,
                        style: TextStyles.w40012grey(context)),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.signUpScreen);
                      },
                      child: Text(
                        'signup'.tr,
                        style: TextStyles.w50011blue(context),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
