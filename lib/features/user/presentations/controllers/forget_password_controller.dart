import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/utils/app_state.dart';
import '../../domain/usecases/forget_password.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get to => Get.find();

  final ForgetPassword _forgetPassword;

  ForgetPasswordController(this._forgetPassword);

  // @override
  // void onReady() {
  //   if(Get.arguments != null)
  //     Get.snackbar("Register", 'Register has success',colorText: Colors.white,
  //       backgroundColor: Colors.green,);
  //   super.onReady();
  // }

  final email = ''.obs;
  final appState = Rx<AppState>(AppState.IDLE);

  final showPassword = true.obs;

  void changeEmail(String value) => email.value = value;

  Future<void> forgetPassword() async {
    appState.value = AppState.LOADING;
    Either<Failure, String> response =
        await _forgetPassword(Params(email: email.value.trim()));
    response.fold((l) {
      appState.value = AppState.ERROR;
      Get.snackbar(
        'Error!',
        'Retry PLZ!!!',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }, (r){
        if(r.contains('Email not found!')){
          appState.value = AppState.ERROR;  
          Get.snackbar(
            'login failed',
            'Check Your Email PLZ!!!',
            colorText: Colors.white,
            backgroundColor: Colors.red,
          );
        }else{
          appState.value = AppState.DONE;
          Get.offAllNamed(Routers.login);
          Get.snackbar(
            'Forget Password',
            'New password has been send To your email',
            colorText: Colors.white,
            backgroundColor: Colors.green,
          );
        }
    },);
  }

  bool get emailIsValid {
    if (email.value.isNotEmpty && !GetUtils.isEmail(email.value)) return false;
    return true;
  }

  bool get formForgetPasswordIsValid => emailIsValid && email.value.isNotEmpty;
}
