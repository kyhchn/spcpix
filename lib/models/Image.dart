import 'dart:convert';

List<ImageRemote> ImageRemoteFromJson(String str) => List<ImageRemote>.from(
    json.decode(str).map((x) => ImageRemote.fromJson(x)));

String ImageRemoteToJson(List<ImageRemote> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageRemote {
  ImageRemote({
    this.copyright,
    required this.date,
    required this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    required this.title,
    required this.url,
  });

  String? copyright;
  DateTime date;
  String explanation;
  String? hdurl;
  String? mediaType;
  String? serviceVersion;
  String title;
  String url;

  factory ImageRemote.fromJson(Map<String, dynamic> json) => ImageRemote(
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
