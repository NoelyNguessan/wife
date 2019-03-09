import 'package:flutter/material.dart';

class WifeParametre extends StatefulWidget {
  @override
  _WifeParametreState createState() => _WifeParametreState();
}

class _WifeParametreState extends State<WifeParametre> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Parametre"),
        centerTitle: false,

      ),
      body: new Center(child: new Text("parametre",
        style: new TextStyle(fontSize: 25.0),
      ),
      ),
    );
  }
}