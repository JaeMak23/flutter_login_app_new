import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login_app/src/utils/theme.dart';
import 'package:get/get.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:  SplashScreen(),
    );
  }
}
