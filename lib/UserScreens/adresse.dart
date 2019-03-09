import 'package:flutter/material.dart';

class WifeAdresse extends StatefulWidget {
  @override
  _WifeAdresseState createState() => _WifeAdresseState();
}

class _WifeAdresseState extends State<WifeAdresse> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        title: new Text("Adresse"),
    centerTitle: false,

    ),
    body: new Center(child: new Text("Adresse",
    style: new TextStyle(fontSize: 25.0),
    ),
    ),
    );
  }
}
