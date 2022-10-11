import 'package:dio/dio.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:tekoop/features/home/data/models/image_model.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';

import '../../../../core/services/http_client.dart';
import '../../../../core/utils/urls.dart';

abstract class FbRemoteDataSource {
  // /// Calls the http://localhost:8000/api/posts/{id} endpoint.
  // ///
  // /// Throws a [ServerException] for all error codes.
  // Future<PostModel> getPost(int id);

  /// Calls the http://localhost:8000/api/posts endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<FacebookLoginResult> logInWithReadPermissions();
  Future<UserModel> getFbProfile(String token);
  Future<AppModel> findOrCreateUser({
    required facebookId,
    required String username,
    required String email,
    required String image,
  });
  void logOut();
}

class FbRemoteDataSourceImpl implements FbRemoteDataSource {
  final HttpClient client;
  final FacebookLogin facebookLogin;

  FbRemoteDataSourceImpl({required this.client, required this.facebookLogin});

  Future<FacebookLoginResult> logInWithReadPermissions() async {
    final result = await facebookLogin.logIn(customPermissions: ['email']);
    print(result.accessToken);
    return result;
  }

  @override
  Future<UserModel> getFbProfile(String token) async {
    final Response response = await client.get('${URLs.facebookPath}$token');
    print(response.statusCode);
    print(response.statusMessage);
    return UserModel(
        facebookId: response.data["id"],
        username: response.data["name"],
        email: response.data["email"],
        image: ImageModel(url: response.data["picture"]['data']["url"], id: null));
  }

  @override
  void logOut() {
    facebookLogin.logOut();
  }

  @override
  Future<AppModel> findOrCreateUser({
    required facebookId,
    required String username,
    required String email,
    required String image,
  }) async {
    final body = {
      'facebookId': facebookId,
      'username': username,
      'email': email,
      'image': image
    };

    print(client.post(URLs.facebookLogin, body: body));
    final Response response = await client.post(URLs.facebookLogin, body: body);

    if (response.statusCode == 200) {
      return AppModel.fromMap(response.data);
    } else {
      throw Exception();
    }
  }
}
