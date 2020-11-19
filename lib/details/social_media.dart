import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:amcflutterapp/resuable/constraints.dart';
import 'package:amcflutterapp/resuable/reusable_TableCell.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(
          child: new Text('Social Media', textAlign: TextAlign.center),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Soc(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Soc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "To visit our social media sites please click below on our pages",
                    style: TextStyle(fontSize: 20, fontFamily: "Antiqua"),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Column(
                          children: <Widget>[
                            Table(
                              border: TableBorder.all(color: blackColor),
                              children: [
                                TableRow(
                                  children: [
                                    ReusableTableCell(
                                        function: () {
                                          _linkedinURL();
                                        },
                                        image: 'images/linkedin.jpg'),
                                    ReusableTableCell(
                                        function: () {
                                          _instagramURL();
                                        },
                                        image: 'images/instagram.png'),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    ReusableTableCell(
                                        function: () {
                                          _twitterURL();
                                        },
                                        image: 'images/twitter.png'),
                                    ReusableTableCell(
                                        function: () {
                                          _googleBURL();
                                        },
                                        image: 'images/googlebussiness.png'),
                                  ],
                                ),
                              ],
                            ),
                            Table(
                              border: TableBorder(
                                right: BorderSide(color: blackColor),
                                left: BorderSide(color: blackColor),
                                bottom: BorderSide(color: blackColor),
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    ReusableTableCell(
                                      function: () {
                                        _blogURL();
                                      },
                                      image: 'images/blog.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_googleBURL() async {
  const url = 'https://g.page/AMConsultingBahrain/review?gm';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_twitterURL() async {
  const url = 'https://twitter.com/amconsultingbh';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_instagramURL() async {
  const url = 'https://www.instagram.com/amcconsulting/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_linkedinURL() async {
  const url = 'https://www.linkedin.com/in/am-consulting-729030147/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_blogURL() async {
  const url = 'https://www.am-consultant.com/blog';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
