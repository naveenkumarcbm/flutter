import 'dart:convert';
import 'dart:io';

Medicine medicineFromJson(String str) => Medicine.fromJson(json.decode(str));

String medicineToJson(Medicine data) => json.encode(data.toJson());

class Medicine {
  String name;
  String description;
  String imageUrl;
  int rating;

  Medicine({
    this.name,
    this.description,
    this.imageUrl,
    this.rating,
  });

  HttpClient http = HttpClient();

  factory Medicine.fromJson(Map<String, dynamic> json) => Medicine(
        name: json["name"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "imageUrl": imageUrl,
        "rating": rating,
      };

  Future getImageUrl() async {
    if (imageUrl != null) {
      return;
    }

    try {
      var uri = Uri.http('dog.ceo', '/api/breeds/image/random');
      var request = await http.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();
      imageUrl = json.decode(responseBody)['message'];
    } catch (exception) {
      print(exception);
    }
  }
}
