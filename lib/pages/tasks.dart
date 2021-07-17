import 'package:epic_manager/main_app/screensize_tools.dart';
import 'package:flutter/material.dart';

//Main Page for To-do list tasks
class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //build() method for _HomePageState
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Stack(
        //Main Home Screen Widget
        children: [
          ListView(
            //Place where tasks are displayed in TaskPage
            children: [
              Container(
                //Welcome Text Container
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      //Welcome Text (Will be removed once user adds tasks)
                      color: Colors.blueGrey[800],
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            title: Text("Welcome!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 35.0, color: Colors.white)),
                            subtitle: Text(
                                "Tap the button in the lower right corner to add a task to your to-do list!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ], //End of children: []
                ),
              ),
            ],
          ),
          Column(
            //Add Task button in TaskPage
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(
                        right: ScreenWidth(context) * .05,
                        bottom: ScreenHeight(context) * .05),
                    child: FloatingActionButton(
                      elevation: 5,
                      onPressed:
                          null, //implement once adding task feature is made
                      tooltip: "Add a Task",
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.add, size: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ], //End of children: []
      ),
    );
  }
}
