import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/functions/dimenesions.dart';

// ignore: must_be_immutable
class ImageView extends StatelessWidget {
  final List images;
  int currentPage;
  final PageController controller;
  ImageView(
      {super.key,
      required this.images,
      required this.currentPage,
      required this.controller,
     });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.screenWidth(context),
      height: 340.h,
      child: PageView.builder(
        controller: controller,
        onPageChanged: (val) {
        //  pageController.onPageChanged(val);
        },
        itemCount: images.length,
        itemBuilder: (context, int i) => Container(
          width: Dimensions.screenWidth(context),
          height: 340.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: Image.asset(
              images[i],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
