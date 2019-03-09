import 'package:flutter/material.dart';

class WifeMessages extends StatefulWidget {
  @override
  _WifeMessagesState createState() => _WifeMessagesState();
}

class _WifeMessagesState extends State<WifeMessages> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Messages"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("Mes Messages",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),

    );
  }
}