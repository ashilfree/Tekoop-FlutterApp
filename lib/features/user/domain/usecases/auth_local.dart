import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/auth_model.dart';
import '../repositories/auth_repository.dart';

class AuthLocal extends UseCase<AppModel, Params> {
  final AuthRepository repository;

  AuthLocal(this.repository);
  @override
  Future<Either<Failure, AppModel>> call(Params params) async {
    return await repository.authLocal(
      identifier:params.identifier, 
      password:params.password
      );
  }
}

class Params extends Equatable {
  final String identifier;
  final String password;

  const Params({
    required this.identifier,
    required this.password,
  }) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
