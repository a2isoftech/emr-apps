class AccessAlert {
  AccessAlert({
    required this.hotspotIndex,
    required this.rowId,
    required this.accessControllerId,
    required this.userName,
    required this.accessPointId,
    required this.accessPointName,
    required this.time,
    required this.restricted,
  });
  final String hotspotIndex;
  final String accessControllerId;
  final int rowId;
  final String userName;
  final String accessPointId;
  final String accessPointName;
  final DateTime time;
  final bool restricted;
}
