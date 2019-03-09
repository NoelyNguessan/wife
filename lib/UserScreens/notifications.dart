import 'package:flutter/material.dart';

class WifeNotifications extends StatefulWidget {
  @override
  _WifeNotificationsState createState() => _WifeNotificationsState();
}

class _WifeNotificationsState extends State<WifeNotifications> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Notifications"),
        centerTitle: false,
      ),

      body: new Center(
        child: new Text("Mes Notifications",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
