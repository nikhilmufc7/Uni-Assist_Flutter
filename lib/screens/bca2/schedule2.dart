import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SecondYearSchedule extends StatelessWidget {
  static const routeName = '/schedule2';
  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Schedule",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: ScreenUtil.instance.setSp(22.0),
              color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(40)),
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
                              padding: EdgeInsets.only(left: 20, right: 12),
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
                                    "Subject: Java Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 35),
                                      child: Text(
                                        "For: Div - A",
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
                                children: <Widget>[Text("1:30"), Text("2:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 25, right: 10),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Software Engineering",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 100),
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
                                children: <Widget>[Text("2:30"), Text("3:30")],
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
                                    "Subject: Software Engineering",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 95),
                                      child: Text("For: Everyone")),
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
                                    "Subject: WT Lab/ CN Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 50),
                                      child: Text(
                                        "For: Div A / Div B",
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
                              padding: EdgeInsets.only(left: 20, right: 28),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("2:30")],
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
                                    "Subject: Java Programming",
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
                              padding: EdgeInsets.only(left: 20, right: 28),
                              child: Column(
                                children: <Widget>[Text("2:30"), Text("3:30")],
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
                                    "Subject: Computer Networks",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 80),
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
                                children: <Widget>[Text("3:30"), Text("4:30")],
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
                                    "Subject: Web Technology",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 70),
                                      child: Text("For: Everyone")),
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
                            colors: [
                              Colors.white70,
                              Colors.deepOrangeAccent
                            ])),
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
                                    "Subject: Java Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 90),
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
                                    "Subject: Computer Networks",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 90),
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
                                    "Subject: Web Technology",
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
                                children: <Widget>[Text("1:30"), Text("2:30")],
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
                                    "Subject: Software Engineering",
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

                  ///// 4

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10, right: 5),
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.deepPurpleAccent,
                              Colors.white
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Thursday",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              ),
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
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Java Lab/ CN Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 60),
                                      child: Text(
                                        "For: Div B / Div A",
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
                              padding: EdgeInsets.only(left: 20, right: 28),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("2:30")],
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
                                    "Subject: Web Technology",
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
                              padding: EdgeInsets.only(left: 20, right: 28),
                              child: Column(
                                children: <Widget>[Text("2:30"), Text("3:30")],
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
                                    "Subject: Java Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 75),
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
                                children: <Widget>[Text("3:30"), Text("4:30")],
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
                                    "Subject: Computer Networks",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 90),
                                      child: Text("For: Everyone")),
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
                            colors: [
                              Colors.teal,
                              Colors.white
                            ])),
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
                                    "Subject: Web Technology Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 115),
                                      child: Text(
                                        "For: Div - B",
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
                              padding: EdgeInsets.only(left: 20, right: 28),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("2:30")],
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
                                    "Subject: Java Tutorial",
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
                                    "Subject: WT Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 35),
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
                                children: <Widget>[Text("3:30"), Text("4:30")],
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
                                    "Subject: SE Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: 30),
                                      child: Text("For: Everyone")),
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
                                children: <Widget>[Text("12:30"), Text("4:30")],
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
                                      padding: EdgeInsets.only(right: 105),
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
