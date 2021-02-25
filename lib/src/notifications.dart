import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './menu.dart';
import './noNotifications.dart';
import './NotificationsDetails.dart';
import './messages.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isNotification = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(157, 122, 84, 1.0);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        // height: size.height ,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 7,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      CupertinoIcons.line_horizontal_3,
                      color: Color.fromRGBO(231, 198, 142, 1.0),
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context) => Menu(),
                          ),
                        );
                      });
                    }),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isNotification = !isNotification;
                        });
                      },
                      child: Text(
                        'Notifications',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: golden,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: goldenDull,
                  ),
                ),
              ),
            ),
            Container(
              height: (size.height - 45) * 0.84,
              child:
                  (isNotification) ? NotificationsDetails() : NoNotifications(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        width: size.width - 20,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xFF9D7A54),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  (isNotification)
                      ? Container(
                          width: 30.3,
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(
                                new MaterialPageRoute(
                                  builder: (context) => Messages(),
                                ),
                              );
                            });
                          },
                          child: Image(
                            image: AssetImage(
                              'assets/images/speech-fill.png',
                            ),
                            height: 28,
                          ),
                        ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: golden,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage(
                        'assets/images/bell-fill.png',
                      ),
                      height: 28,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
