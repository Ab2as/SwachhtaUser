import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:swachhta_app/profile/EditProfileA.dart';
import 'package:swachhta_app/screens/activity_page.dart';
import 'package:swachhta_app/screens/homescreen/home_screen_worker.dart';
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
    Widget activePage = HomeScreenWorker();

    if (_selectedPageIndex == 1) {
      activePage = RegisteredScreen();
    }
    if (_selectedPageIndex == 2) {
      activePage = ActivityScreen();
    }
    if (_selectedPageIndex == 3) {
      activePage = EditProfileA();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: FluidNavBar(
        defaultIndex: _selectedPageIndex,
        onChange: _selectedPage,
        icons: [
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: const Color(0xFFFFFFFF),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.add,
              backgroundColor: const Color(0xFFFFFFFF),
              extras: {"label": "Register"}),
          FluidNavBarIcon(
            icon: Icons.report,
            backgroundColor: const Color(0xFFFFFFFF),
            extras: {"label": "Report"},
          ),
          FluidNavBarIcon(
            icon: Icons.person,
            backgroundColor: const Color(0xFFFFFFFF),
            extras: {"label": "Profile"},
          ),
        ],
        style: const FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.black,
            barBackgroundColor: const Color(0xFFFFFFFF)),
      ),
    );
  }
}
