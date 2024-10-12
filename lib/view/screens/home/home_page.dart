import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/screens/home/categories.dart';
import 'package:restate/view/screens/home/top_bar.dart';
import 'package:restate/view/widgets/place_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(name: "name"),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 15.w),
                child: Text(
                  "Categories",
                  style: TextStyles.bold17(context),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 70.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Categories(
                    name: "apartments".tr,
                    image: AppImages.cat1,
                  ),
                  Categories(
                    name: "offices".tr,
                    image: AppImages.cat3,
                  ),
                  Categories(
                    name: "properties".tr,
                    image: AppImages.cat4,
                  ),
                  Categories(
                    name: "clinics".tr,
                    image: AppImages.cat2,
                  )
                ],
              ).animate().fade(duration: 500.ms).slideY(begin: 0.2),
            ),
            SizedBox(
              height: 15.h,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 15.w),
                child: Text(
                  "Near to you",
                  style: TextStyles.bold17(context),
                ),
              ),
            ),
            PlaceWidget(),
            PlaceWidget(),
            PlaceWidget()
          ],
        ),
      ),
    );
  }
}
