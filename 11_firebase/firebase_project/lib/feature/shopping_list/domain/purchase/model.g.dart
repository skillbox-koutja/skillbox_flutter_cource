// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Purchase _$$_PurchaseFromJson(Map<String, dynamic> json) => _$_Purchase(
      id: const UuidValueJsonConverter().fromJson(json['id'] as String),
      title: json['title'] as String,
      products: (json['products'] as List<dynamic>).map((e) => Product.fromJson(e as Map<String, dynamic>)).toList(),
      created: DateTime.parse(json['created'] as String),
      status: $enumDecode(_$PurchaseStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_PurchaseToJson(_$_Purchase instance) => <String, dynamic>{
      'id': const UuidValueJsonConverter().toJson(instance.id),
      'title': instance.title,
      'products': instance.products.map((e) => e.toJson()).toList(),
      'created': instance.created.toIso8601String(),
      'status': _$PurchaseStatusEnumMap[instance.status]!,
    };

const _$PurchaseStatusEnumMap = {
  PurchaseStatus.initial: 'initial',
  PurchaseStatus.done: 'done',
  PurchaseStatus.canceled: 'canceled',
};
