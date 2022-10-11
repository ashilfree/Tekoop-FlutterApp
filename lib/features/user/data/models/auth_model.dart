import 'package:equatable/equatable.dart';

import 'user_model.dart';

class AppModel extends Equatable{
  AppModel({
    this.token,
    this.user,
  });

  final String? token;
  final UserModel? user;

  AppModel copyWith({
    String? token,
    UserModel? user,
  }) =>
      AppModel(
        token: token ?? this.token,
        user: user ?? this.user,
      );

  factory AppModel.fromMap(Map<String, dynamic> json) => AppModel(
    token: json["token"].toString(),
    user: json["user"] == null ? null : UserModel.fromMap(json["user"]),
  );

  Map<String, dynamic> toMap() => {
    "token": token,
    "user": user?.toMap(),
  };

  @override
  String toString() => 'App(token: $token, user: $user)';

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is AppModel && o.token == token && o.user == user;
  // }

  // @override
  // int get hashCode => token.hashCode ^ user.hashCode;
}
