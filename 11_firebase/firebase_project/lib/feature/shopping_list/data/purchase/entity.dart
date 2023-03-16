import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/source.dart';
import 'package:firebase_project/feature/shopping_list/domain/product/model.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/status.dart';
import 'package:uuid/uuid.dart';

class FirebasePurchaseEntity extends PurchaseEntity {
  final PurchaseFirebaseDataSource dataSource;

  const FirebasePurchaseEntity({
    required this.dataSource,
    required super.id,
    required super.model,
  });

  factory FirebasePurchaseEntity.fromModel({
    required PurchaseFirebaseDataSource dataSource,
    required Purchase model,
  }) {
    return FirebasePurchaseEntity(
      dataSource: dataSource,
      id: model.id,
      model: model,
    );
  }

  factory FirebasePurchaseEntity.fromFirestore({
    required PurchaseFirebaseDataSource dataSource,
    required DocumentSnapshot<Map<String, dynamic>> snapshot,
  }) {
    final data = snapshot.data()!;

    final id = UuidValue(data['id'] as String);
    final created = data['created'] as Timestamp;
    final productsData = (data['products'] ?? <dynamic>[]) as List<dynamic>;
    // ignore: avoid_annotating_with_dynamic
    final products = productsData.map((dynamic e) => Product.fromJson(e as Map<String, dynamic>)).toList();
    final model = Purchase(
      id: id,
      title: data['title'] as String,
      created: created.toDate(),
      status: PurchaseStatus.fromString(data['status'] as String),
      products: products,
    );

    return FirebasePurchaseEntity(
      dataSource: dataSource,
      id: id,
      model: model,
    );
  }

  @override
  Future<PurchaseEntity> addProduct(Product product) {
    return _changeModel(model.addProduct(product));
  }

  @override
  Future<PurchaseEntity> done() {
    return _changeModel(model.done());
  }

  @override
  Future<PurchaseEntity> cancel() {
    return _changeModel(model.cancel());
  }

  @override
  Future<PurchaseEntity> clear() {
    return _changeModel(model.clear());
  }

  @override
  Future<void> save() {
    return dataSource.purchasesRef.doc(model.id.toString()).set(this);
  }

  @override
  Future<void> delete() {
    return dataSource.purchasesRef.doc(model.id.toString()).delete();
  }

  Map<String, dynamic> toFirestore() {
    return <String, dynamic>{
      'id': id.toString(),
      'title': model.title,
      'created': Timestamp.fromDate(model.created),
      'status': model.status.name,
      'products': model.products.map((e) => e.toJson()).toList(),
    };
  }

  Future<PurchaseEntity> _changeModel(Purchase model) async {
    final entity = FirebasePurchaseEntity.fromModel(
      dataSource: dataSource,
      model: model,
    );

    await entity.save();

    return entity;
  }
}
