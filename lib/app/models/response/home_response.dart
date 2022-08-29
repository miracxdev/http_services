// To parse this JSON data, do
//
//     final homeResponse = homeResponseFromJson(jsonString);

import 'dart:convert';

List<HomeResponse> homeResponseFromJson(String str) => List<HomeResponse>.from(json.decode(str).map((x) => HomeResponse.fromJson(x)));

String homeResponseToJson(List<HomeResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeResponse {
    HomeResponse({
        this.albumId,
        this.id,
        this.title,
        this.url,
        this.thumbnailUrl,
    });

    int? albumId;
    int? id;
    String? title;
    String? url;
    String? thumbnailUrl;

    factory HomeResponse.fromJson(Map<String, dynamic> json) => HomeResponse(
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
