// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';


// class CahngePassword extends StatelessWidget {
//   const CahngePassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SingleChildScrollView(
//           child: Form(
//             key: controller.formState,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 SafeArea(
//                     child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10.w),
//                   child: Row(children: [
//                     GestureDetector(
//                         onTap: () {
//                           Get.back();
//                         },
//                         child: Icon(Icons.arrow_back)),
//                     SizedBox(width: 10.w),
//                     Text(
//                       "changepassword".tr,
//                       style: TextStyles.w50019(context),
//                     ),
//                   ]),
//                 )),
//                 Padding(
//                   padding: EdgeInsetsDirectional.only(
//                       start: 15.w, top: 30.h, end: 10.w),
//                   child: Text("Create a new password for your account".tr,
//                       style: TextStyles.w50015(context)),
//                 ),
//                 Customtextformfiled(
//                   hintText: "oldpassword1".tr,
//                   labelText: "oldpassword2".tr,
//                   iconData: Icons.remove_red_eye_outlined,
//                   controller: controller.oldPassword,
//                   min: 8,
//                   max: 30,
//                   isNumber: false,
//                   isPassword: true,
//                   isBorder: true,
//                   padding: 30,
//                 ),
//                 Customtextformfiled(
//                   hintText: "newpassword1".tr,
//                   labelText: "newpassword2".tr,
//                   iconData: Icons.remove_red_eye_outlined,
//                   controller: controller.newPassword,
//                   min: 8,
//                   max: 30,
//                   isNumber: false,
//                   isPassword: true,
//                   isBorder: true,
//                   padding: 30,
//                 ),
//                 Customtextformfiled(
//                   hintText: "confirmnewpassword2".tr,
//                   labelText: "confirmnewpassword1".tr,
//                   iconData: Icons.remove_red_eye_outlined,
//                   controller: controller.confirmNewPassword,
//                   min: 8,
//                   max: 30,
//                   isNumber: false,
//                   isPassword: true,
//                   isBorder: true,
//                   padding: 30,
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.changePassword();
//                   },
//                   child: Container(
//                     width: Dimensions.screenWidth(context),
//                     height: 40.h,
//                     alignment: Alignment.center,
//                     margin:
//                         EdgeInsets.symmetric(horizontal: 50.w, vertical: 40.h),
//                     decoration: AppButtons.buttonDecoration,
//                     child: Text(
//                       "confirm".tr,
//                       style: TextStyles.w50016White(context),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
      
//     );
//   }
// }
