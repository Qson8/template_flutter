import 'package:flutter/material.dart';
import 'package:router_impl/app_route.dart';
import 'package:template_flutter/pages/article_detail_page.dart';

class DetailRoute extends AppRoute {
  final String articleId;

  const DetailRoute({this.articleId});
  @override
  Widget get child => ArticleDetailPage(articleId: articleId);

  @override
  String get location => "/detail/$articleId";
}
