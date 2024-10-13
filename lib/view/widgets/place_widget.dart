import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/constants/colors.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/core/helpers/extensions.dart';
import 'package:restate/core/routing/routes.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        context.pushNamed(Routes.placeInfo);
      },
      child: Container(
        width: Dimensions.screenWidth(context),
        margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primaryContainer),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 180.h,
                        width: Dimensions.screenWidth(context),
                        child: Image.asset(
                          AppImages.img2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.sp),
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.w, vertical: 3.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 8.sp,
                                  height: 8.sp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: LightAppColors.greenColor),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'For sale',
                                  style: TextStyles.w40011(context),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(8.sp),
                              padding: EdgeInsets.all(5.sp),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer),
                              child: Icon(
                                Icons.favorite,
                                size: 17.sp,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Appartment',
                    style: TextStyles.w50015(context),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 17.sp,
                        color: Colors.yellow[700],
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '4.5 ratings',
                        style: TextStyles.w40011grey(context),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20.sp,
                  color: LightAppColors.greyColor,
                ),
                SizedBox(width: 2.w),
                Expanded(
                  child: Text(
                    "Muhajjrin, shatta, Third avenue",
                    style: TextStyles.w40012grey(context),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bed,
                          size: 18.sp,
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          '4',
                          style: TextStyles.w40011(context),
                        )
                      ],
                    ),
                    const Text(
                      '|',
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.living_outlined,
                          size: 18.sp,
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '1',
                          style: TextStyles.w40011(context),
                        )
                      ],
                    ),
                    const Text('|'),
                    Row(
                      children: [
                        Icon(
                          Icons.zoom_in_map_outlined,
                          size: 18.sp,
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          '200 m',
                          style: TextStyles.w40011(context),
                        )
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
