import 'package:flutter/material.dart';
import 'package:epic_manager/account/signin.dart';
import 'package:epic_manager/main_app/screensize_tools.dart';

class ProfilePage extends StatelessWidget {
  //Where user can sign in
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Container(
              //Profile picture Icon in ProfilePage
              margin: EdgeInsets.only(top: 50, bottom: 30, left: 50, right: 50),
              //Icon in Center of ProfilePage
              child:
                  Icon(Icons.account_circle, size: 100.0, color: Colors.white)),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              //Text Greeting for non logged-in users in ProfilePage
              child: Text("Hello Guest!",
                  style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          Container(
            width: ScreenWidth(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  //Experience Level in ProfilePage
                  children: [
                    Container(
                      height: (ScreenHeight(context) -
                              kToolbarHeight -
                              MediaQuery.of(context).padding.top) *
                          .15,
                      width: ScreenWidth(context) * .25,
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.arrow_circle_up,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  //Number of Tasks done in ProfilePage
                  children: [
                    Container(
                      height: (ScreenHeight(context) -
                              kToolbarHeight -
                              MediaQuery.of(context).padding.top) *
                          .15,
                      width: ScreenWidth(context) * .25,
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.check_box_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  //Friend Count in ProfilePage
                  children: [
                    Container(
                      height: (ScreenHeight(context) -
                              kToolbarHeight -
                              MediaQuery.of(context).padding.top) *
                          .15,
                      width: ScreenWidth(context) * .25,
                      decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.supervisor_account,
                              color: Colors.white,
                            ),
                          ),
                        ], //End of children: []
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            //Sign In button in ProfilePage
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextButton(
              child: Text("Sign In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
            ),
          ),
        ], //End of children: []
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  var numOfValue; //Value used
  Color color;
  String itemName;

  ProfileItem({Key key, this.itemName, @required this.numOfValue, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
    );
  }
}
