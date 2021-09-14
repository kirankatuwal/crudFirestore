import 'package:flutter/material.dart';
import 'package:project101/screens/login.dart';
import 'package:project101/screens/signup.dart';
import 'package:project101/widget/consts.dart';
import 'package:project101/widget/text_style.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget(
      {Key? key, required this.texthere, required this.navigator})
      : super(key: key);
  final String texthere;
  final int navigator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: mycolor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if (navigator == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          } else if (navigator == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignupPage(),
              ),
            );
          } else if (navigator == 3) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          }
        },
        child: Text(texthere,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class TextFieldCustom extends StatefulWidget {
  TextFieldCustom(
      {Key? key,
      required this.texthere,
      required this.pass,
      required this.textEditingController})
      : super(key: key);
  final String texthere;
  final bool pass;
  TextEditingController textEditingController = new TextEditingController();

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: widget.pass,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: widget.texthere,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
  }
}
