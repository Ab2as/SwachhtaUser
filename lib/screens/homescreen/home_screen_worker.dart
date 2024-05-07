import 'package:flutter/material.dart';
import 'package:swachhta_app/news/display_news.dart';
import 'package:swachhta_app/screens/homescreen/greeting_widget.dart';
import 'package:swachhta_app/screens/pages/main_drawer.dart';
import 'package:swachhta_app/screens/registered_screen.dart';

class HomeScreenWorker extends StatelessWidget {
  final int _index = 0;
  var name = "Anurag";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 88, 170, 91),
      // appBar: AppBar(
      //   title:const Text('Swachhta'),
      // ),
      drawer: const MainDrawer(userId: ""),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Column(
            children: [
              GreetingWidget(name: "Anurag"),
              SizedBox(
                height: 220,
                child: NewsWidget(
                  itemCount: 5,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Report us!!",
                style: TextStyle(fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisteredScreen()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(30),
                  child: Card(

                      // decoration:(
                      //
                      //   color: Colors.grey,
                      //   border: Border.all(
                      //     style: BorderStyle.solid,
                      //
                      //)

                      child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Make a report",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(
                          Icons.add_circle_outline_rounded,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text(
              //         "Completed",
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.of(context).push(MaterialPageRoute(
              //               builder: (context) => CompleteScreen()));
              //         },
              //         child: const Text(
              //           "View All",
              //           style: TextStyle(
              //             fontSize: 18,
              //             //fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SizedBox(
              //   height: 220,
              //   child: CompleteWidget(
              //     itemCount: 4,
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text(
              //         "Pending",
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.of(context).push(MaterialPageRoute(
              //               builder: (context) => PendingScreen()));
              //         },
              //         child: const Text(
              //           "View All",
              //           style: TextStyle(
              //             fontSize: 18,

              //             //fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SizedBox(
              //   height: 220,
              //   child: PendingWidget(itemCount: 4),
              // ),
              // const SizedBox(
              //   height: 30,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
