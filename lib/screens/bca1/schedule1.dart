import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstYearSchedule extends StatelessWidget {
  static const routeName = '/schedule1';
  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 828.0;
    double defaultScreenHeight = 1792.0;
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
              color: Colors.white
          ),
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
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding:  EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Opearting Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(85)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: DM",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700,
                                        fontSize: 12),

                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(125)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(  right: ScreenUtil.instance.setWidth(65)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(27)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(50),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(120)),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(25),
                        ),
                      ],
                    ),
                  ),

                  ///// Monday
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(65)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Differential Mathematics",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(125)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(1)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(27)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(50),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(120)),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(25),
                        ),
                      ],
                    ),
                  ),

                  /////  3

                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(40)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: OS Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(40)),
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
                              padding:  EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Tutorial",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(115)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(27)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(50),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only( right: ScreenUtil.instance.setWidth(140)),
                                      child: Text("For: Div-B")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(25),
                        ),
                      ],
                    ),
                  ),

                  ///// 4

                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Opearting Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(85)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Differential Mathematics",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(125)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(65)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(27)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(50),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.black,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(140)),
                                      child: Text("For: Div-A")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(25),
                        ),
                      ],
                    ),
                  ),
                  /////5

                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("10:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: FOC",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(5)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(60)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Operating Systems",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(85)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(27)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(50),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: C Programming Lab",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(120)),
                                      child: Text("For: Div-B")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.instance.setHeight(25),
                        ),
                      ],
                    ),
                  ),

                  ////// 6
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15),
                        left: ScreenUtil.instance.setWidth(10), right: ScreenUtil.instance.setWidth(5)),
                    padding: EdgeInsets.only(top: ScreenUtil.instance.setWidth(10),
                        left: ScreenUtil.instance.setWidth(30), right: ScreenUtil.instance.setWidth(30)),
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
                              fontSize: ScreenUtil.instance.setSp(18.0),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height:ScreenUtil.instance.setHeight(5),
                        ),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("9:30"), Text("12:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Make Up Lab Sessions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(85)),
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
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[Text("1:30"), Text("4:30")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              height: ScreenUtil.instance.setHeight(30),
                              width: ScreenUtil.instance.setWidth(1),
                              color: Colors.grey,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.instance.setWidth(20),
                                  right: ScreenUtil.instance.setWidth(20)),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Subject: Make Up Lab Sessions",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(right: ScreenUtil.instance.setWidth(125)),
                                      child: Text("For: Everyone")),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:ScreenUtil.instance.setHeight(25),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.instance.setHeight(100),
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
