class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    this.url,
  });

  String get safeImage => image ?? "https://via.placeholder.com/200";

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}
