import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/text_styles.dart';

import '../../core/constants/colors.dart';


class ListTiles extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String listText;

  const ListTiles(
      {super.key,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.listText});
  @override
  Widget build(BuildContext context) {
    double circleSize = 30.sp;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: ListTile(
        leading: Container(
            width: circleSize,
            height: circleSize,
            //margin: EdgeInsets.symmetric(vertical: 10.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: LightAppColors.primaryColor),
            child: Icon(
              leadingIcon,
              size: 19.sp,
              color: Colors.white,
            )),
        trailing: Container(
          width: circleSize,
          height: circleSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            trailingIcon,
            size: 18,
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0),
          child: Text(listText, style: TextStyles.bold14(context)),
        ),
      ),
    );
  }
}
