import 'package:get/get.dart';
import 'package:spcpix/models/Image.dart';
import 'package:spcpix/services/image_services.dart';

class ImageController extends GetxController {
  var imageList = List<Image>.empty().obs;
  void fetchImages() async {
    var images = await ImageServices.getImage();
    if (images != null) {
      imageList.value = images;
    }
  }
}
