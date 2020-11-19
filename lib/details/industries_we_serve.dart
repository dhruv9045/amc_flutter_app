import 'package:amcflutterapp/assets/industries_we_serve_icons.dart';
import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amcflutterapp/resuable/constraints.dart';
import 'package:amcflutterapp/resuable/reusable_ExpensionTile.dart';

class Industries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(
            child: new Text('Industries We Services',
                textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Indu(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


class Indu extends StatelessWidget {
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
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ExpandTileReuse(
                icon: IndustriesWeServe.private_equipment,
                label: 'Private Equity',
                content:
                    "We help you to overcome the challenges which are faced for any Private Equity transaction.\n\n"
                    "We provide support for the following:\n\n"
                    "    •	Deal generation\n"
                    "    •	Conducting the Due diligence\n"
                    "    •	Assisting in creating value for the Portfolio\n"
                    "    •	Exit Planning\n",
              ),
              ExpandTileReuse(
                icon: IndustriesWeServe.real_estate,
                label: 'Real Estate',
                content:
                    "We  helps you to achieve sustainable growth and profit with minimizing the risk.\n\n"
                    "We provide support for the following:\n\n"
                    "    •	Business Case Analysis\n"
                    "    •	HR Related Assistance\n"
                    "    •	IT Related Assistance\n"
                    "    •	Preparation of the Financial Model\n"
                    "    •	Assistance in Preparing Contract\n",
              ),
              ExpandTileReuse(
                icon: IndustriesWeServe.retail,
                label: 'Retail',
                content:
                    "For the companies operating in the retail business, we provides help on various aspects:\n\n"
                    "    •	Managing Accounts Department\n"
                    "    •	Assistance in Sourcing Franchises\n"
                    "    •	Financial Restructuring\n"
                    "    •	Internal Audit\n"
                    "    •	Preparing Policies & Procedures\n",
              ),
              ExpansionTile(
                leading: Icon(
                  IndustriesWeServe.manufacturing,
                  color: blackColor,
                  size: 30,
                ),
                title: Text("Manufacturing"),
                children: <Widget>[
                  Icon(
                    IndustriesWeServe.manufacturing,
                    color: blackColor,
                    size: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "AMC supports with the following:\n\n"
                          "    •	Managing the Accounts Department.\n"
                          "    •	Setting up Cost structure.\n"
                          "    •	Preparation of Budget & Business Plan.\n"
                          "    •	Preparing Policies and Procedures.\n"
                          "    •	Consulting for financing transaction..\n"
                          "    •	Designing the capital structure.\n",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  IndustriesWeServe.travel_entertainment,
                  color: blackColor,
                  size: 30,
                ),
                title: Text("Travel & Entertainment"),
                children: <Widget>[
                  Icon(
                    IndustriesWeServe.travel_entertainment,
                    color: blackColor,
                    size: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "AMC supports with the following:\n\n"
                          "    •	Managing the Accounts Department.\n"
                          "    •	Preparation of Budget & Business Plan.\n"
                          "    •	Preparing Policies and Procedures.\n"
                          "    •	Designing the Organization Plan.\n"
                          "    •	Consulting for financing transaction.\n",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  IndustriesWeServe.supermarket,
                  color: blackColor,
                  size: 30,
                ),
                title: Text("Supermarket"),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Icon(
                      IndustriesWeServe.supermarket,
                      color: blackColor,
                      size: 60,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "AMC supports with the following:\n\n"
                          "    •	Managing the Accounts Department.\n"
                          "    •	Assessment of Pricing\n"
                          "    •	Inventory Control\n"
                          "    •	Policies and Procedures.\n"
                          "    •	Assisting in restructuring current loans\n",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ExpandTileReuse(
                label: 'Resturant and Fast food',
                icon: IndustriesWeServe.restaurant,
                content:
                    "For the restaurant and food business we provide consultancy right from the selection of franchise to making your brand stand out in the market.\n\n"
                    "We provide support for the following:\n\n"
                    "    •	Assistance in selecting the best franchise\n"
                    "    •	Managing the Accounting Function.\n"
                    "    •	Preparation of Budget & Business Plan\n"
                    "    •	Preparing Policies and Procedures\n"
                    "    •	Designing the capital structure.\n"
                    "    •	Consulting for financing transaction.\n",
              ),
              ExpandTileReuse(
                label: 'Micro and SME Business',
                icon: IndustriesWeServe.sme_industries,
                content:
                    "For the any other SME business we provide various services\n\n"
                    "We provide support for the following:\n\n"
                    "    •	Managing the Accounting Function.\n"
                    "    •	Preparation of Budget & Business Plan\n"
                    "    •	Preparing Policies and Procedures\n"
                    "    •	Designing the capital structure.\n"
                    "    •	Consulting for financing transaction.\n",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
