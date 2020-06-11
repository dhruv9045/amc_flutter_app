import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class BankruptcyPdf extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('Bahrain Bankruptcy Law', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
      body: Bankruptcy(),
    );
  }
}
class Bankruptcy extends StatefulWidget{
  @override
  _BankruptcyState createState()=>_BankruptcyState();
}
class _BankruptcyState extends State<Bankruptcy>{

  String url = "images/pdf/bahrain_bankruptcy.pdf";
  bool _isloading;
  PDFDocument _doc;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }
  _initPdf() async {
    setState(() {
      _isloading= true;
    });
    final doc = await PDFDocument.fromAsset(url);
    setState(() {
      _doc = doc;
      _isloading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _isloading?Center(child: CircularProgressIndicator(),): PDFViewer(document: _doc,),
    );
  }
}





