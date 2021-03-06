import 'package:flutter/material.dart';
import 'package:wife/tools/progressdialog.dart';

Widget appTextField(
    { IconData textIcon,
      String textHint,
      bool isPassword,
      double sidePadding,
      TextInputType textType,
      TextEditingController controller}){

  sidePadding == null ? sidePadding= 0.0 : sidePadding;
  textHint == null ? textHint = "" : textHint;
  textType == null ? textType =  TextInputType.text : textType;

  return Padding(
    padding: new EdgeInsets.only(left:sidePadding, right: sidePadding),
    child: new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)
        ),
      ),
      child: new TextField(
        controller: controller,
        obscureText: isPassword == null ? false: isPassword,
        keyboardType: textType == null ? TextInputType.text : textType,
        decoration: new InputDecoration(
            hintText: textHint,
            border: InputBorder.none,
            prefixIcon: textIcon == null ? new Container() : new Icon(textIcon)),

        ),
      ),
  );
}

Widget appButton(
    {String btnText,
      double btnPadding,
      Color btnColor,
      VoidCallback onBtnclicked}){

  btnText == null ? btnText == "App button " : btnText;
  btnPadding == null ? btnPadding == 0.0 : btnPadding;
  btnColor == null ? btnColor = Colors.black : btnColor;


  return Padding(
    padding: new EdgeInsets.all(btnPadding),
    child: new RaisedButton(

      color: Colors.white,
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.all(new Radius.circular(15.0))),
      onPressed: onBtnclicked,
        child: Container(
          height: 50.0,
          child: new Center(
            child: new Text(btnText, style: new TextStyle(
                color: btnColor,
                fontSize: 18.0 ),
          ),
    ),
        ),
    ),
  );
}

showSnackBar(String message, final scaffoldkey) {
  scaffoldkey.currentState.showSnackBar(new SnackBar(
    backgroundColor: Colors.red[600],
    content: new Text(
      message,
      style: new TextStyle(color: Colors.white),
    ),
  ));
}

displayProgressDialog(BuildContext context) {
  Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
      pageBuilder:(BuildContext context, _, __){
        return new ProgressDialog();
  }));
}

closeProgressDialog(BuildContext context) {
  Navigator.of(context).pop();
}

Widget textField({TextEditingController controller}){
  return new Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Colors.white),
          borderRadius: new BorderRadius.all(new Radius.circular(4.0))),
            child: new Padding(
                padding: const EdgeInsets.only(left: 8.0),
        child: new TextField(
          controller: controller,
          decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: "Entrer le texte",
            prefixIcon: new Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: new Icon(
                Icons.person,
                size: 20.0,
              ),
            )),
          ),
      ),
    ),
  );
}