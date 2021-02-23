import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        primarySwatch: Colors.amber,
        
        accentColor:  Color.fromRGBO(231, 198, 142, 0.7),
        primaryColor: Color.fromRGBO(231, 198, 142, 1),
        splashColor: Color.fromRGBO(231, 198, 142, 0.7),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              brightness: Brightness.dark,
              color: Color.fromRGBO(231, 198, 142, 1),
            ),
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
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SplashScreen(),
      ),
    );
  }
}
