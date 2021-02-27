import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CreateBidding3 extends StatefulWidget {
  @override
  _CreateBidding3State createState() => _CreateBidding3State();
}

class _CreateBidding3State extends State<CreateBidding3> {
  int radioVal = 0;
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.6);

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
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Create Bidding',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: golden,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 1,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    color: goldenDull,
                  ),
                  Container(
                    width: 70,
                    height: 1,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    color: goldenDull,
                  ),
                  Container(
                    width: 70,
                    height: 1,
                    color: goldenDull,
                  ),
                ],
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
              alignment: Alignment.center,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(231, 198, 142, 1),
                  Color.fromRGBO(184, 149, 105, 1),
                  Color.fromRGBO(157, 122, 84, 1),
                ]),
              ),
              child: Text(
                'Images',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Nunito",
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This Posting Has 0 Images, Of A Maximum 5',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: golden,
              ),
            ),
            Text(
              'Upload Best Image First, It Will Be Featured.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: golden,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // setState(() {
                //
                // });
              },
              child: Image(
                image: AssetImage('assets/images/upload-files.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 86,
                        width: 86,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/listing-img.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Transform.rotate(
                            angle: 45 * math.pi / 180,
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Img123.jpg',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 10,
                          color: golden,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 86,
                        width: 86,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/listing-img.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Transform.rotate(
                            angle: 45 * math.pi / 180,
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Img123.jpg',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 10,
                          color: golden,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 86,
                        width: 86,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/listing-img.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Transform.rotate(
                            angle: 45 * math.pi / 180,
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Img123.jpg',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 10,
                          color: golden,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
              // setState(() {
              //   Navigator.pop(context);
              //   Navigator.pop(context);
              //   Navigator.pop(context);
              //   return showDialog(
              //       context: context,
              //       builder: (BuildContext context) => Dialog(
              //         elevation: 0.0,
              //         backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
              //         child: Container(
              //           width: size.width,
              //           color: Colors.transparent,
              //           alignment: Alignment.center,
              //           child: Column(
              //             children: [
              //               Expanded(
              //                 child: Container(),
              //               ),
              //               Stack(
              //                 fit: StackFit.loose,
              //                 children: [
              //                   Container(
              //                     decoration: BoxDecoration(
              //                       color: Colors.black,
              //                       borderRadius: BorderRadius.circular(5.0),
              //                       border: Border.all(color: golden),
              //                     ),
              //                     margin: EdgeInsets.all(15),
              //                     alignment: Alignment.center,
              //                     padding: EdgeInsets.all(15),
              //                     child: Column(
              //                       children: <Widget>[
              //                         Container(
              //                           alignment: Alignment.center,
              //                           padding: EdgeInsets.symmetric(
              //                               horizontal: 9, vertical: 9),
              //                           decoration: BoxDecoration(
              //                             gradient: LinearGradient(colors: [
              //                               Color.fromRGBO(231, 198, 142, 1),
              //                               Color.fromRGBO(184, 149, 105, 1),
              //                               Color.fromRGBO(157, 122, 84, 1),
              //                             ]),
              //                           ),
              //                           child: Text(
              //                             'Congratulations!',
              //                             textAlign: TextAlign.center,
              //                             style: TextStyle(
              //                               fontSize: 20,
              //                               fontWeight: FontWeight.w600,
              //                               fontFamily: "Nunito",
              //                               color: Colors.black,
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           height: 35,
              //                         ),
              //                         Center(
              //                           child: Text(
              //                             "Your Bidding Has Been Posted!",
              //                             textAlign: TextAlign.center,
              //                             style: TextStyle(
              //                                 fontSize: 14.0,
              //                                 fontFamily: 'Nunito',
              //                                 fontWeight: FontWeight.w700,
              //                                 color: golden),
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           height: 15,
              //                         ),
              //                         Center(
              //                           child: Text(
              //                             "To View It, Head To The Menu And Towards “My Postings”",
              //                             textAlign: TextAlign.center,
              //                             style: TextStyle(
              //                                 fontSize: 14.0,
              //                                 fontFamily: 'Nunito',
              //                                 fontWeight: FontWeight.w400,
              //                                 color: golden),
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           height: 25,
              //                         ),
              //                         GestureDetector(
              //                           onTap: () {
              //                             Navigator.of(context, rootNavigator: true)
              //                                 .pop();
              //                           },
              //                           child: Container(
              //                             alignment: Alignment.center,
              //                             padding: EdgeInsets.symmetric(
              //                                 horizontal: 9, vertical: 11),
              //                             decoration: BoxDecoration(
              //                               gradient: LinearGradient(colors: [
              //                                 Color.fromRGBO(231, 198, 142, 1),
              //                                 Color.fromRGBO(184, 149, 105, 1),
              //                                 Color.fromRGBO(157, 122, 84, 1),
              //                               ]),
              //                             ),
              //                             child: Text(
              //                               'Okay',
              //                               textAlign: TextAlign.center,
              //                               style: TextStyle(
              //                                 fontSize: 18,
              //                                 fontWeight: FontWeight.w600,
              //                                 fontFamily: "Nunito",
              //                                 color: Colors.black,
              //                               ),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(
              //                           height: 10,
              //                         ),
              //                       ],
              //                     ),
              //                   ),
              //                   Positioned(
              //                     top: 0.0,
              //                     right: 0.0,
              //                     child: GestureDetector(
              //                       onTap: () {
              //                         Navigator.of(context, rootNavigator: true).pop();
              //                       },
              //                       child: Align(
              //                         alignment: Alignment.topRight,
              //                         child: CircleAvatar(
              //                           radius: 14.0,
              //                           backgroundColor: Colors.black,
              //                           child: Icon(Icons.close, color: golden),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Expanded(
              //                 child: Container(),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ));
              // });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 13),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(231, 198, 142, 1),
                    Color.fromRGBO(184, 149, 105, 1),
                    Color.fromRGBO(157, 122, 84, 1),
                  ]),
                ),
                child: Text(
                  'Post',
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
