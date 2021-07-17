import 'package:flutter/material.dart';
import 'signup.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                    //SignInPage Header
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                Container(
                    //SignInPage Text
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.topCenter,
                    child: Text(
                        "Sign In to Save your Calendar, to-do list, and create a personilized profile!",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                        textAlign: TextAlign.center)),
                Container(
                    //Sign In button in SignInPage

                    ),
                Container(
                  //SignIn button in Profile Page
                  margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                  child: Text("Don't have an account?",
                      style: TextStyle(fontSize: 20.0, color: Colors.white)),
                ),
                Container(
                  //Sign Up button in Sign In page
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                      child: Text("Sign Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                          //Creates a route for _SignUpPage() and displays it
                        );
                      }),
                ),
                Container(
                  //Back Button in SignInPage
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                      child: Text(
                        "Nah, maybe later",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ],
        ));
  }
}
