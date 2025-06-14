import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../feed_ui/home.dart';

Future<bool> googleLogin() async {
  final user = await GoogleSignIn().signIn();
  GoogleSignInAuthentication userAuth = await user!.authentication;

  var credential = GoogleAuthProvider.credential(
      idToken: userAuth.idToken, accessToken: userAuth.accessToken);

  await FirebaseAuth.instance.signInWithCredential(credential);

  return FirebaseAuth.instance.currentUser != null;
}


final authProvider = StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController();
});

class AuthController extends StateNotifier<bool> {
  AuthController() : super(false);

  Future<void> signIn(BuildContext context) async {
    final isLogged = await googleLogin();
    if (isLogged && context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }
}
