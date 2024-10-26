import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("HOMPAGE"),
          Center(
            child: GestureDetector(
              onTap: () async {
                setState(() {
                  isLoading = true; // Start loading
                });
                await FirebaseAuth.instance.signOut();

                Navigator.pushReplacementNamed(context, 'loginpage');
                setState(() {
                  isLoading = false; // Stop loading
                });
              },
              child: Container(
                color: Colors.redAccent,
                width: 200,
                height: 100,
                child: Center(
                  child: isLoading
                      ? const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                      : const Text(
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
        ],
      ),
    );
  }
}
