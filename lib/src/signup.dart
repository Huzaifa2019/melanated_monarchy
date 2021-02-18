import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool obscure = true;
  bool obscure2 = true;

  String fullNameField = '';
  String emailField = '';
  String numberField = '';
  String numberPrefixField = '+1';

  String passwordField = '';
  String confirmPasswordField = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(231, 198, 142, 1.0),
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              }),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Color.fromRGBO(231, 198, 142, 1.0),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 35,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign Up",
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

              //text field name
              SizedBox(
                width: size.width - 70,
                child: Text(
                  "Full Name",
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
                      fullNameField = tmp;
                    });
                  },
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Nunito',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 21,
                      color: Colors.black,
                    ),
                    hintText: 'John Blake',
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

              //text field number
              SizedBox(
                width: size.width - 70,
                child: Text(
                  "Number",
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
                      numberField = tmp;
                    });
                  },
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Nunito',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    alignLabelWithHint: true,
                    prefix: Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      child: DropdownButton<String>(
                        value: numberPrefixField,
                        autofocus: true,
                        focusColor: Colors.black54,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.black54,
                        ),
                        dropdownColor: Color.fromRGBO(231, 198, 142, 1.0),
                        iconSize: 26,
                        iconEnabledColor: Colors.black54,
                        style: TextStyle(color: Colors.black),
                        underline: Container(
                          height: 0,
                          color: Colors.grey,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            numberPrefixField = newValue;
                          });
                        },
                        items: <String>['+1', '+92', '+91', '+44']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                      size: 21,
                      color: Colors.black,
                    ),
                    hintText: '900-786543',
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
                height: 10,
              ),

              //text field confirm password
              SizedBox(
                width: size.width - 70,
                child: Text(
                  "Confirm Password",
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
                  obscureText: obscure2,
                  onChanged: (tmp) {
                    setState(() {
                      confirmPasswordField = tmp;
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
                          obscure2 = !obscure2;
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
                height: 40,
              ),

              // Create Account
              GestureDetector(
                onTap: () {},
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
                    'Create Account',
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

              // Already have an account
              SizedBox(
                width: size.width - 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
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
                              builder: (context) => Login(),
                            ),
                          );
                        });
                      },
                      child: Text(
                        "Log In.",
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
