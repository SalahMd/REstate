import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/text_styles.dart';

class Info extends StatelessWidget {
  final String info;
  final String title;

  const Info({super.key, required this.info, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 5.w),
            Text(
              title,
              style: TextStyles.bold16(context),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 7.w),
          child: Text(
            info,
            style: TextStyles.w40012grey(context),
          ),
        )
      ],
    );
  }
}
