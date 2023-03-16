import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/core/error/failure.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ShoppingListState with _$ShoppingListState {
  const factory ShoppingListState({
    required bool isSubmitting,
    required Option<Either<Failure, PurchaseEntity>> submitStatus,
    required Option<Either<Failure, ImageProvider>> backgroundImage,
  }) = _ShoppingListState;

  const ShoppingListState._();

  factory ShoppingListState.init() => ShoppingListState(
        isSubmitting: false,
        submitStatus: none(),
        backgroundImage: none(),
      );

  ShoppingListState loadBackgroundImage() {
    return copyWith(
      backgroundImage: none(),
    );
  }

  ShoppingListState loadedBackgroundImage(Option<Either<Failure, ImageProvider>> backgroundImage) {
    return copyWith(
      backgroundImage: backgroundImage,
    );
  }

  ShoppingListState submit() {
    return copyWith(
      isSubmitting: true,
      submitStatus: none(),
    );
  }

  ShoppingListState completeSubmitting(Either<Failure, PurchaseEntity> submitStatus) {
    return copyWith(
      isSubmitting: false,
      submitStatus: optionOf(submitStatus),
    );
  }

  ShoppingListState done() {
    return copyWith(
      isSubmitting: false,
      submitStatus: none(),
    );
  }

  ShoppingListState selectPurchase(PurchaseEntity purchaseEntity) {
    return copyWith(
      submitStatus: optionOf(Right(purchaseEntity)),
    );
  }

  ShoppingListState unselectPurchase() {
    return copyWith(
      submitStatus: none(),
    );
  }
}
