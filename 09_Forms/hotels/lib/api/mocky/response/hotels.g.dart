// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseHotel _$ApiResponseHotelFromJson(Map<String, dynamic> json) =>
    ApiResponseHotel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      poster: json['poster'] as String,
    );

Map<String, dynamic> _$ApiResponseHotelToJson(ApiResponseHotel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'poster': instance.poster,
    };
