import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './bidding.dart';

import './messages.dart';
import './sellersNearby.dart';
import './menu.dart';
import './dashboardBidding.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String searchField = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height - 45,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (context) => Menu(),
                            ),
                          );
                        });
                      }),
                  //search field name
                  Expanded(
                    child: SizedBox(
                      // width: size.width * 0.7,
                      // height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        autofocus: false,
                        cursorColor: golden,
                        onChanged: (tmp) {
                          setState(() {
                            searchField = tmp;
                          });
                        },
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Nunito',
                          color: golden,
                        ),
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: golden,
                          ),
                          hintText: 'Search Anything here....',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Nunito',
                            color: goldenDull,
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.location,
                        color: Color.fromRGBO(231, 198, 142, 0.8),
                        size: 30,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return new SellersNearby();
                          }));
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/car.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Automotive',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/television.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Electronic',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/hoodie.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fashion',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/house-golden.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Housing',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/gym.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Sport',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: golden,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/group-golden.png',
                            ),
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Community',
                            style: TextStyle(
                              color: golden,
                              fontSize: 7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: size.width - 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/section.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Text(
                      'Bidding',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: golden,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (context) => Bidding(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more ',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: golden,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: golden,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              DashboardBidding(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: golden,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Community',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/group-black.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Housing',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/house-black.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Jobs',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/work.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Service',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/customer-support.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'For Sale',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/tag.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 43,
                  width: (size.width * 0.85),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(173, 137, 85, 1),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(231, 198, 142, 1),
                        Color.fromRGBO(157, 122, 84, 1),
                      ],
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Discussion Forum',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/images/group-black.png'),
                        width: 23,
                        height: 23,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        width: size.width - 20,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xFF9D7A54),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (context) => Messages(),
                        ),
                      );
                    });
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/images/speech.png',
                    ),
                    height: 28,
                  ),
                ),
                Container(
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: golden,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(
                      'assets/images/bell.png',
                    ),
                    height: 28,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
