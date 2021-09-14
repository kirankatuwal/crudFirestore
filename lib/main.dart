import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:project101/screens/screen_page.dart';
import 'package:project101/widget/consts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: ScreenPage(),
    );
  }
}
