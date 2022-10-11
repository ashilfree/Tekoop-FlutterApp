import 'package:tekoop/features/user/domain/repositories/auth_repository.dart';

class Logout {
  final AuthRepository repository;

  Logout(this.repository);

  void logout() {
    repository.logOut();
  }
}
