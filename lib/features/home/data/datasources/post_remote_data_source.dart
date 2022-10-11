import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:tekoop/core/stores/auth_store.dart';
import 'package:tekoop/features/home/data/models/address_model.dart';

import '../../../../core/services/http_client.dart';
import '../../../../core/utils/urls.dart';
import '../models/post_model.dart';

abstract class PostRemoteDataSource {
  // /// Calls the http://localhost:8000/api/posts/{id} endpoint.
  // ///
  // /// Throws a [ServerException] for all error codes.
  // Future<PostModel> getPost(int id);

  /// Calls the http://localhost:8000/api/posts endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<PostModel>> getPosts();
  Future<List<int>> setImage(List<File> files);
  Future<int> setAddress(AddressModel address);
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final HttpClient client;

  PostRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PostModel>> getPosts() async {
    final Response response = await client.get(URLs.posts);
    return List<PostModel>.from(response.data.map((x) => PostModel.fromMap(x)));
  }

  @override
  Future<List<int>> setImage(List<File> files) async {
    List<int> list = [];
    for (File file in files) {
      Map<String, MultipartFile> fileMap = {};
      Map<String, dynamic> data = {};
      String fileName = basename(file.path);
      fileMap["file"] = MultipartFile(file.openRead(), await file.length(),
          filename: fileName);
      data.addAll(fileMap);
      var formData = FormData.fromMap(data);
      final Response response = await client.post(URLs.images,
          body: formData,
          headers: {"contentType": 'multipart/form-data'},
          authorization: true);
      if (response.statusCode == 200 || response.statusCode == 201) {
        list.add(response.data["id"]);
      } else {
        throw Exception();
      }
    }
    return list;
  }

  @override
  Future<int> setAddress(AddressModel address) async {
    final body = {
      "location": address.location,
      "city": address.city,
      "lat": address.latitude,
      "lng": address.longitude,
      "user": "/api/users/${AuthStore.to.user!.id}",
      "province": address.province,
      "country": address.country
    };
    final Response response = await client.post(URLs.addresses, body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data["id"];
    } else {
      throw Exception();
    }
  }
}
