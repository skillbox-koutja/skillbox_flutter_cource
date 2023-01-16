// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseHotelDetails _$ApiResponseHotelDetailsFromJson(
        Map<String, dynamic> json) =>
    ApiResponseHotelDetails(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      poster: json['poster'] as String,
      address:
          ApiResponseAddress.fromJson(json['address'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      services: ApiResponseServices.fromJson(
          json['services'] as Map<String, dynamic>),
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiResponseHotelDetailsToJson(
        ApiResponseHotelDetails instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'poster': instance.poster,
      'address': instance.address,
      'price': instance.price,
      'rating': instance.rating,
      'services': instance.services,
      'photos': instance.photos,
    };

ApiResponseAddress _$ApiResponseAddressFromJson(Map<String, dynamic> json) =>
    ApiResponseAddress(
      country: json['country'] as String,
      street: json['street'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$ApiResponseAddressToJson(ApiResponseAddress instance) =>
    <String, dynamic>{
      'country': instance.country,
      'street': instance.street,
      'city': instance.city,
    };

ApiResponseServices _$ApiResponseServicesFromJson(Map<String, dynamic> json) =>
    ApiResponseServices(
      free: (json['free'] as List<dynamic>).map((e) => e as String).toList(),
      paid: (json['paid'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiResponseServicesToJson(
        ApiResponseServices instance) =>
    <String, dynamic>{
      'free': instance.free,
      'paid': instance.paid,
    };
