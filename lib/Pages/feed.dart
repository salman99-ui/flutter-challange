import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Feed extends StatelessWidget {
  final googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("login"),
        onPressed: () async {
          final user = await googleSignIn.signIn();
          if (user == null) return;

          print(user.displayName);
        },
      ),
    );
  }
}
