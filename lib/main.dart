import 'package:flutter/material.dart';
import 'package:vaultcash/auth.dart';
import 'package:vaultcash/home_page.dart';
import 'package:vaultcash/login_page.dart';
import 'package:vaultcash/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyAuth(),
      routes: {
        'loginpage': (context) => const LoginPage(),
        'signuppage': (context) => const SignUpPage(),
        'homepage': (context) => const HomePage(),
      },
    );
  }
}
