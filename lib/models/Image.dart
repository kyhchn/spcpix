// To parse this JSON data, do
//
//     final image = imageFromJson(jsonString);

import 'dart:convert';

List<Image> imageFromJson(String str) =>
    List<Image>.from(json.decode(str).map((x) => Image.fromJson(x)));

String imageToJson(List<Image> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Image {
  Image({
    required this.copyright,
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

  String copyright;
  DateTime date;
  String explanation;
  String hdurl;
  String mediaType;
  String serviceVersion;
  String title;
  String url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        copyright: json["copyright"] == null ? null : json["copyright"],
        date: DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "copyright": copyright == null ? null : copyright,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "explanation": explanation,
        "hdurl": hdurl,
        "media_type": mediaType,
        "service_version": serviceVersion,
        "title": title,
        "url": url,
      };
}
