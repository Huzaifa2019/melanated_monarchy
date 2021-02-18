import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './login.dart';
import './signup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 35,
      ),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.048,
          ),
          Container(
            height: 168.38,
            width: 224.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/logo.png"),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Text(
            "MELANATED\nMONARCHY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              color: Color.fromRGBO(231, 198, 142, 1),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            "Make money fast, with whatever you have to sell",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(231, 198, 142, 0.7),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    20,
                    0,
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Color.fromRGBO(231, 198, 142, 1),
                    size: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    20,
                    0,
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Color.fromRGBO(157, 122, 84, 1),
                    size: 10,
                  ),
                ),
                Icon(
                  Icons.circle,
                  color: Color.fromRGBO(157, 122, 84, 1),
                  size: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 65,
          ),

          // Log In
          FittedBox(
            fit: BoxFit.scaleDown,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                });
              },
              child: Container(
                height: 43,
                width: (size.width * 0.88) - 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color.fromRGBO(173, 137, 85, 1),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(231, 198, 142, 1),
                      Color.fromRGBO(157, 122, 84, 1),
                    ],
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // Sign up
          FittedBox(
            fit: BoxFit.scaleDown,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SignUp()));
                });
              },
              child: Container(
                height: 43,
                width: (size.width * 0.88) - 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color.fromRGBO(251, 225, 142, 1),
                  ),
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Nunito',
                    color: Color.fromRGBO(231, 198, 142, 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),

          Text(
            "Login with",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(231, 198, 142, 1),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Facebook
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  width: (size.width * 0.47) - 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(231, 198, 142, 1),
                    ),
                    color: Colors.black,
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/images/facebook.png',
                    ),
                    height: 28,
                  ),
                ),
              ),
              // Google Plus
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  width: (size.width * 0.47) - 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(231, 198, 142, 1),
                    ),
                    color: Colors.black,
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/images/google-plus.png',
                    ),
                    height: 28,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
