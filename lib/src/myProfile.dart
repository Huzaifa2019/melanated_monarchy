import 'package:flutter/material.dart';


class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: golden,
        // title: Text('Menu'),
        leading: IconButton(
          iconSize: 36,
          color: golden,
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),

        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              // margin: EdgeInsets.only(bottom:10),
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: golden,
                  foregroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.camera_alt,
                      color: golden,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.6,
                    color: golden,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 10.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dondre Williams',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 16,
                      color: golden,
                    ),
                  ),
                  IconButton(
                    color: golden,
                    icon: Icon(Icons.edit_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            //First Name
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'First Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                                  fontFamily: "Nunito",
                      fontSize: 16,color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                height: 0.8,
                color: Color.fromRGBO(208, 175, 122, 1),
              ),
              cursorColor: Color.fromRGBO(208, 175, 122, 1),
              decoration: InputDecoration(
                hoverColor: golden,
                focusColor: golden,
                fillColor: golden,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                // hintText: 'Mobile Number',
              ),
            ),
            //Last Name
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Last Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                                  fontFamily: "Nunito",
                      fontSize: 16,color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                height: 0.8,
                color: Color.fromRGBO(208, 175, 122, 1),
              ),
              cursorColor: Color.fromRGBO(208, 175, 122, 1),
              decoration: InputDecoration(
                hoverColor: golden,
                focusColor: golden,
                fillColor: golden,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                // hintText: 'Mobile Number',
              ),
            ),
            //Phone Number
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Phone Number',
                textAlign: TextAlign.left,
                style: TextStyle(
                                  fontFamily: "Nunito",
                      fontSize: 16,color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Color.fromRGBO(208, 175, 122, 1),
                height: 0.8,
              ),
              cursorColor: Color.fromRGBO(208, 175, 122, 1),
              decoration: InputDecoration(
                hoverColor: golden,
                focusColor: golden,
                fillColor: golden,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                // hintText: 'Mobile Number',
              ),
            ),
            //Country
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Country',
                textAlign: TextAlign.left,
                style: TextStyle(
                                  fontFamily: "Nunito",
                      fontSize: 16,color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Color.fromRGBO(208, 175, 122, 1),
                height: 0.8,
              ),
              cursorColor: Color.fromRGBO(208, 175, 122, 1),
              decoration: InputDecoration(
                hoverColor: golden,
                focusColor: golden,
                fillColor: golden,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                // hintText: 'Mobile Number',
              ),
            ),
            //City
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'City',
                textAlign: TextAlign.left,
                style: TextStyle(
                                  fontFamily: "Nunito",
                      fontSize: 16,color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                color: Color.fromRGBO(208, 175, 122, 1),
                height: 0.8,
              ),
              cursorColor: Color.fromRGBO(208, 175, 122, 1),
              decoration: InputDecoration(
                hoverColor: golden,
                focusColor: golden,
                fillColor: golden,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: golden,
                    width: 1.0,
                  ),
                ),
                // hintText: 'Mobile Number',
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 9,vertical: 13),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(231, 198, 142, 1),
                    Color.fromRGBO(184, 149, 105, 1),
                    Color.fromRGBO(157, 122, 84, 1),
                  ]),
                ),
                child: Text(
                  'Save',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito",
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
