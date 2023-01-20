import 'package:flutter_test/flutter_test.dart';
import 'package:testing/utils/validate_email.dart';

void main() {
  test('email validation ', () {
    expect(validateEmail('correct@domain.com'), true);
    expect(validateEmail('-incorect.domain.com'), false);
    expect(validateEmail(''), false);
  });
}
