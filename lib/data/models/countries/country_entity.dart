import 'package:your_sooq/data/models/base/BaseResponse.dart';
import 'package:your_sooq/generated/json/base/json_convert_content.dart';

class CountryEntity extends BaseResponse<CountryEntity> with JsonConvert<CountryEntity> {
  late List<CountryEntityData> data;
  int? statusCode;
  String? error;

  CountryEntity.fromJson(Map<String, dynamic> map) : super.fromJson(map)  {
    fromJson(map);
  }
}

class CountryEntityData with JsonConvert<CountryEntityData> {
  late int id;
  late String name;
  late String phoneCode;
  late int phoneLength;
  late String iconPath;
}
