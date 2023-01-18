import 'package:flutter/material.dart';
import 'package:testing/assets/messages.dart';
import 'package:testing/components/login_form.dart';
import 'package:testing/components/register_form.dart';

enum FormType { login, register }

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  FormType _formType = FormType.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _formType == FormType.login ? AppMessages.login : AppMessages.signUp,
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      if (_formType == FormType.login) const LoginForm() else const RegisterForm(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _formType == FormType.login ? AppMessages.gotoSignUpTitle : AppMessages.gotoLoginTitle,
                    ),
                    ElevatedButton(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: _formType == FormType.login ? AppMessages.signUp : AppMessages.login,
                            ),
                          ],
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      onPressed: _switchForm,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _switchForm() {
    setState(() {
      _formType = _formType == FormType.login ? FormType.register : FormType.login;
    });
  }
}
