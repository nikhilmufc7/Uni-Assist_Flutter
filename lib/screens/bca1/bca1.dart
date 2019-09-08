import 'package:flutter/material.dart';
import './schedule1.dart';
import '../todoscreen.dart';
import '../faculty.dart';

class BcaFirstYear extends StatelessWidget {
  static const routName = '/bca1';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BCA First Year",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30,left: 30,right: 30),
              height: deviceSize.height,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: ()=> Navigator.of(context).pushNamed(FirstYearSchedule.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.amber, Colors.grey])
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              Icon(
                                Icons.schedule,
                                size: 36,
                              ),
                              Text(
                                "Weekly Schedule",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: ()=> Navigator.of(context).pushNamed(ToDoScreen.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: 80,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.amber, Colors.grey])
                          ),
                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Icon(
                                  Icons.assignment,
                                  size: 36,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 42),
                                child: Text(
                                  "Add Notes",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: ()=> debugPrint('pressed'),
                        child: Container(
                          width: deviceSize.width,
                          height: 80,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.amber, Colors.grey])
                          ),
                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Icon(
                                  Icons.library_books,
                                  size: 36,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 42),
                                child: Text(
                                  "Reference Books",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: ()=> Navigator.of(context).pushNamed(Faculty.routeName),
                        child: Container(
                          width: deviceSize.width,
                          height: 80,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [Colors.amber, Colors.grey])
                          ),
                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 40),
                                child: Icon(
                                  Icons.account_circle,
                                  size: 36,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 42),
                                child: Text(
                                  "Know your faculty",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900
                                  ),
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
