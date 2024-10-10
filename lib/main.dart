import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:social_travel/Screen/Login_Screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCGY4MF2IWvpNXZs2y0IZDGxvYMUIQ1Nec",
      projectId: "travelshare-91408",
      messagingSenderId: "191704604132",
      appId: "1:191704604132:android:4c89843d4f5a93f62a3bf1",
    ),
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}