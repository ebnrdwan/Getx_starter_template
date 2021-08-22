import 'package:your_sooq/data/models/countries/country_entity.dart';

countryEntity2EntityFromJson(CountryEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => CountryEntityData().fromJson(v)).toList();
	}
	if (json['error'] != null) {
		data.error = json['error'];
	}
	if (json['statusCode'] != null) {
		data.statusCode = json['statusCode'] is String
				? int.tryParse(json['statusCode'])
				: json['statusCode'].toInt();
	}
	return data;
}

Map<String, dynamic> countryEntity2EntityToJson(CountryEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] =  entity.data.map((v) => v.toJson()).toList();
	data['error'] = entity.error;
	data['statusCode'] = entity.statusCode;
	return data;
}

countryEntity2DataFromJson(CountryEntityData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['phoneCode'] != null) {
		data.phoneCode = json['phoneCode'].toString();
	}
	if (json['phoneLength'] != null) {
		data.phoneLength = json['phoneLength'] is String
				? int.tryParse(json['phoneLength'])
				: json['phoneLength'].toInt();
	}
	if (json['iconPath'] != null) {
		data.iconPath = json['iconPath'].toString();
	}
	return data;
}

Map<String, dynamic> countryEntity2DataToJson(CountryEntityData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['phoneCode'] = entity.phoneCode;
	data['phoneLength'] = entity.phoneLength;
	data['iconPath'] = entity.iconPath;
	return data;
}