import 'package:emr_one_elv_core/models/enums/acquisition_type_enum.dart';
import 'package:emr_one_elv_core/models/enums/collection_status_enum.dart';
import 'package:emr_one_elv_core/models/enums/lead_source_enum.dart';
import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';

extension QuoteSearchExtensions on String {
  QuoteStatusEnum facetTermToQuoteStatusEnum() => switch (toLowerCase()) {
        ('draft') => QuoteStatusEnum.draft,
        ('confirmed') => QuoteStatusEnum.confirmed,
        ('inspected') => QuoteStatusEnum.inspected,
        ('inspection_in_progress') => QuoteStatusEnum.inspectionInProgress,
        ('abandoned') => QuoteStatusEnum.abandoned,
        ('unknown') => QuoteStatusEnum.unknown,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };

  AcquisitionTypeEnum facetTermToAcquisitionTypeEnum() =>
      switch (toLowerCase()) {
        ('collected') => AcquisitionTypeEnum.collected,
        ('delivered') => AcquisitionTypeEnum.delivered,
        ('unknown') => AcquisitionTypeEnum.unknown,
        _ => throw ArgumentError.value(
            this,
            'acquisitionTypeString',
            'Invalid acquisition type string',
          ),
      };

  CollectionStatusEnum facetTermToCollectionStatusEnum() =>
      switch (toLowerCase()) {
        ('pendingallocation') => CollectionStatusEnum.pendingAllocation,
        ('allocated') => CollectionStatusEnum.allocated,
        _ => throw ArgumentError.value(
            this,
            'collectionStatusString',
            'Invalid collection status string',
          ),
      };

  LeadSourceEnum facetTermToLeadSourceEnum() => switch (toLowerCase()) {
        ('none') => LeadSourceEnum.none,
        ('cartakeback') => LeadSourceEnum.carTakeBack,
        ('scrapcarcomparison') => LeadSourceEnum.scrapCarComparison,
        ('auction') => LeadSourceEnum.auction,
        ('emrvehiclerecycling') => LeadSourceEnum.emrVehicleRecycling,
        ('b2b') => LeadSourceEnum.b2b,
        _ => throw ArgumentError.value(
            this,
            'leadSourceString',
            'Invalid lead source string',
          ),
      };
}
