import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyPosting extends StatefulWidget {
  @override
  _MyPostingState createState() => _MyPostingState();
}

class _MyPostingState extends State<MyPosting> {
  Color tab1Color = Color.fromRGBO(231, 198, 142, 1.0);
  Color tab2Color = Color.fromRGBO(231, 198, 142, 0.7);
  Color tab3Color = Color.fromRGBO(231, 198, 142, 0.7);
  Color tab4Color = Color.fromRGBO(231, 198, 142, 0.7);

  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: golden,
          // title: Text('Menu'),
          toolbarHeight: 150,
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
                    'My Posting',
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
          bottom: TabBar(
            dragStartBehavior: DragStartBehavior.start,
            isScrollable: false,
            indicatorColor: Colors.transparent,
            onTap: (index) {
              setState(() {
                if (index == 0) {
                  tab1Color = golden;
                  tab2Color = goldenDull;
                  tab3Color = goldenDull;
                  tab4Color = goldenDull;
                } else if (index == 1) {
                  tab2Color = golden;
                  tab1Color = goldenDull;
                  tab3Color = goldenDull;
                  tab4Color = goldenDull;
                } else if (index == 2) {
                  tab3Color = golden;
                  tab1Color = goldenDull;
                  tab2Color = goldenDull;
                  tab4Color = goldenDull;
                } else if (index == 3) {
                  tab4Color = golden;
                  tab1Color = goldenDull;
                  tab2Color = goldenDull;
                  tab3Color = goldenDull;
                }
              });
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(
                child: Text(
                  'All',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nunito",
                    color: tab1Color,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Most Recent',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nunito",
                    color: tab2Color,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Active',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nunito",
                    color: tab3Color,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'In Active',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nunito",
                    color: tab4Color,
                  ),
                ),
              ),
            ],
          ),

          backgroundColor: Colors.black,
        ),
        body: TabBarView(
          children: [
            Container(
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
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 139,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Iphone 7s 124gb',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'Rs. 77,900/-',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.heart,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 2.0, right: 2, top: 3, bottom: 4),
                          child: Container(
                            height: 1,
                            // width: 79,
                            color: goldenDull,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/postingImage.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kelly Williamson',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: golden,
                                      size: 15,
                                    ),
                                    Text(
                                      ' Tokyo',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: golden,
                                        fontFamily: 'Nunito',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(),
                            ),
                            Icon(
                              Icons.edit_outlined,
                              color: golden,
                              size: 26,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

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
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 139,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Iphone 7s 124gb',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'Rs. 77,900/-',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.heart,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 2.0, right: 2, top: 3, bottom: 4),
                          child: Container(
                            height: 1,
                            // width: 79,
                            color: goldenDull,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/postingImage.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kelly Williamson',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: golden,
                                      size: 15,
                                    ),
                                    Text(
                                      ' Tokyo',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: golden,
                                        fontFamily: 'Nunito',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(),
                            ),
                            Icon(
                              Icons.edit_outlined,
                              color: golden,
                              size: 26,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

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
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 139,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Iphone 7s 124gb',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'Rs. 77,900/-',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.heart,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 2.0, right: 2, top: 3, bottom: 4),
                          child: Container(
                            height: 1,
                            // width: 79,
                            color: goldenDull,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/postingImage.png',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kelly Williamson',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: golden,
                                    fontFamily: 'Nunito',
                                    fontSize: 11,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: golden,
                                      size: 15,
                                    ),
                                    Text(
                                      ' Tokyo',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: golden,
                                        fontFamily: 'Nunito',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(),
                            ),
                            Icon(
                              Icons.edit_outlined,
                              color: golden,
                              size: 26,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Icon(
                              Icons.share_outlined,
                              color: golden,
                              size: 26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  //Create New Listing
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9, vertical: 13),
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
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
