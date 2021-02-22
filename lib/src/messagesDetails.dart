import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesDetails extends StatefulWidget {
  @override
  _MessagesDetailsState createState() => _MessagesDetailsState();
}

class _MessagesDetailsState extends State<MessagesDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
              left: 7,
              right: 7,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              leading: Container(
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Dondre Store',
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    '2 days ago',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Yes, it\'s still available',
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 14,
                  ),
                ],
              ),
              trailing: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mobileCovers.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
              left: 7,
              right: 7,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              leading: Container(
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Dondre Store',
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    '2 days ago',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Yes, it\'s still available',
                      style: TextStyle(
                        color: goldenDull,
                        fontFamily: 'Nunito',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                ],
              ),
              trailing: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mobileCovers.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
              left: 7,
              right: 7,
            ),
            padding: EdgeInsets.only(bottom: 10, top: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.4, color: goldenDull),
              ),
            ),
            child: ListTile(
              leading: Container(
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Dondre Store',
                      style: TextStyle(
                        color: golden,
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    '2 days ago',
                    style: TextStyle(
                      color: goldenDull,
                      fontFamily: 'Nunito',
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Yes, it\'s still available',
                      style: TextStyle(
                        color: goldenDull,
                        fontFamily: 'Nunito',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                ],
              ),
              trailing: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mobileCovers.png'),
                    fit: BoxFit.scaleDown,
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
