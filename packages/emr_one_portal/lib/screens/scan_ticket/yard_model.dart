class YardModel {
  YardModel({
    required this.shortName,
    required this.addressLine1,
    required this.addressLine2,
    required this.addressLine3,
    required this.addressLine4,
    required this.addressLine5,
    required this.addressLine6,
    required this.postCode,
    required this.telephone,
    required this.wmlExemptionNo,
    required this.wasteCarrierRegNo,
    this.lattitude,
    this.longitude,
    this.yardCode,
  });
  String shortName;
  String? addressLine1;
  String? addressLine2;
  String? addressLine3;
  String? addressLine4;
  String? addressLine5;
  String? addressLine6;
  String? postCode;
  String? telephone;
  String? wmlExemptionNo;
  String? wasteCarrierRegNo;
  String? yardCode;
  double? lattitude;
  double? longitude;

  String getFullAddress() {
    final addressParts = List<String>.empty(growable: true);
    _addIfNotNull(addressParts, addressLine1);
    _addIfNotNull(addressParts, addressLine2);
    _addIfNotNull(addressParts, addressLine3);
    _addIfNotNull(addressParts, addressLine4);
    _addIfNotNull(addressParts, addressLine5);
    _addIfNotNull(addressParts, addressLine6);
    _addIfNotNull(addressParts, postCode);
    return addressParts.where((x) => x.trim().isNotEmpty).join(', ');
  }

  void _addIfNotNull(
    List<String> addressParts,
    String? value,
  ) {
    if (value != null && value != '') {
      addressParts.add(value);
    }
  }
}
