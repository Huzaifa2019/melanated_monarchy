import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './noMessages.dart';
import './menu.dart';
import './messagesDetails.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  String searchField = '';
  bool isMessage = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color golden = Color.fromRGBO(231, 198, 142, 1.0);
    Color goldenDull = Color.fromRGBO(231, 198, 142, 0.7);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
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
                  //search field name
                  Expanded(
                    child: SizedBox(
                      // width: size.width * 0.7,
                      // height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        autofocus: false,
                        cursorColor: golden,
                        onChanged: (tmp) {
                          setState(() {
                            searchField = tmp;
                          });
                        },
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Nunito',
                          color: golden,
                        ),
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: golden,
                          ),
                          hintText: 'Search Messages',
                          hintStyle: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Nunito',
                            color: goldenDull,
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 1,
                              color: golden,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: Color.fromRGBO(231, 198, 142, 0.8),
                        size: 30,
                      ),
                      onPressed: () {}),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMessage = !isMessage;
                  });
                },
                child: Text(
                  'Inbox',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: golden,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color(0xFF9D7A54),
                    ),
                  ),
                ),
                child: TabBar(
                  dragStartBehavior: DragStartBehavior.start,
                  unselectedLabelColor: goldenDull,
                  labelColor: golden,
                  indicatorPadding: EdgeInsets.all(0),
                  labelPadding: EdgeInsets.all(0),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 0,
                    ),
                    insets: EdgeInsets.zero,
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Color.fromRGBO(255,255,255,0),
                  onTap: (index) {
                    setState(() {});
                  },
                  tabs: [
                    Tab(
                      child: Text(
                        'Buy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Sell',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: (size.height - 45) * 0.71,
                child: TabBarView(
                  children: [
                    (!isMessage) ? MessagesDetails() : NoMessages(),
                    Container(),
                  ],
                ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
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
                        'assets/images/bell.png',
                      ),
                      height: 28,
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
    );
  }
}
