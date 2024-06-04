class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  ArticleModel({
    required this.url,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      url: json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
