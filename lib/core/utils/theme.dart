import 'package:flutter/material.dart';
import 'package:indosat_ui/core/utils/constants.dart';

final ThemeData appThemeLight = ThemeData.light().copyWith(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: bottomNavSelected,
        unselectedItemColor: bottomNavUnSelected,
        backgroundColor: backgroundPrimaryColor));
