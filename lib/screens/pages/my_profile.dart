import 'package:flutter/material.dart';
import 'package:swachhta_app/screens/homescreen/tabs_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TabsScreen(userId: '')));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('assets/logo/logo.jpeg'),
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Name : ",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "Abbas Ansari ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Text("User Name"),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 40,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                // dense: true,
                contentPadding: EdgeInsets.all(10),
              ),
              ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Phone : ",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "8090990186",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Text("User Phone"),
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                  size: 40,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                // dense: true,
                contentPadding: EdgeInsets.all(10),
              ),
              ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Age : ",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "20",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Text("User Age"),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 40,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                // dense: true,
                contentPadding: EdgeInsets.all(10),
              ),
              ListTile(
                title: Text.rich(
                  TextSpan(
                    text: "Address : ",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "Rae Bareli, U.P.",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Text("user address"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 40,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                // dense: true,
                contentPadding: EdgeInsets.all(10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
