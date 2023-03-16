import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/core/error/failure.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';

abstract class PurchaseRepository {
  Future<Either<Failure, PurchaseEntity>> delete(PurchaseEntity entity);

  Future<Either<Failure, PurchaseEntity>> add(Purchase model);
}
