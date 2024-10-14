import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/text_styles.dart';


class RoomWidgets extends StatelessWidget {
  final String title;
  final int numOfRooms;
  final IconData icon;
  const RoomWidgets(
      {super.key,
      required this.title,
      required this.numOfRooms,
      required this.icon,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                child: Text(
                  title.tr,
                  style: TextStyles.bold14(context),
                ))),
        Expanded(
            child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          height: 45.h,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(icon),
            Text(
              numOfRooms.toString(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                  //  controller.increaseCount(title);
                  },
                  child: const Icon(
                    Icons.arrow_upward_outlined,
                    size: 20,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      //controller.decreaseCount(title);
                    },
                    child: const Icon(Icons.arrow_downward_outlined, size: 20))
              ],
            )
          ]),
        )),
      ],
    ).animate().fade(duration: (600.ms)).slideY(begin: -0.5);
  }
}