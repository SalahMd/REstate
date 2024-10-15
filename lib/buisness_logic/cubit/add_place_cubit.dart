import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restate/core/services/shared_pref.dart';

part 'add_place_state.dart';

class AddPlaceCubit extends Cubit<AddPlaceState> {
  AddPlaceCubit() : super(AddPlaceInitial());
 
  double space = 0;
  bool sale = false;
  double containerPadding = 105.w;
  int floor = 0;
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



  



  isSale(bool isSale) {
    sale = isSale;
    if (sale)
      containerPadding = 25.w;
    else
      containerPadding = 105.w;
  }
}
