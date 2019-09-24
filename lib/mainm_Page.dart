import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_fileopen/pdfview_page.dart';
import 'filepicker_page.dart';
import 'openimage_page.dart';
import 'openpdf_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open File"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilePickerDemo()))
                },
                child: Text(
                  "File Picker",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
              RaisedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OpenPDFPage()))
                },
                child: Text(
                  "PDF File1",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
              RaisedButton(
                onPressed: () => {
//                  Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => PdfViewer2()))
                },
                child: Text(
                  "PDF File2",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
              RaisedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImagePage()))
                },//FilePickerDemo()
                child: Text(
                  "Image File",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
              RaisedButton(
                onPressed: () => {},
                child: Text(
                  "mp3 File",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
              RaisedButton(
                onPressed: () => {},
                child: Text(
                  "VDO File",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepOrangeAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
