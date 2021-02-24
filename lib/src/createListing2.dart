import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './createListing3.dart';

class CreateListing2 extends StatefulWidget {
  @override
  _CreateListing2State createState() => _CreateListing2State();
}

class _CreateListing2State extends State<CreateListing2> {

  int radioVal = 0;
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.6);
    Color goldenDull2 = Color.fromRGBO(231, 198, 142, 0.3);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: golden,
        toolbarHeight: 100,
        actions: [
          Column(
            children: [
              Container(
                width: size.width,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: IconButton(
                  iconSize: 36,
                  color: golden,
                  icon: Icon(Icons.arrow_back_outlined),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Container(
                width: size.width * 0.80,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Create Listing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: golden,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 1,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    color: goldenDull,
                  ),
                  Container(
                    width: 70,
                    height: 1,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    color: goldenDull,
                  ),
                  Container(
                    width: 70,
                    height: 1,
                    color: goldenDull2,
                  ),
                ],
              ),
            ],
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(231, 198, 142, 1),
                  Color.fromRGBO(184, 149, 105, 1),
                  Color.fromRGBO(157, 122, 84, 1),
                ]),
              ),
              child: Text(
                'Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito",
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5.0),
              child: Text(
                'Enter Email',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 16,
                  color: golden,
                ),
              ),
            ),
            TextField(
              style: TextStyle(
                height: 0.8,
                color: golden,
              ),
              cursorColor: golden,
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
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5.0),
                    child: Text(
                      'Email Privacy Options',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        color: golden,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.help_outline,
                    color: golden,
                    size: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                [0, 'CI Mail Relay (Recommended)'],
                [1, 'Show My Real Email Address'],
                [2, 'No Replies To This Email']
              ]
                  .map(
                    (e) => Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() => this.radioVal = e[0]);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: golden),
                              ),
                              height: 20,
                              width: 20,
                              padding: EdgeInsets.zero,
                              child: Radio<int>(
                                splashRadius: 2,
                                value: e[0],
                                focusColor: golden,
                                activeColor: golden,
                                hoverColor: golden,
                                groupValue: this.radioVal,
                                onChanged: (int val) {
                                  setState(() => this.radioVal = val);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Text(
                                e[1],
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 16,
                                  color: golden,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(231, 198, 142, 1),
                  Color.fromRGBO(184, 149, 105, 1),
                  Color.fromRGBO(157, 122, 84, 1),
                ]),
              ),
              child: Text(
                'Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito",
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() => this.checkedValue1 = !this.checkedValue1);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: golden),
                          ),
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            value: checkedValue1,
                            checkColor: Colors.black,
                            tristate: false,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue1 = newValue;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Show My Real Number",
                            style: TextStyle(
                              color: golden,
                              fontFamily: "Nunito",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() => this.checkedValue2 = !this.checkedValue2);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: golden),
                          ),
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            value: checkedValue2,
                            checkColor: Colors.black,
                            tristate: false,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue2 = newValue;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Phone Calls Ok",
                            style: TextStyle(
                              color: golden,
                              fontFamily: "Nunito",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() => this.checkedValue3 = !this.checkedValue3);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: golden),
                          ),
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            value: checkedValue3,
                            checkColor: Colors.black,
                            tristate: false,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue3 = newValue;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Text/Sms Ok",
                            style: TextStyle(
                              color: golden,
                              fontFamily: "Nunito",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            (checkedValue1)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5.0),
                        child: Text(
                          'Enter Phone Number',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: golden,
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          height: 0.8,
                          color: golden,
                        ),
                        cursorColor: golden,
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
                    ],
                  )
                : SizedBox(),
            (checkedValue2)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5.0),
                        child: Text(
                          'Enter Extension',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: golden,
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          height: 0.8,
                          color: golden,
                        ),
                        cursorColor: golden,
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
                    ],
                  )
                : SizedBox(),
            (checkedValue3)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5.0),
                        child: Text(
                          'Enter Contact Number',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: golden,
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          height: 0.8,
                          color: golden,
                        ),
                        cursorColor: golden,
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
                    ],
                  )
                : SizedBox(),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateListing3()));
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 13),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(231, 198, 142, 1),
                    Color.fromRGBO(184, 149, 105, 1),
                    Color.fromRGBO(157, 122, 84, 1),
                  ]),
                ),
                child: Text(
                  'Continue',
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
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
