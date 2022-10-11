import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/category_model.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryModel>>> getCategories();
}

