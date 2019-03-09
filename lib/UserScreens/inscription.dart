import 'package:flutter/material.dart';
import 'package:wife/tools/app_tools.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  TextEditingController nomPrenoms = new TextEditingController();
  TextEditingController numero = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController motDePasse = new TextEditingController();
  TextEditingController confimerMotDePasse = new TextEditingController();
  final scaffoldkey = new GlobalKey<ScaffoldState>();
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      key: scaffoldkey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        title: new Text("Inscription "),
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
                textHint: "Nom & Prenoms",
                textIcon:  Icons.person,
                controller: nomPrenoms),

            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Numero de Telephone",
                textIcon:  Icons.phone,
                textType: TextInputType.number,
                controller: numero),


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
                controller: motDePasse),
            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: true,
                sidePadding: 18.0,
                textHint: "Confirmer Mot de Passe",
                textIcon:  Icons.lock,
                controller: confimerMotDePasse),

            appButton(
                btnText: "creer un compte",onBtnclicked: verifyDetails,
                btnPadding: 20.0 ,
                btnColor: Theme.of(context).primaryColor ),

            //   controller: password),
          ],
        ),
      ),
    );
  }

  verifyDetails() {
    if(nomPrenoms.text == ""){
      showSnackBar("Entrez votre nom et prenom", scaffoldkey);
      return;
    }

    if(numero.text == ""){
      showSnackBar("Entrez votre numero de téléphone", scaffoldkey);
      return;
    }

    if(email.text == ""){
      showSnackBar("Entrez Votre adresse mail", scaffoldkey);
      return;
    }

    if(motDePasse.text == ""){
      showSnackBar("Entrez votre Mot de passe ", scaffoldkey);
      return;
    }

    if(confimerMotDePasse.text == ""){
      showSnackBar("Confirmez votre mot de passe", scaffoldkey);
      return;
    }

    if(motDePasse.text != confimerMotDePasse){
      showSnackBar("Mot de passe incorrect", scaffoldkey);
      return;
    }

    displayProgressDialog(context);
  }

}
