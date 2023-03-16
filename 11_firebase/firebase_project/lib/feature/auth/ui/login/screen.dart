import 'package:firebase_project/feature/auth/application/events.dart';
import 'package:firebase_project/feature/auth/application/state.dart';
import 'package:firebase_project/feature/auth/domain/error/failure.dart';
import 'package:firebase_project/feature/core/ui/custom_snackbar.dart';
import 'package:firebase_project/feature/shopping_list/ui/home/screen.dart';
import 'package:firebase_project/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class LoginScreen extends HookConsumerWidget {
  final formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(loginProvider);
    final formEvents = ref.watch(loginProvider.notifier);

    ref.listen<AuthState>(loginProvider, (previous, next) {
      next.authFailureOrSuccess.fold(
        () {},
        (either) => either.fold(
          (failure) {
            buildCustomSnackBar(
              context: context,
              flashBackground: Colors.red,
              icon: Icons.warning_rounded,
              content: Text(
                _failureText(failure),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
              ),
            );
          },
          (success) {
            buildCustomSnackBar(
              context: context,
              flashBackground: Colors.green,
              icon: CupertinoIcons.check_mark_circled_solid,
              content: Text(
                'Login successful',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
              ),
            );
            Navigator.push<Widget>(
              context,
              MaterialPageRoute(
                builder: (context) => const ShoppingListHomeScreen(),
              ),
            );
          },
        ),
      );
    });

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: SizedBox.expand(
            child: Form(
              key: formKey,
              child: Center(
                child: SingleChildScrollView(
                  reverse: true,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome !',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        initialValue: 'qwe@rty.com1',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) => formEvents.mapEventsToStates(
                          AuthEvents.emailChanged(value.toString()),
                        ),
                        validator: (value) {
                          if (formState.emailAddress.isDirty && !formState.emailAddress.isValid) {
                            return '';
                          }

                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        initialValue: 'qwe@rty1',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        validator: (value) {
                          if (formState.password.isDirty && !formState.password.isValid) {
                            return '';
                          }

                          return null;
                        },
                        onChanged: (value) => formEvents.mapEventsToStates(
                          AuthEvents.passwordChanged(value.toString()),
                        ),
                        obscureText: true,
                        decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(textStyle: Theme.of(context).textTheme.titleLarge),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    formEvents.mapEventsToStates(
                                      const AuthEvents.signInWithEmailAndPasswordPressed(),
                                    );
                                  }
                                },
                                child: const Text('Login'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (formState.isSubmitting) ...[
                        const SizedBox(
                          height: 20,
                        ),
                        const LinearProgressIndicator(
                          minHeight: 6,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String _failureText(AuthFailure authFailure) {
  if (authFailure is AuthInvalidEmailAndPasswordCombination) {
    return 'Invalid email or password';
  }

  return 'Server error occurred';
}
