import 'package:flutter/material.dart';
import 'package:twitter_clone/views/authentication/loginpage_email.dart';
import 'package:twitter_clone/views/authentication/sign_up.dart';
import 'package:twitter_clone/views/base/app_navigation_bar.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Chirp',
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: Colors.white),
        ),

      ),
      home: AppNavigation(),
      routes: {
        LandingPage.route: (context) => const LandingPage(),
        LoginPageEmail.route: (context) => const LoginPageEmail(),
        SignUpPage.route: (context) => const SignUpPage(),
      },
    );
  }
}
