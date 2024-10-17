import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.blueGrey[300],
          ),
          Container(
            height: 420,
            width: 400,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 10, 20, 29),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/google_image.png',
                      height: 45,
                    ),
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                  Text(
                    "Continue to Google",
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Email or phone',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide(
                          color: Colors.white30,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Center(
                    child: GestureDetector(
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
                        width: 280,
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
                              padding: EdgeInsets.only(left: 95),
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 600,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'signupscreen');
              },
              child: const Icon(
                size: 35,
                Icons.arrow_circle_left_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
