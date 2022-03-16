import 'package:http/http.dart' as http;
import 'package:spcpix/models/Image.dart';
import 'package:spcpix/constant.dart';

class ImageServices {
  static var client = http.Client();
  static Future<List<Image>?> getImage() async {
    List<Image> result = [];
    var response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return imageFromJson(jsonString);
    } else {
      return null;
    }
  }
}
