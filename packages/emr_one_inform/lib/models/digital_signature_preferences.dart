class PreferenceToAllowSpecificFeature {
  PreferenceToAllowSpecificFeature({this.companyCode, this.excludedYards});

  PreferenceToAllowSpecificFeature.fromJson(Map<String, dynamic> json) {
    companyCode = json['companyCode'] as String?;
    excludedYards = (json['excludedYards'] as List<dynamic>).cast<String>();
  }
  String? companyCode;
  List<String>? excludedYards;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['companyCode'] = companyCode;
    data['excludedYards'] = excludedYards;
    return data;
  }
}

class DigitalSignaturePreferences extends PreferenceToAllowSpecificFeature {
  DigitalSignaturePreferences.fromJson(Map<String, dynamic> json) {
    companyCode = json['companyCode'] as String?;
    excludedYards = (json['excludedYards'] as List<dynamic>).cast<String>();
  }
}

class ScannerForAssetSearchPreferences
    extends PreferenceToAllowSpecificFeature {
  ScannerForAssetSearchPreferences.fromJson(Map<String, dynamic> json) {
    companyCode = json['companyCode'] as String?;
    excludedYards = (json['excludedYards'] as List<dynamic>).cast<String>();
  }
}
