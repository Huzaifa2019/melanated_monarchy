import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import './sellerViewListing.dart';
import './sellerViewSold.dart';
import './sellerViewRating.dart';
import './sellerViewFollowers.dart';
import './sellerViewFollowing.dart';

class SellerView extends StatefulWidget {
  @override
  _SellerViewState createState() => _SellerViewState();
}

class _SellerViewState extends State<SellerView> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(left: 15.0),
                        child: IconButton(
                          iconSize: 32,
                          color: golden,
                          icon: Icon(Icons.arrow_back_outlined),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30),
                      child: Card(
                        color: Colors.black,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: golden,
                          foregroundColor: Colors.black,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Text(
                    'Dondre Williams',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Nunito',
                      color: golden,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Member since : Aug,2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      color: golden,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width,
                    child: Container(
                      alignment: Alignment.center,
                      width: 123,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1),
                        ]),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.6,
                        color: golden,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Image(
                            image: AssetImage('assets/images/email.png'),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image(
                            image: AssetImage('assets/images/smartphone.png'),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Image(
                            image: AssetImage('assets/images/location.png'),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.6,
                        color: golden,
                      ),
                    ),
                  ),
                  child: TabBar(
                    dragStartBehavior: DragStartBehavior.start,
                    unselectedLabelColor: goldenDull,
                    labelColor: golden,
                    indicatorPadding: EdgeInsets.all(0),
                    labelPadding: EdgeInsets.all(0),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 1,
                      ),
                      insets: EdgeInsets.zero,
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: golden,
                    onTap: (index) {
                      setState(() {});
                    },
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            'Listings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Sold',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Rating',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Followers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Following',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.5 + 5,
              alignment: Alignment.topCenter,
              child: TabBarView(
                dragStartBehavior: DragStartBehavior.start,
                children: [
                  SellerViewListing(),
                  SellerViewSold(),
                  SellerViewRating(),
                  SellerViewFollowers(),
                  SellerViewFollowing(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
