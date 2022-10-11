import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'network_exceptions.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failure({required NetworkExceptions error}) : super();
  String getErrorMessage();
}

// General failures
class FailureImpl extends Failure {
  final NetworkExceptions error;
  FailureImpl({required this.error}) : super();

  String getErrorMessage() => NetworkExceptions.getErrorMessage(error);
}
