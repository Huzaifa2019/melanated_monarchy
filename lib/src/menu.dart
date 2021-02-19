import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './myProfile.dart';
import './myPosting.dart';
import './draft.dart';
import './myLikes.dart';
import './myPurchase.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: golden,
        // title: Text('Menu'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            iconSize: 36,
            color: golden,
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),

        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 35.0, right: 35.0),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              // margin: EdgeInsets.only(bottom:10),
              child: Card(
                color: Colors.black,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: golden,
                  foregroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.6,
                    color: golden,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                'Dondre Williams',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Nunito',
                  color: golden,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            //My Profile
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => MyProfile()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Profile",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: golden,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //My Posting
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyPosting()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.square_stack_3d_up, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Posting",
                        style: TextStyle(
                          color: golden,
                          fontFamily: 'Nunito',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '02',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Drafts
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Draft()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.square_stack_3d_up, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Drafts",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: golden,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '02',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //My Likes
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLikes()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.heart, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Likes",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: golden,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '01',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //My Purchase
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyPurchase()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.cart, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Purchase",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: golden,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Followers
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person_2, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Followers",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: golden,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '01',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Following
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person_2, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Following",
                        style: TextStyle(
                          color: golden,
                          fontFamily: 'Nunito',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '03',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Billing
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.money_dollar, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Billing",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: golden,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Rating
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.star, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Rating",
                        style: TextStyle(
                          color: golden,
                          fontFamily: 'Nunito',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(231, 198, 142, 1),
                          Color.fromRGBO(184, 149, 105, 1),
                          Color.fromRGBO(157, 122, 84, 1)
                        ]),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 13.0,
                        top: 2,
                        bottom: 2,
                        right: 13.0,
                      ),
                      // color: golden,
                      child: Text(
                        '02',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
            //Logout
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(9),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.login_sharp, color: golden),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Logout",
                        style: TextStyle(
                          color: golden,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
