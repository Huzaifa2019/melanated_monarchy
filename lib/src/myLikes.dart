import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './noLikes.dart';

class MyLikes extends StatefulWidget {
  @override
  _MyLikesState createState() => _MyLikesState();
}

class _MyLikesState extends State<MyLikes> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);

    var size = MediaQuery.of(context).size;
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
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.6,
                      color: golden,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'My Likes',
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
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: golden,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 162,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mobileCovers.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Iphone 7s 124gb',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rs. 77,900/-',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => NoLikes()));
                          });
                        },
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          size: 26,
                          color: golden,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
