import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsDetails extends StatefulWidget {
  @override
  _NotificationsDetailsState createState() => _NotificationsDetailsState();
}

class _NotificationsDetailsState extends State<NotificationsDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenForDays = Color.fromRGBO(231, 198, 142, 0.6);
    Color goldenDull = Color.fromRGBO(157, 122, 84, 1.0);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: size.width - 10,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          margin: EdgeInsets.only(right: 10),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width * 0.7,
                          child: Text(
                            'Your coupon will expire in 2 hours. Use them now towards your Dash Purchase',
                            style: TextStyle(
                              color: goldenDull,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(
                          color: goldenForDays,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width - 10,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          margin: EdgeInsets.only(right: 10),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width * 0.7,
                          child: Text(
                            'Your coupon will expire in 2 hours. Use them now towards your Dash Purchase',
                            style: TextStyle(
                              color: goldenDull,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(
                          color: goldenForDays,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width - 10,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          margin: EdgeInsets.only(right: 10),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width * 0.7,
                          child: Text(
                            'Your coupon will expire in 2 hours. Use them now towards your Dash Purchase',
                            style: TextStyle(
                              color: goldenDull,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(
                          color: goldenForDays,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width - 10,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          margin: EdgeInsets.only(right: 10),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width * 0.7,
                          child: Text(
                            'Your coupon will expire in 2 hours. Use them now towards your Dash Purchase',
                            style: TextStyle(
                              color: goldenDull,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(
                          color: goldenForDays,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width - 10,
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
              left: 5,
              right: 5,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 37,
                          width: 37,
                          margin: EdgeInsets.only(right: 10),
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
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          width: size.width * 0.7,
                          child: Text(
                            'Your coupon will expire in 2 hours. Use them now towards your Dash Purchase',
                            style: TextStyle(
                              color: goldenDull,
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(
                          color: goldenForDays,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
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
