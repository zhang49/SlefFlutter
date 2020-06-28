class self_article_provider {
  List<SelfArticle> article;

  self_article_provider({this.article});

  self_article_provider.fromJson(Map<String, dynamic> json) {
    if (json['article'] != null) {
      article = new List<SelfArticle>();
      json['article'].forEach((v) {
        article.add(new SelfArticle.fromJson(v));
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

class SelfArticle {
  int aId;
  String title;
  String content;
  int commCount;
  String createTime;
  String lastModifyTime;
  String userName;
  String imageUrl;
  String userAvterUrl;
  String url;

  SelfArticle(
      {this.aId,
      this.title,
      this.content,
      this.commCount,
      this.userName,
      this.imageUrl,
      this.userAvterUrl,
      this.url});

  SelfArticle.fromJson(Map<String, dynamic> json) {
    aId = json['aId'];
    title = json['title'];
    content = json['content'];
    createTime = json['create_time'];
    lastModifyTime = json['last_modify_time'];
    commCount = json['comment_count'];
    userName = json['user_name'];
    imageUrl = json['imageUrl'];
    userAvterUrl = json['user_avter_url'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aId'] = this.aId;
    data['title'] = this.title;
    data['content'] = this.content;
    data['startsCount'] = this.commCount;
    data['userName'] = this.userName;
    data['imageUrl'] = this.imageUrl;
    data['userAvterUrl'] = this.userAvterUrl;
    data['url'] = this.url;
    return data;
  }
}
