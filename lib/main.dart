import 'package:flutter/material.dart';
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
      darkTheme: CustomAppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Welcome')),
    );
  }
}
