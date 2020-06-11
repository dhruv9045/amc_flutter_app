import 'package:amcflutterapp/assets/my_custon_icons.dart';
import 'package:amcflutterapp/details/about_us.dart';
import 'package:amcflutterapp/details/contact_us.dart';
import 'package:amcflutterapp/details/industries_we_serve.dart';
import 'package:amcflutterapp/details/our_services.dart';
import 'package:amcflutterapp/details/publication.dart';
import 'package:amcflutterapp/details/social_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState()=>_ProductsState();

}
class _ProductsState extends State<Products>{

@override
Widget build(BuildContext context) {
  return Scaffold(
  body: GridView.count(crossAxisCount: 2,
    crossAxisSpacing: 0,padding: EdgeInsets.fromLTRB(30,10,30,0),
    mainAxisSpacing: 0,
    children: <Widget>[
      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new AboutUs()),),
        child: new Container(
          child: new Card(
            color: Hexcolor("#365EA1"),
            elevation: 10.0,
            margin: EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Icon(MyFlutterApp.about_us,color: Colors.white,size: 50,)),
                Divider(),
                Container(child: Text("ABOUT US",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ),
      ),
      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new OurService()),),
        child: new Container(
        child: new Card(
          color: Hexcolor("#365EA1"),
          elevation: 10.0,
          margin: EdgeInsets.all(20.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(child: Icon(MyFlutterApp.our_services,color: Colors.white,size: 50,)),
              Divider(),
              Container(child: Text("OUR SERVICES",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
            ],
          ),
        ),
        ),
      ),
      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new Industries()),),
        child: new Container(
          child: new Card(
            color: Hexcolor("#365EA1"),
            elevation: 10.0,
            margin: EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Icon(MyFlutterApp.industries_we_serve,color: Colors.white,size: 50,)),
                Divider(),
                Container(child: Text("INDUSTRIES WE SERVICES",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ),
      ),

      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new Publication()),),
        child: new Container(
          child: new Card(
            color: Hexcolor("#365EA1"),
            elevation: 10.0,
            margin: EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Icon(MyFlutterApp.publication,color: Colors.white,size: 50,)),
                Divider(),
                Container(child: Text("PUBLICATION",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ),
      ),
      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new SocialMedia()),),
        child: new Container(
          child: new Card(
            color: Hexcolor("#365EA1"),
            elevation: 10.0,
            margin: EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Icon(MyFlutterApp.social_media,color: Colors.white,size: 50,)),
                Divider(),
                Container(child: Text("SOCIAL MEDIA",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ),
      ),
      InkWell(
        onTap: ()=>Navigator.of(context).push(
          new MaterialPageRoute(builder: (context)=> new ContactUs()),),
        child: new Container(
          child: new Card(
            color: Hexcolor("#365EA1"),
            elevation: 10.0,
            margin: EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(child: Icon(MyFlutterApp.contact_us,color: Colors.white,size: 50,)),
                Divider(),
                Container(child: Text("CONTACT US",style: TextStyle(letterSpacing: 1,fontFamily: 'Antiqua',fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
  );
}
}