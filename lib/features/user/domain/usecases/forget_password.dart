import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class ForgetPassword extends UseCase<String, Params> {
  final AuthRepository repository;

  ForgetPassword(this.repository);
  @override
  Future<Either<Failure, String>> call(Params params) async {
    return await repository.forgetPassword(
      email:params.email, 
      );
  }
}

class Params extends Equatable {
  final String email;

  const Params({
    required this.email,
  }) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
