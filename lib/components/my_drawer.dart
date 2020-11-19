import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:amcflutterapp/resuable/reusable_drawer.dart';
import 'package:amcflutterapp/resuable/constraints.dart';

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
              label: 'HOME',
              icon: Icons.home,
              function: () =>
                  Navigator.pushReplacementNamed(context, homeScreen),
            ),
            ReuseDrawerListTile(
              label: 'OUR SERVICES',
              icon: Icons.airline_seat_recline_normal,
              function: () => Navigator.popAndPushNamed(context, ourServices),
            ),
            ReuseDrawerListTile(
              label: 'INDUSTRIES WE SERVE',
              icon: Icons.find_replace,
              function: () => Navigator.popAndPushNamed(context, industriesWeServe),
            ),
            ReuseDrawerListTile(
              label: 'PUBLICATION',
              icon: Icons.public,
              function: () => Navigator.popAndPushNamed(context, publication),
            ),
            ReuseDrawerListTile(
              label: 'SOCIAL MEDIA',
              icon: Icons.perm_media,
              function: () => Navigator.popAndPushNamed(context, socialMedia),
            ),
            ReuseDrawerListTile(
              label: 'CONTACT US',
              icon: Icons.phone,
              function: () => Navigator.popAndPushNamed(context, contactUs),
            ),
            ReuseDrawerListTile(
              label: 'ABOUT US',
              function: () => Navigator.popAndPushNamed(context, aboutUs),
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }
}
