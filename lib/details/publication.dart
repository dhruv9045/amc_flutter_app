import 'package:amcflutterapp/assets/publication_icon.dart';
import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:amcflutterapp/pdf/bahrain_bankruptcy.dart';
import 'package:amcflutterapp/pdf/bahrain_company.dart';
import 'package:amcflutterapp/pdf/bahrain_labour.dart';
import 'package:amcflutterapp/pdf/company_broucher.dart';
import 'package:amcflutterapp/pdf/doing_bussiness.dart';
import 'package:amcflutterapp/pdf/intellectual_property.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('Publication', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Pub(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
class Pub extends StatefulWidget{
  @override
  _PubState createState()=>_PubState();
}
class _PubState extends State<Pub>{

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Container(
      child:ListView(
      children:<Widget>[
      Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 350,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new BrochurePdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.brochure_1,size: 70,),
                      Text("Company Brochure",style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new LabourPdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.bahrain_labour_law,size: 70,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("Bahrain Labour Law",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new BankruptcyPdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.bankruptcy_law_1,size: 70,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("Bahrain Bankruptcy Law",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new CompanyPdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.company_law,size: 70,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("Bahrain Company Law",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new IntellectualPdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.intellectual_rights_1,size: 70,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("Intellectual Property Right",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RaisedButton(
                color: Colors.white,
                onPressed: ()=>Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context)=> new DoingPdf(),),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(PublicationIcon.doing_business,size: 70,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text("Doing Business in Bahrain",style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border:
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(PublicationIcon.bahrain_labour_law),
              ),
            ),
          ],
        ),*/
      ],
    ),
    ],
    ),
      ),
    );
  }
}