import 'package:json_annotation/json_annotation.dart';

part 'hotels.g.dart';

@JsonSerializable()
class ApiResponseHotel {
  final String uuid;
  final String name;
  final String poster;

  const ApiResponseHotel({
    required this.uuid,
    required this.name,
    required this.poster,
  });

  factory ApiResponseHotel.fromJson(Map<String, dynamic> json) => _$ApiResponseHotelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseHotelToJson(this);
}

typedef ApiResponseHotels = List<ApiResponseHotel>;
