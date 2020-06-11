import 'package:amcflutterapp/details/about_us.dart';
import 'package:amcflutterapp/details/contact_us.dart';
import 'package:amcflutterapp/details/industries_we_serve.dart';
import 'package:amcflutterapp/details/our_services.dart';
import 'package:amcflutterapp/details/publication.dart';
import 'package:amcflutterapp/details/social_media.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../home_screen.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Hexcolor("#365EA1"),
        child: new ListView(
          children: <Widget>[
//            body
            InkWell(
              onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (context)=> new HomePage(),
                ),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close,color: Colors.white),
                    onPressed: ()=>Navigator.of(context).pop(
                      new MaterialPageRoute(builder: (context)=> new HomePage()),),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),

            ListTile(onTap:()=>Navigator.of(context).push(
              new MaterialPageRoute(builder: (context)=> new HomePage()),) ,
              title: Text('HOME'),
              leading: Icon(Icons.home,color: Colors.white),
            ),

            ListTile(
              onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new OurService()),),
              title: Text('OUR SERVICES'),
              leading: Icon(Icons.airline_seat_recline_normal,color: Colors.white),
            ),

            ListTile(
              onTap:()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new Industries()),),
              title: Text('INDUSTRIES WE SERVE'),
              leading: Icon(Icons.find_replace,color: Colors.white),
            ),

            ListTile(
              onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new Publication()),),
              title: Text('PUBLICATION'),
              leading: Icon(Icons.public,color: Colors.white),
            ),

            ListTile(
              onTap:  ()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new SocialMedia()),),
              title: Text('SOCIAL MEDIA'),
              leading: Icon(Icons.perm_media,color: Colors.white),
            ),

            ListTile(
              onTap:()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new ContactUs()),) ,
              title: Text('CONTACT US'),
              leading: Icon(Icons.phone,color: Colors.white),
            ),

            ListTile(
              onTap: ()=>Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new AboutUs()),),
              title: Text('ABOUT US'),
              leading: Icon(Icons.help,color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }

}