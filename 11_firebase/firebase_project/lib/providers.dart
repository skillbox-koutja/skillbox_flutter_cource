import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/feature/auth/application/controller.dart';
import 'package:firebase_project/feature/auth/application/state.dart';
import 'package:firebase_project/feature/auth/service/firebase_auth_service.dart';
import 'package:firebase_project/feature/shopping_list/application/controller.dart';
import 'package:firebase_project/feature/shopping_list/application/state.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/repository.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/source.dart';
import 'package:firebase_project/feature/shopping_list/service/image_loader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuth = FirebaseAuth.instance;
final firebaseAuthService = FirebaseAuthService(firebaseAuth);

final db = FirebaseFirestore.instance;

final loginProvider = StateNotifierProvider.autoDispose<AuthStateController, AuthState>((ref) {
  return AuthStateController(firebaseAuthService);
});

final isSignedProvider = StateProvider<bool>((ref) {
  return firebaseAuthService.signedIn;
});

final shoppingListProvider = StateNotifierProvider<ShoppingListStateController, ShoppingListState>((ref) {
  if (!firebaseAuthService.signedIn) {
    throw Exception('Not signed in');
  }

  final dataSource = PurchaseFirebaseDataSource(
    db: db,
    userId: firebaseAuthService.userId,
  );

  return ShoppingListStateController(
    purchases: FirebasePurchasesRepository(dataSource),
    streamFetcher: dataSource,
    appBackgroundImageLoader: AppBackgroundImageLoader(),
  );
});
