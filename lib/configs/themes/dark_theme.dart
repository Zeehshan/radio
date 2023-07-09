import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xff0B0D0E),
    disabledColor: Colors.grey,
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: ThemeData.dark().colorScheme.copyWith(
        background: Colors.black12, onBackground: const Color(0xffD9D9D9)));
