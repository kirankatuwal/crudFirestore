import 'package:flutter/material.dart';
import 'package:project101/widget/mywidget.dart';
import 'package:project101/widget/text_style.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: titleStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/img/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                TextFieldCustom(
                  texthere: "Email",
                  pass: false,
                  textEditingController: email,
                ),
                SizedBox(height: 25.0),
                TextFieldCustom(
                  texthere: "Password",
                  pass: true,
                  textEditingController: password,
                ),
                SizedBox(height: 45.0),
                MyButtonWidget(
                  texthere: "Login",
                  navigator: 1,
                ),
                SizedBox(
                  height: 35.0,
                ),
                MyButtonWidget(
                  texthere: "Sign Up",
                  navigator: 2,
                ),
                SizedBox(
                  height: 35.0,
                ),
                MyButtonWidget(
                  texthere: "Forget Password",
                  navigator: 3,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "© Copyright to Adbhud Marketing\nAll right Reserved!",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
