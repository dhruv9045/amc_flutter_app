import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// my package
import 'package:amcflutterapp/components/products.dart';
import 'components/bottom_navigation.dart';
import 'components/my_drawer.dart';


class BasicTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {

    Future<bool> _onWillPop() async {
      return (await showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text('No'),
            ),
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: new Text('Yes'),
            ),
          ],
        ),
      )) ?? false;
    }
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(

        primary: true,
        appBar: new AppBar(
          backgroundColor: Colors.blue[900],
          title: new Center(child: new Text('HOME', textAlign: TextAlign.center)),
          automaticallyImplyLeading: false,
        ),

        endDrawer: new MyDrawer(),
        body: new ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Image.asset('images/img_logo.png',height: 90,),
                  ),
                ),
              ],
            ),

            Divider(
              color: Colors.blue[900],
              thickness: 5,
            ),

            //Gradial View
            Container(
              height: 500,
              child: Products(),
            ),
          ],
        ),
         bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}