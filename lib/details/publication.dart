import 'package:amcflutterapp/assets/publication_icon.dart';
import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:amcflutterapp/components/pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/TrueLancer/AMC%20Flutter%20design/amc_flutter_app/lib/assets/constraints.dart';

class Publication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(
            child: new Text(sPublication, textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Pub(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Pub extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ReusePubliContainer(
                label: 'Company Brochure',
                icon: PublicationIcon.brochure_1,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) =>
                        new PdfViewer(value: 1, title: "Company Brochure"),
                  ),
                ),
              ),
              ReusePubliContainer(
                label: 'Bahrain Labour Law',
                icon: PublicationIcon.bahrain_labour_law,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) =>
                        new PdfViewer(value: 2, title: "Bahrain Labour Law"),
                  ),
                ),
              ),
              ReusePubliContainer(
                label: 'Bahrain Bankruptcy Law',
                icon: PublicationIcon.bankruptcy_law_1,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) => new PdfViewer(
                        value: 3, title: "Bahrain Bankruptcy Law"),
                  ),
                ),
              ),
              ReusePubliContainer(
                label: 'Bahrain Company Law',
                icon: PublicationIcon.company_law,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) =>
                        new PdfViewer(value: 4, title: "Bahrain Company Law"),
                  ),
                ),
              ),
              ReusePubliContainer(
                label: 'Intellectual Property Right',
                icon: PublicationIcon.intellectual_rights_1,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) => new PdfViewer(
                        value: 5, title: "Intellectual Property Right"),
                  ),
                ),
              ),
              ReusePubliContainer(
                label: 'Doing Business in Bahrain',
                icon: PublicationIcon.doing_business,
                function: () => Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (context) => new PdfViewer(
                        value: 6, title: "Doing Business in Bahrain"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReusePubliContainer extends StatelessWidget {
  const ReusePubliContainer({@required this.label, this.function, this.icon});
  final String label;
  final Function function;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 140,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: RaisedButton(
            color: whiteColor,
            onPressed: () {
              function();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    icon,
                    size: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      label,
                      style: TextStyle(color: blackColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
