import 'package:flutter/material.dart';
import 'package:epic_manager/profile/profile.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          //GridView(gridDelegate: SilverGridDelegateWithFixedCrossAxisCount,
          //scrollDirection: ScrollDirection),
        ], //End of children []
      ),
    );
  }
}
