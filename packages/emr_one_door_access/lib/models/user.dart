class User {
  User({
    required this.id,
    required this.name,
    required this.active,
    required this.userName,
    required this.azureId,
    required this.cardNumber,
    required this.externalId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      active: json['active'] as bool,
      userName: json['userName'] as String,
      azureId: json['azureId'] as String,
      cardNumber: json['cardNumber'] as String,
      externalId: json['externalId'] as String,
    );
  }
  final String id;
  final String name;
  final bool active;
  final String userName;
  final String azureId;
  final String cardNumber;
  final String externalId;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'active': active,
    'userName': userName,
    'azureId': azureId,
    'cardNumber': cardNumber,
    'externalId': externalId,
  };
}
