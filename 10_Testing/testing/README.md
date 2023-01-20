# testing

### Run test

Unit-тесты

```bash
flutter test test
```

Для файла
```bash
flutter test test/utils/validate_email_test.dart
```

Интеграционные тесты

```bash
flutter test integration_test
```

Для файла
```bash
flutter test integration_test/app_test.dart
```

Альтернативный вариант

```bash
flutter drive \
  --driver=test_driver/integration_test.dart \
  --target=integration_test/app_test.dart
```