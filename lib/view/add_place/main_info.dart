import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/custom_text_form_filed.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/add_place/room_widgets.dart';
import 'package:restate/view/auth/sign_up/presentation/drop_down.dart';
import 'package:restate/view/widgets/divider.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropDownWidget(
          title: "location",
          choices: [],
          elementValue: '1',
          //controller: controller,
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        DropDownWidget(
          title: "location",
          choices: [],
          elementValue: '1',
          //controller: controller,
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        RoomWidgets(
          title: "rooms",
          icon: Icons.bed_rounded,
          //  controller: controller
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        RoomWidgets(
          title: "kitchens",
          icon: Icons.kitchen_outlined,
          //controller: controller
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        RoomWidgets(
          title: "bathrooms",
          icon: Icons.bathroom_outlined,
          //controller: controller
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        RoomWidgets(
          title: "rentalterm",
          icon: Icons.calendar_month_outlined,
          //controller: controller
        ),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                    child: Text(
                      "space".tr + "  (" + "m".tr + ")".tr,
                      style: TextStyles.bold14(context),
                    ))),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20)),
                    child: Customtextformfiled(
                      hintText: "",
                      labelText: "",
                      iconData: Icons.space_bar_outlined,
                      controller: null,
                      min: 3,
                      max: 5,
                      letters: 4,
                      isNumber: true,
                      isPassword: false,
                      isBorder: false,
                    ))),
          ],
        ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                    child: Text(
                      "price".tr,
                      style: TextStyles.bold14(context),
                    ))),
            Expanded(
                child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: 60.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20)),
                    child: Customtextformfiled(
                      hintText: "",
                      labelText: "",
                      iconData: Icons.attach_money_outlined,
                      controller: null,
                      min: 3,
                      letters: 6,
                      max: 5,
                      isNumber: true,
                      isPassword: false,
                      isBorder: false,
                    ))),
          ],
        ).animate().fade(duration: (600.ms)).slideY(begin: -0.5),
        MyDivider().animate().fade(duration: (600.ms)).slideY(begin: -0.5),
      ],
    );
  }
}
