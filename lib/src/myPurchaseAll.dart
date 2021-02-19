import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './myPurchaseDetails.dart';
import './myPurchaseDetailsUnpaid.dart';

class MyPurchaseAll extends StatefulWidget {
  @override
  _MyPurchaseAllState createState() => _MyPurchaseAllState();
}

class _MyPurchaseAllState extends State<MyPurchaseAll> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    // var size = MediaQuery.of(context).size;
    return  Container(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order ID',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Status',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order Date',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '23 Aug, 2020',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Payment',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Paid',
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
                    Expanded(
                      flex: 1,
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
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyPurchaseDetails()));
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Get Detail',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: golden,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: golden,
                                size: 12,
                              ),
                            ],
                          ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order ID',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Status',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Packed',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order Date',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '23 Aug, 2020',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Payment',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Unpaid',
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
                    Expanded(
                      flex: 1,
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
                            'Pay Now',
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
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyPurchaseDetailsUnpaid()));
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Get Detail',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: golden,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: golden,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
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
                Text(
                  'Pay Before : 23:44:16',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: golden,
                    fontFamily: 'Nunito',
                    fontSize: 14,
                  ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order ID',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Status',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Out for Delivery',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Order Date',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '23 Aug, 2020',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Payment',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Paid',
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
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Get Detail',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: golden,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: golden,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
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
        ],
      ),
    );
  }
}
