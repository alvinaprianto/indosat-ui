import 'package:flutter/material.dart';
import 'package:indosat_ui/core/utils/constants.dart';

final ThemeData appThemeLight = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.copyWith(
        titleMedium: const TextStyle(
            fontFamily: "poppins",
            fontSize: 16,
            color: textColorSecondary,
            fontWeight: FontWeight.bold)),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontFamily: "poppins",
            fontSize: 20,
            color: textColorPrimary,
            fontWeight: FontWeight.bold)),
    scaffoldBackgroundColor: backgroundPrimaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: bottomNavSelected,
        unselectedItemColor: bottomNavUnSelected,
        backgroundColor: backgroundPrimaryColor));
