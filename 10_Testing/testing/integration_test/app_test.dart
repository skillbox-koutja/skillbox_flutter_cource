import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:testing/assets/messages.dart';
import 'package:testing/main.dart' as app;

const emptyRegistryMessages = [
  AppMessages.emptyFirstNameMessage,
  AppMessages.emptyLastNameMessage,
  AppMessages.emptyEmailMessage,
  AppMessages.emptyPhoneMessage,
];

const emptyLoginMessages = [
  AppMessages.emptyEmailMessage,
  AppMessages.emptyPhoneMessage,
];

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'Login form tests',
    () {
      testWidgets('should show error messages about empty inputs', (tester) async {
        app.main();
        await shouldShowErrorMessagesAboutEmptyInputs(tester, emptyLoginMessages);
      });

      testWidgets('should show error message about incorrect email', (tester) async {
        app.main();
        await submitIncorrectForm(tester);
      });

      testWidgets('should login with success', (tester) async {
        app.main();
        await submitCorrectLoginForm(tester);
      });
    },
  );

  group(
    'Register form tests',
    () {
      testWidgets('should show error messages about empty inputs', (tester) async {
        app.main();
        await gotoSignUpForm(tester);
        await shouldShowErrorMessagesAboutEmptyInputs(tester, emptyRegistryMessages);
      });

      testWidgets('should show error message about incorrect email', (tester) async {
        app.main();
        await gotoSignUpForm(tester);
        await submitIncorrectForm(tester);
      });

      testWidgets('should register with success', (tester) async {
        app.main();
        await gotoSignUpForm(tester);
        await submitCorrectRegisterForm(tester);
      });
    },
  );
}

Future<void> gotoSignUpForm(WidgetTester tester) async {
  await tester.pumpAndSettle();
  await tester.tap(find.text(
    AppMessages.signUp,
    findRichText: true,
  ));
}

Future<void> shouldShowErrorMessagesAboutEmptyInputs(WidgetTester tester, List<String> textFinders) async {
  await tester.pumpAndSettle();

  await tester.tap(find.text(AppMessages.submit));
  await tester.pump();

  for (final textFinder in textFinders) {
    expect(find.text(textFinder), findsOneWidget);
  }
}

Future<void> submitIncorrectForm(WidgetTester tester) async {
  await tester.pumpAndSettle();

  await enterEmail(tester, '--incorrect--');
  await enterPhone(tester, '--incorrect--');

  await tester.tap(find.text(AppMessages.submit));
  await tester.pump();

  expect(find.text(AppMessages.incorrectEmailMessage), findsOneWidget);
  expect(find.text(AppMessages.emptyPhoneMessage), findsOneWidget);
}

Future<void> submitCorrectLoginForm(WidgetTester tester) async {
  await tester.pumpAndSettle();

  await enterEmail(tester, 'correct@domain.com');
  await enterPhone(tester, '81115552266');

  await tester.tap(find.text(AppMessages.submit));
  await tester.pump();

  expect(find.text(AppMessages.successLogin), findsOneWidget);
}

Future<void> submitCorrectRegisterForm(WidgetTester tester) async {
  await tester.pumpAndSettle();

  await enterFirstName(tester, 'Itruly');
  await enterLastName(tester, 'Cyberbekovich');
  await enterPhone(tester, '81115552266');
  await enterEmail(tester, 'correct@domain.com');

  await tester.tap(find.text(AppMessages.submit));
  await tester.pump();

  expect(find.text(AppMessages.successSignUp), findsOneWidget);
}

Future<void> enterFirstName(WidgetTester tester, String firstName) async {
  expect(find.text(AppMessages.firstName), findsOneWidget);
  await enterText(tester, AppMessages.firstName, firstName);
}

Future<void> enterLastName(WidgetTester tester, String lastName) async {
  await enterText(tester, AppMessages.lastName, lastName);
}

Future<void> enterEmail(WidgetTester tester, String email) async {
  await enterText(tester, AppMessages.email, email);
}

Future<void> enterPhone(WidgetTester tester, String phone) async {
  await enterText(tester, AppMessages.phone, phone);
}

Future<void> enterText(WidgetTester tester, String textFinder, String value) async {
  expect(find.text(textFinder), findsOneWidget);
  await tester.ensureVisible(find.text(textFinder));
  await tester.tap(find.text(textFinder), warnIfMissed: false);
  await tester.pumpAndSettle();
  tester.testTextInput.enterText(value);
  await tester.testTextInput.receiveAction(TextInputAction.done);
  await tester.pump();
}
