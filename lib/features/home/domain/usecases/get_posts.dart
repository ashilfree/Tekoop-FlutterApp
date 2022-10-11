import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/post_model.dart';
import '../repositories/post_repository.dart';

class GetPosts extends UseCases<PostModel, NoParams> {
  final PostRepository repository;

  GetPosts(this.repository);

  @override
  Future<Either<Failure, List<PostModel>>> call(NoParams params) async {
    return await repository.getPosts();
  }
}