import 'package:verify/verify.dart';

class AuthValidationError implements ValidationError {
  final String message;

  @override
  String get errorDescription => message;

  const AuthValidationError({required this.message});
}
