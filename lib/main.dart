import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spcpix/controllers/imagecontroller.dart';
import 'package:spcpix/hompage.dart';
import 'package:spcpix/views/image_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('SPCPIX'),
          ),
          body: HomePage()),
    );
  }
}
