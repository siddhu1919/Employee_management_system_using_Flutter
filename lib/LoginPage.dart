// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 50,
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 10.0, top: 15),
      //     child: Text(
      //       "Login",
      //       style: GoogleFonts.bebasNeue(
      //         color: Colors.green,
      //         fontSize: 39,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.grey.shade300,
      // ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 60,
                  color: Colors.green,
                ),
                //Logo
                // Greetings
                Text(
                  "Hello There!",
                  style: GoogleFonts.bebasNeue(
                    fontSize: 56,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 46),

                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 104, 210, 108),
                            )),
                      ),
                    ),
                  ),
                ),

                // Password Field
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 104, 210, 108),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                // Signin Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                // Not a member ? Register Now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Register now",
                        style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
