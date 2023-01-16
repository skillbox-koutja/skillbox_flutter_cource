import 'package:fluro/fluro.dart';
import 'package:hotels/domain/entity/hotel.dart';
import 'package:hotels/ui/hotel/details/page.dart';
import 'package:hotels/ui/hotel/list/page.dart';
import 'package:uuid/uuid.dart';

final rootHandler = Handler(handlerFunc: (context, params) {
  return const HotelListPage();
});

final hotelListHandler = Handler(handlerFunc: (context, params) {
  return const HotelListPage();
});

final hotelDetailsHandler = Handler(handlerFunc: (context, params) {
  final paramsUuid = params['uuid'];
  final uuid = paramsUuid == null ? Hotel.unknownUuid : UuidValue(paramsUuid.first);

  return HotelDetailsPage(uuid: uuid);
});
