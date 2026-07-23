class Camera {
  Camera({
    required this.cameraName,
    required this.ipAddress,
    required this.snapshotUrl,
    required this.rtspUrl,
    required this.username,
    required this.password,
    required this.createdUtc,
  });
  String cameraName;
  String ipAddress;
  String snapshotUrl;
  String rtspUrl;
  String username;
  String password;
  DateTime createdUtc;
}
