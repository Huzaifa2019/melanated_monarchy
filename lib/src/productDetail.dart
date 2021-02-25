import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
                  'Product Detail',
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: size.width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: golden,
                        width: 3,
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Container(
                        height: 184,
                        width: 184,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
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
                  ),
                  Container(
                    width: size.width,
                    height: 205,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: golden,
                          size: 13,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            color: golden,
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 205,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Transform.rotate(
                          angle: 270 * math.pi / 180,
                          child: Icon(
                            Icons.arrow_circle_up,
                            color: goldenDull,
                            size: 22,
                          ),
                        ),
                        Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: Icon(
                            Icons.arrow_circle_up,
                            color: goldenDull,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Seller: ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: golden,
                                  ),
                                ),
                                Text(
                                  'Andrea Wagner',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: golden,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              width: 85,
                              child: Text(
                                '\$140.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: golden,
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: (size.width * 0.6 - 30),
                              child: Text(
                                'Outdoor riding patella belt, shock-absorbing, breathable and pressurized protective patella',
                                style: TextStyle(
                                  height: 1.4,
                                  color: golden,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: golden,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(5),
                              width: 85,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/shipping.png'),
                                  ),
                                  Text(
                                    'Free',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: golden,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Color',
                            style: TextStyle(
                              color: golden,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: golden,
                            ),
                            color: golden,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(bottom: 7),
                          width: 85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Description',
                              style: TextStyle(
                                color: golden,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    CupertinoIcons.heart,
                                    color: golden,
                                    size: 25,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.share_outlined,
                                    color: golden,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.85,
                      margin: EdgeInsets.only(top: 4, bottom: 15),
                      height: 1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.6,
                            color: golden,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8 - 30,

                      child: Text(
                        'Main material: diving material' +
                            '\nApplicable people: Adult' +
                            '\nApplicable sports: mountaineering' +
                            '\nProduct specifications: M, L' +
                            '\nThe product is suitable for basketball, football, mountaineering, cycling, sliding, dancing, running and other sports' +
                            '\nPacking: pe bag' +
                            '\nProduct performance:' +
                            '\n1. Breathable and dehumidifying can maintain a comfortable effect' +
                            '\n2. Prevent sports injuries',
                        style: TextStyle(
                          color: golden,
                          fontSize: 14,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: size.width,
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.6,
                        margin: EdgeInsets.symmetric(vertical: 15),
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
                          'Message Seller',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
