class UiState<T> {
  T? data;
  String? message;
  State? state;

  UiState({this.data, this.message, this.state});

  UiState.loading({LoadingType loadingType = LoadingType.MAIN}) : state = Loading(loadingType: loadingType);

  UiState.success(this.data) : state = Success();

  UiState.noData(this.data) : state = NoData();

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
