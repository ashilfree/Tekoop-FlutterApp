import 'package:meta/meta.dart';
import 'package:tekoop/core/stores/auth_store.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [PostModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.

  void cacheApp(AppModel userToSave);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final AuthStore authStore;

  AuthLocalDataSourceImpl({required this.authStore});

  @override
  void cacheApp(AppModel userToSave) {
    print(userToSave);
    return authStore.save(userToSave);
  }
}
