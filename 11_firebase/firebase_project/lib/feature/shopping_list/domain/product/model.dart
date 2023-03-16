import 'package:firebase_project/feature/core/uuid/utils/json.dart';
import 'package:firebase_project/feature/shopping_list/domain/product/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Product with _$Product {
  @JsonSerializable(converters: [UuidValueJsonConverter()])
  const factory Product({
    required UuidValue id,
    required String title,
    required double price,
    required ProductStatus status,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  factory Product.create({
    required String title,
    required double price,
    UuidValue? id,
    ProductStatus? status,
  }) {
    return Product(
      id: id ?? const Uuid().v4obj(),
      title: title,
      price: price,
      status: status ?? ProductStatus.initial,
    );
  }
}
