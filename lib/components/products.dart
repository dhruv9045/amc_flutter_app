import 'package:amcflutterapp/assets/my_custon_icons.dart';
import 'file:///D:/TrueLancer/AMC%20Flutter%20design/amc_flutter_app/lib/assets/constraints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amcflutterapp/resuable/reusable_Product.dart';
import '../constants.dart';

class Products extends StatelessWidget {
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
            function: () => Navigator.pushNamed(context, aboutUs),
            icon: MyFlutterApp.about_us,
            label: sAboutUs,
          ),
          ReuseProductInkwell(
            function: () => Navigator.pushNamed(context, ourServices),
            icon: MyFlutterApp.our_services,
            label: sOurSer,
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.industries_we_serve,
            label: sIndustries,
            function: () => Navigator.pushNamed(context, industriesWeServe),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.publication,
            label: sPublication,
            function: () => Navigator.pushNamed(context, publication),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.social_media,
            label: sSocial,
            function: () => Navigator.pushNamed(context, socialMedia),
          ),
          ReuseProductInkwell(
            icon: MyFlutterApp.contact_us,
            label: sCon,
            function: () => Navigator.pushNamed(context, contactUs),
          ),
        ],
      ),
    );
  }
}
