import '../screens/holidays.dart';
import 'package:flutter/material.dart';
import '../screens/todoscreen.dart';
import '../screens/faculty.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function handlingTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: handlingTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Assist",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile("Home", Icons.home, (){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile("Quick Notes", Icons.add,(){
            Navigator.of(context).pushNamed(ToDoScreen.routeName);
          }),
          buildListTile("Faculty", Icons.account_circle,(){
            Navigator.of(context).pushNamed(Faculty.routeName);
          }),
          buildListTile("Holidays", Icons.airline_seat_flat,(){
            Navigator.of(context).pushNamed(HolidayList.routeName);
          }),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text("Built with ❤️ and ☕ by Nikhil Singh"),
          )
        ],
      ),
    );
  }
}