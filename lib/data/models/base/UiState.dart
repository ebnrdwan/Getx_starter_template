class UiState<T> {
  T? data;
  String? message;
  State? state;

  UiState({this.data, this.message, this.state});

  UiState.loading({LoadingType loadingType = LoadingType.MAIN}) : state = Loading(loadingType: loadingType);

  UiState.success(this.data) : state = Success();

  UiState.noData() : state = NoData();

  UiState.noInternet() : state = Success();

  UiState.error(this.message) : state = NoInternet();

  UiState.serverError(this.message) : state = NoInternet();

  UiState.idle() : state = Idle();
}

abstract class State {}

class Success extends State {
  Success();
}

class NoData extends State {
  NoData();
}

class Loading extends State {
  LoadingType loadingType;

  Loading({this.loadingType = LoadingType.MAIN});
}

class NoInternet extends State {
  NoInternet();
}

class Error extends State {
  Error();
}

class ServerError extends State {
  ServerError();
}

class Idle extends State {
  Idle();
}

enum LoadingType { MAIN, REFRESH, PAGING }

extension UiStateExtension on UiState {
  bool get isLoading => this.state.runtimeType == Loading;

  bool get isLoadingMore => this.state.runtimeType == Loading && (this.state as Loading).loadingType == LoadingType.PAGING;

  bool get isError => this.state.runtimeType == Error;

  bool get isNoInternet => this.state.runtimeType == NoInternet;

  bool get isNoData => this.state.runtimeType == NoData;

  bool get isServerError => this.state.runtimeType == ServerError;

  bool get isSuccess => this.state.runtimeType == Success;

  bool get isIdle => this.state.runtimeType == Idle;

  T? getDataWrapper<T>() {
    if (this.isSuccess)
      return (this.data as T);
    else
      return null;
  }
}
