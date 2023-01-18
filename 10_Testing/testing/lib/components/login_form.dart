import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing/assets/messages.dart';
import 'package:testing/utils/validate_email.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool successMessage = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) return AppMessages.emptyEmailMessage;
              if (!validateEmail(value)) return AppMessages.incorrectEmailMessage;

              return null;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(labelText: AppMessages.email),
          ),
          TextFormField(
            validator: (value) {
              if (value == '') return AppMessages.emptyPhoneMessage;

              return null;
            },
            decoration: const InputDecoration(labelText: AppMessages.phone),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          ElevatedButton(
            child: const Text(AppMessages.submit),
            onPressed: _handleSubmit,
          ),
          if (successMessage) const Text(AppMessages.successLogin),
        ],
      ),
    );
  }

  void _handleSubmit() {
    final formState = _formKey.currentState;

    if (formState != null && formState.validate()) {
      formState.save();
      setState(() {
        successMessage = true;
      });
    }
  }
}
