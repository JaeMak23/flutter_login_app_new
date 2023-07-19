import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login_app/src/utils/theme.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar 1.0'),
      ),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}
