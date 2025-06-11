class SportNewsModel {
  String? status;
  int? totalResults;
  List<Articles> articles;
  SportNewsModel({this.status, this.totalResults, required this.articles});
  factory SportNewsModel.fromJson(Map<String, dynamic> json) {
    return SportNewsModel(
      status: json['status'] ?? "",
      totalResults: json['totalResults'] ?? 0,
      articles:
          (json['articles'] as List).map((e) => Articles.fromJson(e)).toList(),
    );
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? image;
  String? publishedAt;
  String? content;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.image,
    this.publishedAt,
    this.content,
  });
  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: json['source'] != null ? Source.fromJson(json['source']) : null ,
      author: json['author'] ?? "",
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      image: json['urlToImage'] ?? "",
      publishedAt: json['publishedAt'] ?? "",
      content: json['content'] ?? "",
    );
  }
}

class Source {
  String? id;
  String? name;

  Source({this.id, this.name});
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(id: json['id'] ?? "",
        name: json['name'] ?? "");
  }
}
