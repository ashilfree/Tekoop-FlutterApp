import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../features/user/data/datasources/auth_local_data_source.dart';
import '../../../features/user/data/datasources/auth_remote_data_source.dart';
import '../../../features/user/data/datasources/fb_remote_data_source.dart';
import '../../../features/user/data/datasources/google_remote_data_source.dart';
import '../../../features/user/data/repositories/auth_repository_impl.dart';
import '../../../features/user/domain/repositories/auth_repository.dart';
import '../../../features/user/domain/usecases/auth_local.dart';
import '../../../features/user/domain/usecases/forget_password.dart';
import '../../../features/user/domain/usecases/get_fb_profile.dart';
import '../../../features/user/domain/usecases/google_sign_in_account.dart';
import '../../../features/user/domain/usecases/login_with_read_permissions.dart';
import '../../../features/user/domain/usecases/logout.dart';
import '../../../features/user/domain/usecases/register_local.dart';
import '../../../features/user/presentations/controllers/forget_password_controller.dart';
import '../../../features/user/presentations/controllers/login_controller.dart';
import '../../../features/user/presentations/controllers/register_controller.dart';
import '../../../features/user/presentations/controllers/social_auth_controller.dart';
import '../../network/network_info.dart';
import '../../services/http_client.dart';
import '../../stores/auth_store.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(client: Get.find<HttpClient>()),
      fenix: true,
    );
    Get.lazyPut<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(authStore: Get.find<AuthStore>()),
      fenix: true,
    );
    Get.lazyPut<FbRemoteDataSource>(
      () => FbRemoteDataSourceImpl(
          client: Get.find<HttpClient>(), facebookLogin: FacebookLogin()),
      fenix: true,
    );
    Get.lazyPut<GoogleRemoteDataSource>(
      () => GoogleRemoteDataSourceImpl(
        googleSignIn: GoogleSignIn(),
        client: Get.find<HttpClient>()
          ),
      fenix: true,
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
          localDataSource: Get.find<AuthLocalDataSource>(),
          remoteDataSource: Get.find<AuthRemoteDataSource>(),
          googleRemoteDataSource: Get.find<GoogleRemoteDataSource>(),
          networkInfo: Get.find<NetworkInfo>(),
          fbRemoteDataSource: Get.find<FbRemoteDataSource>()),
      fenix: true,
    );
    Get.lazyPut<AuthLocal>(
      () => AuthLocal(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<RegisterLocal>(
      () => RegisterLocal(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<ForgetPassword>(
      () => ForgetPassword(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<GetFbProfile>(
      () => GetFbProfile(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<LoginWithReadPermissions>(
      () => LoginWithReadPermissions(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<GoogleSignInAcc>(
      () => GoogleSignInAcc(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<Logout>(
      () => Logout(Get.find<AuthRepository>()),
      fenix: true,
    );
    Get.lazyPut<LoginController>(() => LoginController(Get.find<AuthLocal>()),
        fenix: true);
    Get.lazyPut<RegisterController>(
        () => RegisterController(Get.find<RegisterLocal>()),
        fenix: true);
        Get.lazyPut<ForgetPasswordController>(
        () => ForgetPasswordController(Get.find<ForgetPassword>()),
        fenix: true);
    Get.lazyPut<SocialAuthController>(
        () => SocialAuthController(Get.find<GetFbProfile>(),
            Get.find<LoginWithReadPermissions>(), Get.find<GoogleSignInAcc>(), Get.find<Logout>()),
        fenix: true);
  }
}
