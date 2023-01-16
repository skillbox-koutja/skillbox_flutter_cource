import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hotels/api/mocky/mapper/hotel.dart';
import 'package:hotels/api/mocky/mapper/hotel_details.dart';
import 'package:hotels/api/mocky/response/hotel_details.dart';
import 'package:hotels/api/mocky/response/hotels.dart';
import 'package:hotels/api/not_found_exception.dart';
import 'package:hotels/domain/entity/hotel.dart';
import 'package:hotels/domain/entity/hotel_details.dart';
import 'package:uuid/uuid.dart';

class Api {
  final dio = Dio();

  Future<List<Hotel>> getHotels() async {
    final response = await dio.get<List<dynamic>>('https://run.mocky.io/v3/ac888dc5-d193-4700-b12c-abb43e289301');
    final data = response.data?.cast<Map<String, dynamic>>();
    var hotels = <Hotel>[];

    if (data != null) {
      hotels = data.map((json) => ApiHotel(ApiResponseHotel.fromJson(json))).toList();
    }

    return hotels;
  }

  Future<HotelDetails> getHotelDetails(UuidValue uuid) async {
    final response = await dio.get<Map<String, dynamic>>('https://run.mocky.io/v3/${uuid.uuid}');
    final data = response.data;

    if (data == null) {
      throw const NotFoundEntity();
    }

    return ApiHotelDetails(ApiResponseHotelDetails.fromJson(data));
  }
}
