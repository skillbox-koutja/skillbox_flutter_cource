import 'package:firebase_project/feature/core/error/failure.dart';

class AuthFailure extends Failure {}

class AuthEmailAlreadyInUse extends AuthFailure {}

class AuthInvalidEmailAndPasswordCombination extends AuthFailure {}

class ServerAuthFailure extends AuthFailure {}
