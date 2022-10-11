import 'package:dartz/dartz.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:tekoop/core/error/network_exceptions.dart';
import 'package:tekoop/features/user/data/datasources/fb_remote_data_source.dart';
import 'package:tekoop/features/user/data/datasources/google_remote_data_source.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/auth_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final GoogleRemoteDataSource googleRemoteDataSource;
  final FbRemoteDataSource fbRemoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.remoteDataSource,
      required this.googleRemoteDataSource,
      required this.localDataSource,
      required this.networkInfo,
      required this.fbRemoteDataSource});

  @override
  Future<Either<Failure, AppModel>> authLocal({
    required String identifier,
    required String password,
  }) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final auth = await remoteDataSource.authLocal(
            identifier: identifier, password: password);
        localDataSource.cacheApp(auth);
        return Right(auth);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }

  @override
  Future<Either<Failure, AppModel>> registerLocal({
    required String username,
    required String email,
    required String phone,
    required String password,
    required String retypedPassword,
  }) async {
    final isConnected = await networkInfo.isConnected;

    if (isConnected) {
      try {
        final auth = await remoteDataSource.registerLocal(
            username: username,
            email: email,
            phone: phone,
            password: password,
            retypedPassword: retypedPassword);
        print(auth);
        localDataSource.cacheApp(auth);
        return Right(auth);
      } catch (e) {
        print(e.toString());
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }

  @override
  Future<Either<Failure, FacebookLoginResult>>
      logInWithReadPermissions() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final result = await fbRemoteDataSource.logInWithReadPermissions();
        return Right(result);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }

  @override
  Future<Either<Failure, AppModel>> getFbProfile(String token) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final userModel = await fbRemoteDataSource.getFbProfile(token);
        print(userModel);
        final appModel = await fbRemoteDataSource.findOrCreateUser(
            facebookId: userModel.facebookId,
            username: userModel.username,
            email: userModel.email,
            image: userModel.image.url);
        print(appModel);
        localDataSource.cacheApp(appModel);
        return Right(appModel);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }

  @override
  Future<Either<Failure, AppModel>> googleSignInAccount() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final userModel = await googleRemoteDataSource.googleSignInAccount();
        final appModel = await googleRemoteDataSource.findOrCreateUser(
            googleId: userModel.googleId,
            username: userModel.username,
            email: userModel.email,
            image: userModel.image.url);
        localDataSource.cacheApp(appModel);
        return Right(appModel);
      } catch (e) {
        print(e);
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }

  @override
  void logOut() {
    fbRemoteDataSource.logOut();
  }

  @override
  Future<Either<Failure, String>> forgetPassword({String email}) async{
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final response = await remoteDataSource.forgetPassword(
          email: email,
          );
        return Right(response);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(FailureImpl(error: NetworkExceptions.noInternetConnection()));
    }
  }
}
