import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'bottom_navigation.dart';
import 'my_drawer.dart';

class PdfViewer extends StatefulWidget{
final int value;
final String title;
PdfViewer({Key key,@required this.value, this.title}): super(key : key);
  @override
  _PdfViewerState createState()=>_PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer>{
  PDFDocument document;
  bool _isloading= true;
  int get $value => this.widget.value;

  @override
  Widget build(BuildContext context) {
    var _title = widget.title;
    return Scaffold(
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('$_title', textAlign: TextAlign.center)),
        automaticallyImplyLeading: true,
      ),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavBar(),
      body: _isloading?Center(child: CircularProgressIndicator(),):
      PDFViewer(document: document,),
    );
  }

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
      setState(()=> _isloading= true);
        if($value == 1){
          document = await PDFDocument.fromAsset('images/pdf/company_brochure.pdf');
        }else if($value == 2){
          document = await PDFDocument.fromAsset('images/pdf/bahrain_labour.pdf');
        }else if($value == 3){
          document = await PDFDocument.fromAsset('images/pdf/bahrain_bankruptcy.pdf');
        }else if($value == 4){
          document = await PDFDocument.fromAsset('images/pdf/bachrain_company.pdf');
        }else if($value == 5){
          document = await PDFDocument.fromAsset('images/pdf/intellectual_property.pdf');
        }else if($value == 6){
          document = await PDFDocument.fromAsset('images/pdf/doing_business.pdf');
        }
      setState(() =>  _isloading = false);
    }
}






