import 'package:flutter/material.dart';
import 'package:restate/core/constants/colors.dart';

class AppButtons {
  static ButtonStyle onboardingButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: LightAppColors.primaryColor,
    padding: const EdgeInsets.only(left: 90, right: 90, top: 5, bottom: 5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
  static Decoration buttonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: LightAppColors.primaryColor,
  );
}
