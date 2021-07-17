import 'package:epic_manager/main.dart';
import 'package:epic_manager/profile/profile.dart';
import 'package:epic_manager/pages/calendar.dart';
import 'package:epic_manager/settings/settings.dart';
import 'package:epic_manager/settings/themes.dart';
import 'package:epic_manager/pages/notes.dart';

//Functions in this file are used to determine what text will be displayed in the main AppBar

AppBarTxt() {
  if (homePageWidget == NotesPage()) {
    return "Notes";
  } else if (homePageWidget == SettingsPage()) {
    return "Settings";
  } else if (homePageWidget == HelpPage()) {
    return "Help";
  } else if (homePageWidget == IssuesPage()) {
    return "Issues";
  } else if (homePageWidget == SettingsPage()) {
    return "Donate";
  } else {
    return getCurrentDate().formattedDate;
  }
}

getCurrentDate() {
  String finalDate = "";

  var date = DateTime.now().toString();

  var formattedDate =
      "${DateTime.now().weekday}, {DateTime.now().month} ${DateTime.now().day}";
}
