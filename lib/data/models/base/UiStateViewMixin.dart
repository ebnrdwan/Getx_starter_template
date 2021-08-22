import 'package:flutter/cupertino.dart';
import 'package:your_sooq/data/models/base/UiState.dart';
import 'package:your_sooq/utils/widget/LoadingView.dart';

mixin UiStateViewMixin {
  Widget handleUiState<T>(
      UiState<T> stateValue, Widget Function(T model) success,
      {Widget Function() noDataWidget: noDataWidget,
      Widget Function(LoadingType loadingType) loadingWidget: loadingWidget,
      Widget Function() noInternetWidget: noInternetWidget,
      Widget Function(String message) errorWidget: errorWidget}) {

    return _getWidgetOfUiState<T>(stateValue, success, loadingWidget,
        noInternetWidget, noDataWidget, errorWidget);
  }

  Widget _getWidgetOfUiState<T>(
    UiState<T> uiStateModel,
    Widget Function(T model) success,
    Widget Function(LoadingType loadingType) loading,
    Widget Function() noInternet,
    Widget Function() noData,
    Widget Function(String message) error,
  ) {
    switch (uiStateModel.state.runtimeType) {
      case Loading:
        return _onLoading(uiStateModel, loading);
      case Success:
        return success(uiStateModel.data!);
      case NoInternet:
        return noInternetWidget();
      case NoData:
        return noDataWidget();
      case Error:
        return errorWidget("General Error");
      case ServerError:
        return errorWidget("Server Error");

      case Idle:
      default:
        return SizedBox.shrink();
    }
  }
}

Widget _onLoading(
    UiState stateValue, Widget Function(LoadingType loadingType) loading) {
  Loading loadingType = stateValue.state as Loading;
  return loading(loadingType.loadingType);
}

Widget loadingWidget(LoadingType loadingType) {
  if (loadingType == LoadingType.REFRESH)
    return SizedBox.shrink();
  else if (loadingType == LoadingType.PAGING)
    return SizedBox.shrink();
  else
    return LoadingView();
}

Widget errorWidget(String message) {
  return SizedBox.shrink();
}

Widget noInternetWidget() {
  return SizedBox.shrink();
}

Widget noDataWidget() {
  return SizedBox.shrink();
}
