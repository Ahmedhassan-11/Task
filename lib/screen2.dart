import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicefile/Card.dart';
import 'package:practicefile/screen1.dart';
import 'package:practicefile/screen3.dart';

class Screentwo extends StatefulWidget {
  static const routeName = "screentwo";

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  int value = 0;
  List<String>Text1=["7days","3 days"];
  List<String>Text2=["Morning Yoga","Planks Exercise"];
  List<String>Text3=["Improve mental focus","Improve posture and stability"];
  List<String>Images=["assets/images/[removal 2.png","assets/images/pngwing 1.png"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset("assets/images/Ellipse 10.png"),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello jade",
                        style: GoogleFonts.abel(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Ready to workout ?",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(3)),
                child: Container(
                  height: 100,
                  color: Color.fromRGBO(248, 249, 252, 1),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(children: [
                            Image.asset("assets/images/heart.png", height: 40),
                            Text(
                              "Heart rate",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ]),
                          Row(children: [
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "81 BPM",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                        ],
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Image.asset("assets/images/Icon1.png", height: 40),
                            Text("TO-DO", style: TextStyle(fontSize: 16))
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text("32.5%",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ]),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Image.asset("assets/images/Frame.png", height: 40),
                            Text("Calo", style: TextStyle(fontSize: 16))
                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text("1000 Cal",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Workout Programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              TabBar(
                labelStyle: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Color(0xff667085)),
                indicatorColor: Color.fromRGBO(54, 63, 114, 1),
                unselectedLabelColor: Color(0xff667085),
                labelPadding: EdgeInsets.symmetric(vertical: 5),
                labelColor: Color(0xff363F55),
                tabs: [
                  Tab(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text("All Type"),
                  )),
                  Tab(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Full Body",
                      textAlign: TextAlign.center,
                    ),
                  )),
                  Tab(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text("Upper"),
                  )),
                  Tab(
                      child: Align(
                    alignment: Alignment.center,
                    child: Text("Lower"),
                  ))
                ],
              ),
              Expanded(
                child: ListView.builder(itemCount: 2,itemBuilder: (context, index) {
                  return Carditem(Text1[index], Text2[index], Text3[index], Images[index]);
                },),
              )
            ],
          ),
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
