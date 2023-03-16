import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/shopping_list/application/events.dart';
import 'package:firebase_project/feature/shopping_list/application/state.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/repository.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/stream_fetcher.dart';
import 'package:firebase_project/feature/shopping_list/service/image_loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShoppingListStateController extends StateNotifier<ShoppingListState> {
  final PurchaseRepository _purchases;
  final PurchaseStreamFetcher _streamFetcher;
  final AppBackgroundImageLoader _appBackgroundImageLoader;

  ShoppingListStateController({
    required PurchaseRepository purchases,
    required PurchaseStreamFetcher streamFetcher,
    required AppBackgroundImageLoader appBackgroundImageLoader,
  })  : _purchases = purchases,
        _streamFetcher = streamFetcher,
        _appBackgroundImageLoader = appBackgroundImageLoader,
        super(ShoppingListState.init());

  Future<void> loadBackgroundImage() async {
    state = state.loadBackgroundImage();
    final backgroundImage = await _appBackgroundImageLoader.getUrl();
    state = state.loadedBackgroundImage(backgroundImage);
  }

  Future mapEventsToStates(ShoppingListEvents events) async {
    return events.map(
      addPurchase: (value) async {
        state = state.submit();
        final submitStatus = await _purchases.add(value.model);

        return state = state.completeSubmitting(submitStatus);
      },
      deletePurchase: (value) async {
        state = state.submit();
        final submitStatus = await _purchases.delete(value.entity);

        return state = state.completeSubmitting(submitStatus);
      },
      donePurchase: (value) async {
        return _performPurchaseEntity(value.entity.done);
      },
      cancelPurchase: (value) async {
        return _performPurchaseEntity(value.entity.cancel);
      },
      clearPurchase: (value) async {
        return _performPurchaseEntity(value.entity.clear);
      },
      selectPurchase: (value) => state = state.selectPurchase(value.entity),
      unselectPurchase: (value) => state = state.unselectPurchase(),
      fetchPurchases: (value) => value.subscribe(_streamFetcher.fetchPurchases()),
    );
  }

  Future<void> _performPurchaseEntity(
    Future<PurchaseEntity> Function() forwardCall,
  ) async {
    state = state.submit();
    final result = await forwardCall();
    state = state.completeSubmitting(Right(result));
  }
}
