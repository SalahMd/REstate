import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:restate/core/helpers/handeling_data.dart';
import 'package:restate/core/request_status/request_status.dart';
import 'package:restate/view/auth/sign_up/data/repos/sign_up_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  RequestStatus? statusRequest;
  final SignUpRepo signUpRepo;
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  SignUpCubit(this.signUpRepo) : super(SignUpInitial());

  void signUp() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      emit(SignUpLoading());
      var response = await signUpRepo.signUp({
        "phone_number": phoneNumber.text,
        "password": password.text,
        "first_name": firstName.text,
        "last_name":lastName.text
      });
      statusRequest = handelingData(response);
      if (RequestStatus.success == statusRequest) {
        //  emit(HomePageSuccess(transformations));
      } else if (RequestStatus.offline == statusRequest) {
        emit(SignUpOffline());
      } else {
        emit(SignUpFail());
      }
    }
  }
}
