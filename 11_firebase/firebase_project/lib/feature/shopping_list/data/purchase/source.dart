import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_project/feature/shopping_list/data/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/entity.dart';
import 'package:firebase_project/feature/shopping_list/domain/purchase/stream_fetcher.dart';

class PurchaseFirebaseDataSource implements PurchaseStreamFetcher {
  final FirebaseFirestore _db;
  final String _userId;

  CollectionReference<PurchaseEntity> get purchasesRef =>
      _db.collection('user/$_userId/purchase').withConverter<PurchaseEntity>(
            fromFirestore: (snapshot, _) => FirebasePurchaseEntity.fromFirestore(
              dataSource: this,
              snapshot: snapshot,
            ),
            toFirestore: (purchase, _) => (purchase as FirebasePurchaseEntity).toFirestore(),
          );

  const PurchaseFirebaseDataSource({
    required FirebaseFirestore db,
    required String userId,
  })  : _db = db,
        _userId = userId;

  @override
  Stream<List<PurchaseEntity>> fetchPurchases() {
    return purchasesRef.orderBy('created', descending: true).snapshots().map(
          (e) => e.docs.map((e) => e.data()).toList(),
        );
  }
}
