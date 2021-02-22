import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoMessages extends StatefulWidget {
  @override
  _NoMessagesState createState() => _NoMessagesState();
}

class _NoMessagesState extends State<NoMessages> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    // var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'There are no messages available',
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
            width: 117,
            height: 117,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/conversation.png',
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
            'To buy a product, contact a seller now',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: golden,
              fontFamily: 'Nunito',
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40,),
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(231, 198, 142, 1),
                Color.fromRGBO(184, 149, 105, 1),
                Color.fromRGBO(157, 122, 84, 1),
              ]),
            ),
            child: Text(
              'View Biddings',
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
    );
  }
}
