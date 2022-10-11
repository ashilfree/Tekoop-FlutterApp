import 'package:equatable/equatable.dart';
import 'package:tekoop/features/user/data/models/user_model.dart';

class AddressModel extends Equatable {
  AddressModel(
      {required this.id,
      required this.location,
      required this.city,
      required this.province,
      required this.country,
      required this.latitude,
      required this.longitude,
      required this.user});

  final int? id;
  final String? location;
  final String? city;
  final String? province;
  final String? country;
  final dynamic latitude;
  final dynamic longitude;
  final UserModel? user;

  AddressModel copyWith(
          {int? id,
          String? location,
          String? city,
          String? province,
          String? country,
          dynamic latitude,
          dynamic longitude,
          String? zipCode,
          UserModel? user}) =>
      AddressModel(
        id: id ?? this.id,
        location: location ?? this.location,
        city: city ?? this.city,
        province: province ?? this.province,
        country: country ?? this.country,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        user: user ?? this.user,
      );

  factory AddressModel.fromMap(Map<String, dynamic> json) => AddressModel(
        id: json["id"],
        location: json["location"],
        city: json["city"],
        province: json["province"],
        country: json["country"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        user: json["user"] == null ? null : UserModel.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "location": location,
        "city": city,
        "province": province,
        "country": country,
        "latitude": latitude,
        "longitude": longitude,
        "user": user == null ? null : user!.toMap(),
      }..removeWhere((key, value) => key == 'id' && value == null);

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is AddressModel &&
  //       o.id == id &&
  //       o.location == location &&
  //       o.latitude == latitude &&
  //       o.longitude == longitude &&
  //       o.zipCode == zipCode &&
  //       o.city == city &&
  //       o.user == user
  //   ;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       location.hashCode ^
  //       latitude.hashCode ^
  //       longitude.hashCode ^
  //       zipCode.hashCode ^
  //       city.hashCode ^
  //       user.hashCode
  //   ;
  // }

  @override
  String toString() {
    return 'AddressModel(id: $id, location: $location, city: $city, province: $province, country: $city, latitude: $country, longitude: $longitude, user: $user)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
