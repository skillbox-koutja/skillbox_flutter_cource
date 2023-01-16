import 'dart:developer';

import 'package:hotels/api/mocky/mapper/hotel.dart';
import 'package:hotels/api/mocky/mapper/photo.dart';
import 'package:hotels/api/mocky/response/hotel_details.dart';
import 'package:hotels/domain/entity/address.dart';
import 'package:hotels/domain/entity/hotel_details.dart';
import 'package:hotels/domain/entity/hotel_services.dart';

class ApiHotelDetails extends HotelDetails {
  ApiHotelDetails(ApiResponseHotelDetails response)
      : super(
          hotel: ApiHotel(response),
          address: Address(
            country: response.address.country,
            street: response.address.street,
            city: response.address.city,
          ),
          price: response.price,
          rating: response.rating,
          services: HotelServices(
            free: response.services.free,
            paid: response.services.paid,
          ),
          photos: response.photos.map(ApiAssetPhoto.new).toList(),
        );
}
