/*
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'bottom_navigation.dart';
import 'my_drawer.dart';

class PdfViewer extends StatefulWidget{
final int value;

PdfViewer({Key key,@required this.value}): super(key : key);

  @override
  _PdfViewerState createState()=>_PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer>{
  PDFDocument document;
  bool _isloading= true;
  get $value async => widget.value;

  @override
  Widget build(BuildContext context) {
    final int value = widget.value;
    return Scaffold(
      key: changePDF(value);
      primary: true,
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Center(child: new Text('$value', textAlign: TextAlign.center)),
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
    setState(() =>_isloading = false);
  }
    changePDF(value) async {
      setState(()=> _isloading= true);
        if(value == 1){
          document = await PDFDocument.fromURL('https://am-consultant.com/wp-content/uploads/2017/09/AMC-Brochure.pdf');
        }else if(value == 2){
          document = await PDFDocument.fromURL('https://am-consultant.com/wp-content/uploads/2017/09/438816-lablaw.pdf  ');
        }else if(value == 3){
          document = await PDFDocument.fromURL('');
        }else if(value == 4){
          document = await PDFDocument.fromURL('https://am-consultant.com/wp-content/uploads/2017/09/438816-commLaws.pdf');
        }else if(value == 5){
          document = await PDFDocument.fromURL('');
        }else{
          document = await PDFDocument.fromURL('');
        }
      setState(() =>  _isloading = false);
    }
}






*/
