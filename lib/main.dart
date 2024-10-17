import 'package:flutter/material.dart';
import 'package:vaultcash/home_page.dart';
import 'package:vaultcash/login_page.dart';
import 'package:vaultcash/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingPage(),
      routes: {
        'loginpage': (context) => const LoginPage(),
        'signupscreen': (context) => const OnboardingPage(),
        'homepage': (context) => const HomePage(),
      },
    );
  }
}
