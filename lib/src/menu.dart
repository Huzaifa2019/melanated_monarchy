import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './myProfile.dart';
import './myPosting.dart';

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

            //My Profile
            FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                          builder: (context) =>  MyProfile()));

                });
              },
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Profile",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //My Posting
            FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  MyPosting()));

                });
              },
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.square_stack_3d_up),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Posting",
                        style: TextStyle(
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Drafts
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.square_stack_3d_up),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Drafts",
                        style: TextStyle(
                          fontSize: 18.0,
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //My Likes
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.heart),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Likes",
                        style: TextStyle(
                          fontSize: 18.0,
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //My Purchase
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.cart),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "My Purchase",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Followers
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person_2),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Followers",
                        style: TextStyle(
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Following
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.person_2),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Following",
                        style: TextStyle(
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Billing
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.money_dollar),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Billing",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Rating
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(CupertinoIcons.star),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Rating",
                        style: TextStyle(
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
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            //Logout
            FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.login_sharp),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              textColor: golden,
              padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
