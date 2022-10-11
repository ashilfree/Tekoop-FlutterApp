// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';
// import 'package:tekoop/features/home/data/models/post_model.dart';
// import 'package:tekoop/features/home/domain/repositories/post_repository.dart';

// import '../../../../core/error/failure.dart';
// import '../../../../core/usecases/usecase.dart';

// class GetPost extends UseCase<PostModel, Params>{
//   final PostRepository repository;

//   GetPost(this.repository);

//   @override
//   Future<Either<Failure, List<PostModel>>> call(
//       Params params,
//       ) async {
//     return await repository.getPost(params.id);
//   }
// }

// class Params extends Equatable {
//   final int id;

//   Params({@required this.id}) : super([id]);
// }