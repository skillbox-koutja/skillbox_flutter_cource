import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/auth/application/validation_error.dart';
import 'package:firebase_project/feature/auth/domain/error/failure.dart';
import 'package:firebase_project/feature/core/domain/field/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:verify/verify.dart';

part 'state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  bool get isValid => emailAddress.isValid && password.isValid;

  const factory AuthState({
    required Field<String, AuthValidationError> emailAddress,
    required Field<String, AuthValidationError> password,
    required bool isSubmitting,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.init() => AuthState(
      emailAddress: _emailAddress,
      password: _password,
      showError: false,
      isSubmitting: false,
      authFailureOrSuccess: none(),
  );
}

final _notEmptyString = Verify.that<String>(
  (s) => s.isNotEmpty,
  error: const AuthValidationError(
    message: 'incorrect length',
  ),
);

final _emailRegex = RegExp(r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&"*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

final _validateEmailAddress = Verify.that<String>(
  _emailRegex.hasMatch,
  error: const AuthValidationError(
    message: 'incorrect email',
  ),
);

final _emailAddress = Field<String, AuthValidationError>.create(
  value: '',
  validator: Verify.all([_notEmptyString, _validateEmailAddress]),
);

final _password = Field<String, AuthValidationError>.create(
  value: '',
  validator: _notEmptyString,
);
