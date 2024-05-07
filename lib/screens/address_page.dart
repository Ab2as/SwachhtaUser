import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swachhta_app/screens/app_image_pick.dart';
import 'package:swachhta_app/screens/reported_page.dart';

class AddressScreen extends StatefulWidget {
  var category = "";

  AddressScreen({required this.category, super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  // String location = 'Null,Press Butto';

  // String Address = 'search';

  final GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _address = TextEditingController();
  TextEditingController _description = TextEditingController();
  String? selectedValue = null;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Yellow Spot (Public Urination Spot)"),
          value: "Yellow Spot \n(Public Urination Spot)"),
      DropdownMenuItem(
          child: Text("Overflow of Sewerage or Storm Water"),
          value: "Overflow of Sewerage or Storm Water"),
      DropdownMenuItem(child: Text("Dead Animal(s)"), value: "Dead Animal(s)"),
      DropdownMenuItem(
          child: Text("Dustbins Not Cleaned"), value: "Dustbins Not Cleaned"),
      DropdownMenuItem(
          child: Text("Open Manholes Or Drains"),
          value: "Open Manholes Or Drains"),
      DropdownMenuItem(
          child: Text("Sweeping not done"), value: "Sweeping not done"),
      DropdownMenuItem(
          child: Text("Electricity Problem"), value: "Electricity Problem"),
      DropdownMenuItem(
          child: Text("No water supply"), value: "No water supply"),
      DropdownMenuItem(
          child: Text("Stagnant Water On The Road"),
          value: "Stagnant Water On The Road"),
      DropdownMenuItem(
          child: Text("Improper Disposal of Fecal Waste/Septage"),
          value: "Improper Disposal of Fecal Waste/Septage"),
    ];

    return menuItems;
  }

  FirebaseStorage storage = FirebaseStorage.instance;

  File? image;

  pickImage(ImageSource source) {
    AppImagePicker(source: source).pick(onPick: (File? img) {
      setState(() {
        this.image = img;
      });
    });
  }

  // void saveImage() async {
  //   String resp = await StoreData().saveData(file: image!);
  // }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          "Address Screen",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 30, 151, 125),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 800,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 33, 202, 165),
                  Color.fromARGB(255, 21, 84, 35)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.only(right: 20, left: 20),
                          //   child: DropdownButtonFormField(
                          //       isExpanded: true,
                          //       decoration: InputDecoration(
                          //         prefixIcon: const Icon(
                          //           Icons.person_outline,
                          //           color: Colors.white70,
                          //         ),
                          //         labelText: "Select Category",
                          //         labelStyle: TextStyle(
                          //             color: Colors.white.withOpacity(0.9)),
                          //         floatingLabelBehavior:
                          //             FloatingLabelBehavior.never,
                          //         enabledBorder: OutlineInputBorder(
                          //           borderSide: const BorderSide(
                          //               width: 0, style: BorderStyle.none),

                          //           // BorderSide(color: Colors.blue, width: 2),

                          //           borderRadius: BorderRadius.circular(30),
                          //         ),
                          //         border: OutlineInputBorder(
                          //           borderSide: const BorderSide(
                          //               width: 0, style: BorderStyle.none),

                          //           // BorderSide(color: Colors.blue, width: 2),

                          //           borderRadius: BorderRadius.circular(30),
                          //         ),
                          //         filled: true,
                          //         fillColor: Colors.white.withOpacity(0.3),
                          //       ),
                          //       validator: (value) =>
                          //           value == null ? "Select a Category" : null,
                          //       dropdownColor: Colors.white.withOpacity(0.7),
                          //       value: selectedValue,
                          //       onChanged: (String? newValue) {
                          //         setState(() {
                          //           selectedValue = newValue!;
                          //         });
                          //       },
                          //       items: dropdownItems),
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: TextFormField(
                              initialValue: widget.category,
                              readOnly: true,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white70,
                                ),
                                labelText: "Enter Problem Area Address",
                                labelStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                filled: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                fillColor: Colors.white.withOpacity(0.3),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: TextFormField(
                              controller: _address,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white70,
                                ),
                                labelText: "Enter Problem Area Address",
                                labelStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                filled: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                fillColor: Colors.white.withOpacity(0.3),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: TextFormField(
                              controller: _description,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white70,
                                ),
                                labelText: "Describe The Problem",
                                labelStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                filled: true,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                fillColor: Colors.white.withOpacity(0.3),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                              ),
                              maxLines: 3,
                              // maxLength: 4096,
                              textInputAction: TextInputAction.done,
                              validator: (String? text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please Describe The Problem';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // if (image != null) Image.file(image!),
                    image != null
                        ? SizedBox(
                            height: 200,
                            width: double.infinity,
                            child: Image.file(image!),
                          )
                        : const Text("No Image Selected"),

                    const SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String message;

                          try {
                            Reference ref = FirebaseStorage.instance
                                .ref()
                                .child("ProblemImage");
                            UploadTask uploadTask = ref.putFile(image!);

                            TaskSnapshot taskSnapshot =
                                await Future.value(uploadTask);
                            var newUrl =
                                await taskSnapshot.ref.getDownloadURL();

                            print("Uploaded");
                            final collection = FirebaseFirestore.instance
                                .collection('problemData');

                            await collection.doc().set({
                              'category': widget.category,
                              'description': _description.text,
                              'address': _address.text,
                              'image': newUrl.toString()
                            });

                            // databaseRef.child('Image').set({
                            //   'image' : newUrl.toString()
                            // });
                            message = "Successful";
                            print("ahlf");
                          } catch (_) {
                            message = "Error";
                          }
                          if (message == "Successful") {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ReportedScreen(),
                            ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                          }
                        }
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),

                    // Text('${Address}'),
                    // ElevatedButton(
                    //   onPressed: () async {
                    //     Position position = await _determinePosition();
                    //     print(position.latitude);

                    //     location =
                    //         'Lat: ${position.latitude}, Long:${position.longitude}';

                    //     GetAddressFromLatLong(position);

                    //     setState(() {});
                    //   },
                    //   child: Text('Get Current Location'),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pickImage(ImageSource.camera);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
