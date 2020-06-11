import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('About Us', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      endDrawer: MyDrawer(),
      body: ABU(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
class ABU extends StatelessWidget{
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
              child: Column(
                children: <Widget>[
                  Text("ABOUT US\n\n"
                      "SFAI- AM Consulting is a management consulting practice established "
                      "in the Kingdom of Bahrain. The company is promoted by individuals having "
                      "more than 45 years of combined experience in the G.C.C. Market. The company "
                      "has become member of Santa Fe Associates (SFAI) in 2020.\n\n"

                      "SFAI is the world’s seventeenth largest multinational professional services and  is a "
                      "member of the IFAC Forum of Firms. SFAI global network has 225 offices with 66 countries "
                      "presence and has total staffs of 10,000 including 1,260 partners worldwide.\n\n"
                      "SFAI -  AM Consulting offers various services to its customers in Bahrain and other GCC Countries.\n\n"
                      " Our purpose\n\n"
                      " Bringing together brilliant minds to create value and make contributions to our clients, industries and society.\n\n"
                      "Our vision\n\n"
                      "To be the first choice of our clients to provide cost effective financial and management advisory services "
                      "and to help them grow their business, and achieve desired profitability.\n\n"

                    ,style: TextStyle(fontSize: 20,fontFamily: "Antiqua"),textAlign: TextAlign.start,),
                ],
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