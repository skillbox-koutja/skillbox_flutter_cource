import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/auth/application/events.dart';
import 'package:firebase_project/feature/auth/application/service.dart';
import 'package:firebase_project/feature/auth/application/state.dart';
import 'package:firebase_project/feature/auth/domain/error/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStateController extends StateNotifier<AuthState> {
  final AuthService _authService;

  AuthStateController(this._authService) : super(AuthState.init());

  Future mapEventsToStates(AuthEvents events) async {
    return events.map(
      emailChanged: (e) async {
        return state = state.copyWith(
          emailAddress: state.emailAddress.edit(e.email),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async {
        return state = state.copyWith(
          password: state.password.edit(e.password),
          authFailureOrSuccess: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (_) async {
        return _performAuthAction(
          _authService.signInWithEmailAndPassword,
        );
      },
    );
  }

  Future _performAuthAction(
    Future<Either<AuthFailure, Unit>> Function({
      required String emailAddress,
      required String password,
    })
        forwardCall,
  ) async {
    final isEmailValid = state.emailAddress.isValid;
    final isPasswordValid = state.password.isValid;
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress.value,
        password: state.password.value,
      );
    }
    state = state.copyWith(
      isSubmitting: false,
      showError: true,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
