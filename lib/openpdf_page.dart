import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class OpenPDFPage extends StatefulWidget {
  @override
  _OpenPDFPageState createState() => _OpenPDFPageState();
}

class _OpenPDFPageState extends State<OpenPDFPage> {
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/pdf/Sample.pdf');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);
    if (value == 1) {
      document = await PDFDocument.fromAsset('assets/mypdf.pdf');
    } else if (value == 2) {
      document = await PDFDocument.fromURL(
          "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf");
    } else {
      document = await PDFDocument.fromAsset('assets/mypdf2.pdf');
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(height: 36),
            ListTile(
              title: Text('Load from Assets'),
              onTap: () {
                changePDF(1);
              },
            ),
            ListTile(
              title: Text('Load from URL'),
              onTap: () {
                changePDF(2);
              },
            ),
            ListTile(
              title: Text('Restore default'),
              onTap: () {
                changePDF(3);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('FlutterPluginPDFViewer'),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(document: document)),
    );

  }
}






