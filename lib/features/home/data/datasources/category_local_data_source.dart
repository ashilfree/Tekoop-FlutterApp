import 'dart:convert';

import 'package:meta/meta.dart';
import '../../../../core/services/local_storage.dart';
import '../models/category_model.dart';

abstract class CategoryLocalDataSource {
  /// Gets the cached [CategoryModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<List<CategoryModel>> getLastCategories();

  Future<void> cacheCategories(List<CategoryModel> categoriesToCache);
}

const CACHED_CATEGORIES = 'CACHED_CATEGORIES';

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  final LocalStorage localStorage;

  CategoryLocalDataSourceImpl({required this.localStorage});

  @override
  Future<List<CategoryModel>> getLastCategories() {
    final jsonString = localStorage.read(CACHED_CATEGORIES);
    print(jsonString);
    if (jsonString != null) {
      return Future.value(List<CategoryModel>.from(
          json.decode(jsonString).map((x) => CategoryModel.fromMap(x))));
    } else {
      throw Exception();
    }
  }

  @override
  Future<void> cacheCategories(List<CategoryModel> categoriesToCache) {
    return localStorage.write(
      CACHED_CATEGORIES,
      json.encode(List<dynamic>.from(categoriesToCache.map((x) => x.toMap()))),
    );
  }
}
