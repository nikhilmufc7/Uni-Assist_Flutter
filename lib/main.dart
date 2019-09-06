import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/bca1/bca1.dart';
import './screens/bca1/schedule1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Home(),
      routes: {
        BcaFirstYear.routName: (ctx) => BcaFirstYear(),
        FirstYearSchedule.routeName: (ctx)=> FirstYearSchedule(),
      }
    );
  }
}

