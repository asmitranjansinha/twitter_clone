import 'package:flutter/material.dart';
import 'package:twitter_clone/views/authentication/loginpage_email.dart';
import 'package:twitter_clone/views/landing/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twiiter Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Chirp'),
      home: LoginPageEmail(),
    );
  }
}
