import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Screenone extends StatelessWidget {
  static const routeName="screenone";
  const Screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Color(0xFFF9F5FF),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/Frame.png",fit: BoxFit.fitHeight,height: 35),
                  Text("Relaxing",style: TextStyle(height: 1,fontSize: 18,fontWeight: FontWeight.w600,)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
