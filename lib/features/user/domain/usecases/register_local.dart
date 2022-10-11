import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/auth_model.dart';
import '../repositories/auth_repository.dart';

class RegisterLocal extends UseCase<AppModel, Params> {
  final AuthRepository repository;

  RegisterLocal(this.repository);
  @override
  Future<Either<Failure, AppModel>> call(Params params) async {
    return await repository.registerLocal(
      username: params.username,
      email: params.email,
      phone: params.phone,
      password: params.password,
      retypedPassword: params.retypedPassword
    );
  }
}

class Params extends Equatable {
  final String username;
  final String email;
  final String phone;
  final String password;
  final String retypedPassword;

  const Params({
    required this.username,
    required this.email,
    required this.phone,
    required this.password,
    required this.retypedPassword,
  }) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}