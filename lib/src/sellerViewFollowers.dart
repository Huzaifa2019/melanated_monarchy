import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerViewFollowers extends StatefulWidget {
  @override
  _SellerViewFollowersState createState() => _SellerViewFollowersState();
}

class _SellerViewFollowersState extends State<SellerViewFollowers> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    // var size = MediaQuery.of(context).size;
    return Container(
      // margin: const EdgeInsets.only(
      //   left: 5.0,
      //   right: 5.0,
      // ),
      padding: EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: ListTile(
              leading: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: golden,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              title: Text(
                'Dondre Williams',
                style: TextStyle(
                  color: golden,
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: golden,
                    size: 17,
                  ),
                  Text(
                    'Houston, TX',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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
                      color: goldenDull,
                    ),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: golden,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: ListTile(
              leading: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: golden,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              title: Text(
                'Dondre Williams',
                style: TextStyle(
                  color: golden,
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: golden,
                    size: 17,
                  ),
                  Text(
                    'Houston, TX',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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
                      color: goldenDull,
                    ),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: golden,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            child: ListTile(
              leading: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: golden,
                    width: 0.7,
                  ),
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              title: Text(
                'Dondre Williams',
                style: TextStyle(
                  color: golden,
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: golden,
                    size: 17,
                  ),
                  Text(
                    'Houston, TX',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
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
                      color: goldenDull,
                    ),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: golden,
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
