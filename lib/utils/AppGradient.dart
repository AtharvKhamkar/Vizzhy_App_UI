import 'package:flutter/material.dart';

class AppGradient {
  static const LinearGradient mainBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF010101),
        Color(0xFF2F2F2F),
        Color(0xFF000000),
      ],
      stops: [
        0.0,
        0.5028,
        0.9958
      ]);
}
