import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.freezed.dart';

@freezed
class AuthEvents with _$AuthEvents {
  const factory AuthEvents.emailChanged(String email) = EmailChanged;

  const factory AuthEvents.passwordChanged(String password) = PasswordChanged;

  const factory AuthEvents.signInWithEmailAndPasswordPressed() = SignInWithEmailAndPasswordPressed;
}
