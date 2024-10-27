import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';

class Info extends StatelessWidget {
  final String title;
  const Info({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsetsDirectional.symmetric(horizontal: 10.w),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              title,
              style: TextStyles.bold14(context),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: Dimensions.screenWidth(context),
          height: 150.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            maxLines: 3,
            maxLength: 100,
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        )
      ],
    );
  }
}
