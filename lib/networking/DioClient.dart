import 'package:dio/dio.dart';
import 'package:your_sooq/utils/Constants.dart';

import 'DioInterceptors.dart';

class DioClient {
  static Dio? _dio;

  static Dio get instance => _getInstance();

  static Dio _getInstance() {
    if (_dio != null) return _dio!;
    _dio = Dio(BaseOptions(baseUrl: APiConstants.url));
    _dio?.interceptors.add(LogInterceptor());
    _dio?.interceptors.add(SooqInterceptor());
    return _dio!;
  }
}
