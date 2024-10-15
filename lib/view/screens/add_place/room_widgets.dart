import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/constants/text_styles.dart';

class RoomWidgets extends StatefulWidget {
  final String title;
  final IconData icon;
  const RoomWidgets({super.key, required this.title, required this.icon});

  @override
  State<RoomWidgets> createState() =>
      _RoomWidgetsState(title: title, icon: icon);
}

class _RoomWidgetsState extends State<RoomWidgets> {
  final String title;
  final IconData icon;
  int rentalTerm = 0, numOfBathRooms = 0, numOfKitchens = 0, numOfRooms = 0;
  _RoomWidgetsState({
    required this.title,
    required this.icon,
  });
  decreaseCount() {
    setState(() {
      if (title == "bathrooms" && numOfBathRooms > 0) {
        numOfBathRooms--;
      } else if (title == "kitchens" && numOfKitchens > 0) {
        numOfKitchens--;
      } else if (title == "rooms" && numOfRooms > 0) {
        numOfRooms--;
      } else if (title == "rentalterm" && rentalTerm > 0) {
        rentalTerm--;
      }
    });
  }

  increaseCount() {
    setState(() {
      if (title == "bathrooms" && numOfBathRooms >= 0) {
        numOfBathRooms++;
      } else if (title == "kitchens" && numOfKitchens >= 0) {
        numOfKitchens++;
      } else if (title == "rooms" && numOfRooms >= 0) {
        numOfRooms++;
      } else if (title == "rentalterm" && rentalTerm >= 0) {
        rentalTerm++;
      }
    });
  }

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
            Text(numOfRooms.toString()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    increaseCount();
                  },
                  child: const Icon(
                    Icons.arrow_upward_outlined,
                    size: 20,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      decreaseCount();
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
