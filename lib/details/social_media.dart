import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('Social Media', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Soc(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Soc extends StatefulWidget{
  @override
  _SocState createState()=>_SocState();
}
class _SocState extends State<Soc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("To visit our social media sites please click below on our pages",style: TextStyle(fontSize: 20,fontFamily: "Antiqua"),),
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
                          border: TableBorder.all(color: Colors.black),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Center(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          onTap: _linkedinURL,
                                          child: Image(
                                            image: AssetImage('images/linkedin.jpg'),
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Center(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          onTap: _instagramURL,
                                          child: Image(
                                            image: AssetImage('images/instagram.png'),
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                             children: [
                               TableCell(
                                 child: Center(
                                   child: Container(
                                     child: Padding(
                                       padding: const EdgeInsets.all(20.0),
                                       child: GestureDetector(
                                         onTap: _twitterURL,
                                         child: Image(
                                           image: AssetImage('images/twitter.png'),
                                           height: 50,
                                           width: 50,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                               TableCell(
                                 child: Center(
                                   child: Container(
                                     child: Padding(
                                       padding: const EdgeInsets.all(20.0),
                                       child: GestureDetector(
                                         onTap: _googleBURL,
                                         child: Image(
                                           image: AssetImage('images/googlebussiness.png'),
                                           height: 50,
                                           width: 50,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                            ),
                          ],
                        ),
                        Table(
                          border: TableBorder(
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                          ),
                          children: [
                            TableRow(
                              children:[
                                TableCell(
                                  child: Center(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: GestureDetector(
                                          onTap: _blogURL,
                                          child: Image(
                                            image: AssetImage('images/blog.png'),
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
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
                  ),
                ),
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