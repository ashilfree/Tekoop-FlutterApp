import 'package:get/get.dart';

import '../../features/home/presentations/pages/add_post_page.dart';
import '../../features/home/presentations/pages/detail_page.dart';
import '../../features/home/presentations/pages/home_page.dart';
import '../../features/home/presentations/pages/language_picker_page.dart';
import '../../features/home/presentations/pages/second_splash_page.dart';
import '../../features/home/presentations/pages/splash_page.dart';
import '../../features/user/presentations/pages/forget_password_page.dart';
import '../../features/user/presentations/pages/login_page.dart';
import '../../features/user/presentations/pages/register_page.dart';
import '../../features/user/presentations/pages/social_auth_page.dart';
import 'bindings/auth_binding.dart';
import 'bindings/home_binding.dart';
import 'bindings/language_picker_binding.dart';
import 'routes.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: Routers.initialRoute,
      page: () => AnimatedSplashPage(),
    ),
    GetPage(
      name: Routers.secondSplash,
      page: () => SecondSplashPage(),
      
    ),
    GetPage(
        name: Routers.languagepicker,
        page: () => LanguagePickerPage(),
        binding: LanguagePickerBinding()),
    GetPage(
      name: Routers.login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routers.forgetPassword,
      page: () => ForgetPasswordPage(),
    ),
    GetPage(
        name: Routers.social_auth,
        page: () => SocialAuthPage(),
        binding: AuthBinding()),
    GetPage(name: Routers.register, page: () => RegisterPage()),
    GetPage(
      name: Routers.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(name: Routers.detailPost, page: () => DetailPage()),
    GetPage(name: Routers.addPost, page: () => AddPostPage())
  ];
}
