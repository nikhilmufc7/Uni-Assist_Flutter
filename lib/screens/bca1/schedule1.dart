import 'package:flutter/material.dart';

class FirstYearSchedule extends StatelessWidget {
  static const routeName = '/schedule1';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Schedule",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40),
              height: deviceSize.height,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.amber, Colors.lightBlueAccent])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Monday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Opearting Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 85),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Differential Mathematics",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 125),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 65),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 27),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 140),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),

                  ///// Monday
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.white70,
                              Colors.greenAccent
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Tuesday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 65),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Differential Mathematics",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 125),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 1),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 27),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 120),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),

                  /////  3

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.white, Colors.deepOrangeAccent])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Wednesday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 40),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: OS Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 40),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 115),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 27),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 140),
                                      child: Text("For: Div-B")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),

                  ///// 4

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.deepPurpleAccent, Colors.white])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Thursday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Opearting Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 85),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.black),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Differential Mathematics",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 125),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.black),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 65),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.black),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 27),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 140),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  /////5

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.teal, Colors.white])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Friday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 60),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 85),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 27),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 120),
                                      child: Text("For: Div-B")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),

                  ////// 6
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.yellow, Colors.grey])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Saturday",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("12:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Make Up Lab Sessions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 85),
                                      child: Text(
                                        "For: Everyone",
                                        textAlign: TextAlign.center,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Make Up Lab Sessions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 125),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
