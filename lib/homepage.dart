import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spcpix/views/Menu/random_image.dart';
import 'controllers/imagecontroller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('SPCPIX'),
      ),
      body: _index == 5 ? RandomImage() : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index = 5;
          });
        },
        backgroundColor: Colors.yellow,
        elevation: 0,
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        iconSize: 40,
        activeColor: Colors.yellow,
        icons: [
          Icons.star_border_outlined,
          Icons.star_border_outlined,
          Icons.star_border_outlined,
          Icons.star_border_outlined,
        ],
        activeIndex: _index,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        onTap: (index) => setState(() => _index = index),
        splashColor: Colors.grey,
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
    );
  }
}
