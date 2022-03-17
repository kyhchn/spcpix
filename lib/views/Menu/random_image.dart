import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/imagecontroller.dart';

class RandomImage extends StatelessWidget {
  final ImageController imageController = Get.put(ImageController());
  @override
  Future refresh() async {
    imageController.onDelete;
    imageController.onInit();
    await Future.delayed(Duration(seconds: 2));
    while (imageController.isLoading.value) {
      await Future.delayed(Duration(seconds: 1));
    }
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Obx(() {
          if (imageController.isLoading.value)
            return CircularProgressIndicator();
          else
            return RefreshIndicator(
              onRefresh: refresh,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            imageController.imageList.elementAt(index).title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(imageController
                                        .imageList
                                        .elementAt(index)
                                        .url))),
                          ),
                          Text(
                            imageController.imageList
                                .elementAt(index)
                                .explanation,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: imageController.imageList.length),
            );
        }),
      ),
    );
  }
}
