import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;
  static final _CollectionReference = _firebaseFirestore
      .collection("Users")
      .doc("Userinfo")
      .collection("profile");
  static final _DocumentReference = _CollectionReference.doc("profileData");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Operation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => addData(),
                child: Text(
                  "Add Data",
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Ubuntu'),
                )),
            TextButton(
                onPressed: () => readData(),
                child: Text(
                  "Read Data",
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Ubuntu'),
                )),
            TextButton(
                onPressed: () => updateData(),
                child: Text(
                  "Update Data",
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Ubuntu'),
                )),
            TextButton(
                onPressed: () => deleteData(),
                child: Text(
                  "Delete Data",
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Ubuntu'),
                )),
          ],
        ),
      ),
    );
  }

  addData() async {
    Map<String, dynamic> demoData = {
      "Name": "Kiran",
      "Email": "kiran@kiran.com"
    };
    _DocumentReference.set(demoData)
        .whenComplete(
            () => Fluttertoast.showToast(msg: "User Added Succesfully"))
        .onError((error, stackTrace) =>
            Fluttertoast.showToast(msg: error.toString()));
  }

  readData() async {
    var documentsnapshot = await _CollectionReference.doc("profileData").get();
    if (documentsnapshot.exists) {
      Map<String, dynamic>? data = documentsnapshot.data();
      Fluttertoast.showToast(msg: data.toString());
      Fluttertoast.showToast(msg: data?["Name"]);
      Fluttertoast.showToast(msg: data?["Email"]);
    }
  }

  updateData() async {
    Map<String, dynamic> demoData = {"Name": "K K", "Email": "k@k.com"};
    _DocumentReference.update(demoData)
        .whenComplete(
            () => Fluttertoast.showToast(msg: "User Updated Succesfully"))
        .onError((error, stackTrace) =>
            Fluttertoast.showToast(msg: error.toString()));
  }

  deleteData() async {
    _DocumentReference.delete()
        .whenComplete(() => Fluttertoast.showToast(msg: "Deleted Success"))
        .onError((error, stackTrace) =>
            Fluttertoast.showToast(msg: error.toString()));
  }
}
