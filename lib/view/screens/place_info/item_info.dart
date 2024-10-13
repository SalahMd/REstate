import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/images.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/view/screens/place_info/info.dart';
import 'package:restate/view/screens/place_info/image_view.dart';
import 'package:restate/view/screens/place_info/main_info.dart';
import 'package:restate/view/widgets/divider.dart';

// ignore: must_be_immutable
class PlaceInfo extends StatelessWidget {
  bool isAppointed;

  PlaceInfo({super.key, this.isAppointed = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ImageView(
                    images: const [
                      AppImages.img1,
                      AppImages.img3,
                      AppImages.img2
                    ],
                    currentPage: 1,
                    controller: PageController(),
                  ),
                  PositionedDirectional(
                      top: 35.h,
                      end: 15.w,
                      child: Container(
                        width: 30.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Icon(Icons.favorite_border_outlined),
                      )),
                  SizedBox(
                    width: 5.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.h),
                    child: Center(
                      child: Text(
                        "Apartment".tr,
                        style: TextStyles.bold17(context),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                      top: 35.h,
                      start: 15.w,
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 30.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      )),
                  Positioned(
                    bottom: 10.h,
                    right: Dimensions.screenWidth(context) / 2.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            3,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 600),
                                  width: 9,
                                  height: 9,
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),

              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Row(children: [
                            const Icon(
                              Icons.location_on,
                              size: 25,
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Muhajjrin",
                              style: TextStyles.w50017(context),
                            ),
                          ])),
                          Expanded(
                            child: Container(
                              margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 8.w),
                              alignment: AlignmentDirectional.centerEnd,
                              child: Text(
                                "4000\$",
                                style: TextStyles.bold17(context),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 10.0),
                        child: Text(
                          "Muhajjrin/Third avenu/Ground floor",
                          style: TextStyles.w50013grey(context),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 5.w),
                          Icon(
                            Icons.star,
                            size: 17.sp,
                            color: Colors.yellow[800],
                          ),
                          SizedBox(width: 5.w),
                          Text("4.7 ratings (1700 reviewers)",
                              style: TextStyles.w40012grey(context))
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     MainInfo(
                      //         title: "rooms".tr,
                      //         num: 3,
                      //         icon: Icons.bed_outlined),
                      //     MainInfo(
                      //         title: "space".tr,
                      //         num: 222,
                      //         icon: Icons.space_bar_outlined)
                      //   ],
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainInfo(
                              title: "bathrooms".tr,
                              num: 2,
                              icon: Icons.bathroom_outlined),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const Info(
                        title: "Description",
                        info:
                            "Simple home with modern architecture and up to-date"
                            " interior located in the ciy center makes it easy for you to access whole city.",
                      ),
                      SizedBox(height: 20.h),

                      MyDivider(),
                      SizedBox(height: 20.h),
                      const Info(
                        title: "additipnal info",
                        info:
                            "Simple home with modern architecture and up to-date"
                            " interior located in the ciy center makes it easy for you to access whole city.",
                      )
                    ]),
              ),
              Column(
                children: [
                  SizedBox(height: 30.h),
                  Center(
                    child: Container(
                      width: 150.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                            ),
                            Text("dwa"
                                //  controller.date.toString(),
                                )
                          ]),
                    ),
                  )
                ],
              ),

              GestureDetector(
                onTap: () async {
                  // controller.date = await selectDate(context);
                  // controller.update();
                },
                child: Center(
                    child: Container(
                        width: Dimensions.screenWidth(context),
                        height: 45.h,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        alignment: Alignment.center,
                        decoration: AppButtons.buttonDecoration,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "makeappointment".tr,
                            textAlign: TextAlign.center,
                            style: TextStyles.w50016White(context),
                          ),
                        ))),
              )
              // : Center(
              //     child: GestureDetector(
              //       onTap: () async {
              //         // controller.dialogConfirming(
              //         //     AppAnimations.question, "confirmorder".tr);
              //       },
              //       child: Container(
              //         alignment: Alignment.center,
              //         width: 150.w,
              //         height: 40.h,
              //         margin: EdgeInsets.symmetric(vertical: 30.h),
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           color: LightAppColors.greenColor,
              //         ),
              //         child: Text(
              //           'confirm'.tr,
              //           style: TextStyles.w50016White(context),
              //         ),
              //       ),
              //     ),
              //   )
              // : Container(
              //     width: Dimensions.screenWidth(context),
              //     height: 50,
              //     alignment: AlignmentDirectional.center,
              //     margin: EdgeInsets.symmetric(
              //         horizontal: 15.w, vertical: 20.h),
              //     decoration: BoxDecoration(
              //       color: LightAppColors.greenColor,
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Text(
              //       "${"yourappointmentison".tr} 13-5-2024",
              //       style: TextStyles.w50012White(context),
              //     ),
              //   ),
            ]),
      ),
    );
  }
}
