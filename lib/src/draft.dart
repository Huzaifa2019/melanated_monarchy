import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Draft extends StatefulWidget {
  @override
  _DraftState createState() => _DraftState();
}

class _DraftState extends State<Draft> {
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
                  'Draft',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Date :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: golden,
                            fontFamily: 'Nunito',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '28 Aug 2020 13:46',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: golden,
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 2, top: 10, bottom: 10),
                    child: Container(
                      height: 1,
                      // width: 79,
                      color: goldenDull,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Status',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 9,
                              ),
                            ),
                            Text(
                              'Draft',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 32,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(231, 198, 142, 1),
                                Color.fromRGBO(184, 149, 105, 1),
                                Color.fromRGBO(157, 122, 84, 1),
                              ]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Publish',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito",
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 2, top: 10, bottom: 5),
                    child: Container(
                      height: 1,
                      // width: 79,
                      color: goldenDull,
                    ),
                  ),
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Iphone 7s 124gb',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Date :',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: golden,
                            fontFamily: 'Nunito',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '28 Aug 2020 13:46',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: golden,
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 2, top: 10, bottom: 10),
                    child: Container(
                      height: 1,
                      // width: 79,
                      color: goldenDull,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Status',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 9,
                              ),
                            ),
                            Text(
                              'Draft',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: golden,
                                fontFamily: 'Nunito',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 32,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(231, 198, 142, 1),
                                Color.fromRGBO(184, 149, 105, 1),
                                Color.fromRGBO(157, 122, 84, 1),
                              ]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Publish',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Nunito",
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 2, top: 10, bottom: 5),
                    child: Container(
                      height: 1,
                      // width: 79,
                      color: goldenDull,
                    ),
                  ),
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Iphone 7s 124gb',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
