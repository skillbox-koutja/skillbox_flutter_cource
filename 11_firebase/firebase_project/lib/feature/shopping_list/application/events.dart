import 'dart:async';

import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

@freezed
class ShoppingListEvents with _$ShoppingListEvents {
  const factory ShoppingListEvents.addPurchase(Purchase model) = AddPurchase;

  const factory ShoppingListEvents.deletePurchase(PurchaseEntity entity) = DeletePurchase;

  const factory ShoppingListEvents.donePurchase(PurchaseEntity entity) = DonePurchase;

  const factory ShoppingListEvents.cancelPurchase(PurchaseEntity entity) = CancelPurchase;

  const factory ShoppingListEvents.clearPurchase(PurchaseEntity entity) = ClearPurchase;

  const factory ShoppingListEvents.selectPurchase(PurchaseEntity entity) = SelectPurchase;

  const factory ShoppingListEvents.unselectPurchase(PurchaseEntity entity) = UnselectPurchase;

  const factory ShoppingListEvents.fetchPurchases(void Function(Stream<List<PurchaseEntity>>) subscribe) =
      FetchPurchases;
}
