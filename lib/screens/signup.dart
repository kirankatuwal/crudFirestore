import 'package:flutter/material.dart';
import 'package:project101/widget/mywidget.dart';
import 'package:project101/widget/text_style.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                  texthere: "Full Name",
                  pass: false,
                  textEditingController: username,
                ),
                SizedBox(height: 25.0),
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
                  texthere: "Sign Up",
                  navigator: 2,
                ),
                SizedBox(
                  height: 35.0,
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
