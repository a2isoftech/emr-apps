class RetryMedia {
   String mediaUuid;
   String instanceId;
   int? retryCount;
   RetryMedia({
    required this.mediaUuid,
    required this.instanceId,
    this.retryCount,
  });

  RetryMedia.fromJson(Map<String, dynamic> json)
      : mediaUuid = json['mediaUuid'],
        instanceId = json['instanceId'],
        retryCount = json['retryCount'];
  Map<String, dynamic> toJson() => {
        'mediaUuid': mediaUuid,
        'instanceId': instanceId,
        'retryCount': retryCount
      };
}
