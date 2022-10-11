import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/usecases/usecase.dart';
import 'package:tekoop/core/utils/app_state.dart';
import 'package:tekoop/features/user/domain/usecases/get_fb_profile.dart';
import 'package:tekoop/features/user/domain/usecases/google_sign_in_account.dart';
import 'package:tekoop/features/user/domain/usecases/login_with_read_permissions.dart';
import 'package:tekoop/features/user/domain/usecases/logout.dart';

class SocialAuthController extends GetxController {
  SocialAuthController(this._getFbProfile, this._loginWithReadPermissions,
      this._googleSignInAcc, this._logout);

  static SocialAuthController get to => Get.find();

  final GetFbProfile _getFbProfile;
  final appState = Rx<AppState>(AppState.IDLE);
  final LoginWithReadPermissions _loginWithReadPermissions;
  final GoogleSignInAcc _googleSignInAcc;
  final Logout _logout;

  final _isLoggedIn = false.obs;

  void navigationToLoginPage() {
    Get.toNamed(Routers.login);
  }

  void navigationToRegisterPage() {
    Get.toNamed(Routers.register);
  }

  void navigationToHomePage() {
    Get.offAndToNamed(Routers.home);
  }

  void loginWithFB() async {
    final result = await _loginWithReadPermissions(NoParams());
    result.fold(
        (l) => print(
            'LoginWithReadPermissions:::::::::::::${l.getErrorMessage()}'),
        (r) async {
      switch (r.status) {
        case FacebookLoginStatus.success:
          final token = r.accessToken.token;
          Get.back();
          final response = await _getFbProfile(Params(token: token));
          response.fold(
              (l) => Get.snackbar(
                    'login failed',
                    l.getErrorMessage(),
                    colorText: Colors.white,
                    backgroundColor: Colors.red,
                  ), (r) {
            _isLoggedIn.value = true;
            Get.snackbar(
              'login',
              'login success',
              colorText: Colors.white,
              backgroundColor: Colors.green,
            );
          });
          break;
        case FacebookLoginStatus.cancel:
          _isLoggedIn.value = false;
          break;
        case FacebookLoginStatus.error:
          _isLoggedIn.value = false;
          break;
      }
    });
    update();
  }

  void googleSignInAccount() async {
    final result = await _googleSignInAcc(NoParams());
    result.fold(
        (l) => Get.snackbar(
              'login failed',
              l.getErrorMessage(),
              colorText: Colors.white,
              backgroundColor: Colors.red,
            ), (r) {
      _isLoggedIn.value = true;
      Get.snackbar(
        'login',
        'login success',
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
    });
  }

  void logout() {
    _isLoggedIn.value = false;
    _logout.logout();
    update();
  }
}
