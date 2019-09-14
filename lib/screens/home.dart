import 'package:flutter/material.dart';
import 'bca1/bca1.dart';
import 'bca2/bca2.dart';
import 'holidays.dart';
import 'events.dart';
import 'courses.dart';
import 'about.dart';
import '../util/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
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
      drawer: MainDrawer(),
      appBar: AppBar(

        title: Text(
          "DYPIU Assist",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: ScreenUtil.instance.setSp(22.0),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(77, 77, 255, 0.7),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: deviceSize.height,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(BcaFirstYear.routName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.library_books,
                                    size: ScreenUtil.instance.setSp(32.0),


                                  ),
                                  Text(
                                    'BCA 1st Year',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(18.0),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255,77,77, 0.8)


                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(BcaSecondYear.routName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                      Icons.library_books,
                                    size: ScreenUtil.instance.setSp(32.0),
                                  ),
                                  Text(
                                    'BCA 2nd Year',
                                    style: TextStyle(
                                      fontSize: ScreenUtil.instance.setSp(18.0),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(71, 209, 209, 0.9)
                              ),
                            ),
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(EventsScreen.routeName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                      Icons.announcement,
                                    size: ScreenUtil.instance.setSp(32.0),
                                  ),
                                  Text(
                                    'Announcements',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: ScreenUtil.instance.setSp(16.0)
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255, 163, 26 ,0.8)
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(HolidayList.routeName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding: EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.airline_seat_flat,
                                    size: ScreenUtil.instance.setSp(32.0),
                                  ),
                                  Text(
                                    'Holiday List',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: ScreenUtil.instance.setSp(18.0)
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(210, 121, 166, 0.8)
                              ),
                            ),
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(CoursesScreen.routeName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(15)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding:  EdgeInsets.all(ScreenUtil.instance.setWidth(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.apps,
                                    size: ScreenUtil.instance.setSp(32.0),
                                  ),
                                  Text(
                                    'Courses available',textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: ScreenUtil.instance.setSp(18.0)
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(153, 179, 255, 0.9)
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pushNamed(AboutScreen.routeName),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: ScreenUtil.instance.setWidth(20)),
                              width: ScreenUtil.instance.setWidth(160),
                              height: ScreenUtil.instance.setHeight(130),
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.info_outline,
                                    size: ScreenUtil.instance.setSp(32.0),
                                  ),
                                  Text(
                                    'About',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: ScreenUtil.instance.setSp(18.0)
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255, 140, 26, 0.6)
                              ),
                            ),
                          ),
                            ],

                      ),

                    ],
                  )

                ],
//                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                  maxCrossAxisExtent: deviceSize.width,
////                  maxCrossAxisExtent: 200,
//                    childAspectRatio: 3 / 2,
////                  crossAxisSpacing: 20,
////                  mainAxisSpacing: 20
//                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
