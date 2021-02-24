import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './createListing2.dart';

class CreateListing1 extends StatefulWidget {
  @override
  _CreateListing1State createState() => _CreateListing1State();
}

class _CreateListing1State extends State<CreateListing1> {
  var item = 'Item';
  var categoryType = 'Select Category Type';

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
                    color: goldenDull2,
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
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Please Limit Each Posting To A Single Area And Category, Once Per 48 Hours',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: golden,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'What Type Of Posting Is This :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: golden,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '(See Prohibited List Before Posting.)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: golden,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: golden,
                ),
              ),
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButton<String>(
                value: item,
                hint: Text(
                  'Item',
                  style: TextStyle(color: golden),
                ),
                focusColor: golden,
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: golden,
                ),
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.black),
                isExpanded: true,
                underline: Container(
                  height: 0,
                  color: Colors.grey,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    item = newValue;
                  });
                },
                items: <String>['Item', 'Item A', 'Item B', 'Item C']
                    .map<DropdownMenuItem<String>>((String tmp) {
                  return DropdownMenuItem<String>(
                    value: tmp,
                    child: Text(
                      tmp,
                      style: TextStyle(color: golden),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              height: 1,
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              color: goldenDull,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'What Type Of Category Is This :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: golden,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '(See Prohibited List Before Posting.)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: golden,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: golden,
                ),
              ),
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButton<String>(
                value: categoryType,
                hint: Text(
                  'Select Category Type',
                  style: TextStyle(color: golden),
                ),
                focusColor: golden,
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: golden,
                ),
                dropdownColor: Colors.black,
                style: TextStyle(color: Colors.black),
                isExpanded: true,
                underline: Container(
                  height: 0,
                  color: Colors.grey,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    categoryType = newValue;
                  });
                },
                items: <String>[
                  'Select Category Type',
                  'Cat A',
                  'Cat B',
                  'Cat C'
                ].map<DropdownMenuItem<String>>((String tmp) {
                  return DropdownMenuItem<String>(
                    value: tmp,
                    child: Text(
                      tmp,
                      style: TextStyle(color: golden),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: 1,
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              color: goldenDull,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Posting Title',
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
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'City or Neighbourhood',
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
                color: golden,
                height: 0.8,
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
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Postal Code',
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
                color: golden,
                height: 0.8,
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
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Price',
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
                color: golden,
                height: 0.8,
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
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Shipping',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 16,
                  color: golden,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: golden),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(vertical:10.0),
                      child: Text(
                        'Yes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 16,
                          color: golden,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1),
                        ]),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 11.0),
                      child: Text(
                        'No',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Text(
                'Shipping will be for \$5',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  color: golden,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Description',
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
                color: golden,
                height: 0.8,
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
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Text(
                'Only one job description per posting please.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 14,
                  color: golden,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            GestureDetector(
              onTap: (){},
              child: Text(
                'Please see our FAQ for job posters',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: golden,
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateListing2()));
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
