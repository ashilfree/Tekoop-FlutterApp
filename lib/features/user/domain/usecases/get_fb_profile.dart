import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';
import 'package:tekoop/features/user/domain/repositories/auth_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';


class GetFbProfile extends UseCase<AppModel, Params> {
  final AuthRepository repository;

  GetFbProfile(this.repository);

  @override
  Future<Either<Failure, AppModel>> call(Params params) async {
    return await repository.getFbProfile(params.token);
  }
}

class Params extends Equatable {
  final String token;

  const Params({
    required this.token,
  }) : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}