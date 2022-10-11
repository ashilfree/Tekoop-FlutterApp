import 'package:dartz/dartz.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

import 'package:tekoop/features/user/domain/repositories/auth_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';

class LoginWithReadPermissions extends UseCase<FacebookLoginResult, NoParams> {
  final AuthRepository repository;

  LoginWithReadPermissions(this.repository);

  @override
  Future<Either<Failure, FacebookLoginResult>> call(NoParams params) async {
    return await repository.logInWithReadPermissions();
  }
}