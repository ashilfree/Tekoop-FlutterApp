
import 'package:equatable/equatable.dart';

import 'image_model.dart';
import 'post_model.dart';

class CategoryModel extends Equatable{
  CategoryModel({
    required this.id,
    required this.nameEn,
    required this.nameFr,
    required this.nameAr,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
    required this.posts,
    required this.parent,
    required this.categories
  });

  final int? id;
  final String? nameEn;
  final String? nameFr;
  final String? nameAr;
  final ImageModel? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? status;
  final List<PostModel>? posts;
  final String? parent;
  final List<CategoryModel>? categories;

  CategoryModel copyWith({
    int? id,
    String? nameEn,
    String? nameFr,
    String? nameAr,
    ImageModel? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? status,
    List<PostModel>? posts,
    String? parent,
    List<CategoryModel>? categories
  }) =>
      CategoryModel(
        id: id ?? this.id,
        nameEn: nameEn ?? this.nameEn,
        nameFr: nameFr ?? this.nameFr,
        nameAr: nameAr ?? this.nameAr,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        status: status ?? this.status,
        posts: posts ?? this.posts,
        parent: parent ?? this.parent,
        categories: categories ?? this.categories,
      );

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        nameEn: json["nameEn"],
        nameFr: json["nameFr"],
        nameAr: json["nameAr"],
        image: json["image"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        status: json["status"],
        posts: json["posts"] == null
            ? null
            : List<PostModel>.from(
            json["posts"].map((x) => PostModel.fromMap(x))),
        parent: json["parent"] == null
            ? null
            : "parent",
           // : CategoryModel.fromMap(json["parent"]),
        categories: json["categories"] == null
            ? null
            : List<CategoryModel>.from(
            json["categories"].map((x) => CategoryModel.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nameEn": nameEn,
        "nameFr": nameFr,
        "nameAr": nameAr,
        "image": image == null ? null : image!.toMap(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "status": status,
        "posts": posts== null
            ? null
            : List<dynamic>.from(posts!.map((x) => x.toMap())),
        "parent": parent,
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toMap())),
      }..removeWhere((key, value) => key == 'id' && value == null);

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is CategoryModel &&
  //       o.id == id &&
  //       o.nameEn == nameEn &&
  //       o.nameFr == nameFr &&
  //       o.nameAr == nameAr &&
  //       o.image == image &&
  //       o.createdAt == createdAt &&
  //       o.updatedAt == updatedAt &&
  //       listEquals(o.posts, posts) &&
  //       o.status == status &&
  //       o.parent == parent &&
  //       listEquals(o.categories, categories)
  //   ;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       nameEn.hashCode ^
  //       nameFr.hashCode ^
  //       nameAr.hashCode ^
  //       image.hashCode ^
  //       createdAt.hashCode ^
  //       updatedAt.hashCode ^
  //       posts.hashCode ^
  //       status.hashCode ^
  //       parent.hashCode ^
  //       categories.hashCode
  //   ;
  // }

  @override
  String toString() {
    return 'CategoryModel(id: $id, nameEn: $nameEn, nameFr: $nameFr, nameAr: $nameAr, image: $image,createdAt: $createdAt, updatedAt: $updatedAt, posts: $posts, status: $status, parent: $parent, categories: $categories)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
