import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import '../../../../core/services/http_client.dart';
import '../../../../core/utils/urls.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource {
  /// Calls the http://localhost:8000/api/categories endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final HttpClient client;

  CategoryRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CategoryModel>> getCategories() async {
    final Response response = await client.get(URLs.categories);
    print('RESPONSE:$response');
    return List<CategoryModel>.from(
        response.data.map((x) => CategoryModel.fromMap(x)));
  }
}
