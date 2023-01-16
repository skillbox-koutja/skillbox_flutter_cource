import 'package:hotels/api/mocky/mapper/photo.dart';
import 'package:hotels/api/mocky/response/hotels.dart';
import 'package:hotels/domain/entity/hotel.dart';
import 'package:uuid/uuid.dart';

class ApiHotel extends Hotel {
  ApiHotel(ApiResponseHotel response)
      : super(
          uuid: UuidValue(response.uuid),
          name: response.name,
          poster: ApiAssetPhoto(response.poster),
        );
}
