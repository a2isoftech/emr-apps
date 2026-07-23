class Address {
  Address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
  });

  final String? address1;
  final String? address2;
  final String? address3;
  final String? address4;
  final String? address5;
  final String? address6;

  @override
  String toString() {
    final strs = [address1, address2, address3, address4, address5, address6];

    return strs
        .where((element) => element != null && element.isNotEmpty)
        .join(', ');
  }
}
