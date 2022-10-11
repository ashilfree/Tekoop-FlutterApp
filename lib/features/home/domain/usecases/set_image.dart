import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/post_repository.dart';

class SetImage extends UseCases<int, Params> {
  final PostRepository repository;

  SetImage(this.repository);

  @override
  Future<Either<Failure, List<int>>> call(Params params) async {
    return await repository.setImage(params.files);
  }
}

class Params extends Equatable {
  final List<File> files;

  Params({@required this.files}) : super([files]);
}
