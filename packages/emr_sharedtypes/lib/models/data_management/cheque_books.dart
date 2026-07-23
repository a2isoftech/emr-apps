class ChequeBook {
  ChequeBook({
    required this.yardCode,
    required this.total,
    required this.remaining,
  });

  factory ChequeBook.fromJson(Map<String, dynamic> json) {
    return ChequeBook(
      yardCode: json['yardCode'] as String,
      total: json['count'] as int,
      remaining: json['remaining'] as int,
    );
  }

  final String yardCode;

  final int total;
  
  final int remaining;
}
