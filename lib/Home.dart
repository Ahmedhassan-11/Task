import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  static const routeName = "Home";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            children: [
              Image.asset("assets/images/logo.png"),
              Text(
                "Moody",
                style: GoogleFonts.robotoSlab(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                largeSize: 10,
                smallSize: 10,
                backgroundColor: Colors.red,
                child: Image.asset("assets/images/Icon.png",
                    height: 29,
                    width: 27,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter),
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.8),
          child: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    "Hello , Sara Rose ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    " How are you feeling now ? ",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Frame 10.png",
                          fit: BoxFit.fill, width: 62),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Love")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Frame 8.png",
                          fit: BoxFit.fill, width: 62),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Happy")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Frame 12.png",
                          fit: BoxFit.fill, width: 62),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Sad"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Frame 10 (2).png",
                          fit: BoxFit.fill, width: 62),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Cool")
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                  ),
                  Spacer(),
                  Text(
                    "See more ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
              CarouselSlider(
                  items: [1, 2, 3].map((i) {
                    return Builder(
                      builder: (context) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Positive vibes",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Boost your mood with ",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "Positive vibes",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                "assets/images/Button.png"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "10 mins",
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/Walking the Dog.png",
                                        width: 100,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          color: Color(0xffECFDF3),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  )),
              Row(
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                  ),
                  Spacer(),
                  Text(
                    "See more ",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Color(0xFFF9F5FF),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width:130,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/Frame.png",
                                  fit: BoxFit.fitHeight, height: 35),
                              SizedBox(width: 11,),
                              Text("Relaxing",
                                  style: TextStyle(
                                    height: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Color(0xFFF9F5FF),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width:130,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/g0.png",
                                  fit: BoxFit.fitHeight, height: 35),
                              SizedBox(width: 10,),
                              Text("Meditation",
                                  style: TextStyle(
                                    height: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Color(0xFFF9F5FF),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width:130,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/Group.png",
                                  fit: BoxFit.fitHeight, height: 35),
                              SizedBox(width: 15,),
                              Text("Beathing",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Color(0xFFF9F5FF),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width:130,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/h2.png",
                                  fit: BoxFit.fitHeight, height: 35),
                              SizedBox(width: 15,),
                              Text("Yoga",
                                  style: TextStyle(
                                    height: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.blueGrey,
            iconSize: 25,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_3x3_sharp),
                  label: "",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: "",),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,),
                  label: "",),
            ]));
  }
}
