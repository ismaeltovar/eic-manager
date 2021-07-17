import 'package:flutter/material.dart';

import 'package:epic_manager/pages/donate.dart';
import 'package:epic_manager/pages/notes.dart';
import 'package:epic_manager/main_app/screensize_tools.dart';
import 'package:epic_manager/pages/calendar.dart';
import 'package:epic_manager/profile/profile.dart';
import 'package:epic_manager/pages/calendar.dart';
import 'package:epic_manager/settings/settings.dart';
import 'package:epic_manager/settings/themes.dart';
import 'package:epic_manager/main_app/appbar_text.dart';
import 'package:epic_manager/pages/tasks.dart';

Widget homePageWidget = TaskPage(); //Widget for the state of the HomePage

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Epic Manager",
      theme: AppThemes().DarkTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppBarTxt(), textAlign: TextAlign.center),
          actions: [
            IconButton(
              //Profile IconButton in HomePage AppBar
              alignment: Alignment.centerRight,
              icon: Icon(Icons.account_circle, size: 35, color: Colors.white),
              onPressed: () {
                //creates route to display ProfilePage()
                setState(() {
                  homePageWidget = ProfilePage();
                });
              },
            ),
          ], //End of actions: []
        ),
        drawer: Drawer(
          //Drawer in HomePage (For Navigation)
          child: Container(
            //Background for Drawer
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue[900]),
                    child: Text("Navigation")),

                //DrawerItems with Dividers in between
                Divider(color: Colors.white),

                //Tasks Drawer item
                DrawerItem(
                    icon: Icons.check_box,
                    text: "Tasks",
                    onPressed: TaskPage()),
                Divider(color: Colors.white),

                //Notes Drawer Item
                DrawerItem(
                    icon: Icons.note, text: "Notes", onPressed: NotesPage()),
                Divider(color: Colors.white),

                //Calendar Drawer item
                DrawerItem(
                    icon: Icons.calendar_today,
                    text: "Calendar",
                    onPressed: CalendarPage()),
                Divider(color: Colors.white),

                //Settings drawer item
                DrawerItem(
                    icon: Icons.settings_sharp,
                    text: "Settings",
                    onPressed: SettingsPage()),
                Divider(color: Colors.white),

                //Help drawer item
                DrawerItem(
                    icon: Icons.help, text: "Help", onPressed: HelpPage()),
                Divider(color: Colors.white),

                //Issues drawer item
                DrawerItem(
                    icon: Icons.warning_rounded,
                    text: "Issues",
                    onPressed: IssuesPage()),
                Divider(color: Colors.white),

                //Donate drawer Item
                DrawerItem(
                    icon: Icons.emoji_emotions,
                    text: "Donate",
                    onPressed: DonatePage()),
              ],
            ),
          ),
        ),
        body: homePageWidget, //body for scaffold
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget onPressed;

  const DrawerItem(
      {Key key, this.icon, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: DrawerItemColor(
          onPressed), //will turn drawer item white if homePageWidget = the current home Widget displayed
      hoverColor: Colors.white,
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white, size: ScreenHeight(context) * .10),
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenHeight(context) * .10)),
        ],
      ),
      onTap: () {
        homePageWidget = onPressed;
        Navigator.pop(context);
      },
    );
  }
}

//Determines splash color for Drawer Item
DrawerItemColor(final Widget onPressed) {
  if (homePageWidget == onPressed) {
    return Colors.white;
  } else {
    return null;
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: ListView(
        children: [
          Text("If you have any issues with the app, please report them here."),
        ],
      ),
    );
  }
}

class HelpItem extends StatelessWidget {
  final String text;

  const HelpItem({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}

class IssuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Issue Reporting"),
      ),
      body: ListView(
        children: [
          Container(
            width: ScreenWidth(context),
            height: ScreenHeight(context),
            child: Column(
              children: [
                Text(""),
                Text(
                    "Report any bugs/issues in the issues tab at:\n https://github.com/IsmaelT123/epic_manager"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
