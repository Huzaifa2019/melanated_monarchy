import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoLikes extends StatefulWidget {
  @override
  _NoLikesState createState() => _NoLikesState();
}

class _NoLikesState extends State<NoLikes> {
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
              'There are no favourites',
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
                    'assets/images/noLikes.png',
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
              'When you like a product, you can add them to your favourites to refer back at them when needed.',
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
                'Continue Shopping',
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
