class NewsModel {
  // news response model
  String? status;
  int? totalResults;
  List<Articles> articles;
  NewsModel({this.status, this.totalResults, required this.articles});
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
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
  String? url;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.image,
    this.publishedAt,
    this.content,
    this.url
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
      url: json['url'] ?? "",
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
