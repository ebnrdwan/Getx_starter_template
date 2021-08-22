
abstract class BaseResponse<T> {
  T? responseData;
  int? statusCode;
  String? error;

  BaseResponse.fromJson(Map<String, dynamic> map);

  _findValueByKey(Map<String, dynamic> map, dynamic key) {
    map.keys.firstWhere((k) => k.toString().contains(key), orElse: () => key);
  }
}
