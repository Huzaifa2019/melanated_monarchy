import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    // Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
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
        // height: size.height,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.6,
                      color: golden,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(
                  bottom: 5,
                  left: size.width * 0.2,
                  right: size.width * 0.2,
                ),
                child: Text(
                  "Following",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(231, 198, 142, 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              ListTile(
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
                title: Text(
                  'Dondre Williams',
                  style: TextStyle(
                    color: Color.fromRGBO(231, 198, 142, 1.0),
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Row(
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
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Unfollow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              ListTile(
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
                title: Text(
                  'Dondre Williams',
                  style: TextStyle(
                    color: Color.fromRGBO(231, 198, 142, 1.0),
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Row(
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
                        color: Color.fromRGBO(231, 198, 142, 0.7),
                      ),
                    ),
                    child: Text(
                      'Unfollow',
                      style: TextStyle(
                        color: Color.fromRGBO(231, 198, 142, 1.0),
                        fontFamily: 'Nunito',
                        fontSize: 16,
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
