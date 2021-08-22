import 'package:dio/dio.dart';

class SooqInterceptor extends InterceptorsWrapper {
  final _LOGGING_TAG = "DIO_TAG";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('${_LOGGING_TAG}-REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('${_LOGGING_TAG}-RESPONSE[${response.data}] => EXTRAS: ${response.extra}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('${_LOGGING_TAG}-ERROR[${err.error}] => MESSAGE: ${err.message}|| StackTrace: ${err.stackTrace}');
    super.onError(err, handler);
  }
}
