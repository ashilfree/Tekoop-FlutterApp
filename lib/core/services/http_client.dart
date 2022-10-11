import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:tekoop/core/stores/auth_store.dart';
import 'package:tekoop/core/utils/urls.dart';

abstract class HttpClient {
  Future<dynamic> get(String url,
      {Map<String, dynamic> headers,
      Map<String, dynamic> queryParameters,
      bool authorization = false});
  Future<dynamic> post(String url,
      {Map<String, dynamic> headers,
      @required body,
      bool authorization = false});
  Future<dynamic> put(String url,
      {Map<String, dynamic> headers,
      @required body,
      bool authorization = false});
  Future<dynamic> delete(String url,
      {Map<String, dynamic> headers,
      Map<String, dynamic> queryParameters,
      bool authorization = false});
}

class HttpClientImpl extends Interceptor implements HttpClient {
  final Dio _dio;
  final Connectivity _connectivity;

  HttpClientImpl(this._dio, this._connectivity) {
    _initApiClient();
  }

  void _initApiClient() {
    _dio
      ..options.baseUrl = URLs.baseUrl
      ..options.headers['Accept'] = 'application/json'
      // ..options.connectTimeout = defaultConnectTimeout
      // ..options.receiveTimeout = defaultReceiveTimeout
      // ..options.sendTimeout = defaultSendTimeout
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async{
          return handler.next(options);
        }, onResponse: (response,handler) async{
          return handler.next(response);
        }, onError: (DioError e, handler) async{
          return handler.next(e);
        }),
      );
  }

  // bool _shouldRetry(DioError err) {
  //   return err.type == DioErrorType.DEFAULT &&
  //       err.error != null &&
  //       err.error is SocketException;
  // }

  void _authorization(bool authorization) {
    if (authorization) {
      _dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            print('TOKEN >>> ${AuthStore.to.token}');
            if (AuthStore.to.token != null) {
              options.headers[HttpHeaders.authorizationHeader] =
                  "Bearer " + AuthStore.to.token.toString();
            }
            return handler.next(options);
          },
          onResponse: (response,handler) async {
            return handler.next(response);
          },
          onError: (DioError e, handler) async{
            return handler.next(e);
          },
        ),
      );
    }
  }

  @override
  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool authorization = false,
  }) async {
    _authorization(authorization);

    try {
      final response = await _dio.get(url,
          queryParameters: queryParameters, options: Options(headers: headers));

      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<dynamic> post(
    String url, {
    Map<String, dynamic>? headers,
    @required body,
    bool authorization = false,
  }) async {
    _authorization(authorization);

    try {
      final response =
          await _dio.post(url, data: body, options: Options(headers: headers));

      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  @override
  Future put(
    String url, {
    Map<String, dynamic>? headers,
    @required body,
    bool authorization = false,
  }) async {
    _authorization(authorization);

    try {
      final response =
          await _dio.put(url, data: body, options: Options(headers: headers));

      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  @override
  Future delete(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    bool authorization = false,
  }) async {
    _authorization(authorization);

    try {
      final response = await _dio.delete(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      throw e;
    }
  }

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    late StreamSubscription streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = _connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription.cancel();
          // Complete the completer instead of returning
          responseCompleter.complete(
            _dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              // options: requestOptions
            ),
          );
        }
      },
    );
    return responseCompleter.future;
  }
}
