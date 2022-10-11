import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/services/local_storage.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';
import '../../features/user/data/models/auth_model.dart';

class AuthStore extends GetxController {
  AuthStore(this._storage);

  static AuthStore get to => Get.find();

  static const TOKEN = 'TOKEN';
  static const USER = 'USER';

  String? token;
  UserModel? user;

  final LocalStorage _storage;
  final isLogged = true.obs;

  @override
  void onInit() {
    ever(isLogged, fireRoute);
    super.onInit();
    token = _storage.read(TOKEN);
    user = _storage.read(USER, construct: (map) => UserModel.fromMap(map));
    if (token == null && user == null) {
      isLogged.value = false;
    }
  }

  fireRoute(logged) {
    if (!logged) {
      Get.toNamed(Routers.initialRoute);
    }
  }

  void save(AppModel app) {
    saveUser(app.user);
    saveToken(app.token);
    isLogged.value = true;
    update();
  }

  void saveUser(UserModel user) async {
    await _storage.write(USER, user?.toMap());
    this.user = user;
    update();
  }

  void saveToken(String token) async {
    await _storage.write(TOKEN, token);
    this.token = token;
    update();
  }

  Future<void> logout() async {
    await _storage.remove(USER);
    await _storage.remove(TOKEN);
    user = null;
    token = null;
    isLogged.value = false;
    update();
    Get.offNamedUntil(Routers.initialRoute, (route) => false);
  }
}
