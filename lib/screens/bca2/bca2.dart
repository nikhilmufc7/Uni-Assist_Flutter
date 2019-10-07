import 'package:flutter/material.dart';
import '../todoscreen.dart';
import '../faculty.dart';
import './schedule2.dart';
import 'referenceBooks2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BcaSecondYear extends StatelessWidget {
  static const routName = '/bca2';
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
            "BCA Second Year",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: ScreenUtil.instance.setSp(22.0),
            ),
          ),
          centerTitle: true,
//          backgroundColor: Color.fromRGBO(77, 77, 255, 0.7)
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil.instance.setWidth(30.0),
                  left: ScreenUtil.instance.setWidth(30.0),
                  right: ScreenUtil.instance.setWidth(30.0)),
              height: deviceSize.height,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(SecondYearSchedule.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: ScreenUtil.instance.setHeight(80),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(71, 209, 209, 0.9)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.schedule,
                                size: ScreenUtil.instance.setSp(36.0),
                              ),
                              Text(
                                "Weekly Schedule",
                                style: TextStyle(
                                    fontSize: ScreenUtil.instance.setSp(24.0),
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 2),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(30),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(ToDoScreen.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: ScreenUtil.instance.setHeight(80),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255, 163, 26, 0.8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.assignment,
                                  size: ScreenUtil.instance.setSp(36.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Add Short Notes",
                                  style: TextStyle(
                                      fontSize: ScreenUtil.instance.setSp(24.0),
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(30),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(ReferenceBooks2.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: ScreenUtil.instance.setHeight(80),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(210, 121, 166, 0.8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.library_books,
                                  size: ScreenUtil.instance.setSp(36.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Reference Books",
                                  style: TextStyle(
                                      fontSize: ScreenUtil.instance.setSp(24.0),
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil.instance.setHeight(30),
                      ),
                      InkWell(
                        onTap: () =>
                            Navigator.of(context).pushNamed(Faculty.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: ScreenUtil.instance.setHeight(80),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255, 77, 77, 0.8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.account_circle,
                                  size: ScreenUtil.instance.setSp(36.0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Faculty for BCA",
                                  style: TextStyle(
                                      fontSize: ScreenUtil.instance.setSp(24.0),
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
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
