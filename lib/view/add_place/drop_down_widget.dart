import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/text_styles.dart';
import 'package:restate/view/add_place/logic/cubit/add_place_cubit.dart';


// ignore: must_be_immutable
class DropDownWidget extends StatelessWidget {
  final String title;
  final List<DropdownMenuItem<String>> choices;
  String elementValue;

  DropDownWidget({
    super.key,
    required this.title,
    required this.choices,
    required this.elementValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
            child: Text(title.tr, style: TextStyles.bold14(context),),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 50.h,
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              value: elementValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (String? value) {
                context.read<AddPlaceCubit>().updateDropDownValue(value, title);
              },
              items: choices,
            ),
          ),
        ),
      ],
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}
