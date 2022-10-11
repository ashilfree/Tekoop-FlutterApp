import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/utils/app_state.dart';
import '../../data/models/auth_model.dart';
import '../../domain/usecases/auth_local.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final AuthLocal _authLocal;

  LoginController(this._authLocal);

  void navigationToForgetPasswordPage() {
    Get.toNamed(Routers.forgetPassword);
  }

  final username = ''.obs;
  final password = ''.obs;
  final appState = Rx<AppState>(AppState.IDLE);

  final showPassword = true.obs;

  void changeUsername(String value) => username.value = value;

  void changePassword(String value) => password.value = value;

  void toggleShowPassword() => showPassword.value = !showPassword.value;

  Future<void> authLocal() async {
      appState.value = AppState.LOADING;
      Either<Failure, AppModel> app = await _authLocal(Params(
        identifier: username.value.trim(),
        password: password.value,
      ));
      if (app.isRight()) {
        appState.value = AppState.DONE;
        Get.offAllNamed(Routers.home);
        Get.snackbar(
          'login',
          'login success',
          colorText: Colors.white,
          backgroundColor: Colors.green,
        );
      } else {
        appState.value = AppState.ERROR;
        Get.snackbar(
          'login failed',
          app.fold((l) => l.getErrorMessage(), (r) => null),
          colorText: Colors.white,
          backgroundColor: Colors.red,
        );
      }
  }

  bool get usernameIsValid {
    if (username.value.isNotEmpty && username.value.length < 3) return false;
    return true;
  }

  bool get passwordIsValid {
    if (password.value.isNotEmpty && password.value.length < 4) return false;
    return true;
  }

  bool get formLoginIsValid =>
      usernameIsValid &&
      passwordIsValid &&
      username.value.isNotEmpty &&
      password.value.isNotEmpty;
}
