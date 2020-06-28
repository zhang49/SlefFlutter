class article_provider {
  List<Article> article;

  article_provider({this.article});

  article_provider.fromJson(Map<String, dynamic> json) {
    if (json['article'] != null) {
      article = new List<Article>();
      json['article'].forEach((v) {
        article.add(new Article.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.article != null) {
      data['article'] = this.article.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Article {
  int id;
  String title;
  String content;
  int startsCount;
  String userName;
  String imageUrl;
  String userAvterUrl;
  String url;

  Article(
      {this.id,
        this.title,
        this.content,
        this.startsCount,
        this.userName,
        this.imageUrl,
        this.userAvterUrl,
        this.url});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    startsCount = json['startsCount'];
    userName = json['userName'];
    imageUrl = json['imageUrl'];
    userAvterUrl = json['userAvterUrl'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['content'] = this.content;
    data['startsCount'] = this.startsCount;
    data['userName'] = this.userName;
    data['imageUrl'] = this.imageUrl;
    data['userAvterUrl'] = this.userAvterUrl;
    data['url'] = this.url;
    return data;
  }
}
