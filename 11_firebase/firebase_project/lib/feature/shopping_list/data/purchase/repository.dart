import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/core/error/failure.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/source.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/repository.dart';

class FirebasePurchasesRepository extends PurchaseRepository {
  final PurchaseFirebaseDataSource _dataSource;

  FirebasePurchasesRepository(this._dataSource);

  @override
  Future<Either<Failure, PurchaseEntity>> add(Purchase model) async {
    try {
      final entity = FirebasePurchaseEntity.fromModel(
        dataSource: _dataSource,
        model: model,
      );

      await entity.save();

      return Future.value(Right(entity));
    } on Exception {
      return Future.value(Left(FailedCreateEntity()));
    }
  }

  @override
  Future<Either<Failure, PurchaseEntity>> delete(PurchaseEntity entity) async {
    try {
      await entity.delete();

      return Future.value(Right(entity));
    } on Exception {
      return Future.value(Left(FailedDeleteEntity()));
    }
  }
}
