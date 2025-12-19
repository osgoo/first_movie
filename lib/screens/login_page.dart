import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Let's sign you in.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome back.\nYou've been missed!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 60,
              child: TextFormField(
                expands: true,
                maxLines: null,
                minLines: null,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: Text(
                    "Phone, email or username",
                    style: TextStyle(
                      color: Colors.white.withOpacity(
                        0.6,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                  fillColor: Color.fromARGB(
                    255,
                    56,
                    55,
                    61,
                  ),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: TextFormField(
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        194,
                        193,
                        193,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                  fillColor: Color.fromARGB(
                    255,
                    56,
                    55,
                    61,
                  ),
                  filled: true,
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
