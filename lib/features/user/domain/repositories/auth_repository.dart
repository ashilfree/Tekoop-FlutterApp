import 'package:dartz/dartz.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

import 'package:meta/meta.dart';
import 'package:tekoop/core/error/failure.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, AppModel>> authLocal({
    required String identifier,
    required String password,
  });

  Future<Either<Failure, AppModel>> registerLocal({
    required String username,
    required String email,
    required String phone,
    required String password,
    required String retypedPassword,
  });
  Future<Either<Failure, String>> forgetPassword({@required String email});
  Future<Either<Failure, FacebookLoginResult>> logInWithReadPermissions();
  Future<Either<Failure, AppModel>> getFbProfile(
    String token,
  );
  Future<Either<Failure, AppModel>> googleSignInAccount();
  void logOut();
}
