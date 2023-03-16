import 'package:firebase_project/feature/auth/ui/login/screen.dart';
import 'package:firebase_project/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigator,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(
        onReady: _gotoLoginScreen,
      ),
    );
  }
}

final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

void _gotoLoginScreen() {
  Future<bool>.delayed(const Duration(milliseconds: 300), () => true).then(
    (isInitialized) {
      _navigator.currentState?.pushReplacement<void, void>(
        MaterialPageRoute(
          builder: (_) {
            return LoginScreen();
          },
        ),
      );
    },
  );
}
