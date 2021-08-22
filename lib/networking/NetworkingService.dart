import 'package:dio/dio.dart';
import 'package:dio/src/response.dart' as dioResponse;
import 'package:get/get.dart';
import 'package:your_sooq/utils/Constants.dart';

class NetworkingService extends GetxService {
  final Dio _dioClient;

  NetworkingService(this._dioClient);

  Future<dioResponse.Response<dynamic>> fetchUserConfig() async {
    return  _dioClient.get(APiConstants.countryLookup);
  }
}
