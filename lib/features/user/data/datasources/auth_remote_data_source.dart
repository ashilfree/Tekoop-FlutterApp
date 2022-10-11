import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';

import '../../../../core/services/http_client.dart';
import '../../../../core/utils/urls.dart';

abstract class AuthRemoteDataSource {
  // /// Calls the http://localhost:8000/api/posts/{id} endpoint.
  // ///
  // /// Throws a [ServerException] for all error codes.
  // Future<PostModel> getPost(int id);

  /// Calls the http://localhost:8000/api/posts endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<AppModel> authLocal({
    required String identifier,
    required String password,
  });

  Future<AppModel> registerLocal({
    required String username,
    required String email,
    required String phone,
    required String password,
    required String retypedPassword,
  });

  Future<String> forgetPassword({
    required String email,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final HttpClient client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<AppModel> authLocal({
    required String identifier,
    required String password,
  }) async {
    final body = {'username': identifier, 'password': password};
    final Response response = await client.post(URLs.authLocal, body: body);
    if (response.statusCode == 200) {
      return AppModel.fromMap(response.data);
    } else {
      throw Exception();
    }
  }

  @override
  Future<AppModel> registerLocal(
      {required String username,
      required String email,
      required String phone,
      required String password,
      required String retypedPassword}) async {
    final body = {
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
      'retypedPassword': retypedPassword,
      'image': null,
      'facebookId': null,
      'googleId': null,
    };
    final Response response = await client.post(URLs.registerLocal, body: body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return AppModel.fromMap(response.data);
    } else {
      throw Exception();
    }
  }

  @override
  Future<String> forgetPassword({required String email}) async {
    final body = {'email': email};
    final Response response =
        await client.post(URLs.forgetPassword, body: body);
    print(response.data['message']);
    if (response.statusCode == 200) {
      return response.data['message'];
    } else {
      throw Exception();
    }
  }
}
