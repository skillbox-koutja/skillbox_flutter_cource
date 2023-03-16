import 'package:firebase_project/feature/shopping_list/application/state.dart';
import 'package:firebase_project/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  final VoidCallback onReady;

  const SplashScreen({
    super.key,
    required this.onReady,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateController = ref.watch(shoppingListProvider.notifier);

    ref.listen<ShoppingListState>(shoppingListProvider, (previous, next) {
      next.backgroundImage.fold(
        () {},
        (either) => either.fold(
          (failure) {
            onReady();
          },
          (success) {
            onReady();
          },
        ),
      );
    });

    return _SplashScreen(
      init: stateController.loadBackgroundImage,
    );
  }
}

class _SplashScreen extends StatefulWidget {
  final VoidCallback init;

  const _SplashScreen({
    required this.init,
    Key? key,
  }) : super(key: key);

  @override
  State<_SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
