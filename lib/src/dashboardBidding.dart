import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardBidding extends StatefulWidget {
  @override
  _DashboardBiddingState createState() => _DashboardBiddingState();
}

class _DashboardBiddingState extends State<DashboardBidding> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color: golden,
                width: 3,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 100,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/shoes.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.heart,
                      color: golden,
                      size: 17,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 99,
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: golden,
                    borderRadius: BorderRadius.circular(3),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2.0, right: 2, top: 3, bottom: 4),
                  child: Stack(
                    children: [
                      Container(
                        height: 3,
                        width: 99,
                        color: Color.fromRGBO(231, 198, 142, 0.4),
                      ),
                      Container(
                        height: 3,
                        width: 79,
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
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 3,
                        ),
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
                      width: 28,
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
                    // Expanded(flex:1,child: Container(),),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: golden,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
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
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color: golden,
                width: 3,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 100,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/shoes.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.heart,
                      color: golden,
                      size: 17,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 99,
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: golden,
                    borderRadius: BorderRadius.circular(3),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2.0, right: 2, top: 3, bottom: 4),
                  child: Stack(
                    children: [
                      Container(
                        height: 3,
                        width: 99,
                        color: Color.fromRGBO(231, 198, 142, 0.4),
                      ),
                      Container(
                        height: 3,
                        width: 79,
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
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 3,
                        ),
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
                      width: 28,
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
                    // Expanded(flex:1,child: Container(),),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: golden,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
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
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: golden,
                width: 3,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 100,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/shoes.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.heart,
                      color: golden,
                      size: 17,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 99,
                  margin: EdgeInsets.all(1),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: golden,
                    borderRadius: BorderRadius.circular(3),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2.0, right: 2, top: 3, bottom: 4),
                  child: Stack(
                    children: [
                      Container(
                        height: 3,
                        width: 99,
                        color: Color.fromRGBO(231, 198, 142, 0.4),
                      ),
                      Container(
                        height: 3,
                        width: 79,
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
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 3,
                        ),
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
                      width: 28,
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
                    // Expanded(flex:1,child: Container(),),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: golden,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
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
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
