import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Logged in as : ",
                  style: GoogleFonts.aladin(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${user.email}",
                  style: GoogleFonts.aladin(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: MaterialButton(
                focusColor: Colors.blue,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: Colors.green,
                child: const Text(
                  "SignOut",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
