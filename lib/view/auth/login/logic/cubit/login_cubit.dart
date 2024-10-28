import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:restate/core/helpers/handeling_data.dart';
import 'package:restate/core/request_status/request_status.dart';
import 'package:restate/view/auth/login/data/repos/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  RequestStatus? statusRequest;
  final LoginRepo loginRepo;
  String deviceToken = "";
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  LoginCubit(this.loginRepo) : super(LoginInitial());

  void login() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      emit(LoginLoading());
      var response = await loginRepo.login({
        "phone_number": phoneNumber.text,
        "password": password.text,
        "device_token": deviceToken
      });
      statusRequest = handelingData(response);
      if (RequestStatus.success == statusRequest) {
        //  emit(HomePageSuccess(transformations));
      } else if (RequestStatus.offline == statusRequest) {
        emit(LoginOffline());
      } else {
        emit(LoginFailed());
      }
    }
  }
  getFCMToken() async {
    String? FCMToken;
    FirebaseMessaging.instance.getToken().then((value) {
      FCMToken = value;
      print("token is" + FCMToken!);
      deviceToken = FCMToken!;
    });
  }
  goToPhoneVerify() {
    // Get.offNamed("EmailVerification",
    //     arguments: {"email": emailController.text, "checkfor": "emailverify"});
  }

}
