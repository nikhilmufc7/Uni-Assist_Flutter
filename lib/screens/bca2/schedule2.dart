import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../todoscreen.dart';

class SecondYearSchedule extends StatefulWidget {
  static const routeName = '/schedule2';

  @override
  _SecondYearScheduleState createState() => _SecondYearScheduleState();
}

class _SecondYearScheduleState extends State<SecondYearSchedule>
with TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }


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
        title: Text("Schedule",
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
//        backgroundColor: Color.fromRGBO(77, 77, 255, 0.7),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Text("Monday",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
            ),
            Tab(
              child: Text("Tuesday",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            Tab(
              child: Text("Wednesday",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            Tab(
              child: Text("Thursday",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            Tab(
              child: Text("Friday",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            Tab(
              child: Text("Saturday",
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),

          ],
        ),
      ),
      body:  TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Monday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Java Lab (Div- A)",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("1:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Software Engineering",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Colors.redAccent,
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("2:30 pm",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Software Engineering",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),

          ///// END OF TAB 1

          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Tuesday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,

                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("WT Lab( Div- A)/ CN Lab (Div -B)",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("1:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Java",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Colors.redAccent,
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("2:30 pm",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Computer Networks",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 128, 255, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("03:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Web Technology",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Raleway',
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),

          //// END OF TAB 2


          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Wednesday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Java",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("10:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Computer Networks",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Colors.redAccent,
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("11:30 am",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Web Technology",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 128, 255, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("01:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Software Engineering",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Raleway',
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),


          //// END OF TAB 3


          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Thursday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Java Lab (Div B) / CN Lab (Div A)",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("1:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Web Technology",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Colors.redAccent,
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("2:30 pm",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Java",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 128, 255, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("03:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Computer Networks",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Raleway',
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),



          //// END OF TAB 4



          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Friday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("WT Lab (Div - B)",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("1:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Java Tutorial",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Colors.redAccent,
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("2:30 pm",
                                      style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        fontWeight: FontWeight.w900,
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("WT Tutorial",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 128, 255, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("03:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("SE Tutorial",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Raleway',
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),




          //// END OF TAB 5


          Container(
            height: ScreenUtil.instance.setHeight(30),
            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(15),
                right: ScreenUtil.instance.setWidth(15)),
            width: deviceSize.width,
            child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: Text(
                      "Saturday",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ScreenUtil.instance.setSp(22.0),
                          fontWeight: FontWeight.w900,
                          color: Colors.lightBlue,
                          letterSpacing: 2
                      ),
                    ),
                  ),
                  Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
//                      height: ScreenUtil.instance.setHeight(500),
                        width: deviceSize.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(0, 204, 102, 0.8),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("09:30 am",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    width: ScreenUtil.instance.setWidth(220),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("Make up lab sessions",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),


                                ],
                              ),
                            ),

                            Container(
                              width: deviceSize.width,
                              height: ScreenUtil.instance.setHeight(45),
                              color: Color.fromRGBO(255, 163, 26, 0.8),
                              child: Row(

                                children: <Widget>[
                                  Container(
                                    width: ScreenUtil.instance.setWidth(90),
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    child: Text("1:30 pm",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(16.0),

                                          fontWeight: FontWeight.w900
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                    width: ScreenUtil.instance.setWidth(220),
                                    child: Text("Make up lab sessions",
                                      style: TextStyle(
                                          fontSize: ScreenUtil.instance.setSp(14.0),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2
                                      ),),
                                  ),

                                ],
                              ),
                            ),




                          ],
                        ),
                      ),

                    ],
                  ),
                ]
            ),

          ),


          //// END OF TAB 6




        ], // tab bar view children
      ),  // tab bar view




      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(ToDoScreen.routeName);
        },
        label: Text('Notes',
        style: TextStyle(
          color: Colors.white
        ),),
        icon: Icon(Icons.border_color),
        backgroundColor: Colors.pink,
      ),

    );
  }
}
