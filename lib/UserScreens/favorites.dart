import 'package:flutter/material.dart';

class WifeFavorites extends StatefulWidget {
  @override
  _WifeFavoritesState createState() => _WifeFavoritesState();
}

class _WifeFavoritesState extends State<WifeFavorites> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("mes Favories"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("Mes Favories",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}