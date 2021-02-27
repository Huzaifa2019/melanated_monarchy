import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './sellerView.dart';

class SellersNearby extends StatefulWidget {
  @override
  _SellersNearbyState createState() => _SellersNearbyState();
}

class _SellersNearbyState extends State<SellersNearby> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
              icon: Icon(
                Icons.close,
                color: Color.fromRGBO(231, 198, 142, 1.0),
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              }),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Color.fromRGBO(231, 198, 142, 1.0),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sellers Nearby",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(231, 198, 142, 1.0),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 17,
                      ),
                      Text(
                        'Houston, TX',
                        style: TextStyle(
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 17,
                      ),
                      Text(
                        'Houston, TX',
                        style: TextStyle(
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color.fromRGBO(231, 198, 142, 1.0),
                            size: 17,
                          ),
                          Text(
                            'Houston, TX',
                            style: TextStyle(
                              color: Color.fromRGBO(231, 198, 142, 0.7),
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 37,
                            width: 37,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mobileCovers.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/mobileCovers.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 17,
                      ),
                      Text(
                        'Houston, TX',
                        style: TextStyle(
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 17,
                      ),
                      Text(
                        'Houston, TX',
                        style: TextStyle(
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Text(
                    'Dondre Williams',
                    style: TextStyle(
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        size: 17,
                      ),
                      Text(
                        'Houston, TX',
                        style: TextStyle(
                          color: Color.fromRGBO(231, 198, 142, 0.7),
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
