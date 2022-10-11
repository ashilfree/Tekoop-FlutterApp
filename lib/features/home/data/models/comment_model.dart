import 'package:equatable/equatable.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';

import 'post_model.dart';

class CommentModel extends Equatable {
  CommentModel({
    required this.id,
    required this.owner,
    required this.content,
    required this.publishedAt,
    required this.post,
  });

  final int? id;
  final UserModel? owner;
  final String? content;
  final DateTime? publishedAt;
  final PostModel? post;

  CommentModel copyWith(
          {int? id,
          UserModel? owner,
          String? content,
          DateTime? publishedAt,
          PostModel? post}) =>
      CommentModel(
        id: id ?? this.id,
        owner: owner ?? this.owner,
        content: content ?? this.content,
        publishedAt: publishedAt ?? this.publishedAt,
        post: post ?? this.post,
      );

  factory CommentModel.fromMap(Map<String, dynamic> json) => CommentModel(
        id: json["id"],
        owner: json["owner"] == null ? null : UserModel.fromMap(json["owner"]),
        content: json["content"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        post: json["post"] == null ? null : PostModel.fromMap(json["post"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "owner": owner == null ? null : owner!.toMap(),
        "content": content,
        "publishedAt": publishedAt?.toIso8601String(),
        "post": post == null ? null : post!.toMap(),
      }..removeWhere((key, value) => key == 'id' && value == null);

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is CommentModel &&
  //       o.id == id &&
  //       o.owner == owner &&
  //       o.content == content &&
  //       o.publishedAt == publishedAt &&
  //       o.post == post
  //   ;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       owner.hashCode ^
  //       content.hashCode ^
  //       publishedAt.hashCode ^
  //       post.hashCode
  //   ;
  // }

  @override
  String toString() {
    return 'CommentModel(id: $id, owner: $owner ,content: $content, publishedAt: $publishedAt, post: $post)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
