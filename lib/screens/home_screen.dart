import 'package:flutter/material.dart';
import 'package:swachhta_app/screens/activity_page.dart';
import 'package:swachhta_app/screens/address_page.dart';
import 'package:swachhta_app/screens/profile_fill_screen.dart';
import 'package:swachhta_app/screens/registered_screen.dart';
import 'package:swachhta_app/screens/reported_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegisteredScreen()));
                },
                child: Text("Category Page")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Text("Profile Fill Page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ReportedScreen()));
                },
                child: Text("Reported Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityScreen()));
                },
                child: Text("Activity Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddressScreen()));
                },
                child: Text("Address Screen")),
          ],
        ),
      ),
    );
  }
}
