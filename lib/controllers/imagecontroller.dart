import 'package:get/get.dart';
import 'package:spcpix/models/Image.dart';
import 'package:spcpix/services/image_services.dart';

class ImageController extends GetxController {
  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  var isLoading = true.obs;
  var imageList = List<ImageRemote>.empty().obs;
  void fetchImages() async {
    try {
      isLoading(true);
      var images = await ImageServices.getImage();
      if (images != null) {
        imageList.value = images;
      }
    } finally {
      isLoading(false);
    }
  }
}
