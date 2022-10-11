import 'package:equatable/equatable.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';
import 'address_model.dart';
import 'comment_model.dart';
import 'category_model.dart';
import 'image_model.dart';

enum Status { BAD, MEDIUM, GOOD, NEW, NEVER_USED }

class PostModel extends Equatable{
  final int? id;
  final String? title;
  final dynamic price;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  final CategoryModel? category;
  final UserModel? owner;
  final AddressModel? address;
  final String? phone;
  final List<CommentModel>? comments;
  final List<ImageModel>? images;
  final bool? negotiable;
  final Status? status;

  PostModel(
      {required this.id,
        required this.title,
        this.price,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.publishedAt,
        required this.category,
        required this.owner,
        required this.address,
        required this.phone,
        required this.comments,
        required this.images,
        required this.negotiable,
        required this.status,
      });



  PostModel copyWith({
    int? id,
    String? title,
    dynamic price,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    CategoryModel? category,
    UserModel? owner,
    AddressModel? address,
    String? phone,
    List<CommentModel>? comments,
    List<CommentModel>? images,
    bool? negotiable,
    Status? status
  }) =>
      PostModel(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        publishedAt: publishedAt ?? this.publishedAt,
        category: category ?? this.category,
        owner: owner ?? this.owner,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        comments: comments ?? this.comments,
        images: images ?? this.images,
        negotiable: negotiable ?? this.negotiable,
        status: status ?? this.status,
      );

  factory PostModel.fromMap(Map<String, dynamic> json) => PostModel(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      description: json["description"],
      createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
      publishedAt: json["publishedAt"] == null ? DateTime.now() : DateTime.parse(json["publishedAt"]),
      address: json["address"] == null
          ? null
          : AddressModel.fromMap(json["address"]),
      phone: json["phone"],
      comments: json["comments"] == null
          ? null
          : List<CommentModel>.from(
          json["comments"].map((x) => CommentModel.fromMap(x))),
      images: json["images"] == null
          ? null
          : List<ImageModel>.from(
          json["images"].map((x) => ImageModel.fromMap(x))),
      owner: json["owner"] == null
          ? null
          : UserModel.fromMap(json["owner"]),
      category: json['category'] == null
          ? null
          : CategoryModel.fromMap(json['category']),
      negotiable: json['negotiable'],
      status: json['status'] == null ? null : Status.values[json['status']+1]
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "publishedAt": publishedAt?.toIso8601String(),
    "owner": owner == null
        ? null
        : owner!.toMap(),
    "phone": phone,
    "comments": comments== null
        ? null
        : List<dynamic>.from(comments!.map((x) => x.toMap())),
    "images": images== null
        ? null
        : List<dynamic>.from(images!.map((x) => x.toMap())),
    "address": address == null
        ? null
        : address!.toMap(),
    "category": category == null
        ? null
        : category!.toMap(),
    "negotiable": negotiable,
    "status": status?.index
  };

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is PostModel &&
  //       o.id == id &&
  //       o.title == title &&
  //       o.price == price &&
  //       o.description == description &&
  //       o.createdAt == createdAt &&
  //       o.updatedAt == updatedAt &&
  //       o.publishedAt == publishedAt &&
  //       o.owner == owner &&
  //       listEquals(o.comments, comments) &&
  //       listEquals(o.images, images) &&
  //       o.phone == phone &&
  //       o.address == address &&
  //       o.category == category &&
  //       o.negotiable == negotiable &&
  //       o.status == status
  //   ;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //   title.hashCode ^
  //   price.hashCode ^
  //   description.hashCode ^
  //   createdAt.hashCode ^
  //   updatedAt.hashCode ^
  //   publishedAt.hashCode ^
  //   owner.hashCode ^
  //   phone.hashCode ^
  //   comments.hashCode ^
  //   images.hashCode ^
  //   address.hashCode ^
  //   category.hashCode ^
  //   negotiable.hashCode ^
  //   status.hashCode
  //   ;
  // }

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, price: $price, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, owner: $owner, address: $address, phone: $phone, comments: $comments, images: $images, category: $category, negotiable: $negotiable, status: $status)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
