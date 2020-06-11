import 'package:amcflutterapp/components/bottom_navigation.dart';
import 'package:amcflutterapp/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class CompanyPdf extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('Bahrain Company Law', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
      body: Company(),
    );
  }
}
class Company extends StatefulWidget{
  @override
  _CompanyState createState()=>_CompanyState();
}
class _CompanyState extends State<Company>{

  String url = "images/pdf/bachrain_company.pdf";
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













