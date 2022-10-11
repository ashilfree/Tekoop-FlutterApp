// import 'package:equatable/equatable.dart';
// import 'package:tekoop/features/user/data/models/user_model.dart';

// class PhoneModel extends Equatable{
//   PhoneModel({
//     this.id,
//     this.user,
//     this.number,
//   });

//   final int id;
//   final UserModel user;
//   final dynamic number;

//   PhoneModel copyWith({
//     int id,
//     UserModel user,
//     dynamic number,
//   }) =>
//       PhoneModel(
//         id: id ?? this.id,
//         user: id ?? this.user,
//         number: number ?? this.number,
//       );

//   factory PhoneModel.fromMap(Map<String, dynamic> json) => PhoneModel(
//         id: json["id"] == null ? null : json["id"],
//         user: json["user"] == null
//             ? null
//             :  UserModel.fromMap(json["user"]),
//         number: json["number"] == null ? null : json["number"],
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id == null ? null : id,
//         "user": user == null ? null : user.toMap(),
//         "number": number == null ? null : number,
//       }..removeWhere((key, value) => key == 'id' && value == null);

//   // @override
//   // bool operator ==(Object o) {
//   //   if (identical(this, o)) return true;

//   //   return o is PhoneModel &&
//   //       o.id == id &&
//   //       o.user == user &&
//   //       o.number == number;
//   // }

//   // @override
//   // int get hashCode {
//   //   return id.hashCode ^
//   //       user.hashCode ^
//   //       number.hashCode;
//   // }

//   @override
//   String toString() {
//     return 'PhoneModel(id: $id, user: $user ,number: $number)';
//   }
// }
