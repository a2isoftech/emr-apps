// coverage:ignore-file

import 'package:flutter/foundation.dart';

typedef K = Keys;

class Keys {
  const Keys();

  // Party search.
  static const partySearchTextField = Key('partySearchTextField');
  static const partyContactSearchTextField = Key('partyContactSearchTextField');

  // Contract wizard.
  static const addGradeCollectedPrice = Key('addGradeCollectedPrice');
  static const addGradeDeliveredPrice = Key('addGradeDeliveredPrice');
  static const addGradeWeight = Key('addGradeWeight');
  static const addGradeTargetWeightPerLoad = Key('addGradeTargetWeightPerLoad');
  static const orderBook = Key('orderBook');
  static const grade = Key('grade');

  static const tagDelta = Key('tagDelta');
}
