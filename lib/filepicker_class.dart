import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';

 Future <String> openFileExplorer(FileType _pickingType,bool _multiPick) async {
  String _path;
  Map<String, String> _paths;
  String _extension;
  if (_pickingType != FileType.CUSTOM ) {
//    setState(() => _loadingPath = true);
    try {
      if (_multiPick) {
        _path = null;
        _paths = await FilePicker.getMultiFilePath(
            type: _pickingType, fileExtension: _extension);
      } else {
        _paths = null;
        _path = await FilePicker.getFilePath(
            type: _pickingType, fileExtension: _extension);
      }
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
//    if (!mounted) return;
//    setState(() {
//      //_loadingPath = false;
//      _fileName = _path != null
//          ? _path.split('/').last
//          : _paths != null ? _paths.keys.toString() : '...';
//    });
  }

  return _path;

}