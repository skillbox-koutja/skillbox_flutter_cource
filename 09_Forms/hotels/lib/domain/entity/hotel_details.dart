import 'package:flutter/foundation.dart';
import 'package:hotels/domain/entity/address.dart';
import 'package:hotels/domain/entity/hotel.dart';
import 'package:hotels/domain/entity/hotel_services.dart';
import 'package:hotels/domain/entity/photo.dart';

@immutable
class HotelDetails {
  final Hotel hotel;
  final Address address;
  final double price;
  final double rating;
  final HotelServices services;
  final Photos photos;

  const HotelDetails({
    required this.hotel,
    required this.address,
    required this.price,
    required this.rating,
    required this.services,
    required this.photos,
  });
}
