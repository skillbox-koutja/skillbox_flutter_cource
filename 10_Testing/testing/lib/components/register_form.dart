import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            decoration: const InputDecoration(labelText: 'First name'),
            validator: (value) {
              if (value == '') return 'Введите имя';

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Last name'),
            validator: (value) {
              if (value == '') return 'Введите фамилию';

              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(labelText: 'Phone'),
            validator: (value) {
              if (value == null || value.isEmpty) return 'Заполните поле телефон';

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) return 'Заполните поле email';
              if (!validateEmail(value)) return 'Email не корректный';

              return null;
            },
          ),
          ElevatedButton(
            child: const Text('Отправить'),
            onPressed: _handleSubmit,
          ),
          if (_isSuccess) const Text('Вы успешно зарегистрировались'),
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
