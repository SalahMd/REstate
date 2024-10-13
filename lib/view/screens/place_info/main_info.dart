import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/text_styles.dart';

class MainInfo extends StatelessWidget {
  final String title;
  final int num;
  final IconData icon;
  const MainInfo(
      {super.key, required this.title, required this.num, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        height: 90.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 228, 231, 237),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    num.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyles.w50012(context),
                  ),
                  Text(
                    " " + title,
                    style: TextStyles.w50012(context),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    num.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyles.w50012(context),
                  ),
                  Text(
                    " " + title,
                    style: TextStyles.w50012(context),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    num.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyles.w50012(context),
                  ),
                  Text(
                    " " + title,
                    style: TextStyles.w50012(context),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    num.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyles.w50012(context),
                  ),
                  Text(
                    " " + title,
                    style: TextStyles.w50012(context),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
