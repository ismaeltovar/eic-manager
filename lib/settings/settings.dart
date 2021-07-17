import 'package:flutter/material.dart';
import 'package:epic_manager/main_app/screensize_tools.dart';
import 'package:epic_manager/main.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        children: [
          Divider(),
          SettingsElement(
              text: "Profile Settings",
              icon: Icons.account_circle,
              onPressed: ProfileSettingsPage()),
          Divider(),
          SettingsElement(
              text: "Themes", icon: Icons.brush, onPressed: ThemesPage()),
          Divider(),
          SettingsElement(
              text: "Help", icon: Icons.help, onPressed: HelpPage()),
          Divider(),
          SettingsElement(
              text: "Report An Issue",
              icon: Icons.assignment_late,
              onPressed: IssuesPage()),
        ],
      ),
    );
  }
}

//Following Container Measurements are used for efficiency
double ContainerWidth(BuildContext context) {
  return ScreenWidth(context) * .9;
}

double ContainerHeight(BuildContext context) {
  return (ScreenHeight(context) -
          kToolbarHeight -
          MediaQuery.of(context).padding.top) *
      .10;
}

double ContainerArea(BuildContext context) {
  return (ScreenWidth(context) * ScreenHeight(context));
}

//Class for SettingsElement creation
class SettingsElement extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget onPressed;

  const SettingsElement({
    Key key,
    this.text,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: ContainerWidth(context),
        height: ContainerHeight(context),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => onPressed));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                        top: ContainerHeight(context) * .05,
                        bottom: ContainerHeight(context) * .05,
                        right: ContainerWidth(context) * .35,
                        left: ContainerWidth(context)) *
                    .05,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: ContainerHeight(context) * .9,
                ),
              ),
              Text(
                "$text",
                style: TextStyle(
                    fontSize: ContainerHeight(context) * .5,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Settings Pages
class ProfileSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Settings"),
      ),
      body: ListView(),
    );
  }
}

class ThemesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Themes"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: ScreenWidth(context) * .05,
          mainAxisSpacing: ScreenWidth(context) * .05,
          crossAxisCount: 2,
          children: [
            SettingsElement(),
            SettingsElement(),
          ],
        ));
  }
}

class ThemeElement extends StatelessWidget {
  final ImageProvider themeImage;
  final Text text;
  final Function onPressed;

  const ThemeElement({Key key, this.themeImage, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        child: Column(
          children: [
            Image(image: themeImage),
            Text("$text"),
          ],
        ),
        onTap: null,
      ),
    );
  }
}
