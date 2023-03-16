import 'package:built_collection/built_collection.dart';
import 'package:firebase_project/feature/core/uuid/utils/json.dart';
import 'package:firebase_project/feature/shopping_list/domain/product/model.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Purchase with _$Purchase {
  bool get isDone => status == PurchaseStatus.done;
  bool get isCanceled => status == PurchaseStatus.canceled;

  @JsonSerializable(converters: [UuidValueJsonConverter()])
  const factory Purchase({
    required UuidValue id,
    required String title,
    required List<Product> products,
    required DateTime created,
    required PurchaseStatus status,
  }) = _Purchase;

  const Purchase._();

  factory Purchase.fromJson(Map<String, dynamic> json) => _$PurchaseFromJson(json);

  factory Purchase.create({
    UuidValue? id,
    String? title,
    List<Product>? products,
    DateTime? created,
    PurchaseStatus? status,
  }) {
    final createdDate = created ?? DateTime.now();

    return Purchase(
      id: id ?? const Uuid().v4obj(),
      title: title ?? DateFormat('dd.MM.yyyy').format(createdDate),
      status: status ?? PurchaseStatus.initial,
      products: products ?? [],
      created: createdDate,
    );
  }

  Purchase addProduct(Product product) {
    return copyWith(
      products: products.toBuiltList().rebuild((b) => b.add(product)).toList(),
    );
  }

  Purchase done() {
    return _changeStatus(PurchaseStatus.done);
  }

  Purchase cancel() {
    return _changeStatus(PurchaseStatus.canceled);
  }

  Purchase clear() {
    return _changeStatus(PurchaseStatus.initial);
  }

  Purchase _changeStatus(PurchaseStatus status) {
    return copyWith(status: status);
  }
}
