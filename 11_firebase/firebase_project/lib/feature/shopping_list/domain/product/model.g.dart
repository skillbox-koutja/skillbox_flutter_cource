// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: const UuidValueJsonConverter().fromJson(json['id'] as String),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      status: $enumDecode(_$ProductStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) => <String, dynamic>{
      'id': const UuidValueJsonConverter().toJson(instance.id),
      'title': instance.title,
      'price': instance.price,
      'status': _$ProductStatusEnumMap[instance.status]!,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.initial: 'initial',
  ProductStatus.done: 'done',
  ProductStatus.cancel: 'cancel',
};
