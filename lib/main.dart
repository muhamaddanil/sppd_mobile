import 'package:flutter/material.dart';
import 'package:sppd_mobile/theme/theme.dart';
import 'package:sppd_mobile/view/view_login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: Login(),
    ),
  );
}
