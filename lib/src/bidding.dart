import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './biddingDetail.dart';

class Bidding extends StatefulWidget {
  @override
  _BiddingState createState() => _BiddingState();
}

class _BiddingState extends State<Bidding> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

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
                  'Bidding',
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
        margin: const EdgeInsets.only(left: 12.0, right: 12.0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BiddingDetail())
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: golden,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 130,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mobileCovers.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 130,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: 2, right: 2, top: 3, bottom: 4),
                              child: Stack(
                                // alignment: Alignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    margin: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    color: Color.fromRGBO(231, 198, 142, 0.4),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    width: 130 * 0.8,
                                    color: golden,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'ACCEPTING BID',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: golden,
                                fontSize: 7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.7,
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: golden,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '70%\noff',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 0.25),
                                        ),
                                      ),
                                      Text(
                                        '\$180',
                                        style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: golden,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.3,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '10\nBIDS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: golden,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: golden,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: golden,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      CupertinoIcons.heart,
                                      color: goldenDull,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: (size.width * 0.48 - 30),
                              child: Text(
                                'Outdoor riding patella belt, shock-absorbing, breathable and pressurized protective patella basketball protective gear wear-resistant sports knee pads',
                                style: TextStyle(
                                  height: 1.4,
                                  color: golden,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.47,
                              margin: EdgeInsets.all(1),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(231, 198, 142, 1),
                                  Color.fromRGBO(184, 149, 105, 1),
                                  Color.fromRGBO(157, 122, 84, 1),
                                ]),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Bid \$50',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '+ free Shipping',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BiddingDetail())
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: golden,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 130,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mobileCovers.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 130,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: 2, right: 2, top: 3, bottom: 4),
                              child: Stack(
                                // alignment: Alignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    margin: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    color: Color.fromRGBO(231, 198, 142, 0.4),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    width: 130 * 0.8,
                                    color: golden,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'ACCEPTING BID',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: golden,
                                fontSize: 7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.7,
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: golden,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '70%\noff',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 0.25),
                                        ),
                                      ),
                                      Text(
                                        '\$180',
                                        style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: golden,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.3,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '10\nBIDS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: golden,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: golden,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: golden,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      CupertinoIcons.heart,
                                      color: goldenDull,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: (size.width * 0.48 - 30),
                              child: Text(
                                'Outdoor riding patella belt, shock-absorbing, breathable and pressurized protective patella basketball protective gear wear-resistant sports knee pads',
                                style: TextStyle(
                                  height: 1.4,
                                  color: golden,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.47,
                              margin: EdgeInsets.all(1),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(231, 198, 142, 1),
                                  Color.fromRGBO(184, 149, 105, 1),
                                  Color.fromRGBO(157, 122, 84, 1),
                                ]),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Bid \$50',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '+ free Shipping',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BiddingDetail())
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: golden,
                      width: 3,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 125,
                              width: 130,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/mobileCovers.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              width: 130,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  left: 2, right: 2, top: 3, bottom: 4),
                              child: Stack(
                                // alignment: Alignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    margin: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    color: Color.fromRGBO(231, 198, 142, 0.4),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 3,
                                    width: 130 * 0.8,
                                    color: golden,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'ACCEPTING BID',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: golden,
                                fontSize: 7,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.48 - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.7,
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: golden,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '70%\noff',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 0.25),
                                        ),
                                      ),
                                      Text(
                                        '\$180',
                                        style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: golden,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: (size.width * 0.48 - 30) * 0.3,
                                  alignment: Alignment.center,
                                  child: Text(
                                    '10\nBIDS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: golden,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: golden,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: golden,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      CupertinoIcons.heart,
                                      color: goldenDull,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: (size.width * 0.48 - 30),
                              child: Text(
                                'Outdoor riding patella belt, shock-absorbing, breathable and pressurized protective patella basketball protective gear wear-resistant sports knee pads',
                                style: TextStyle(
                                  height: 1.4,
                                  color: golden,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.47,
                              margin: EdgeInsets.all(1),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(231, 198, 142, 1),
                                  Color.fromRGBO(184, 149, 105, 1),
                                  Color.fromRGBO(157, 122, 84, 1),
                                ]),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Bid \$50',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '+ free Shipping',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}
