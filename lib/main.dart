import 'package:flutter/material.dart';
import 'package:indosat_ui/core/pages/home_page.dart';
import 'package:indosat_ui/core/utils/constants.dart';
import 'package:indosat_ui/core/utils/theme.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indosat UI',
      theme: appThemeLight,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                Svg('images/nav_home.svg'),
              ),
              label: "Beranda"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                Svg("images/nav_riwayat.svg"),
              ),
              label: "Riwayat"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                Svg("images/nav_inbox.svg"),
              ),
              label: "Inbox"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                Svg("images/nav_profile.svg"),
              ),
              label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
