import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/core/error/failure.dart';
import 'package:firebase_project/feature/shopping_list/application/events.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/model.dart';
import 'package:firebase_project/feature/shopping_list/ui/home/widgets/purchases.dart';
import 'package:firebase_project/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShoppingListHomeScreen extends HookConsumerWidget {
  const ShoppingListHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shoppingListState = ref.watch(shoppingListProvider);
    final stateController = ref.watch(shoppingListProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: _Background(
        backgroundImage: shoppingListState.backgroundImage,
        child: Center(
          child: PurchasesWidget(
            stateController: stateController,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stateController.mapEventsToStates(
            ShoppingListEvents.addPurchase(Purchase.create()),
          );
        },
        tooltip: 'Add purchase',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  final Widget child;
  final Option<Either<Failure, ImageProvider>> backgroundImage;

  const _Background({
    required this.backgroundImage,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundImage.fold(
      () => child,
      (either) => either.fold(
        (failure) => child,
        (imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.contain,
              opacity: 0.2,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}

