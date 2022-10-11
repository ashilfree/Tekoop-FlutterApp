import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/category_model.dart';
import '../repositories/category_repository.dart';

class GetCategories extends UseCases<CategoryModel, NoParams> {
  final CategoryRepository repository;

  GetCategories(this.repository);

  @override
  Future<Either<Failure, List<CategoryModel>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}