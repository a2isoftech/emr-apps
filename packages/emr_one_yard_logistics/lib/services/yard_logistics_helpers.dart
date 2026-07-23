enum YardLogisticsCodeType { unknown, lot, pallet }

class YardLogisticsHelpers {
  static YardLogisticsCodeType codeType(String code) {
    if (code.toUpperCase().startsWith('TAQLT')) {
      return YardLogisticsCodeType.lot;
    } else if (code.toUpperCase().startsWith('TAQPT')) {
      return YardLogisticsCodeType.pallet;
    }
    return YardLogisticsCodeType.unknown;
  }
}
