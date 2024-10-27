// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';


// class Report extends StatelessWidget {
//   const Report({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(ReportControllerImpl());
//     return Scaffold(
//       body: GetBuilder<ReportControllerImpl>(
//         builder: (controller) => SingleChildScrollView(
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
//                   child: Row(
//                     children: [
//                       GestureDetector(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: Icon(Icons.arrow_back)),
//                       SizedBox(width: 10.w),
//                       Text(
//                         "report".tr,
//                         style: TextStyles.w50019(context),
//                       ),
//                     ],
//                   ),
//                 )),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.w),
//                   child: Text(
//                     "reporttitle".tr,
//                     style: TextStyles.bold17(context),
//                   ),
//                 ),
//                 Customtextformfiled(
//                   hintText: "".tr,
//                   labelText: "",
//                   iconData: null,
//                   controller: controller.reportTitle,
//                   min: 2,
//                   max: 30,
//                   isNumber: false,
//                   isPassword: false,
//                   isBorder: true,
//                   isFilled: true,
//                   isLabel: false,
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.w),
//                   child: Text(
//                     "reportdescription".tr,
//                     style: TextStyles.bold17(context),
//                   ),
//                 ),
//                 Customtextformfiled(
//                   hintText: "".tr,
//                   labelText: "",
//                   iconData: null,
//                   controller: controller.reportbody,
//                   min: 10,
//                   max: 150,
//                   textInputAction: TextInputAction.newline,
//                   isNumber: false,
//                   isPassword: false,
//                   maxLines: 5,
//                   isBorder: true,
//                   isLabel: false,
//                   isFilled: true,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     controller.sendReport();
//                   },
//                   child: Container(
//                     width: Dimensions.screenWidth(context),
//                     height: 40.h,
//                     alignment: Alignment.center,
//                     margin:
//                         EdgeInsets.symmetric(horizontal: 50.w, vertical: 40.h),
//                     decoration: AppButtons.buttonDecoration,
//                     child: Text(
//                       "send".tr,
//                       style: TextStyles.w50016White(context),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
