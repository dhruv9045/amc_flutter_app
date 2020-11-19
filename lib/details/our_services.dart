import 'package:amcflutterapp/assets/our_servicer_icon.dart';
import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:amcflutterapp/resuable/reusable_ExpensionTile.dart';


class OurService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(
            child: new Text('Our Services', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      body: Our(),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class Our extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ExpandTileReuse(
                  icon: OurServices.cfo,
                  label: 'CFO & ACCOUNTING',
                  content:
                      "AM Consulting will assist you to improve credibility of "
                      "financial numbers by improving processes, training staff with requisite skills, "
                      "monitoring the progress of various tasks and reviewing the work of accounts department. ",
                ),
                ExpandTileReuse(
                  icon: OurServices.internal_auditing,
                  label: 'INTERNAL AUDITING',
                  content:
                      "Internal Audit is one of the critical function to minimize the risk "
                      "from fraudulent activities, improve the control over the operations and "
                      "alert management about potential issues that may arise. We can assist you in "
                      "undertaking internal audit task for your organization.",
                ),
                ExpandTileReuse(
                  icon: OurServices.policies,
                  label: 'POLICY & PROCEDURES',
                  content:
                      "We have qualified and experienced professionals who have a thorough "
                      "knowledge of preparing the various policies and procedures. "
                      "We can also help in assessing the present position of your organization, "
                      "conducting GAP Analysis suggesting suitable measures in the policy and "
                      "procedure manual and implementing them.",
                ),
                ExpandTileReuse(
                  icon: OurServices.corporate,
                  label: 'CORPORATE RESTRUCTURING',
                  content:
                      "We can assist you to restructure  your organization to ensure "
                      "that the shareholders can get the best returns. We will critically look at "
                      "your operations and suggest ways and means to improve the efficiency, "
                      "have better cost control and thereby improve the shareholders returns.",
                ),
                ExpandTileReuse(
                  icon: OurServices.company_formation,
                  label: 'COMPANY FORMATION',
                  content:
                      "We can assist in formation of your company in Kingdom of Bahrain. "
                      "We can help you to select the type of company, type of activities, "
                      "selection of office/showroom etc. We have a long experience in the "
                      "area of company formation.",
                ),
                ExpandTileReuse(
                  icon: OurServices.project_feasibility,
                  label: 'PROJECT & FEASIBILITY REPORTS',
                  content:
                      "We have expertise in preparing the feasibility and project reports. "
                      "The reports are prepared to present the reader a study to make them understand "
                      "business where the investor want to invest or want to consider investing. "
                      "Properly presented  feasibility study is a must for a new project along with "
                      "business planning and financial projections. ",
                ),
              ],
            ),
          ],
        ),
    );
  }
}
