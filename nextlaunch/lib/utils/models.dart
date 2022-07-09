class Article {
  final int id;
  final String title;
  final String url;
  final String imageUrl;
  final String newsSite;
  final String summary;
  final String publishedAt;
  final String updatedAt;
  final bool featured;
  final List launches;
  final List events;

  const Article({
    required this.id,
    required this.title,
    required this.url,
    required this.imageUrl,
    required this.newsSite,
    required this.summary,
    required this.publishedAt,
    required this.updatedAt,
    required this.featured,
    required this.launches,
    required this.events,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      imageUrl: json['imageUrl'] as String,
      newsSite: json['newsSite'] as String,
      summary: json['summary'] as String,
      publishedAt: json['publishedAt'] as String,
      updatedAt: json['updatedAt'] as String,
      featured: json['featured'] as bool,
      launches: json['launches'] as List,
      events: json['events'] as List,
    );
  }
}
