import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final String property;
  final String message;

  const ErrorModel({required this.property, required this.message});

  factory ErrorModel.fromMap(Map<String, dynamic> json) => ErrorModel(
        property: json["propertyPath"],
        message: json["message"],
      );

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
