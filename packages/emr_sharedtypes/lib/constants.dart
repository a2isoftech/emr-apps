import 'package:emr_sharedtypes/graphql/schema.graphql.dart';
import 'package:json_annotation/json_annotation.dart';

enum Uom {
  unknown,
  @JsonValue('MT')
  mt,
  @JsonValue('LB')
  lb,
  @JsonValue('GT')
  gt,
  @JsonValue('NT')
  nt,
  @JsonValue('KG')
  kg,
  @JsonValue('LD')
  ld,
  @JsonValue('EA')
  ea,
  @JsonValue('LT')
  lt,
  @JsonValue('HR')
  hr,
  @JsonValue('CWT')
  cwt;

  static Uom fromCode(String code) {
    for (final uom in Uom.values) {
      if (uom.uomCode == code.toUpperCase()) {
        return uom;
      }
    }

    return Uom.unknown;
  }
}

class EmrOneCoreUom {
  const EmrOneCoreUom(
    this.uomId,
    this.uomCode,
    this.weightType,
    this.scalingFactor,
    this.displayFormatIntegralDigits,
    this.displayFormatFractionalDigits, {
    required this.isConvertible,
    required this.isSecondary,
  });
  final int uomId;
  final String uomCode;
  final WeightType weightType;
  final double scalingFactor;
  final int displayFormatIntegralDigits;
  final int displayFormatFractionalDigits;
  final bool isConvertible;
  final bool isSecondary;
}

class EmrOneCoreDeviceConstants {
  static const String kRemittancePrinter = 'RemittancePrinter';
  static const String kChequePrinter = 'ChequePrinter';
}

class EmrOneCoreUomConstants {
  static const unknown = EmrOneCoreUom(
    0,
    'XX',
    isConvertible: true,
    WeightType.metric,
    0,
    0,
    0,
    isSecondary: false,
  );
  static const mt = EmrOneCoreUom(
    1,
    'MT',
    isConvertible: true,
    WeightType.metric,
    1,
    6,
    3,
    isSecondary: false,
  );
  static const lb = EmrOneCoreUom(
    2,
    'LB',
    isConvertible: true,
    WeightType.imperial,
    1,
    10,
    0,
    isSecondary: false,
  );
  static const gt = EmrOneCoreUom(
    3,
    'GT',
    isConvertible: true,
    WeightType.imperial,
    2240,
    9,
    3,
    isSecondary: false,
  );
  static const nt = EmrOneCoreUom(
    4,
    'NT',
    isConvertible: true,
    WeightType.imperial,
    2000,
    9,
    3,
    isSecondary: false,
  );
  static const kg = EmrOneCoreUom(
    5,
    'KG',
    isConvertible: true,
    WeightType.metric,
    0.00100,
    9,
    0,
    isSecondary: false,
  );
  static const ld = EmrOneCoreUom(
    6,
    'LD',
    isConvertible: false,
    WeightType.none,
    1,
    6,
    0,
    isSecondary: false,
  );
  static const ea = EmrOneCoreUom(
    7,
    'EA',
    isConvertible: false,
    WeightType.none,
    1,
    6,
    0,
    isSecondary: true,
  );
  static const lt = EmrOneCoreUom(
    8,
    'LT',
    isConvertible: false,
    WeightType.metric,
    1,
    6,
    3,
    isSecondary: true,
  );
  static const hr = EmrOneCoreUom(
    9,
    'HR',
    isConvertible: false,
    WeightType.none,
    1,
    6,
    2,
    isSecondary: false,
  );
  static const cwt = EmrOneCoreUom(
    10,
    'CWT',
    isConvertible: true,
    WeightType.imperial,
    100,
    8,
    2,
    isSecondary: false,
  );

  static const List<EmrOneCoreUom> lookup = [
    unknown,
    mt,
    lb,
    gt,
    nt,
    kg,
    ld,
    ea,
    lt,
    hr,
    cwt,
  ];
}

class ValueUomPair {
  ValueUomPair({
    this.value = 0.0,
    this.uom = Uom.unknown,
    this.isRate = false,
  });

  factory ValueUomPair.fromJson(Map<String, dynamic> json) => ValueUomPair(
        isRate: json['isRate'] as bool? ?? false,
        value: (json['value'] as num).toDouble(),
        uom: Uom.fromCode(json['uom'] as String),
      );
  double value;
  Uom uom;
  bool isRate;

  ValueUomPair operator +(ValueUomPair v) =>
      ValueUomPair(value: value + v.value, uom: uom, isRate: isRate);

  ValueUomPair copy(ValueUomPair other) =>
      ValueUomPair(value: other.value, uom: other.uom, isRate: other.isRate);

  @override
  String toString() =>
      isRate ? '$value / ${uom.uomCode}' : '$value ${uom.uomCode}';
  static Map<String, dynamic> toJson(ValueUomPair? instance) =>
      <String, dynamic>{
        'value': instance?.value,
        'uom': instance?.uom.uomCode,
        'isRate': instance?.isRate,
      };
}

enum WeightType { none, metric, imperial }

extension UomExtensions on Uom {
  int get uomId => EmrOneCoreUomConstants.lookup[index].uomId;
  String get uomCode => EmrOneCoreUomConstants.lookup[index].uomCode;
  WeightType get weightType => EmrOneCoreUomConstants.lookup[index].weightType;
  bool get isConvertible => EmrOneCoreUomConstants.lookup[index].isConvertible;
  double get scalingFactor =>
      EmrOneCoreUomConstants.lookup[index].scalingFactor;
  int get toApiEnumIndex {
    switch (this) {
      case Uom.unknown:
        return Enum$Uom.$unknown.index;
      case Uom.mt:
        return Enum$Uom.MT.index;
      case Uom.lb:
        return Enum$Uom.LB.index;
      case Uom.gt:
        return Enum$Uom.GT.index;
      case Uom.nt:
        return Enum$Uom.NT.index;
      case Uom.kg:
        return Enum$Uom.KG.index;
      case Uom.ld:
        return Enum$Uom.LD.index;
      case Uom.ea:
        return Enum$Uom.EA.index;
      case Uom.lt:
        return Enum$Uom.LT.index;
      case Uom.hr:
        return Enum$Uom.HR.index;
      case Uom.cwt:
        return Enum$Uom.CWT.index;
    }
  }

  int get displayFormatIntegralDigits =>
      EmrOneCoreUomConstants.lookup[index].displayFormatIntegralDigits;

  int get displayFormatFractionalDigits =>
      EmrOneCoreUomConstants.lookup[index].displayFormatFractionalDigits;
}
