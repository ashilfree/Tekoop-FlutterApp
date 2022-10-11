import 'package:equatable/equatable.dart';

import '../../../home/data/models/address_model.dart';
import '../../../home/data/models/comment_model.dart';
import '../../../home/data/models/image_model.dart';
import '../../../home/data/models/post_model.dart';

class UserModel extends Equatable {
  final int? id;
  final String? username;
  final String? email;
  final String? password;
  final String? retypedPassword;
  final String? newPassword;
  final String? newRetypedPassword;
  final String? oldPassword;
  final String? fullName;
  final ImageModel? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<PostModel>? posts;
  final List<AddressModel>? addresses;
  final String? phone;
  final List<CommentModel>? comments;
  final String? facebookId;
  final String? googleId;

  UserModel(
      {this.id,
      this.username,
      this.email,
      this.password,
      this.retypedPassword,
      this.newPassword,
      this.newRetypedPassword,
      this.oldPassword,
      this.fullName,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.posts,
      this.addresses,
      this.phone,
      this.comments,
      this.facebookId,
      this.googleId});

  UserModel copyWith({
    int? id,
    String? fullName,
    String? username,
    String? email,
    String? password,
    String? retypedPassword,
    String? newPassword,
    String? newRetypedPassword,
    String? oldPassword,
    ImageModel? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<PostModel>? posts,
    List<AddressModel>? addresses,
    String? phone,
    List<CommentModel>? comments,
    String? facebookId,
    String? googleId,
  }) =>
      UserModel(
        id: id ?? this.id,
        username: username ?? this.username,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        password: password ?? this.password,
        retypedPassword: retypedPassword ?? this.retypedPassword,
        newPassword: newPassword ?? this.newPassword,
        newRetypedPassword: newRetypedPassword ?? this.newRetypedPassword,
        oldPassword: oldPassword ?? this.oldPassword,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        posts: posts ?? this.posts,
        addresses: addresses ?? this.addresses,
        phone: phone ?? this.phone,
        comments: comments ?? this.comments,
        facebookId: facebookId ?? this.facebookId,
        googleId: googleId ?? this.googleId
      );

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        username: json["username"],
        fullName: json["fullName"],
        email: json["email"],
        password: json["password"],
        retypedPassword: json["retypedPassword"],
        newPassword: json["newPassword"],
        newRetypedPassword: json["newRetypedPassword"],
        oldPassword: json["oldPassword"],
        image: json["image"] == null
            ? null  
            : ImageModel.fromMap(json["image"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        addresses: json["addresses"] == null
            ? null
            : List<AddressModel>.from(
                json["addresses"].map((x) => AddressModel.fromMap(x))),
        phone: json["phone"] ,
        comments: json["comments"] == null
            ? null
            : List<CommentModel>.from(
                json["comments"].map((x) => CommentModel.fromMap(x))),
        posts: json["posts"] == null
            ? null
            : List<PostModel>.from(
                json["posts"].map((x) => PostModel.fromMap(x))),
        facebookId: json["facebookId"],
        googleId: json["googleId"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "fullName": fullName,
        "username": username,
        "email": email,
        "password": password,
        "retypedPassword": retypedPassword,
        "newPassword": newPassword,
        "newRetypedPassword": newRetypedPassword,
        "oldPassword": oldPassword,
        "image": image?.toMap(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "posts": posts == null
            ? null
            : List<dynamic>.from(posts!.map((x) => x.toMap())),
        "phone": phone,
        "comments": comments == null
            ? null
            : List<dynamic>.from(comments!.map((x) => x.toMap())),
        "addresses": addresses == null
            ? null
            : List<dynamic>.from(addresses!.map((x) => x.toMap())),
        "facebookId": facebookId,
        "googleId": googleId,
      };

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is UserModel &&
  //       o.id == id &&
  //       o.fullName == fullName &&
  //       o.username == username &&
  //       o.email == email &&
  //       o.password == password &&
  //       o.retypedPassword == retypedPassword &&
  //       o.newPassword == newPassword &&
  //       o.newRetypedPassword == newRetypedPassword &&
  //       o.password == password &&
  //       o.oldPassword == oldPassword &&
  //       o.createdAt == createdAt &&
  //       o.updatedAt == updatedAt &&
  //       listEquals(o.posts, posts) &&
  //       listEquals(o.comments, comments) &&
  //       listEquals(o.phones, phones) &&
  //       listEquals(o.addresses, addresses);
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //   fullName.hashCode ^
  //   username.hashCode ^
  //   email.hashCode ^
  //   password.hashCode ^
  //   retypedPassword.hashCode ^
  //   newPassword.hashCode ^
  //   newRetypedPassword.hashCode ^
  //   oldPassword.hashCode ^
  //   image.hashCode ^
  //   createdAt.hashCode ^
  //   updatedAt.hashCode ^
  //   posts.hashCode ^
  //   phones.hashCode ^
  //   comments.hashCode ^
  //   addresses.hashCode;
  // }

  @override
  String toString() {
    return 'UserModel(id: $id, fullName: $fullName, username: $username, email: $email, password: $password, retypedPassword: $retypedPassword, newPassword: $newPassword, newRetypedPassword: $newRetypedPassword, oldPassword: $oldPassword, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, posts: $posts, addresses: $addresses, phone: $phone, comments: $comments, facebookId: $facebookId, googleId: $googleId)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
