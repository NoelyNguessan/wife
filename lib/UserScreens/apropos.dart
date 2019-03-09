import 'package:flutter/material.dart';

class WifeApropos extends StatefulWidget {
  @override
  _WifeAproposState createState() => _WifeAproposState();
}

class _WifeAproposState extends State<WifeApropos> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("A propos"),
        centerTitle: false,

      ),
      body: new Center(child: new Text("A propos de nous ",
        style: new TextStyle(fontSize: 25.0),
      ),
      ),
    );
  }
}