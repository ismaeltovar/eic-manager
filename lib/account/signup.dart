import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Center(
              //Sign Up text in SignUpPage
              child: Text("Sign Up",
                  style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70))),
          Center(
              //Sign Up text in SignUpPage
              child: Text("Welcome!",
                  style: TextStyle(fontSize: 20.0, color: Colors.white70))),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: SignUpForm(),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController1 = TextEditingController();
  final _passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      //Scaffold color is background color behind TextFormFields
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Card(
                //Main Container of SingUpForm
                color: Colors.blueGrey[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        //First Name Text Field
                        child: TextFormField(
                          controller: _nameController,
                          decoration:
                              InputDecoration(hintText: "\t\tFirst Name"),
                          cursorColor: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        //UserName Text Field
                        child: TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(hintText: "\t\tUsername"),
                          cursorColor: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        //Password field
                        child: TextFormField(
                          controller: _passwordController1,
                          decoration: InputDecoration(hintText: "\t\tPassword"),
                          cursorColor: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        //Re-enter password field
                        child: TextFormField(
                          controller: _passwordController2,
                          decoration: InputDecoration(
                            hintText: "\t\tRe-enter Password",
                          ),
                          cursorColor: Colors.blueGrey[900],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        child: Text("Sign Up!",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onPressed: null,
                      ),
                    ),
                  ], //End of children: []
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SignUpThanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ProfileSetUp extends StatefulWidget {
  @override
  _ProfileSetUpState createState() => _ProfileSetUpState();
}

class _ProfileSetUpState extends State<ProfileSetUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome!"),
      ),
    );
  }
}
