import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';

abstract class PurchaseStreamFetcher {
  Stream<List<PurchaseEntity>> fetchPurchases();
}
