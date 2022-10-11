import 'package:equatable/equatable.dart';

class ImageModel extends Equatable{
  const ImageModel({
    required this.id,
    required this.url,
  });

  final int? id;
  final String? url;

  ImageModel copyWith({
    int? id,
    String? url,
  }) =>
      ImageModel(
        id: id ?? this.id,
        url: url ?? this.url,
      );

  factory ImageModel.fromMap(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id ,
        "url": url,
      }..removeWhere((key, value) => key == 'id' && value == null);

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is ImageModel &&
  //       o.id == id &&
  //       o.url == url;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       url.hashCode;
  // }

  @override
  String toString() {
    return 'ImageModel(id: $id, url: $url)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
