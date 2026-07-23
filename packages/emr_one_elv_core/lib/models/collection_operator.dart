import 'dart:convert';

class CollectionOperator {
  CollectionOperator({
    required this.collectionOperatorId,
    required this.accountNumber,
    required this.accountName,
    this.haulageRate,
  });

  factory CollectionOperator.fromJson(Map<String, dynamic> json) {
    return CollectionOperator(
      collectionOperatorId: json['collectionOperatorId'] as int,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
      haulageRate: json['haulageRate'] as double?,
    );
  }

  factory CollectionOperator.initial() => CollectionOperator(
        collectionOperatorId: 0,
        accountNumber: '',
        accountName: '',
      );

  Map<String, dynamic> toJson() {
    return {
      'collectionOperatorId': collectionOperatorId,
      'accountNumber': accountNumber,
      'accountName': accountName,
      'haulageRate': haulageRate,
    };
  }

  final int collectionOperatorId;
  final String accountNumber;
  final String accountName;
  final double? haulageRate;

  static List<CollectionOperator> parseCollectionOperators(
    String responseBody,
  ) {
    return (jsonDecode(responseBody) as List)
        .map<CollectionOperator>(
          (item) => CollectionOperator.fromJson(item as Map<String, dynamic>),
        )
        .toList();
  }

  static Map<String, List<CollectionOperator>> parseGroupedCollectionOperators(
    String responseBody,
  ) {
    final decoded = jsonDecode(responseBody) as Map<String, dynamic>;

    return decoded.map((key, value) {
      final list = (value as List)
          .map(
            (item) => CollectionOperator.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return MapEntry(key, list);
    });
  }
}
