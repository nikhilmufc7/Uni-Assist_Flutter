import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HolidayList extends StatelessWidget {
  static const routeName = '/holidays';
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
          "Holidays List",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: ScreenUtil.instance.setSp(22.0),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: ScreenUtil.instance.setHeight(600),
              width: double.infinity,
              child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '8\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Oct',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(16.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Dassehra',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(16.0),
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '25\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Oct',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(16.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Dhanteras',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(18.0),
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '28\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Oct',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(16.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Diwali',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(18.0),
                                  letterSpacing: 2),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '29\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Oct',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(15.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Bhai Dooj',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(15.0),
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '12\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Nov',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(16.0)),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Gurunanak Jayanti',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(13.0),
                                      letterSpacing: 2),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                            width: ScreenUtil.instance.setWidth(160),
                            height: ScreenUtil.instance.setHeight(130),
                            padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '25\u1d57\u02b0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(20.0)),
                                    ),
                                    Text(
                                      'Dec',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: ScreenUtil.instance.setSp(16.0),
                                          letterSpacing: 2),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Christmas',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(14.0),
                                    letterSpacing: 2
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.amber,
                            ),
                          ),

                        ],
                      ),


                    ],
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
