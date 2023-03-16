import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

class UuidValueJsonConverter implements JsonConverter<UuidValue, String> {
  const UuidValueJsonConverter();

  @override
  UuidValue fromJson(String json) {
    return UuidValue(json);
  }

  @override
  String toJson(UuidValue object) {
    return object.toString();
  }
}
