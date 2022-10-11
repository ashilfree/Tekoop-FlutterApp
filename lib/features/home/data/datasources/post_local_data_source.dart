import 'dart:convert';

import 'package:meta/meta.dart';
import '../../../../core/services/local_storage.dart';
import '../models/post_model.dart';

abstract class PostLocalDataSource {
  /// Gets the cached [PostModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<List<PostModel>> getLastPosts();

  Future<void> cachePosts(List<PostModel> postsToCache);
}

const CACHED_POSTS = 'CACHED_POSTS';

class PostLocalDataSourceImpl implements PostLocalDataSource {
  final LocalStorage localStorage;

  PostLocalDataSourceImpl({required this.localStorage});

  @override
  Future<List<PostModel>> getLastPosts() {
    final jsonString = localStorage.read(CACHED_POSTS);
    if (jsonString != null) {
      return Future.value(List<PostModel>.from(
          json.decode(jsonString).map((x) => PostModel.fromMap(x))));
    } else {
      throw Exception();
    }
  }

  @override
  Future<void> cachePosts(List<PostModel> postsToCache) {
    return localStorage.write(
      CACHED_POSTS,
      json.encode(List<dynamic>.from(postsToCache.map((x) => x.toMap()))),
    );
  }
}
