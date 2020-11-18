import 'package:amcflutterapp/assets/my_custon_icons.dart';
import 'package:amcflutterapp/details/about_us.dart';
import 'package:amcflutterapp/details/contact_us.dart';
import 'package:amcflutterapp/details/industries_we_serve.dart';
import 'package:amcflutterapp/details/our_services.dart';
import 'package:amcflutterapp/details/publication.dart';
import 'package:amcflutterapp/details/social_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amcflutterapp/resuable/reusable_Product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        mainAxisSpacing: 0,
        children: <Widget>[
          ReuseProductInkwell(
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new AboutUs()),
            ),
            icon: MyFlutterApp.about_us,
            label: 'ABOUT US',
          ),
          ReuseProductInkwell(
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new OurService()),
            ),
            icon: MyFlutterApp.our_services,
            label: 'OUR SERVICES',
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.industries_we_serve,
            label: 'INDUSTRIES WE SERVICES',
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new Industries()),
            ),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.publication,
            label: 'PUBLICATION',
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new Publication()),
            ),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.social_media,
            label: 'SOCIAL MEDIA',
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new SocialMedia()),
            ),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.contact_us,
            label: 'CONTACT US',
            function: () => Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new ContactUs()),
            ),
          ),
        ],
      ),
    );
  }
}

