import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/utils/app_state.dart';
import '../../data/models/auth_model.dart';
import '../../domain/usecases/register_local.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find();

  final RegisterLocal _registerLocal;

  RegisterController(this._registerLocal);

  final username = ''.obs;
  final email = ''.obs;
  final phone = ''.obs;
  final password = ''.obs;
  final retypedPassword = ''.obs;
  final appState = Rx<AppState>(AppState.IDLE);

  final showPassword = true.obs;
  final showConfirmPassword = true.obs;

  void toggleShowPassword() => showPassword.value = !showPassword.value;
  void toggleShowConfirmPassword() => showConfirmPassword.value = !showConfirmPassword.value;

  void changeUsername(String value) => username.value = value;

  void changeEmail(String value) => email.value = value;

  void changePhone(String value) => phone.value = value;

  void changePassword(String value) => password.value = value;

  void changeRetypedPassword(String value) => retypedPassword.value = value;

  void registerLocal() async {
    try {
      appState.value = AppState.LOADING;
      Either<Failure, AppModel> app = await _registerLocal(Params(
          username: username.value.trim(),
          email: email.value,
          phone: phone.value,
          password: password.value,
          retypedPassword: retypedPassword.value));
      appState.value = AppState.DONE;

      if (app.isRight()) {
        appState.value = AppState.DONE;
        Get.offAllNamed(Routers.home);
      } else {
        appState.value = AppState.ERROR;
        Get.snackbar(
          'Register Failed',
          app.fold((l) => l.getErrorMessage(), (r) => null),
          colorText: Colors.white,
          backgroundColor: Colors.red,
        );
      }
      // AuthStore.to.save(app);
      // Get.offAllNamed(Routers.login, arguments: {"register": "success"});
    } catch (e) {
      Get.snackbar(
        'Error',
        '',
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
      appState.value = AppState.ERROR;
    }
  }

  bool get usernameIsValid {
    if (username.value.isNotEmpty && username.value.length < 3) return false;
    return true;
  }

  bool get emailIsValid {
    if (email.value.isNotEmpty && !GetUtils.isEmail(email.value)) return false;
    return true;
  }

  bool get phoneIsValid {
    if ((phone.value.length < 10 || !GetUtils.isPhoneNumber(phone.value)) && phone.value.isNotEmpty)
      return false;
    return true;
  }

  bool get passwordIsValid {
    if (password.value.isNotEmpty && password.value.length < 6) return false;
    return true;
  }

  bool get retypedPasswordIsValid {
    if (!equals(retypedPassword.value, password.value) && retypedPassword.value.isNotEmpty) return false;
    return true;
  }

  bool get formRegisterIsValid =>
      usernameIsValid &&
      emailIsValid &&
      phoneIsValid &&
      passwordIsValid &&
      retypedPasswordIsValid &&
      username.value.isNotEmpty &&
      email.value.isNotEmpty &&
      phone.value.isNotEmpty &&
      password.value.isNotEmpty &&
      retypedPassword.value.isNotEmpty;
}
