import 'package:amcflutterapp/details/about_us.dart';
import 'package:amcflutterapp/details/contact_us.dart';
import 'package:amcflutterapp/details/industries_we_serve.dart';
import 'package:amcflutterapp/details/our_services.dart';
import 'package:amcflutterapp/details/publication.dart';
import 'package:amcflutterapp/details/social_media.dart';
import 'package:flutter/material.dart';
import '../home_screen.dart';
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
//            body
            InkWell(
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) => new HomePage(),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close, color: whiteColor),
                    onPressed: () => Navigator.of(context).pop(
                      new MaterialPageRoute(
                          builder: (context) => new HomePage()),
                    ),
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
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new HomePage()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'OUR SERVICES',
              icon: Icons.airline_seat_recline_normal,
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new OurService()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'INDUSTRIES WE SERVE',
              icon: Icons.find_replace,
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new Industries()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'PUBLICATION',
              icon: Icons.public,
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new Publication()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'SOCIAL MEDIA',
              icon: Icons.perm_media,
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new SocialMedia()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'CONTACT US',
              icon: Icons.phone,
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new ContactUs()),
              ),
            ),

            ReuseDrawerListTile(
              label: 'ABOUT US',
              function: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new AboutUs()),
              ),
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }
}

