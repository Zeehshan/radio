import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    colorScheme: ThemeData.dark().colorScheme.copyWith(
        background: Colors.white12, onBackground: const Color(0xffD9D9D9)));
