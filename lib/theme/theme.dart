import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xffFCFBFB),
    appBarTheme: AppBarTheme(color: Color(0xffFCFBFB), elevation: 0.0),
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff333333)),
    fontFamily: 'San Francisco',
  );
}
