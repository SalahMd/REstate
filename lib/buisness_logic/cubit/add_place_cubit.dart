import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restate/core/services/shared_pref.dart';

part 'add_place_state.dart';

class AddPlaceCubit extends Cubit<AddPlaceState> {
  AddPlaceCubit() : super(AddPlaceInitial());
  int rentalTerm = 0,numOfBathRooms = 0,numOfKitchens = 0,numOfRooms = 0;
  double space = 0;
  bool sale = false;
  double containerPadding = 105.w;
  int floor = 0;
  List images = [];
   String streetValue = '1', typeValue = '1';
  late TextEditingController price;
  late TextEditingController additionalInfo;
  SharedPref myServices = Get.find();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  updateDropDownValue(String? newValue, String changingElement) {
    if (changingElement == "location") {
      streetValue = newValue!;
    } else if (changingElement == "placetype") {
      typeValue = newValue!;
    }
  }



  Future<void> pickImage() async {
    if (images.length < 10) {
      final picker = ImagePicker();
      XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        print(pickedImage.path);
        images.add(File(pickedImage.path));
      } else {
        print("Image picking canceled");
      }
    } else {
     // await alert("can'taddimages".tr);
    }
  }

  decreaseCount(String increasingElement) {
    if (increasingElement == "bathrooms" && numOfBathRooms > 0) {
      numOfBathRooms--;
    } else if (increasingElement == "kitchens" && numOfKitchens > 0) {
      numOfKitchens--;
    } else if (increasingElement == "rooms" && numOfRooms > 0) {
      numOfRooms--;
    } else if (increasingElement == "rentalterm" && rentalTerm > 0) {
      rentalTerm--;
    }
  }

  increaseCount(String increasingElement) {
    if (increasingElement == "bathrooms" && numOfBathRooms >= 0) {
      numOfBathRooms++;
    } else if (increasingElement == "kitchens" && numOfKitchens >= 0) {
      numOfKitchens++;
    } else if (increasingElement == "rooms" && numOfRooms >= 0) {
      numOfRooms++;
    } else if (increasingElement == "rentalterm" && rentalTerm >= 0) {
      rentalTerm++;
    }
  }

  isSale(bool isSale) {
    sale = isSale;
    if (sale)
      containerPadding = 25.w;
    else
      containerPadding = 105.w;
  }
}
