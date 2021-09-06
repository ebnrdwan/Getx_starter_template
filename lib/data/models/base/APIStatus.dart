import 'package:your_sooq/utils/Constants.dart';

class ApiStatus<T> {
  T? data;
  String? message;
  Status? status;
  int? subStatusCode;

  ApiStatus({this.data, this.message, this.status, this.subStatusCode});

  ApiStatus.success(this.data) : status = SuccessStatus();

  ApiStatus.unAuthorized() : status = UnAuthorizedStatus();

  ApiStatus.noInternet({int subStatusCode = APiConstants.defaultSubStatus})
      : status = NoInternetStatus(subStatusCode: subStatusCode);

  ApiStatus.error({int subStatusCode = APiConstants.defaultSubStatus})
      : status = ErrorStatus(subStatusCode: subStatusCode);
}

abstract class Status {
  final int? subStatusCode;

  Status(this.subStatusCode);
}

class NoInternetStatus extends Status {
  NoInternetStatus({int subStatusCode = APiConstants.defaultSubStatus}) : super(subStatusCode);
}

class SuccessStatus extends Status {
  SuccessStatus({int subStatusCode = APiConstants.defaultSubStatus}) : super(subStatusCode);
}

class ErrorStatus extends Status {
  ErrorStatus({int subStatusCode = APiConstants.defaultSubStatus}) : super(subStatusCode);
}

class UnAuthorizedStatus extends Status {
  UnAuthorizedStatus({int subStatusCode = APiConstants.defaultSubStatus}) : super(subStatusCode);
}
