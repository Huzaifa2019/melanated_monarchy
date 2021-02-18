import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import './sellersNearby.dart';
import './signup.dart';
import './dashboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscure = true;
  String emailField = '';
  String passwordField = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        margin: EdgeInsets.fromLTRB(
          0,
          size.height * 0.048,
          0,
          0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 35,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 168.38,
                width: 224.5,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fill,
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
                height: 20,
              ),
              Text(
                "Log In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(231, 198, 142, 1.0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //text field email
              SizedBox(
                width: size.width - 70,
                child: Text(
                  "Email",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    color: Color.fromRGBO(231, 198, 142, 1.0),
                  ),
                ),
              ),
              SizedBox(
                width: size.width - 70,
                child: TextField(
                  cursorColor: Colors.black,
                  autofocus: false,
                  onChanged: (tmp) {
                    setState(() {
                      emailField = tmp;
                    });
                  },
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Nunito',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      size: 21,
                      color: Colors.black,
                    ),
                    hintText: 'Ex Brandon@gmail.com',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Nunito',
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(231, 198, 142, 1.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //text field password
              SizedBox(
                width: size.width - 70,
                child: Text(
                  "Password",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    color: Color.fromRGBO(231, 198, 142, 1.0),
                  ),
                ),
              ),
              SizedBox(
                width: size.width - 70,
                child: TextField(
                  cursorColor: Colors.black,
                  obscureText: obscure,
                  onChanged: (tmp) {
                    setState(() {
                      passwordField = tmp;
                    });
                  },
                  autofocus: false,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Nunito',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 21,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        size: 21,
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'Ex Abd1234efg',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Nunito',
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(231, 198, 142, 1.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 5,
              ),
              // forget password
              SizedBox(
                width: size.width - 70,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forget Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontFamily: 'Nunito',
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              // Log In
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (context) => Dashboard(),
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
              SizedBox(
                height: 25,
              ),

              // Don't have an account
              SizedBox(
                width: size.width - 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Nunito',
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        });
                      },
                      child: Text(
                        "Make one.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                width: size.width - 70,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 1,
                      color: Color(0xFF9D7A54),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
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
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
