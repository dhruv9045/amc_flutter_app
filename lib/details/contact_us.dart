import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('Contact Us', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: CONTACT(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
class CONTACT extends StatefulWidget {
  @override
  _CONTACTState createState()=>_CONTACTState();

}
class _CONTACTState extends State<CONTACT>{

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Container(
        child:ListView(
          children:<Widget>[
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20),
                  child: Text("We serve a diverse range of industries in "
                      "various lines of business. Whatever business you may be in, "
                      "we are here to help. Below is list of services which we provide based "
                      "on the industry you belong to.",style: TextStyle(fontSize: 20,fontFamily: "Antiqua"),textAlign: TextAlign.start,),
                ),
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: RaisedButton(
                      color: Hexcolor("#365EA1"),
                      onPressed: ()=>launch("mailto:info@am-consultant.com"),
                      child: Text("Send us an Email",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: RaisedButton(
                      color: Hexcolor("#365EA1"),
                      onPressed: ()=>launch("tel://+97333320643"),
                      child: Text("Call Us",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: RaisedButton(
                      color: Hexcolor("#365EA1"),
                      onPressed: ()=>launch("https://am-consultant.com/blog/"),
                      child: Text("Visit Our Website",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: RaisedButton(
                      color: Hexcolor("#365EA1"),
                      onPressed: ()=>launch("https://goo.gl/maps/Dgpo5boXvwZf4HhR8"),
                      child: Text("Our Office Location",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}