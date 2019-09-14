import 'dart:async';
import './screens/courses.dart';
import './screens/faculty.dart';
import './screens/todoscreen.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/bca1/bca1.dart';
import 'screens/bca1/schedule1.dart';
import './screens/bca2/bca2.dart';
import './screens/bca2/schedule2.dart';
import './screens/holidays.dart';
import './screens/events.dart';
import './screens/about.dart';
import './screens/bca1/referenceBooks1.dart';
import './screens/bca2/referenceBooks2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DYPIU Assist',

      home: Home(),
      initialRoute: '/',
      routes: {
        BcaFirstYear.routName: (ctx) => BcaFirstYear(),
        FirstYearSchedule.routeName: (ctx)=> FirstYearSchedule(),
        ToDoScreen.routeName: (ctx) => ToDoScreen(),
        Faculty.routeName: (ctx) => Faculty(),
        BcaSecondYear.routName: (ctx) => BcaSecondYear(),
        SecondYearSchedule.routeName: (ctx)=> SecondYearSchedule(),
        HolidayList.routeName: (ctx) => HolidayList(),
        EventsScreen.routeName:(ctx) => EventsScreen(),
        CoursesScreen.routeName:(ctx)=> CoursesScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        ReferenceBooks.routeName:(ctx) => ReferenceBooks(),
        ReferenceBooks2.routeName:(ctx) => ReferenceBooks2(),

      },
        onUnknownRoute: (settings) {
      return MaterialPageRoute(builder: (ctx) => Home());
    },
    );
  }
}

