import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './noRating.dart';
import './ratingDetails.dart';

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  bool isRating = true;
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    var size = MediaQuery.of(context).size;
    final PreferredSizeWidget _appBar = AppBar(
      foregroundColor: golden,
      toolbarHeight: 92,
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
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.6,
                    color: golden,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 5.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isRating = !isRating;
                  });
                },
                child: Text(
                  'Rating',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: golden,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      backgroundColor: Colors.black,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBar,
      body: (isRating)
          ? RatingDetails(_appBar.preferredSize.height)
          : NoRating(),
    );
  }
}
