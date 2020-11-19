import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:amcflutterapp/resuable/reusable_drawer.dart';
import 'file:///D:/TrueLancer/AMC%20Flutter%20design/amc_flutter_app/lib/assets/constraints.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: appMainColor,
        child: new ListView(
          children: <Widget>[
            InkWell(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close, color: whiteColor),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Divider(
              color: whiteColor,
              thickness: 1,
            ),
            ReuseDrawerListTile(
              label: sHome,
              icon: Icons.home,
              function: () =>
                  Navigator.pushReplacementNamed(context, homeScreen),
            ),
            ReuseDrawerListTile(
              label: sOurSer,
              icon: Icons.airline_seat_recline_normal,
              function: () => Navigator.popAndPushNamed(context, ourServices),
            ),
            ReuseDrawerListTile(
              label: sIndustries,
              icon: Icons.find_replace,
              function: () => Navigator.popAndPushNamed(context, industriesWeServe),
            ),
            ReuseDrawerListTile(
              label: sPublication,
              icon: Icons.public,
              function: () => Navigator.popAndPushNamed(context, publication),
            ),
            ReuseDrawerListTile(
              label: sSocial,
              icon: Icons.perm_media,
              function: () => Navigator.popAndPushNamed(context, socialMedia),
            ),
            ReuseDrawerListTile(
              label: sCon,
              icon: Icons.phone,
              function: () => Navigator.popAndPushNamed(context, contactUs),
            ),
            ReuseDrawerListTile(
              label: sAboutUs,
              function: () => Navigator.popAndPushNamed(context, aboutUs),
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }
}
