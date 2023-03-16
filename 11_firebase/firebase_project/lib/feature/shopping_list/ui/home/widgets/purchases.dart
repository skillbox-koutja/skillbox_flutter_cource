import 'package:firebase_project/feature/shopping_list/application/controller.dart';
import 'package:firebase_project/feature/shopping_list/application/events.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class PurchasesWidget extends StatefulHookConsumerWidget {
  final ShoppingListStateController stateController;

  const PurchasesWidget({
    required this.stateController,
    Key? key,
  }) : super(key: key);

  @override
  PurchasesWidgetState createState() => PurchasesWidgetState();
}

class PurchasesWidgetState extends ConsumerState<PurchasesWidget> {
  Stream<List<PurchaseEntity>> _$stream = const Stream.empty();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.stateController.mapEventsToStates(
        ShoppingListEvents.fetchPurchases((stream) {
          setState(() {
            _$stream = stream;
          });
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PurchaseEntity>>(
      stream: _$stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final purchaseEntities = snapshot.data!;

        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: purchaseEntities.length * 2 - 1,
                semanticIndexCallback: (_, index) {
                  return index.isEven ? index ~/ 2 : null;
                },
                (context, index) {
                  final itemIndex = index ~/ 2;
                  if (index.isEven) {
                    return _PurchaseCard(
                      purchaseEntity: purchaseEntities[itemIndex],
                      stateController: widget.stateController,
                    );
                  }

                  const separator = SizedBox(height: 16);

                  return separator;
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PurchaseCard extends StatelessWidget {
  final ShoppingListStateController stateController;
  final PurchaseEntity purchaseEntity;

  const _PurchaseCard({
    required this.stateController,
    required this.purchaseEntity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final purchase = purchaseEntity.model;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Material(
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: Colors.blueAccent.withOpacity(0.2),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            onTap: () {},
            child: Row(
              key: ObjectKey(purchase.id),
              children: [
                Checkbox(
                  value: purchase.isDone,
                  onChanged: (nextChecked) {
                    if (nextChecked == null) return;

                    if (!nextChecked) {
                      stateController.mapEventsToStates(
                        ShoppingListEvents.clearPurchase(purchaseEntity),
                      );
                    }
                    if (nextChecked) {
                      stateController.mapEventsToStates(
                        ShoppingListEvents.donePurchase(purchaseEntity),
                      );
                    }
                  },
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      purchase.title,
                      style: TextStyle(
                        decoration: purchase.isCanceled ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    subtitle: Text(DateFormat('dd.MM.yyyy HH:mm:ss').format(purchase.created)),
                  ),
                ),
                IconButton(
                  onPressed: purchase.isCanceled
                      ? null
                      : () {
                          stateController.mapEventsToStates(
                            ShoppingListEvents.cancelPurchase(purchaseEntity),
                          );
                        },
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: purchase.isCanceled ? Colors.grey : null,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    stateController.mapEventsToStates(
                      ShoppingListEvents.deletePurchase(purchaseEntity),
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
