import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/buttons.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/core/functions/dimenesions.dart';
import 'package:restate/view/screens/add_place/add_images.dart';
import 'package:restate/view/screens/add_place/info.dart';
import 'package:restate/view/screens/add_place/main_info.dart';
import 'package:restate/view/widgets/divider.dart';

class AddPlace extends StatefulWidget {
  const AddPlace({super.key});

  @override
  State<AddPlace> createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      // key: controller.formState,
      child: Column(children: [
        SizedBox(
          height: 20.h,
        ),
        // SafeArea(
        //   child: Text(
        //     "addplace".tr,
        //     style: TextStyles.bold17(context),
        //   ),
        // ),

        SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w),
            child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text("fillyourplaceinfo".tr,
                    style: TextStyles.w50018(context))),
          ).animate().fade(duration: 1000.ms).saturate(),
        ),
        //           RentOrSaleChooser(
        // controller: controller,
        //           ).animate().fade(duration: 1000.ms).saturate(),
        SizedBox(height: 20.h),
        MainInfo(),
        Info(
          title: 'description'.tr,
        ),
        MyDivider(),
        Info(
          title: 'additional information'.tr,
        ),
        MyDivider(),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "addimages".tr,
                  style: TextStyles.bold14(context),
                ),
                // Text("${context.read<AddPlaceCubit>().images.length}/10",
                //     style: TextStyles.w40014grey(context))
              ],
            ),
          ),
        ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        SizedBox(
          height: 20.h,
        ),
        Align(
                alignment: AlignmentDirectional.centerStart,
                child: AddImages(
                    // images: const [],

                    ))
            .animate()
            .fade(duration: (600.ms))
            .slideY(begin: -0.5),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        // const AdditionalInfo()
        //   .animate()
        //  .fade(duration: (600.ms))
        // .slideY(begin: -0.5),

        GestureDetector(
          onTap: () {},
          child: Container(
            width: Dimensions.screenWidth(context),
            height: 40.h,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            alignment: Alignment.center,
            decoration: AppButtons.buttonDecoration,
            child: Text(
              "confirm".tr,
              style: TextStyles.w50016White(context),
            ),
          ),
        ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
      ]),
    )));
  }
}
