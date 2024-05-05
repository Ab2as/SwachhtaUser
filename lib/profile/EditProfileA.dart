import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swachhta_app/profile/EditProfileAdmin.dart';
import 'package:swachhta_app/screens/login/login.dart';

class EditProfileA extends StatefulWidget {
  // const EditProfileW({super.key});
  EditProfileA({Key? key}) : super(key: key);
  @override
  State<EditProfileA> createState() => _EditProfileA();
}

class _EditProfileA extends State<EditProfileA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              const CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg')),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 20),
              itemProfile('Name', 'Pratik', CupertinoIcons.person),
              const SizedBox(
                height: 10.0,
              ),
              itemProfile('Gender', 'Male', Icons.male_rounded),
              const SizedBox(
                height: 10.0,
              ),
              itemProfile('Email', 'ps@gmail.com', CupertinoIcons.mail),
              const SizedBox(
                height: 10.0,
              ),
              itemProfile('Mobile Number', '9873214560', CupertinoIcons.phone),
              const SizedBox(
                height: 10.0,
              ),
              itemProfile('Location', 'Russel Street', CupertinoIcons.location),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  SizedBox(width: 25),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => EditProfileAdmin()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 167, 128, 143)),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 55),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 167, 128, 143)),
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 5),
              color: Colors.deepOrange.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10)
        ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(title == 'Gender'
          ? subtitle == 'Male'
              ? Icons.male_rounded
              : Icons.female_rounded
          : iconData),
      tileColor: Colors.white,
    ),
  );
}
