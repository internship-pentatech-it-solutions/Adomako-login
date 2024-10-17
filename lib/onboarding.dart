import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text(
                  "CREATE AN",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "ACCOUNT",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Sign in with ",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 65,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google_image.png',
                          height: 28,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 65,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 28,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Facebook",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'example@gmail.com',
                            hintStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '*********',
                            hintStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'homepage',
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 15),
                  height: 65,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[700],
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 54),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'loginpage');
                    },
                    child: Text(
                      " log in",
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
