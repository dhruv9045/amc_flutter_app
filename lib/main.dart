import 'package:amcflutterapp/details/about_us.dart';
import 'package:amcflutterapp/details/our_services.dart';
import 'package:amcflutterapp/details/social_media.dart';
import 'package:amcflutterapp/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details/contact_us.dart';
import 'details/industries_we_serve.dart';
import 'details/publication.dart';
import 'home_screen.dart';

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_Screen',
      routes: <String, WidgetBuilder>{
        'splash_Screen': (BuildContext context) => SplashScreen(),
        'home_Screen': (BuildContext context) => HomeScreen(),
        'about_Us': (BuildContext context) => AboutUs(),
        'contact_Us': (BuildContext context) => ContactUs(),
        'industries_We_Serve': (BuildContext context) => Industries(),
        'our_Services': (BuildContext context) => OurService(),
        'publication': (BuildContext context) => Publication(),
        'social_Media': (BuildContext context) => SocialMedia(),

        //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
      },
    ),
  );
}
