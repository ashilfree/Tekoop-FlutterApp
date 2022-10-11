import 'package:dartz/dartz.dart';
import '../../data/models/auth_model.dart';
import '../repositories/auth_repository.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';


class GoogleSignInAcc extends UseCase<AppModel, NoParams> {
  final AuthRepository repository;

  GoogleSignInAcc(this.repository);

  @override
  Future<Either<Failure, AppModel>> call(NoParams params) async {
    return await repository.googleSignInAccount();
  }
}