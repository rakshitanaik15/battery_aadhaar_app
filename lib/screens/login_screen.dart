import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> signIn(String email, String password) async {
  try {
    await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
    print("LOGIN SUCCESS");
  } on FirebaseAuthException catch (e) {
    print("Firebase error: ${e.code}");
    print("Message: ${e.message}");
  } catch (e) {
    print("Unknown error: $e");
  }
}
