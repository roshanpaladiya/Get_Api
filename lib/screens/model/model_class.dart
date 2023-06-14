import 'dart:convert';

List<Imagemodel> imagemodelFromJson(String str) =>
    List<Imagemodel>.from(json.decode(str).map((x) => Imagemodel.fromJson(x)));

String imagemodelToJson(List<Imagemodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Imagemodel {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Imagemodel({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Imagemodel.fromJson(Map<String, dynamic> json) => Imagemodel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
