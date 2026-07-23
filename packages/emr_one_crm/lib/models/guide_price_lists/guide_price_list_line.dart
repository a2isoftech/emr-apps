import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GuidePriceListLine {
  GuidePriceListLine(
    this.id,
    this.contractHeaderId,
    this.manager,
    this.accountNo,
    this.internalNotes,
    this.specialNotes,
    this.deliveryNotes,
    this.paymentNotes,
    this.longDescription,
    this.listItems, {
    required this.softDelete,
    required this.active,
    required bool showTagIcon,
  }) : _showTagIcon = ValueNotifier<bool>(showTagIcon);
  final String id;
  final int contractHeaderId;
  bool selected = false;
  final String manager;
  final String accountNo;
  final String internalNotes;
  final ListItems listItems;
  final bool softDelete;
  final bool active;
  final String specialNotes;
  final String deliveryNotes;
  final String paymentNotes;
  final String longDescription;
  final ValueNotifier<bool> _showTagIcon;

  ValueNotifier<bool> get showTagIconNotifier => _showTagIcon;
  bool get showTagIcon => _showTagIcon.value;
  set showTagIcon(bool value) {
    _showTagIcon.value = value;
  }
}

class ListItems {
  ListItems(
    this.contractLineId,
    this.startDate,
    this.endDate,
    this.deliveryType,
    this.haulageAdjustment,
    this.haulageCharge,
    this.haulageChargeUoMValue,
    this.haulageChargeUoM,
    this.publicationId,
    this.productCode,
    this.productdescription,
    this.baseMaterialPriceUoM,
    this.baseMaterialPriceUoMValue,
    this.deltas,
    this.itemTags,
  );
  final List<Deltas> deltas;
  final List<ItemTags> itemTags;
  final double baseMaterialPriceUoMValue;
  final String baseMaterialPriceUoM;
  final String productCode;
  final String productdescription;
  final double haulageChargeUoMValue;
  final String haulageChargeUoM;
  final double haulageCharge;
  final double haulageAdjustment;
  final DateTime startDate;
  final DateTime endDate;
  final String deliveryType;
  final int contractLineId;
  final int publicationId;
}

class ItemTags {
  ItemTags(
    this.id,
    this.category,
    this.reason,
    this.startDate,
    this.endDate,
    this.rate,
    this.rateUoMValue,
    this.rateUoM, {
    required this.active,
  });
  final String category;
  final String reason;
  final DateTime startDate;
  DateTime endDate;
  final bool active;
  final String id;
  final double rate;
  final double rateUoMValue;
  final String rateUoM;
}

class Deltas {
  Deltas(
    this.yard,
    this.latestCommercialDeltaUoM,
    this.latestCommercialDeltaUoMValue,
    this.latestOperationalDeltaUoM,
    this.latestOperationalDeltaUoMValue,
  );
  final String yard;
  final String latestCommercialDeltaUoM;
  final String latestOperationalDeltaUoM;
  final double latestCommercialDeltaUoMValue;
  final double latestOperationalDeltaUoMValue;
}
