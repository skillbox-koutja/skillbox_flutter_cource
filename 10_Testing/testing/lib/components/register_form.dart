import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing/assets/messages.dart';
import 'package:testing/utils/validate_email.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: AppMessages.firstName),
            validator: (value) {
              if (value == '') return AppMessages.emptyFirstNameMessage;

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: AppMessages.lastName),
            validator: (value) {
              if (value == '') return AppMessages.emptyLastNameMessage;

              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(labelText: AppMessages.phone),
            validator: (value) {
              if (value == null || value.isEmpty) return AppMessages.emptyPhoneMessage;

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: AppMessages.email),
            validator: (value) {
              if (value == null || value.isEmpty) return AppMessages.emptyEmailMessage;
              if (!validateEmail(value)) return AppMessages.incorrectEmailMessage;

              return null;
            },
          ),
          ElevatedButton(
            child: const Text(AppMessages.submit),
            onPressed: _handleSubmit,
          ),
          if (_isSuccess) const Text(AppMessages.successSignUp),
        ],
      ),
    );
  }

  void _handleSubmit() {
    final formState = _formKey.currentState;
    if (formState != null && formState.validate()) {
      setState(() {
        _isSuccess = true;
      });
    }
  }
}
