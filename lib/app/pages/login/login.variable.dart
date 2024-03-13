

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


mixin LoginVariable{
  // final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  // final DatabaseReference database = FirebaseDatabase.instance.ref();
  // final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
}