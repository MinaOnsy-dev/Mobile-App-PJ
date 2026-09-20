import 'package:dio/dio.dart';
import 'package:NewsCloud/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  // ignore: strict_top_level_inference
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=8b272a179cfe4970bfa1dcba6270915f&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
//أهم حاجة ف الابلكيشن كله
