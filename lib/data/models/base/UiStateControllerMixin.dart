import 'package:get/get.dart';
import 'package:your_sooq/data/models/base/APIStatus.dart';
import 'package:your_sooq/data/models/base/UiState.dart';

mixin UiStateControllerMixin on GetxController {
  Future<UiState<T>> mapToUiState<T>(ApiStatus responseStatus) async {
    switch (responseStatus.status.runtimeType) {
      case NoInternetStatus:
        return UiState.noInternet();
      case SuccessStatus:
        return UiState.success(responseStatus.data);
      case ErrorStatus:
        if (responseStatus.status?.subStatusCode == 0)
          return UiState.error("Local Error");
        else
          return UiState.serverError("Server Error");

      case UnAuthorizedStatus:
        return UiState.error("unAuthorized");
      default:
        return UiState.error("Generic Error");
    }
  }
}
