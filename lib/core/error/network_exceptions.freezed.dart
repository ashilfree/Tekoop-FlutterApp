// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkExceptionsTearOff {
  const _$NetworkExceptionsTearOff();

// ignore: unused_element
  RequestCancelled requestCancelled() {
    return const RequestCancelled();
  }

// ignore: unused_element
  UnauthorisedRequest unauthorisedRequest(List<ErrorModel> errors) {
    return UnauthorisedRequest(
      errors,
    );
  }

// ignore: unused_element
  BadRequest badRequest() {
    return const BadRequest();
  }

// ignore: unused_element
  NotFound notFound(String reason) {
    return NotFound(
      reason,
    );
  }

// ignore: unused_element
  MethodNotAllowed methodNotAllowed() {
    return const MethodNotAllowed();
  }

// ignore: unused_element
  NotAcceptable notAcceptable() {
    return const NotAcceptable();
  }

// ignore: unused_element
  RequestTimeout requestTimeout() {
    return const RequestTimeout();
  }

// ignore: unused_element
  SendTimeout sendTimeout() {
    return const SendTimeout();
  }

// ignore: unused_element
  Conflict conflict() {
    return const Conflict();
  }

// ignore: unused_element
  InternalServerError internalServerError() {
    return const InternalServerError();
  }

// ignore: unused_element
  NotImplemented notImplemented() {
    return const NotImplemented();
  }

// ignore: unused_element
  ServiceUnavailable serviceUnavailable() {
    return const ServiceUnavailable();
  }

// ignore: unused_element
  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

// ignore: unused_element
  FormatException formatException() {
    return const FormatException();
  }

// ignore: unused_element
  UnableToProcess unableToProcess() {
    return const UnableToProcess();
  }

// ignore: unused_element
  DefaultError defaultError(String error) {
    return DefaultError(
      error,
    );
  }

// ignore: unused_element
  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkExceptions = _$NetworkExceptionsTearOff();

/// @nodoc
mixin _$NetworkExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NetworkExceptionsCopyWith<$Res> {
  factory $NetworkExceptionsCopyWith(
          NetworkExceptions value, $Res Function(NetworkExceptions) then) =
      _$NetworkExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  _$NetworkExceptionsCopyWithImpl(this._value, this._then);

  final NetworkExceptions _value;
  // ignore: unused_field
  final $Res Function(NetworkExceptions) _then;
}

