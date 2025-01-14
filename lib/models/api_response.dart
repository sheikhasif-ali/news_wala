import 'package:news_app/models/article.dart';

class ApiResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  ApiResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: (json['articles'] as List<dynamic>)
          .map((articleJson) => Article.fromJson(articleJson))
          .toList(),
    );
  }
}
