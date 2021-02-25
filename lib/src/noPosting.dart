import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './createListing1.dart';

class NoPosting extends StatefulWidget {
  @override
  _NoPostingState createState() => _NoPostingState();
}

class _NoPostingState extends State<NoPosting> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    // var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 35.0, right: 35.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'There are no listings',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: golden,
                fontFamily: 'Nunito',
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              width: 142,
              height: 142,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/no-posting.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'To start selling products, create a new listing below',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: golden,
                fontFamily: 'Nunito',
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>CreateListing1())
                );
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
                'Create New Listing',
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
            height: 20,
          ),
        ],
      ),
    );
  }
}
