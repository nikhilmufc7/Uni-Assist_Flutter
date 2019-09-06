import 'package:flutter/material.dart';
import 'bca1/bca1.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DY Patil International University",
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
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.library_books,

                                  ),
                                  Text(
                                    'BCA 1st Year',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.cyanAccent,

                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                      Icons.library_books
                                  ),
                                  Text(
                                    'BCA 2nd Year',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                      Icons.event
                                  ),
                                  Text(
                                    'Events',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.airline_seat_flat
                                  ),
                                  Text(
                                    'Holiday List',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.assessment
                                  ),

                                  Text(
                                    'Acheivements',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.notifications_active
                                  ),

                                  Text(
                                    'Notices',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.apps
                                  ),
                                  Text(
                                    'Courses available',textAlign: TextAlign.center,

                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => debugPrint("hello"),
                            splashColor: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),

                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 160,
                              height: 130,
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.info_outline
                                  ),
                                  Text(
                                    'About',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.cyanAccent
                              ),
                            ),
                          )
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
