import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingDetails extends StatefulWidget {
  @override
  double appBarSize;
  RatingDetails(this.appBarSize){}
  _RatingDetailsState createState() => _RatingDetailsState(appBarSize);
}

class _RatingDetailsState extends State<RatingDetails> {

  double appBarSize;
  _RatingDetailsState(this.appBarSize){}
  @override
  Widget build(BuildContext context) {
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.6);
    Color goldenRatingDull = Color.fromRGBO(231, 198, 142, 0.25);
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 52,
          alignment: Alignment.center,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.only(bottom: 7),
          color: goldenRatingDull,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/medal.png',
                ),
                height: 45,
              ),
              SizedBox(
                width: 5,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Level 3',
                  style: TextStyle(
                    color: golden,
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '100% Positive Ratings',
                  style: TextStyle(
                    color: golden,
                    fontFamily: 'Nunito',
                    fontSize: 10,
                  ),
                ),
              ],),
            ],
          ),
        ),
        Container(
          width: size.width,
             height: size.height - appBarSize - 84,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 15,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15,),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: goldenDull,
                        width: 0.6,
                      ),
                    ),
                  ),
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
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Integer ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet.',
                          style: TextStyle(
                            color: Color.fromRGBO(231, 198, 142, 0.9),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Aug 10,2020',
                              style: TextStyle(
                                color: goldenDull,
                                fontFamily: 'Nunito',
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.circle,
                              color: goldenDull,
                              size: 5,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '02:00am',
                              style: TextStyle(
                                color: goldenDull,
                                fontFamily: 'Nunito',
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15,),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: goldenDull,
                        width: 0.6,
                      ),
                    ),
                  ),
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
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Integer ac interdum lacus. Nunc porta semper lacus a varius. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc sagittis consectetur velit, ac gravida nunc gravida et. Vestibulum at eros imperdiet.',
                          style: TextStyle(
                            color: Color.fromRGBO(231, 198, 142, 0.9),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Aug 10,2020',
                              style: TextStyle(
                                color: goldenDull,
                                fontFamily: 'Nunito',
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.circle,
                              color: goldenDull,
                              size: 5,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '02:00am',
                              style: TextStyle(
                                color: goldenDull,
                                fontFamily: 'Nunito',
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}
