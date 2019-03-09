import 'package:flutter/material.dart';

class WifeCart extends StatefulWidget {

  @override
  _WifeCartState createState() => _WifeCartState();
}

class _WifeCartState extends State<WifeCart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cart"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My cart",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}