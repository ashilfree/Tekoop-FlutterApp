import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:tekoop/features/home/data/models/address_model.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/post_repository.dart';
import '../datasources/post_local_data_source.dart';
import '../datasources/post_remote_data_source.dart';
import '../models/post_model.dart';

typedef Future<List<PostModel>> _GetPostOrPosts();

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource;
  final PostLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  PostRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  // @override
  // Future<Either<Failure, List<PostModel>>> getPost(int id) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       final remotePost = await remoteDataSource.getPost(id);
  //       localDataSource.cachePosts([remotePost]);
  //       return Right([remotePost]);
  //     } on ServerException {
  //       return Left(ServerFailure());
  //     }
  //   } else {
  //     try {
  //       final localTrivia = await localDataSource.getLastPosts();
  //       return Right(localTrivia);
  //     } on CacheException {
  //       return Left(CacheFailure());
  //     }
  //   }
  // }

  // @override
  // Future<Either<Failure, PostModel>> getPost(int id) async {
  //   return _getPostOrPosts(() {
  //     return remoteDataSource.getPost(id);
  //   });
  // }

  @override
  Future<Either<Failure, List<PostModel>>> getPosts() async {
    return _getPostOrPosts(() {
      return remoteDataSource.getPosts();
    });
  }

  Future<Either<Failure, List<PostModel>>> _getPostOrPosts(
    _GetPostOrPosts getPostOrPosts,
  ) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final remotePost = await getPostOrPosts();
        localDataSource.cachePosts(remotePost);
        return Right(remotePost);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastPosts();
        return Right(localTrivia);
      } catch (e) {
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    }
  }

  @override
  Future<Either<Failure, List<int>>> setImage(List<File> files) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final remoteImage = await remoteDataSource.setImage(files);
        return Right(remoteImage);
      } catch (e) {
        print(e.toString());
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(
          FailureImpl(error: NetworkExceptions.getDioException(Error())));
    }
  }

  @override
  Future<Either<Failure, int>> setAddress(AddressModel address) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final remoteAddress = await remoteDataSource.setAddress(address);
        return Right(remoteAddress);
      } catch (e) {
        print(e.toString());
        return Left(FailureImpl(error: NetworkExceptions.getDioException(e)));
      }
    } else {
      return Left(
          FailureImpl(error: NetworkExceptions.getDioException(Error())));
    }
  }
}
