import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:tekoop/features/home/data/models/address_model.dart';
import '../../../../core/error/failure.dart';
import '../../data/models/post_model.dart';

abstract class PostRepository {
  Future<Either<Failure, List<PostModel>>> getPosts();
  Future<Either<Failure, List<int>>> setImage(List<File> files);
  Future<Either<Failure, int>> setAddress(AddressModel address);
}
