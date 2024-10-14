// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:restate/core/constants/colors.dart';
// import 'package:restate/core/functions/dimenesions.dart';


// class AddImages extends StatelessWidget {
//   final List<String> images;
//   const AddImages({super.key, required this.images,});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: SizedBox(
//         width: Dimensions.screenWidth(context),
//         height: 120.h,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 1+1,
//                 itemBuilder: (BuildContext context, int index) {
//                   return index == controller.images.length ||
//                           controller.images.isEmpty
//                       ? GestureDetector(
//                           onTap: () async {
//                             //await controller.pickImage();
//                           },
//                           child: Container(
//                             width: 80.w,
//                             height: 60.h,
//                             margin: EdgeInsets.symmetric(horizontal: 10.w),
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: Theme.of(context)
//                                   .colorScheme
//                                   .primaryContainer,
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Icon(
//                               Icons.add,
//                               size: 35,
//                               color: LightAppColors.greyColor,
//                             ),
//                           ),
//                         )
//                       : Stack(
//                           children: [
//                             Container(
//                               width: 80.w,
//                               height: 120.h,
//                               margin: EdgeInsets.symmetric(horizontal: 10.w),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(15),
//                                 child: Image.file(
//                                   File(
//                                     controller.images[index]
//                                       .path), // Access the path property if it exists
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ).animate().fade().scale(curve: Curves.slowMiddle),
//                             PositionedDirectional(
//                               start: 12.w,
//                               top: 3.h,
//                               child: GestureDetector(
//                                 onTap: () {
//                                   // controller.images.removeAt(index);
//                                   // controller.update();
//                                   // print(controller.images.length);
//                                 },
//                                 child: Icon(
//                                   Icons.cancel_outlined,
//                                   color: Colors.red[800],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
