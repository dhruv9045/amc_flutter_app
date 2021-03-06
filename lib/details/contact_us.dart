import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'file:///D:/TrueLancer/AMC%20Flutter%20design/amc_flutter_app/lib/assets/constraints.dart';
import 'package:flutter/material.dart';
import 'package:amcflutterapp/resuable/resuable_contact.dart';


class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(
            child: new Text(sCon, textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Con(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Con extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "We serve a diverse range of industries in "
                      "various lines of business. Whatever business you may be in, "
                      "we are here to help. Below is list of services which we provide based "
                      "on the industry you belong to.",
                  style: TextStyle(fontSize: 20, fontFamily: "Antiqua"),
                  textAlign: TextAlign.start,
                ),
              ),
              Reusable(
                launcher: "mailto:info@am-consultant.com",
                texts: "Send us an Email",
              ),
              Reusable(
                launcher: "tel://+97333320643",
                texts: "Call Us",
              ),
              Reusable(
                launcher: "https://am-consultant.com/blog/",
                texts: "Visit Our Website",
              ),
              Reusable(
                launcher: "https://goo.gl/maps/Dgpo5boXvwZf4HhR8",
                texts: "Our Office Location",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
