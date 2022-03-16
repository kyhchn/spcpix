import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spcpix/models/Image.dart';

class ImageTile extends StatelessWidget {
  final String url;
  final DateTime date;
  final String title;
  final String explanation;
  const ImageTile(
      {Key? key,
      required this.url,
      required this.date,
      required this.title,
      required this.explanation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width - 30,
            color: Colors.black,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover)),
          ),
          Text(title),
          Text(explanation)
        ],
      ),
    );
  }
}
