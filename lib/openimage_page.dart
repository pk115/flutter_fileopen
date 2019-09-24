import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'filepicker_class.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String path="";

  Future OpenImg() async{

   String _path = await openFileExplorer(FileType.IMAGE,false);

    setState(()  {

      path=_path;
      print('path= $path');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open Image"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
            child: Text("Part"),
          ),
          Card(
            child: path==""?Text("No Image") :Image.file(File(path)),
          ),RaisedButton(
            onPressed: () => {OpenImg()},
            child: Text(
              "Open Image",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.deepOrangeAccent,
          ),
          SizedBox(
            height: 30,
            child: Text("Link Url"),
          ),
          Card(
            child: Image.network("https://oddsninja.com/wp-content/uploads/2016/05/deadpool-betting.png"),
          ),
        ],
      ),
    );
  }
}
