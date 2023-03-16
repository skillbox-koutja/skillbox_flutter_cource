import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/auth/domain/error/failure.dart';

abstract class AuthService {
  bool get signedIn;
  String get userId;

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<void> signOut();
}
