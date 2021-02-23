import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './menu.dart';
import './messages.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
        // height: size.height ,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 7,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                          hintText: 'Search Products',
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
                        Icons.filter_alt_outlined,
                        color: Color.fromRGBO(231, 198, 142, 0.8),
                        size: 30,
                      ),
                      onPressed: () {}),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Mobiles',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: golden,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Total Result Found (02)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: golden,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color(0xFF9D7A54),
                    ),
                  ),
                ),
                child: Container(),
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9D7A54),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (size.width * 0.35) - 30,
                      child: Container(
                        height: 127,
                        width: 127,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mobileCovers.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    Container(
                      width: (size.width * 0.65) - 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(231, 198, 142, 1.0),
                                      width: 0.7,
                                    ),
                                    borderRadius: BorderRadius.circular(35),
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/images/profile.png'),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text(
                                        'Dondre Store',
                                        style: TextStyle(
                                          color: golden,
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text(
                                        '2 days  ago',
                                        style: TextStyle(
                                          color: goldenDull,
                                          fontFamily: 'Nunito',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Iphone 7s 124gb',
                                  style: TextStyle(
                                    color: golden,
                                    fontSize: 16,
                                  ),
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
                            height: 2,
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
                                      Icons.location_on,
                                      color: golden,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Tokyo',
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
                                    Icons.share_outlined,
                                    color: goldenDull,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '\$140.00',
                                  style: TextStyle(
                                      color: golden,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  // width: size.width * 0.47,
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
                                  child: Text(
                                    'Message Seller',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9D7A54),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (size.width * 0.35) - 30,
                      child: Container(
                        height: 127,
                        width: 127,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mobileCovers.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    Container(
                      width: (size.width * 0.65) - 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(231, 198, 142, 1.0),
                                      width: 0.7,
                                    ),
                                    borderRadius: BorderRadius.circular(35),
                                    image: DecorationImage(
                                      image:
                                      AssetImage('assets/images/profile.png'),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text(
                                        'Dondre Store',
                                        style: TextStyle(
                                          color: golden,
                                          fontFamily: 'Nunito',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text(
                                        '2 days  ago',
                                        style: TextStyle(
                                          color: goldenDull,
                                          fontFamily: 'Nunito',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Iphone 7s 124gb',
                                  style: TextStyle(
                                    color: golden,
                                    fontSize: 16,
                                  ),
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
                            height: 2,
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
                                      Icons.location_on,
                                      color: golden,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Tokyo',
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
                                    Icons.share_outlined,
                                    color: goldenDull,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '\$140.00',
                                  style: TextStyle(
                                      color: golden,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  // width: size.width * 0.47,
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
                                  child: Text(
                                    'Message Seller',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
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
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=> Messages()));
                    });
                  },
                  child: Image(
                    image: AssetImage(
                      'assets/images/speech-fill.png',
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
                      'assets/images/bell-fill.png',
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
