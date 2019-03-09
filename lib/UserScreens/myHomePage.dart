import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:wife/UserScreens/adresse.dart';
import 'package:wife/UserScreens/cart.dart';
import 'package:wife/UserScreens/favorites.dart';
import 'package:wife/UserScreens/apropos.dart';
import 'package:wife/UserScreens/historique.dart';
import 'package:wife/UserScreens/itemdetails.dart';
import 'package:wife/UserScreens/messages.dart';
import 'package:wife/UserScreens/notifications.dart';
import 'package:wife/UserScreens/parametre.dart';
import 'package:wife/UserScreens/connexion.dart';


import 'package:wife/tools/store.dart';

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Mouxo"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(
            Icons.favorite, color: Colors.white,),
              onPressed: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeFavorites()));

              }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(icon: new Icon(
                Icons.chat, color: Colors.white,),
                  onPressed: (){
                    Navigator.of(context).push(new CupertinoPageRoute(
                        builder: (BuildContext context) =>
                        new WifeMessages()));
                  }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text(
                  "0",
                  style: new TextStyle(color: Colors.white, fontSize: 12.0),),
              )
            ],
          )
        ],
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new GridView.builder(
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: storeItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new ItemDetail(
                          itemName: storeItems[index].itemName,
                          itemPrice: storeItems[index].itemPrice,
                          itemImage: storeItems[index].itemImage,
                          itemRating: storeItems[index].itemRating,
                        )));
                      },
                      child: new Card(
                        child: Stack(
                          alignment:  FractionalOffset.topLeft,
                          children: <Widget>[
                            new Stack(
                              alignment: FractionalOffset.bottomCenter,
                              children: <Widget>[
                                new Container(
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: new NetworkImage(storeItems[index].itemImage))
                                  ),

                                ),
                                new Container(
                                  height: 35.0,
                                  color: Colors.black.withAlpha(100),
                                  child: new Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text("${storeItems[index].itemName.substring(0, 3)}...", style: new TextStyle(fontWeight:FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                                        new Text("${storeItems[index].itemPrice}", style: new TextStyle(color: Colors.red[500], fontWeight: FontWeight.w700)),
                                      ],

                                    ),
                                  ),
                                )

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Container(
                                  height: 30.0,
                                  width: 60.0,
                                  decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topRight: new Radius.circular(5.0),
                                        bottomRight: new Radius.circular(5.0),)
                                  ),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new Icon(Icons.star, color: Colors.blue, size: 20.0,),
                                      new Text("${storeItems[index].itemRating}", style: new TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                                new IconButton(icon: Icon(Icons.favorite_border, color: Colors.blue,),
                                    onPressed: () {})
                              ],
                            )
                          ],
                        ),
                      ),
                    );

                  },
                ))
          ],
        ),

      ),

      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
              onPressed: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeCart()));
              },
              child: new Icon(Icons.shopping_cart)
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text(
              "0",
              style: new TextStyle(color: Colors.white, fontSize: 12.0),),
          )

        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("AfricanGeek"), accountEmail: new Text("noelynguessan@gmail.com"),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.white,
                child: new Icon(Icons.person),),),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("Notification"),

              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new WifeNotifications()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("Historique"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeHistorique()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("Parametre"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeParametre()));
              },

            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("Adresse"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeAdresse()));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("A propos"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new WifeApropos()));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
              title: new Text("connexion"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder : (BuildContext context) =>
                    new Connexion()));
              },
            ),
          ],
        ),
      ),
    );
  }
}