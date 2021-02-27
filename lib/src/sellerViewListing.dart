import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:melanated_monarchy_mob/src/productDetail.dart';

class SellerViewListing extends StatefulWidget {
  @override
  _SellerViewListingState createState() => _SellerViewListingState();
}

class _SellerViewListingState extends State<SellerViewListing> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    // Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    // var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 35.0,
        right: 35.0,
      ),
      padding: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 5),
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
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/message.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: golden,
                            size: 26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.heart,
                            color: golden,
                            size: 26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductDetail()));
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
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
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/images/message.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.share_outlined,
                            color: golden,
                            size: 26,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.heart,
                            color: golden,
                            size: 26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
