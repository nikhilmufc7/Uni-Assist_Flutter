import 'package:flutter/material.dart';

class FirstYearSchedule extends StatelessWidget {
  static const routeName = '/schedule1';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: deviceSize.height,

              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 15,left: 30,right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Monday"),
                        SizedBox(height: 5,),
                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),

                              child: Column(
                                children: <Widget>[
                                  Text("9:30"),
                                  Text("10:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Column(

                                children: <Widget>[
                                  Text("Subject: Opearting Systems"),
                                  Text("For: Everyone"),

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
                              padding: EdgeInsets.only(left: 20,right: 20),

                              child: Column(
                                children: <Widget>[
                                  Text("10:30"),
                                  Text("11:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Column(

                                children: <Widget>[
                                  Text("Subject: Differential Mathematics"),
                                  Text("For: Everyone"),

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
                              padding: EdgeInsets.only(left: 20,right: 20),

                              child: Column(
                                children: <Widget>[
                                  Text("11:30"),
                                  Text("12:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Column(

                                children: <Widget>[
                                  Text("Subject: C Programming"),
                                  Text("For: Everyone"),

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
                              padding: EdgeInsets.only(left: 20,right: 27),

                              child: Column(
                                children: <Widget>[
                                  Text("1:30"),
                                  Text("4:30")
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 50,right: 20),
                              height: 30,
                              width: 1.0,
                              color: Colors.grey,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Column(

                                children: <Widget>[
                                  Text("Subject: OS Lab"),
                                  Text("For: Div-A"),

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
