import 'package:flutter/material.dart';

appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    fontFamily: 'Chirp',
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
    ),
    appBarTheme: AppBarTheme(color: Colors.white),
  );
}
