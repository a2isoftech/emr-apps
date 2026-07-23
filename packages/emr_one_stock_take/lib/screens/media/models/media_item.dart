class MediaItem {
  MediaItem({
    required this.mediaUrl,
    required this.token,
    required this.localDir,
    required this.remoteUrl,
  });

  final String mediaUrl;
  final String token;
  final String localDir;
  final String remoteUrl;
}
