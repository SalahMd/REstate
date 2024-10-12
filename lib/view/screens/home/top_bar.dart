import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';

class TopBar extends StatelessWidget {
  final String name;

  const TopBar({
    super.key,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        SafeArea(
            child: Container(
          width: Dimensions.screenWidth(context),
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                // Container(
                //   width: 35.sp,
                //   height: 35.sp,
                //   margin: EdgeInsetsDirectional.only(end: 10.w),
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(30),
                //     child: image != ""
                //         ? Image.network(
                //             image[0] == "h" ? image : AppLinks.IP + image,
                //             fit: BoxFit.cover,
                //           )
                //         : Container(),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: Text(
                    "${"hello".tr} Salah",
                    style: TextStyles.w50015(context),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 18.sp,
                    color: LightAppColors.primaryColor,
                    shadows: [
                      Shadow(
                          color: LightAppColors.greyColor!,
                          offset: const Offset(0.2, 0.3),
                          blurRadius: 0.5)
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: () {
          },
          child: Container(
            width: Dimensions.screenWidth(context),
            height: 45.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.primaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                    offset: const Offset(0, 1),
                  ),
                ]),
            child: Row(children: [
              SizedBox(width: 15.w),
              const Icon(
                Icons.search,
                size: 25,
              ),
              SizedBox(width: 5.w),
              Text("search".tr, style: TextStyles.w40014grey(context))
            ]),
          ),
        )
      ],
    ).animate().fade(duration: 600.ms).slideY(begin: 0.3);
  }
}
