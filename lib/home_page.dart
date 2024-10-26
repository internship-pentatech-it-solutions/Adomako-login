import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOMEPAGE'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            await FirebaseAuth.instance.signOut();
          },
          child: Container(
            color: Colors.redAccent,
            width: 200,
            height: 100,
            child: const Center(
              child: Text(
                "Log out",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
