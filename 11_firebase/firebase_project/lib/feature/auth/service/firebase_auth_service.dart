import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/feature/auth/application/service.dart';
import 'package:firebase_project/feature/auth/domain/error/failure.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth;

  @override
  bool get signedIn => _firebaseAuth.currentUser?.uid != null;

  @override
  String get userId => _firebaseAuth.currentUser!.uid;

  const FirebaseAuthService(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return Left(AuthInvalidEmailAndPasswordCombination());
      }

      return Left(ServerAuthFailure());
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
