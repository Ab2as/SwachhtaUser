import 'package:flutter/material.dart';
import 'package:swachhta_app/screens/address_page.dart';
import 'package:swachhta_app/screens/home_screen.dart';

class RegisteredScreen extends StatelessWidget {
  const RegisteredScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text(
            "Choose Category",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 33, 202, 165),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/public_urinate2.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Yellow Spot \n(Public Urination Spot)",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 240, 240, 239),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/sewerage3.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Overflow of Sewerage or Storm Water",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 230, 231, 229),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/dead_animal.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 75,
                              ),
                              Text(
                                "Dead Animal(s)",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 246, 246, 241),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/dustbin.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Dustbins Not Cleaned",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 236, 236, 230),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/drains1.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 75,
                              ),
                              Text(
                                "Open Manholes Or Drains",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 243, 243, 236),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/sweeping.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 75,
                              ),
                              Text(
                                "Sweeping not done",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 234, 234, 227),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/electricity.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Electricity Problem",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 235, 235, 232),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/water.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "No water supply",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 230, 230, 225),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/stagnant.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Stagnant Water On The Road",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 247, 247, 242),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/disposal_waste1.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Improper Disposal of Fecal Waste/Septage",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 247, 247, 242),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/burning.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Burning of Garbage in Open Space",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 252, 252, 252),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 8, 12, 63),
                          image: DecorationImage(
                            image: AssetImage('assets/images/debris.jpg'),
                            colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.6),
                              BlendMode.modulate,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Text(
                                "Debris Removal/Construction Material",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 248, 248, 244),
                                    fontFamily: 'SignikaNegative',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddressPage()));
                      },
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                ),
              ],
            ),
          ),
        ));
  }
}
