import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './src/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Melanated Monarchy',
      color: Color.fromRGBO(231, 198, 142, 1),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(231, 198, 142, 1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SplashScreen(),
    );
  }
}