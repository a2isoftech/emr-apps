import 'package:emr_one_yard_logistics/models/models.dart';

extension LotTypeExtension on LotType {
  String get description {
    switch (this) {
      case LotType.unknown:
        return 'Unknown';
      case LotType.sticks:
        return 'Sticks/Cable';
      case LotType.joints:
        return 'Joints';
    }
  }
}

extension PalletTypeExtension on PalletType {
  String get description {
    switch (this) {
      case PalletType.leadJointBag:
        return 'Lead Joint';
      case PalletType.polyJointBag:
        return 'Poly Joint';
      case PalletType.normal:
        return 'Normal';
    }
  }
}
