import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../todoscreen.dart';

class FirstYearSchedule extends StatelessWidget {

  static const routeName = '/schedule1';
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
        title: Text("Schedule"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[

            Column(
              children: <Widget>[
                Container(
                  height: ScreenUtil.instance.setHeight(30),
                  margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(20)),
                  width: deviceSize.width,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Monday",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: ScreenUtil.instance.setSp(22.0),
                            fontWeight: FontWeight.w900,
                            color: Colors.lightBlue,
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  child: Text("Operating System",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(18.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("Differential Mathematics",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("C Programming",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("Opearting System Lab (Div -A)",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(14.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                    //////   2
                    SizedBox(
                        height: ScreenUtil.instance.setHeight(20),
                    ),


                    Container(
                      height: ScreenUtil.instance.setHeight(30),
                      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(20)),
                      width: deviceSize.width,
                      child: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Tuesday",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: ScreenUtil.instance.setSp(22.0),
                                fontWeight: FontWeight.w900,
                                color: Colors.lightBlue,
                              ),
                            ),

                          ),


                        ],
                      ),
                    ),

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
                                  child: Text("C Programming",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(18.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("Differential Mathematics",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("FOC",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Colors.lightBlue,
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
                                  child: Text("C Programming Lab (Div -A)",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          )

                        ],
                      ),
                    ),





                    ////// 3



                    //////   2
                    SizedBox(
                      height: ScreenUtil.instance.setHeight(20),
                    ),


                    Container(
                      height: ScreenUtil.instance.setHeight(30),
                      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(20)),
                      width: deviceSize.width,
                      child: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Wednesday",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: ScreenUtil.instance.setSp(22.0),
                                fontWeight: FontWeight.w900,
                                color: Colors.lightBlue,
                              ),
                            ),

                          ),


                        ],
                      ),
                    ),

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
                                  child: Text("FOC Tutorial",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(18.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("OS Tutorial",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("C Prog Tutorial",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Colors.lightBlue,
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
                                  child: Text("Operating System Lab (Div -B)",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(14.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          )

                        ],
                      ),
                    ),


                    //////  4



                    SizedBox(
                      height: ScreenUtil.instance.setHeight(20),
                    ),


                    Container(
                      height: ScreenUtil.instance.setHeight(30),
                      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(20)),
                      width: deviceSize.width,
                      child: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Thursday",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: ScreenUtil.instance.setSp(22.0),
                                fontWeight: FontWeight.w900,
                                color: Colors.lightBlue,
                              ),
                            ),

                          ),


                        ],
                      ),
                    ),

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
                                  child: Text("Differential Mathematics",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(18.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("Operating System",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("FOC",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Colors.lightBlue,
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
                                  child: Text("C Programming Lab (Div - B)",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          )

                        ],
                      ),
                    ),


                    ///// 5


                    SizedBox(
                      height: ScreenUtil.instance.setHeight(20),
                    ),


                    Container(
                      height: ScreenUtil.instance.setHeight(30),
                      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20), left: ScreenUtil.instance.setWidth(20)),
                      width: deviceSize.width,
                      child: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Friday",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: ScreenUtil.instance.setSp(22.0),
                                fontWeight: FontWeight.w900,
                                color: Colors.lightBlue,
                              ),
                            ),

                          ),


                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(30)),
                      height: ScreenUtil.instance.setHeight(400),
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
                                  child: Text("FOC",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(18.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                  child: Text("C Programming",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
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
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("Operating System",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Colors.lightBlue,
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
                                  child: Text("Differential Mathematics",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Color.fromRGBO(128, 94, 0, 0.8),
                            child: Row(

                              children: <Widget>[
                                Container(
                                  width: ScreenUtil.instance.setWidth(90),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("02:30 pm",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),

                                        fontWeight: FontWeight.w900
                                    ),),
                                ),
                                Container(
                                  width: ScreenUtil.instance.setWidth(220),
                                  margin: EdgeInsets.only(left: ScreenUtil.instance.setWidth(30)),
                                  child: Text("SD",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          Container(
                            width: deviceSize.width,
                            height: ScreenUtil.instance.setHeight(45),
                            color: Color.fromRGBO(217, 140, 140, 0.8),
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
                                  child: Text("SD",
                                    style: TextStyle(
                                        fontSize: ScreenUtil.instance.setSp(16.0),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Raleway'
                                    ),),
                                ),

                              ],
                            ),
                          ),

                          ///// 6

                        ],
                      ),
                    ),

                  ],
                ),



              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(ToDoScreen.routeName);
        },
        label: Text('Notes'),
        icon: Icon(Icons.border_color),
        backgroundColor: Colors.pink,
      ),

    );
  }
}



