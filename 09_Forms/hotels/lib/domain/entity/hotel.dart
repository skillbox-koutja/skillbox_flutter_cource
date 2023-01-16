import 'package:flutter/foundation.dart';
import 'package:hotels/domain/entity/photo.dart';
import 'package:uuid/uuid.dart';

@immutable
class Hotel {
  static final unknownUuid = UuidValue('00000000-0000-0000-0000-000000000000');
  final UuidValue uuid;
  final String name;
  final Photo poster;

  @override
  int get hashCode => uuid.uuid.hashCode;

  const Hotel({
    required this.uuid,
    required this.name,
    required this.poster,
  });

  factory Hotel.unknown() {
    return Hotel(
      uuid: unknownUuid,
      name: '-unknown-',
      poster: const Photo(path: ''),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is Hotel && other.uuid == uuid;
  }
}
