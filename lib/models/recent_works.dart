class RecentWork {
  final String title;
  final String imagePath;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? appStoreUrl;
  RecentWork({
    required this.title,
    required this.imagePath,
    this.playStoreUrl,
    this.gitHubUrl,
    this.appStoreUrl,
  });

  static final List<RecentWork> works = [
    RecentWork(
        title: "curratelearn: AI-self learning Guide",
        imagePath: "assets/images/1.png",
        playStoreUrl: "https://curatelearn.com/",
        appStoreUrl: "https://curatelearn.com/"),
    RecentWork(
        title: "Brivas - Bulk Sms Application",
        imagePath: "assets/images/2.png",
        playStoreUrl: "brivas.io",
        appStoreUrl: "brivas.io"),
    RecentWork(
      title: "Urkido - Bus tracking",
      imagePath: "assets/images/3.png",
    ),
    RecentWork(
      title: "Asap - Realtime bus tracking",
      imagePath: "assets/images/4.png",
      playStoreUrl:
          "https://play.google.com/store/apps/details?id=com.asap_tracking_flutter.gps&hl=en",
    ),
  ];
}
