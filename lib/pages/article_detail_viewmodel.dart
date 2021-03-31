import 'package:template_flutter/core/provider/provider.dart';
import 'package:template_flutter/locator.dart';
import 'package:template_flutter/models/models.dart';
import 'package:template_flutter/services/api/api.dart';

class ArticleDetailViewModel extends ViewStateModel {
  Article _article;
  Article get article => _article;

  final Api api = locator<Api>();

  ArticleDetailViewModel({String articleId}) {
    fetchDetail(articleId);
  }

  fetchDetail(String articleId) async {
    setBusy();
    Map res = await api.fetchArticleDetail(articleId: articleId);
    _article = Article.fromMap(res);
    setIdle();
  }
}
