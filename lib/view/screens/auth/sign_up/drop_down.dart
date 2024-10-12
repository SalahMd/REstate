import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restate/core/functions/dimenesions.dart';

// ignore: must_be_immutable
class DropDownWidget extends StatelessWidget {
  final String title;
  final List<DropdownMenuItem<String>> choices;
//  final SignUpControllerImpl controller;
  String elementValue;

  DropDownWidget({
    super.key,
    required this.title,
    required this.choices,
    required this.elementValue,
  //  required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10),
      height: 60.h,
      width: Dimensions.screenWidth(context),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(25),
        iconSize: 20,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        style: TextStyle(
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.onSecondary,
            fontWeight: FontWeight.w500),
        underline: Container(),
        dropdownColor: Theme.of(context).colorScheme.primaryContainer,
        value: elementValue,
        icon: const Icon(Icons.arrow_downward),
        isExpanded: true,
        elevation: 8,
        onChanged: (String? value) {
          //controller.updateDropDownValue(value, title);
        },
        items: choices,
      ),
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}
