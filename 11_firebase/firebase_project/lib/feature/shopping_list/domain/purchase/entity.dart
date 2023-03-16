import 'package:firebase_project/feature/core/domain/aggregate_root.dart';
import 'package:firebase_project/feature/shopping_list/domain/product/model.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';
import 'package:uuid/uuid.dart';

abstract class PurchaseEntity extends AggregateRoot<UuidValue, Purchase> {
  const PurchaseEntity({
    required super.id,
    required super.model,
  });

  Future<PurchaseEntity> addProduct(Product product);

  Future<PurchaseEntity> done();

  Future<PurchaseEntity> cancel();

  Future<PurchaseEntity> clear();
}