/// @nodoc
abstract class $RequestCancelledCopyWith<$Res> {
  factory $RequestCancelledCopyWith(
          RequestCancelled value, $Res Function(RequestCancelled) then) =
      _$RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $RequestCancelledCopyWith<$Res> {
  _$RequestCancelledCopyWithImpl(
      RequestCancelled _value, $Res Function(RequestCancelled) _then)
      : super(_value, (v) => _then(v as RequestCancelled));

  @override
  RequestCancelled get _value => super._value as RequestCancelled;
}

/// @nodoc
class _$RequestCancelled
    with DiagnosticableTreeMixin
    implements RequestCancelled {
  const _$RequestCancelled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.requestCancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.requestCancelled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled implements NetworkExceptions {
  const factory RequestCancelled() = _$RequestCancelled;
}

/// @nodoc
abstract class $UnauthorisedRequestCopyWith<$Res> {
  factory $UnauthorisedRequestCopyWith(
          UnauthorisedRequest value, $Res Function(UnauthorisedRequest) then) =
      _$UnauthorisedRequestCopyWithImpl<$Res>;
  $Res call({List<ErrorModel> errors});
}

/// @nodoc
class _$UnauthorisedRequestCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $UnauthorisedRequestCopyWith<$Res> {
  _$UnauthorisedRequestCopyWithImpl(
      UnauthorisedRequest _value, $Res Function(UnauthorisedRequest) _then)
      : super(_value, (v) => _then(v as UnauthorisedRequest));

  @override
  UnauthorisedRequest get _value => super._value as UnauthorisedRequest;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(UnauthorisedRequest(
      errors == freezed ? _value.errors : errors as List<ErrorModel>,
    ));
  }
}

/// @nodoc
class _$UnauthorisedRequest
    with DiagnosticableTreeMixin
    implements UnauthorisedRequest {
  const _$UnauthorisedRequest(this.errors) : assert(errors != null);

  @override
  final List<ErrorModel> errors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unauthorisedRequest(errors: $errors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.unauthorisedRequest'))
      ..add(DiagnosticsProperty('errors', errors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnauthorisedRequest &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  $UnauthorisedRequestCopyWith<UnauthorisedRequest> get copyWith =>
      _$UnauthorisedRequestCopyWithImpl<UnauthorisedRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unauthorisedRequest(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorisedRequest != null) {
      return unauthorisedRequest(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unauthorisedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthorisedRequest != null) {
      return unauthorisedRequest(this);
    }
    return orElse();
  }
}

abstract class UnauthorisedRequest implements NetworkExceptions {
  const factory UnauthorisedRequest(List<ErrorModel> errors) =
      _$UnauthorisedRequest;

  List<ErrorModel> get errors;
  @JsonKey(ignore: true)
  $UnauthorisedRequestCopyWith<UnauthorisedRequest> get copyWith;
}

/// @nodoc
abstract class $BadRequestCopyWith<$Res> {
  factory $BadRequestCopyWith(
          BadRequest value, $Res Function(BadRequest) then) =
      _$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$BadRequestCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(BadRequest _value, $Res Function(BadRequest) _then)
      : super(_value, (v) => _then(v as BadRequest));

  @override
  BadRequest get _value => super._value as BadRequest;
}

/// @nodoc
class _$BadRequest with DiagnosticableTreeMixin implements BadRequest {
  const _$BadRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.badRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.badRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements NetworkExceptions {
  const factory BadRequest() = _$BadRequest;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;

  @override
  $Res call({
    Object reason = freezed,
  }) {
    return _then(NotFound(
      reason == freezed ? _value.reason : reason as String,
    ));
  }
}

/// @nodoc
class _$NotFound with DiagnosticableTreeMixin implements NotFound {
  const _$NotFound(this.reason) : assert(reason != null);

  @override
  final String reason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notFound(reason: $reason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notFound'))
      ..add(DiagnosticsProperty('reason', reason));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotFound &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  $NotFoundCopyWith<NotFound> get copyWith =>
      _$NotFoundCopyWithImpl<NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notFound(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements NetworkExceptions {
  const factory NotFound(String reason) = _$NotFound;

  String get reason;
  @JsonKey(ignore: true)
  $NotFoundCopyWith<NotFound> get copyWith;
}

/// @nodoc
abstract class $MethodNotAllowedCopyWith<$Res> {
  factory $MethodNotAllowedCopyWith(
          MethodNotAllowed value, $Res Function(MethodNotAllowed) then) =
      _$MethodNotAllowedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MethodNotAllowedCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $MethodNotAllowedCopyWith<$Res> {
  _$MethodNotAllowedCopyWithImpl(
      MethodNotAllowed _value, $Res Function(MethodNotAllowed) _then)
      : super(_value, (v) => _then(v as MethodNotAllowed));

  @override
  MethodNotAllowed get _value => super._value as MethodNotAllowed;
}

/// @nodoc
class _$MethodNotAllowed
    with DiagnosticableTreeMixin
    implements MethodNotAllowed {
  const _$MethodNotAllowed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.methodNotAllowed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.methodNotAllowed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MethodNotAllowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return methodNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (methodNotAllowed != null) {
      return methodNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return methodNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (methodNotAllowed != null) {
      return methodNotAllowed(this);
    }
    return orElse();
  }
}

abstract class MethodNotAllowed implements NetworkExceptions {
  const factory MethodNotAllowed() = _$MethodNotAllowed;
}

/// @nodoc
abstract class $NotAcceptableCopyWith<$Res> {
  factory $NotAcceptableCopyWith(
          NotAcceptable value, $Res Function(NotAcceptable) then) =
      _$NotAcceptableCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotAcceptableCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NotAcceptableCopyWith<$Res> {
  _$NotAcceptableCopyWithImpl(
      NotAcceptable _value, $Res Function(NotAcceptable) _then)
      : super(_value, (v) => _then(v as NotAcceptable));

  @override
  NotAcceptable get _value => super._value as NotAcceptable;
}

/// @nodoc
class _$NotAcceptable with DiagnosticableTreeMixin implements NotAcceptable {
  const _$NotAcceptable();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notAcceptable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notAcceptable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAcceptable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notAcceptable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAcceptable != null) {
      return notAcceptable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notAcceptable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAcceptable != null) {
      return notAcceptable(this);
    }
    return orElse();
  }
}

abstract class NotAcceptable implements NetworkExceptions {
  const factory NotAcceptable() = _$NotAcceptable;
}

/// @nodoc
abstract class $RequestTimeoutCopyWith<$Res> {
  factory $RequestTimeoutCopyWith(
          RequestTimeout value, $Res Function(RequestTimeout) then) =
      _$RequestTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $RequestTimeoutCopyWith<$Res> {
  _$RequestTimeoutCopyWithImpl(
      RequestTimeout _value, $Res Function(RequestTimeout) _then)
      : super(_value, (v) => _then(v as RequestTimeout));

  @override
  RequestTimeout get _value => super._value as RequestTimeout;
}

/// @nodoc
class _$RequestTimeout with DiagnosticableTreeMixin implements RequestTimeout {
  const _$RequestTimeout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.requestTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.requestTimeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeout != null) {
      return requestTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return requestTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements NetworkExceptions {
  const factory RequestTimeout() = _$RequestTimeout;
}

/// @nodoc
abstract class $SendTimeoutCopyWith<$Res> {
  factory $SendTimeoutCopyWith(
          SendTimeout value, $Res Function(SendTimeout) then) =
      _$SendTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $SendTimeoutCopyWith<$Res> {
  _$SendTimeoutCopyWithImpl(
      SendTimeout _value, $Res Function(SendTimeout) _then)
      : super(_value, (v) => _then(v as SendTimeout));

  @override
  SendTimeout get _value => super._value as SendTimeout;
}

/// @nodoc
class _$SendTimeout with DiagnosticableTreeMixin implements SendTimeout {
  const _$SendTimeout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.sendTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.sendTimeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout implements NetworkExceptions {
  const factory SendTimeout() = _$SendTimeout;
}

/// @nodoc
abstract class $ConflictCopyWith<$Res> {
  factory $ConflictCopyWith(Conflict value, $Res Function(Conflict) then) =
      _$ConflictCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConflictCopyWithImpl<$Res> extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $ConflictCopyWith<$Res> {
  _$ConflictCopyWithImpl(Conflict _value, $Res Function(Conflict) _then)
      : super(_value, (v) => _then(v as Conflict));

  @override
  Conflict get _value => super._value as Conflict;
}

/// @nodoc
class _$Conflict with DiagnosticableTreeMixin implements Conflict {
  const _$Conflict();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.conflict()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NetworkExceptions.conflict'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Conflict);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict implements NetworkExceptions {
  const factory Conflict() = _$Conflict;
}

/// @nodoc
abstract class $InternalServerErrorCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(
          InternalServerError value, $Res Function(InternalServerError) then) =
      _$InternalServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalServerErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(
      InternalServerError _value, $Res Function(InternalServerError) _then)
      : super(_value, (v) => _then(v as InternalServerError));

  @override
  InternalServerError get _value => super._value as InternalServerError;
}

/// @nodoc
class _$InternalServerError
    with DiagnosticableTreeMixin
    implements InternalServerError {
  const _$InternalServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.internalServerError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.internalServerError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements NetworkExceptions {
  const factory InternalServerError() = _$InternalServerError;
}

/// @nodoc
abstract class $NotImplementedCopyWith<$Res> {
  factory $NotImplementedCopyWith(
          NotImplemented value, $Res Function(NotImplemented) then) =
      _$NotImplementedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotImplementedCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NotImplementedCopyWith<$Res> {
  _$NotImplementedCopyWithImpl(
      NotImplemented _value, $Res Function(NotImplemented) _then)
      : super(_value, (v) => _then(v as NotImplemented));

  @override
  NotImplemented get _value => super._value as NotImplemented;
}

/// @nodoc
class _$NotImplemented with DiagnosticableTreeMixin implements NotImplemented {
  const _$NotImplemented();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.notImplemented()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.notImplemented'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotImplemented);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notImplemented();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notImplemented != null) {
      return notImplemented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return notImplemented(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notImplemented != null) {
      return notImplemented(this);
    }
    return orElse();
  }
}

abstract class NotImplemented implements NetworkExceptions {
  const factory NotImplemented() = _$NotImplemented;
}

/// @nodoc
abstract class $ServiceUnavailableCopyWith<$Res> {
  factory $ServiceUnavailableCopyWith(
          ServiceUnavailable value, $Res Function(ServiceUnavailable) then) =
      _$ServiceUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceUnavailableCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $ServiceUnavailableCopyWith<$Res> {
  _$ServiceUnavailableCopyWithImpl(
      ServiceUnavailable _value, $Res Function(ServiceUnavailable) _then)
      : super(_value, (v) => _then(v as ServiceUnavailable));

  @override
  ServiceUnavailable get _value => super._value as ServiceUnavailable;
}

/// @nodoc
class _$ServiceUnavailable
    with DiagnosticableTreeMixin
    implements ServiceUnavailable {
  const _$ServiceUnavailable();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.serviceUnavailable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NetworkExceptions.serviceUnavailable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServiceUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return serviceUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serviceUnavailable != null) {
      return serviceUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailable implements NetworkExceptions {
  const factory ServiceUnavailable() = _$ServiceUnavailable;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc
class _$NoInternetConnection
    with DiagnosticableTreeMixin
    implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NetworkExceptions.noInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements NetworkExceptions {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $FormatExceptionCopyWith<$Res> {
  factory $FormatExceptionCopyWith(
          FormatException value, $Res Function(FormatException) then) =
      _$FormatExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormatExceptionCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $FormatExceptionCopyWith<$Res> {
  _$FormatExceptionCopyWithImpl(
      FormatException _value, $Res Function(FormatException) _then)
      : super(_value, (v) => _then(v as FormatException));

  @override
  FormatException get _value => super._value as FormatException;
}

/// @nodoc
class _$FormatException
    with DiagnosticableTreeMixin
    implements FormatException {
  const _$FormatException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.formatException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.formatException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FormatException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return formatException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (formatException != null) {
      return formatException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return formatException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (formatException != null) {
      return formatException(this);
    }
    return orElse();
  }
}

abstract class FormatException implements NetworkExceptions {
  const factory FormatException() = _$FormatException;
}

/// @nodoc
abstract class $UnableToProcessCopyWith<$Res> {
  factory $UnableToProcessCopyWith(
          UnableToProcess value, $Res Function(UnableToProcess) then) =
      _$UnableToProcessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnableToProcessCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $UnableToProcessCopyWith<$Res> {
  _$UnableToProcessCopyWithImpl(
      UnableToProcess _value, $Res Function(UnableToProcess) _then)
      : super(_value, (v) => _then(v as UnableToProcess));

  @override
  UnableToProcess get _value => super._value as UnableToProcess;
}

/// @nodoc
class _$UnableToProcess
    with DiagnosticableTreeMixin
    implements UnableToProcess {
  const _$UnableToProcess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unableToProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unableToProcess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unableToProcess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToProcess != null) {
      return unableToProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unableToProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToProcess != null) {
      return unableToProcess(this);
    }
    return orElse();
  }
}

abstract class UnableToProcess implements NetworkExceptions {
  const factory UnableToProcess() = _$UnableToProcess;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(
      DefaultError _value, $Res Function(DefaultError) _then)
      : super(_value, (v) => _then(v as DefaultError));

  @override
  DefaultError get _value => super._value as DefaultError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(DefaultError(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$DefaultError with DiagnosticableTreeMixin implements DefaultError {
  const _$DefaultError(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.defaultError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.defaultError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DefaultError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return defaultError(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements NetworkExceptions {
  const factory DefaultError(String error) = _$DefaultError;

  String get error;
  @JsonKey(ignore: true)
  $DefaultErrorCopyWith<DefaultError> get copyWith;
}

/// @nodoc
abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

/// @nodoc
class _$UnexpectedError
    with DiagnosticableTreeMixin
    implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unexpectedError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.unexpectedError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestCancelled(),
    @required TResult unauthorisedRequest(List<ErrorModel> errors),
    @required TResult badRequest(),
    @required TResult notFound(String reason),
    @required TResult methodNotAllowed(),
    @required TResult notAcceptable(),
    @required TResult requestTimeout(),
    @required TResult sendTimeout(),
    @required TResult conflict(),
    @required TResult internalServerError(),
    @required TResult notImplemented(),
    @required TResult serviceUnavailable(),
    @required TResult noInternetConnection(),
    @required TResult formatException(),
    @required TResult unableToProcess(),
    @required TResult defaultError(String error),
    @required TResult unexpectedError(),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestCancelled(),
    TResult unauthorisedRequest(List<ErrorModel> errors),
    TResult badRequest(),
    TResult notFound(String reason),
    TResult methodNotAllowed(),
    TResult notAcceptable(),
    TResult requestTimeout(),
    TResult sendTimeout(),
    TResult conflict(),
    TResult internalServerError(),
    TResult notImplemented(),
    TResult serviceUnavailable(),
    TResult noInternetConnection(),
    TResult formatException(),
    TResult unableToProcess(),
    TResult defaultError(String error),
    TResult unexpectedError(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestCancelled(RequestCancelled value),
    @required TResult unauthorisedRequest(UnauthorisedRequest value),
    @required TResult badRequest(BadRequest value),
    @required TResult notFound(NotFound value),
    @required TResult methodNotAllowed(MethodNotAllowed value),
    @required TResult notAcceptable(NotAcceptable value),
    @required TResult requestTimeout(RequestTimeout value),
    @required TResult sendTimeout(SendTimeout value),
    @required TResult conflict(Conflict value),
    @required TResult internalServerError(InternalServerError value),
    @required TResult notImplemented(NotImplemented value),
    @required TResult serviceUnavailable(ServiceUnavailable value),
    @required TResult noInternetConnection(NoInternetConnection value),
    @required TResult formatException(FormatException value),
    @required TResult unableToProcess(UnableToProcess value),
    @required TResult defaultError(DefaultError value),
    @required TResult unexpectedError(UnexpectedError value),
  }) {
    assert(requestCancelled != null);
    assert(unauthorisedRequest != null);
    assert(badRequest != null);
    assert(notFound != null);
    assert(methodNotAllowed != null);
    assert(notAcceptable != null);
    assert(requestTimeout != null);
    assert(sendTimeout != null);
    assert(conflict != null);
    assert(internalServerError != null);
    assert(notImplemented != null);
    assert(serviceUnavailable != null);
    assert(noInternetConnection != null);
    assert(formatException != null);
    assert(unableToProcess != null);
    assert(defaultError != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestCancelled(RequestCancelled value),
    TResult unauthorisedRequest(UnauthorisedRequest value),
    TResult badRequest(BadRequest value),
    TResult notFound(NotFound value),
    TResult methodNotAllowed(MethodNotAllowed value),
    TResult notAcceptable(NotAcceptable value),
    TResult requestTimeout(RequestTimeout value),
    TResult sendTimeout(SendTimeout value),
    TResult conflict(Conflict value),
    TResult internalServerError(InternalServerError value),
    TResult notImplemented(NotImplemented value),
    TResult serviceUnavailable(ServiceUnavailable value),
    TResult noInternetConnection(NoInternetConnection value),
    TResult formatException(FormatException value),
    TResult unableToProcess(UnableToProcess value),
    TResult defaultError(DefaultError value),
    TResult unexpectedError(UnexpectedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements NetworkExceptions {
  const factory UnexpectedError() = _$UnexpectedError;
}
