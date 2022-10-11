import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/category_repository.dart';
import '../datasources/category_local_data_source.dart';
import '../datasources/category_remote_data_source.dart';
import '../models/category_model.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;
  final CategoryLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CategoryRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    if (await networkInfo.isConnected) {
      try {
        print('REMOTE');
        final remoteCategories = await remoteDataSource.getCategories();

        localDataSource.cacheCategories(remoteCategories);
        return Right(remoteCategories);
      } catch (e) {
        return Left(FailureImpl(
            error: NetworkExceptions.getDioException(
                NetworkExceptions.noInternetConnection())));
      }
    } else {
      try {
        print('LOCAL');
        final localTrivia = await localDataSource.getLastCategories();
        return Right(localTrivia);
      } catch (e) {
        print(e.toString());
        return Left(FailureImpl(
            error: NetworkExceptions.getDioException(
                NetworkExceptions.noInternetConnection())));
      }
    }
  }
}
