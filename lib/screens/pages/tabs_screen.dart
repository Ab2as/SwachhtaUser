import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:swachhta_app/pages/reports_screen.dart';
import 'package:swachhta_app/screens/activity_page.dart';
import 'package:swachhta_app/screens/pages/home_screen.dart';
import 'package:swachhta_app/screens/pages/my_profile.dart';
// import 'package:swachhta_app/pages/resister_complaint.dart';
import 'package:swachhta_app/screens/registered_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({super.key, required this.userId});
  final String userId;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void changeIndex() {
    _selectedPageIndex = 1;
    setState(() {});
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = HomeScreen(
      userId: widget.userId,
      //changeIndex: changeIndex,
    );

    if (_selectedPageIndex == 1) {
      activePage = RegisteredScreen();
    }
    if (_selectedPageIndex == 2) {
      activePage = ActivityScreen();
    }
    if (_selectedPageIndex == 3) {
      activePage = MyProfile();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: FluidNavBar(
        defaultIndex: _selectedPageIndex,
        onChange: _selectedPage,
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: Color(0xFF4285F4),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.add,
              backgroundColor: Color(0xFFEC4134),
              extras: {"label": "Register"}),
          FluidNavBarIcon(
            icon: Icons.report,
            backgroundColor: Color(0xFF34A950),
            extras: {"label": "Report"},
          ),
          FluidNavBarIcon(
            icon: Icons.person,
            backgroundColor: Color.fromARGB(255, 123, 198, 228),
            extras: {"label": "Profile"},
          ),
        ],
        style: const FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            barBackgroundColor: Colors.black),
      ),
    );
  }
}
