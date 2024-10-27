import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/text_styles.dart';

class Categories extends StatelessWidget {
  final String image;
  final String name;

  const Categories({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 120.w,
          height: 50.h,
          margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15),
              boxShadow: []),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 22.w,
                height: 22.h,
                child: Image.asset(
                  image,
                  color: LightAppColors.primaryColor,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                name,
                style: TextStyles.w40011(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
