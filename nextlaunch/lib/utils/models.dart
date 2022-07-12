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

class Launch {
  final int id;
  final String name;
  final int status;
  final String statusName;
  final String statusDescription;
  final String netLaunchTime;
  final String windowStart;
  final String windowEnd;
  final bool inhold;
  final String holdReason;
  final String failReason;
  final String hashtag;
  final String launchProviderUrl;
  final String launchProviderName;
  final String launchProviderType;
  final int rocketId;
  final String rocketName;
  final String rocketUrl;
  final String rocketFamily;
  final String rocketFullName;
  final String rocketVariant;
  final int missionId;
  final String missionName;
  final String missionDescription;
  final String missionType;
  final String missionOrbit;
  final String padId;
  final String padUrl;
  final String padName;
  final String padInfoUrl;
  final String padWikiUrl;
  final String padMapUrl;
  final double padLatitude;
  final double padLongitude;
  final String padLocationUrl;
  final String padLocationName;
  final String padCountryCode;
  final String padLocationMapImageUrl;
  final String padMapImageUrl;
  final int padLaunchCount;
  final bool webcastLive;
  final String launchImage;
  final String infographic;
  final List program;

  const Launch({
    required this.id,
    required this.name,
    required this.status,
    required this.statusName,
    required this.statusDescription,
    required this.netLaunchTime,
    required this.windowStart,
    required this.windowEnd,
    required this.inhold,
    required this.holdReason,
    required this.failReason,
    required this.hashtag,
    required this.launchProviderUrl,
    required this.launchProviderName,
    required this.launchProviderType,
    required this.rocketId,
    required this.rocketName,
    required this.rocketUrl,
    required this.rocketFamily,
    required this.rocketFullName,
    required this.rocketVariant,
    required this.missionId,
    required this.missionName,
    required this.missionDescription,
    required this.missionType,
    required this.missionOrbit,
    required this.padId,
    required this.padUrl,
    required this.padName,
    required this.padInfoUrl,
    required this.padWikiUrl,
    required this.padMapUrl,
    required this.padLatitude,
    required this.padLongitude,
    required this.padLocationUrl,
    required this.padLocationName,
    required this.padCountryCode,
    required this.padLocationMapImageUrl,
    required this.padMapImageUrl,
    required this.padLaunchCount,
    required this.webcastLive,
    required this.launchImage,
    required this.infographic,
    required this.program,
  });

  factory Launch.fromJson(Map<String, dynamic> json) {
    return Launch(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status']['id'] as int,
      statusName: json['status']['name'] as String,
      statusDescription: json['status']['description'] as String,
      netLaunchTime: json['net'] as String,
      windowStart: json['window_start'] as String,
      windowEnd: json['window_end'] as String,
      inhold: json['inhold'] as bool,
      holdReason: json['holdreason'] as String,
      failReason: json['failreason'] as String,
      hashtag: json['hashtag'] as String,
      launchProviderUrl: json['launch_service_provider']['url'] as String,
      launchProviderName: json['launch_service_provider']['name'] as String,
      launchProviderType: json['launch_service_provider']['type'] as String,
      rocketId: json['rocket']['id'] as int,
      rocketName: json['rocket']['configuration']['name'] as String,
      rocketUrl: json['rocket']['configuration']['url'] as String,
      rocketFamily: json['rocket']['configuration']['family'] as String,
      rocketFullName: json['rocket']['configuration']['full_name'] as String,
      rocketVariant: json['rocket']['configuration']['variant'] as String,
      missionId: json['mission']['id'] as int,
      missionName: json['mission']['name'] as String,
      missionDescription: json['mission']['description'] as String,
      missionType: json['mission']['type'] as String,
      missionOrbit: json['mission']['orbit']['abbrev'] as String,
      padId: json['pad']['id'] as String,
      padUrl: json['pad']['url'] as String,
      padName: json['pad']['name'] as String,
      padInfoUrl: json['pad']['info_url'] as String,
      padWikiUrl: json['pad']['wiki_url'] as String,
      padMapUrl: json['pad']['map_url'] as String,
      padLatitude: json['pad']['latitude'] as double,
      padLongitude: json['pad']['longtitude'] as double,
      padLocationUrl: json['pad']['location']['url'] as String,
      padLocationName: json['pad']['location']['name'] as String,
      padCountryCode: json['pad']['location']['country_code'] as String,
      padLocationMapImageUrl: json['pad']['location']['map_image'] as String,
      padMapImageUrl: json['pad']['map_image'] as String,
      padLaunchCount: json['pad']['total_launch_count'] as int,
      webcastLive: json['webcast_live'] as bool,
      launchImage: json['image'] as String,
      infographic: json['infographic'] as String,
      program: json['program'] as List,
    );
  }
}
