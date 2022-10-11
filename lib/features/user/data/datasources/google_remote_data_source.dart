import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:tekoop/features/home/data/models/image_model.dart';
import 'package:tekoop/features/user/data/models/auth_model.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';

import '../../../../core/services/http_client.dart';
import '../../../../core/utils/urls.dart';

abstract class GoogleRemoteDataSource {
  // /// Calls the http://localhost:8000/api/posts/{id} endpoint.
  // ///
  // /// Throws a [ServerException] for all error codes.
  // Future<PostModel> getPost(int id);

  /// Calls the http://localhost:8000/api/posts endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserModel> googleSignInAccount();
  Future<AppModel> findOrCreateUser({
    required String googleId,
    required String username,
    required String email,
    required String image,
  });
  void logOut();
}

class GoogleRemoteDataSourceImpl implements GoogleRemoteDataSource {
  final HttpClient client;
  GoogleSignIn googleSignIn;

  GoogleRemoteDataSourceImpl(
      {required this.client, required this.googleSignIn});

  Future<UserModel> googleSignInAccount() async {
    googleSignIn = GoogleSignIn(scopes: ['email']);
    final GoogleSignInAccount? response = await googleSignIn.signIn();
    return UserModel(
        googleId: response?.id,
        username: response?.displayName,
        email: response?.email,
        image: ImageModel(url: response?.photoUrl, id: null));
  }

  @override
  Future<AppModel> findOrCreateUser({
    required String googleId,
    required String username,
    required String email,
    required String image,
  }) async {
    final body = {
      'googleId': googleId,
      'username': username,
      'email': email,
      'image': image
    };
    print(body);
    final Response response = await client.post(URLs.googleLogin, body: body);
    print(response);
    if (response.statusCode == 200) {
      return AppModel.fromMap(response.data);
    } else {
      throw Exception();
    }
  }

  @override
  void logOut() {
    googleSignIn.signOut();
  }
}
