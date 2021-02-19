import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './billing.dart';

class MyPurchaseDetails extends StatefulWidget {
  @override
  _MyPurchaseDetailsState createState() => _MyPurchaseDetailsState();
}

class _MyPurchaseDetailsState extends State<MyPurchaseDetails> {
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
                  'Purchase Details',
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order ID: ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Status: ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10987',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Delivered',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        'Aug 10, 2020',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: golden,
                          fontFamily: 'Nunito',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
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
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/glasses.png',
                        ),
                        width: 53,
                        height: 53,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sun Glass Multi Shades',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Color:Purple',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 9,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$18',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: golden,
                                  fontFamily: 'Nunito',
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'x1',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: golden,
                                  fontFamily: 'Nunito',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 2, top: 3, bottom: 4),
                    child: Container(
                      height: 1,
                      color: Color.fromRGBO(231, 198, 142, 0.5),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/images/glasses.png',
                        ),
                        width: 53,
                        height: 53,
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sun Glass Multi Shades',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Color:Purple',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: golden,
                              fontFamily: 'Nunito',
                              fontSize: 9,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$18',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: golden,
                                  fontFamily: 'Nunito',
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'x1',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: golden,
                                  fontFamily: 'Nunito',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
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
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Price:',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '\$18.00',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Shipping Fees',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '\$0.50',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Price:',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '\$0.00',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Item Price:',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '10987',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '\$18.50',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: golden,
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Billing()));
                                  });
                                },
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
                                    'Order Again',
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
                            ],
                          ),
                        ),
                      ),
                    ],
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
    );
  }
}
