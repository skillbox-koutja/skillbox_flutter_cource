import 'package:hotels/api/mocky/response/hotels.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel_details.g.dart';

@JsonSerializable()
class ApiResponseHotelDetails extends ApiResponseHotel {
  final ApiResponseAddress address;
  final double price;
  final double rating;
  final ApiResponseServices services;
  final List<String> photos;

  const ApiResponseHotelDetails({
    required super.uuid,
    required super.name,
    required super.poster,
    required this.address,
    required this.price,
    required this.rating,
    required this.services,
    required this.photos,
  });

  factory ApiResponseHotelDetails.fromJson(Map<String, dynamic> json) => _$ApiResponseHotelDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ApiResponseHotelDetailsToJson(this);
}

@JsonSerializable()
class ApiResponseAddress {
  final String country;
  final String street;
  final String city;

  const ApiResponseAddress({
    required this.country,
    required this.street,
    required this.city,
  });

  factory ApiResponseAddress.fromJson(Map<String, dynamic> json) => _$ApiResponseAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseAddressToJson(this);
}

@JsonSerializable()
class ApiResponseServices {
  final List<String> free;
  final List<String> paid;

  const ApiResponseServices({
    required this.free,
    required this.paid,
  });

  factory ApiResponseServices.fromJson(Map<String, dynamic> json) => _$ApiResponseServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseServicesToJson(this);
}
