import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/imagecontroller.dart';

class HomePage extends StatelessWidget {
  final ImageController imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Obx(() => ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width - 40,
                color: Colors.red,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemCount: imageController.imageList.length)),
      ),
    );
  }
}
