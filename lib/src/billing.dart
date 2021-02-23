import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  @override
  _BillingState createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  void _datePicker() {
    DateTime _selectedDate;
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1910),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
      print(_selectedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.6);

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
                  'Billing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: golden,
                  ),
                ),
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
                'Address',
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
              height: 25,
            ),
            // Country
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Country',
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
            //State / City
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'State / City',
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
            //ZipCode
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'ZipCode',
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
            //Address
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Address',
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

            SizedBox(
              height: 25,
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
                'Card Detail',
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
              height: 5,
            ),

            // Card Number
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Card Number',
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
                hintText: '1234-1234-1234-01',
                hintStyle: TextStyle(
                  color: goldenDull,
                ),
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
            // Expiry Date
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'Expiry Date',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 16,
                  color: golden,
                ),
              ),
            ),

            TextField(
              onTap: () {
                setState(() {
                  _datePicker();
                });
              },
              style: TextStyle(
                color: golden,
                height: 0.8,
              ),
              cursorColor: golden,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.calendar_today_rounded,
                  color: golden,
                ),
                hintText: 'mm/yy',
                hintStyle: TextStyle(
                  color: goldenDull,
                ),
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
            // CVV
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5.0),
              child: Text(
                'CVV',
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
                hintText: '1234',
                hintStyle: TextStyle(
                  color: goldenDull,
                ),

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
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
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
