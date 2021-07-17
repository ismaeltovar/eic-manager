import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donate"),
      ),
      body: Column(
        children: [
          Text(
              "It takes some work to make software, you know. \nI will also have to pay my tuition eventually... \nAny donations will be greatly appreciated! (Even if its just a dollar)"),
          Text("I haven't set up a way to donate yet. Sorry :("),
        ],
      ),
    );
  }
}
