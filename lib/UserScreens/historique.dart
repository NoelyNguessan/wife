import 'package:flutter/material.dart';

class WifeHistorique extends StatefulWidget {
  @override
  _WifeHistoriqueState createState() => _WifeHistoriqueState();
}

class _WifeHistoriqueState extends State<WifeHistorique> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Historique"),
        centerTitle: false,

      ),
      body: new Center(child: new Text("Historique",
        style: new TextStyle(fontSize: 25.0),
      ),
      ),
    );
  }
}