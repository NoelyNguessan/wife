import 'package:flutter/material.dart';
import 'package:wife/UserScreens/inscription.dart';
import 'package:wife/tools/app_tools.dart';

class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => _ConnexionState();
}



class _ConnexionState extends State<Connexion> {

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldkey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text("Connexion "),
        centerTitle: true,
        elevation: 0.0,

      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Email",
                textIcon:  Icons.email,
                controller: email),


            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Mot de Passe",
                textIcon:  Icons.lock,
                controller: password),
             appButton(
                 btnText: "connexion",onBtnclicked: verifyLoggin,
                 btnPadding: 20.0 ,
                 btnColor: Theme.of(context).primaryColor ),

             new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Inscription()));

                },
               child: new Text("non enregistré ? Inscrivez vous ici",
                 style: new TextStyle(color: Colors.white),
               ),
             )
             //   controller: password),
          ],
        ),
      ),
    );
  }

  verifyLoggin() {
    if(email.text == ""){
      showSnackBar("Entrez votre Email", scaffoldkey);
      return;
    }

    if(email.text == ""){
      showSnackBar("Entrez votre Mot de passe", scaffoldkey);
      return;
    }

    displayProgressDialog(context);
  }

}