import 'package:flutter/material.dart';

class Carditem extends StatelessWidget {
  String Text1 ;
  String Text2 ;
  String Text3 ;
  String Images ;

  Carditem(this.Text1,this.Text2,this.Text3,this.Images);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:  Color.fromRGBO(248, 249, 252, 1),
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    Container(

                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          "$Text1",
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.7),
                      child: Text("$Text2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "$Text3",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.access_time_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("30 mins"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset("$Images"),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
