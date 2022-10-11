import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tekoop/features/home/data/models/address_model.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/post_repository.dart';

class SetAddress extends UseCase<int, Params> {
  final PostRepository repository;

  SetAddress(this.repository);

  @override
  Future<Either<Failure, int>> call(Params params) async {
    return await repository.setAddress(params.address);
  }
}

class Params extends Equatable {
  final AddressModel address;

  Params({@required this.address}) : super([address]);
}
