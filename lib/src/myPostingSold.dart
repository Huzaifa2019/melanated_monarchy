import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './createListing1.dart';

class MyPostingSold extends StatefulWidget {
  @override
  _MyPostingSoldState createState() => _MyPostingSoldState();
}

class _MyPostingSoldState extends State<MyPostingSold> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    var size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.only(left: 35.0, right: 35.0),
      alignment: Alignment.center,
      child: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
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
              Container(
                color: Color.fromRGBO(231, 198, 142, 0.7),
                height: 60,
                width: size.width,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 95),
                child: Text(
                  'SOLD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),
          //Create New Listing
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>CreateListing1())
                );
              });
            },
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
    );
  }
}
