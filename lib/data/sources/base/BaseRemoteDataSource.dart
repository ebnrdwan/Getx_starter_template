import 'dart:io';

import 'package:dio/src/response.dart';
import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/base/BaseResponse.dart';

abstract class BaseRemoteDataSource {
  ApiStatus<T> parseResponseToStatus<T extends BaseResponse>(Response<dynamic> response, T Function() creator) {
    switch (response.statusCode) {
      case HttpStatus.ok:
        return ApiStatus.success(creator());
      case HttpStatus.badRequest:
        return ApiStatus.error();
      case HttpStatus.unauthorized:
      case HttpStatus.forbidden:
        return ApiStatus.unAuthorized();
      case HttpStatus.internalServerError:
        return ApiStatus.error();
      default:
        return ApiStatus.error();
    }
  }
}
