import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_tickets/screens/screens.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class TicketDetailsFormData {
  TicketDetailsFormData();

  factory TicketDetailsFormData.fromData(
    Query$GetTicketDetailsById$ticket data,
  ) => TicketDetailsFormData()
    ..account = ValueNotifier(
      PickerItem(data.account.accountNumber, data.account.name),
    )
    ..comments = ValueNotifier(
      [
        ...data.comments.mapIndexed(
          (index, comment) => TicketDetailsCommentRow(
            'general',
            '',
            Comment.fromJson(comment.toJson()),
          ),
        ),
        ...data.internalComments.mapIndexed(
          (index, comment) => TicketDetailsCommentRow(
            'internal',
            '',
            Comment.fromJson(comment.toJson()),
          ),
        ),
        ...data.lines.expandIndexed(
          (lineIndex, line) => line.internalComments.mapIndexed(
            (index, comment) => TicketDetailsCommentRow(
              'line',
              ' ${line.lineNumber}',
              Comment.fromJson(comment.toJson()),
            ),
          ),
        ),
        if (data.transportDetails.deliveryNote != null)
          TicketDetailsCommentRow(
            'deliveryNote',
            '',
            Comment(
              data.transportDetails.deliveryNote!,
              Created(
                userInfoId: '',
                at: DateTime.fromMillisecondsSinceEpoch(0),
              ),
            ),
          ),
        if (data.deletionDetails?.comments != null)
          ...data.deletionDetails!.comments.map(
            (c) => TicketDetailsCommentRow(
              'deletionDetails',
              '',
              Comment.fromJson(c.toJson()),
            ),
          ),
      ]..sort((a, b) => a.comment.created.at.compareTo(b.comment.created.at)),
    )
    ..containerNumber = ValueNotifier(data.containerNumber ?? '')
    ..contractInternalReference = ValueNotifier(
      data.contract?.internalReference ?? '',
    )
    ..created = ValueNotifier(
      Created(
        userInfoId: data.created.userInfoId,
        userName: data.created.userName,
        at: data.created.at,
      ),
    )
    ..currency = ValueNotifier(data.currency)
    ..date = ValueNotifier(data.date)
    ..deductions = ValueNotifier(
      data.deductions
          .map(
            (d) => DeductionFormData(
              // Replace the prefix and make the first letter lowercase to match
              // the l10n keys.
              displayNameKey: d.typeId
                  .replaceFirst('deductionTypes/', '')
                  .replaceFirstMapped(
                    RegExp('^[a-zA-Z]'),
                    (match) => match.group(0)!.toLowerCase(),
                  ),
              value: ValueNotifier(d.value),
              // Only lines have weight deductions, so we set the weight to
              // null at the ticket level.
              weight: ValueNotifier(null),
            ),
          )
          .toList(),
    )
    ..deletionDetails = ValueNotifier(
      data.deletionDetails?.created == null
          ? null
          : Created(
              userInfoId: data.deletionDetails!.created.userInfoId,
              userName: data.deletionDetails!.created.userName,
              at: data.deletionDetails!.created.at,
            ),
    )
    ..haulier = ValueNotifier(
      data.haulier == null
          ? null
          : PickerItem(data.haulier!.accountNumber, data.haulier!.name),
    )
    ..id = ValueNotifier(data.id)
    ..internalNet = ValueNotifier(
      UomValue.weight(
        data.weightValidation.internalNet.value,
        data.weightValidation.internalNet.uom.toUomModel(),
      ),
    )
    ..lines = ValueNotifier(
      data.lines
          .map(
            (line) => TicketLineFormData(
              binNo: ValueNotifier(line.binNo),
              consignmentNoteNo: ValueNotifier(line.consignmentNoteNo),
              costs: ValueNotifier(
                line.costs
                    .map(
                      (c) => CostFormData(
                        costParty: ValueNotifier(
                          KeyValuePair<String, String>(
                            c.costParty.partyAccountNo,
                            c.costParty.partyName,
                          ),
                        ),
                        costStatus: ValueNotifier(c.costStatus),
                        value: ValueNotifier(c.value),
                        typeId: ValueNotifier(
                          // Replace the prefix and make the first letter
                          // lowercase to match the l10n keys.
                          c.typeId
                              .replaceFirst('costTypes/', '')
                              .replaceFirstMapped(
                                RegExp('^[a-zA-Z]'),
                                (match) => match.group(0)!.toLowerCase(),
                              ),
                        ),
                        rate: ValueNotifier(
                          c.rate == null
                              ? null
                              : UomValue.rate(
                                  c.rate!.value,
                                  c.rate!.uom.toUomModel(),
                                ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              created: ValueNotifier(
                Created(
                  userInfoId: line.created.userInfoId,
                  userName: line.created.userName,
                  at: line.created.at,
                ),
              ),
              deductions: ValueNotifier(
                line.deductions
                    .map(
                      (d) => DeductionFormData(
                        // Replace the prefix and make the first letter
                        // lowercase to match the l10n keys.
                        displayNameKey: d.typeId
                            .replaceFirst('deductionTypes/', '')
                            .replaceFirstMapped(
                              RegExp('^[a-zA-Z]'),
                              (match) => match.group(0)!.toLowerCase(),
                            ),
                        value: ValueNotifier(d.value),
                        weight: ValueNotifier(
                          d.weight == null
                              ? null
                              : UomValue.weight(
                                  d.weight!.value,
                                  d.weight!.uom.toUomModel(),
                                ),
                        ),
                      ),
                    )
                    .toList(),
              ),

              grossWeight: ValueNotifier(
                UomValue.weight(
                  line.grossWeight.value,
                  line.grossWeight.uom.toUomModel(),
                ),
              ),
              grossWeightDateTime: ValueNotifier(line.grossWeightDateTime),
              hasSeenZero: ValueNotifier(line.hasSeenZero),
              isGrossFromPreviousWeight: ValueNotifier(
                line.isGrossFromPreviousWeight,
              ),
              lineNumber: line.lineNumber,
              location: ValueNotifier(
                PickerItem(
                  line.location?.code ?? '',
                  line.location?.description ?? '',
                ),
              ),
              manualGrossWeightReason: ValueNotifier(
                line.manualGrossWeightReason,
              ),
              modified: ValueNotifier(
                Modified(
                  userInfoId: line.modified.userInfoId,
                  userName: line.modified.userName,
                  at: line.modified.at,
                ),
              ),
              netWeight: ValueNotifier(
                UomValue.weight(
                  line.netWeight.value,
                  line.netWeight.uom.toUomModel(),
                ),
              ),
              packingListReference: ValueNotifier(line.packingListReference),
              partyWasteStreamNumber: ValueNotifier(
                line.partyWasteStreamNumber,
              ),
              payableAfterCostAndDeduction: ValueNotifier(
                line.payableAfterCostAndDeduction,
              ),
              payableBeforeCostAndDeduction: ValueNotifier(
                line.payableBeforeCostAndDeduction,
              ),
              priceOrigin: ValueNotifier(line.priceOrigin),
              product: ValueNotifier(
                PickerItem<String, String>(
                  line.location?.product?.code ?? '',
                  line.location?.product?.description ?? '',
                ),
              ),
              rate: ValueNotifier(
                UomValue.rate(line.rate.value, line.rate.uom.toUomModel()),
              ),
              sealNumber: ValueNotifier(line.sealNo),
              stockAsProduct: ValueNotifier(
                PickerItem<String, String>(
                  line.stockAsProduct?.code ?? '',
                  line.stockAsProduct?.description ?? '',
                ),
              ),
              tareWeightSerial: ValueNotifier(
                line.deductions
                        .firstWhereOrNull(
                          (d) => d.typeId == 'deductionTypes/Weight',
                        )
                        ?.weightSerial ??
                    '',
              ),
              weightSerial: ValueNotifier(line.weightSerial),
            ),
          )
          .toList()
        ..sort((a, b) => a.lineNumber.compareTo(b.lineNumber)),
    )
    ..location = ValueNotifier(
      PickerItem(
        data.account.locationId ?? '',
        data.account.locationName ?? '',
      ),
    )
    ..media = ValueNotifier({
      'ticket': data.mediaAssets
          .map((m) => MediaAsset('', sasUrl: m.sasUrl))
          .toList(),
      for (final line in data.lines)
        'line|${line.lineNumber}': [
          ...line.mediaAssets.map((m) => MediaAsset('', sasUrl: m.sasUrl)),
          ...line.deductions.expand(
            (m) => m.mediaAssets.map((ma) => MediaAsset('', sasUrl: ma.sasUrl)),
          ),
          if (line.inspectionDetails != null)
            ...line.inspectionDetails!.inspectionMedia.map(
              (m) => MediaAsset('', sasUrl: m.sasUrl),
            ),
        ],
      'inspection': data.inspectionMedia
          .map((m) => MediaAsset('', sasUrl: m.sasUrl))
          .toList(),
      'account':
          data.account.details?.contacts
              .expand(
                (c) => <MediaAsset>[
                  ...c.value.proofOfAddress.map(
                    (a) => MediaAsset('', sasUrl: a.media.sasUrl),
                  ),
                  ...c.value.proofOfIdentification.map(
                    (a) => MediaAsset('', sasUrl: a.media.sasUrl),
                  ),
                  if (c.value.signature != null)
                    MediaAsset('', sasUrl: c.value.signature!.sasUrl),
                ],
              )
              .toList() ??
          [],
    })
    ..modified = ValueNotifier(
      Modified(
        userInfoId: data.modified.userInfoId,
        userName: data.modified.userName,
        at: data.modified.at,
      ),
    )
    ..outwardTicketNumber = ValueNotifier(data.outwardTicketNo ?? '')
    ..serviceType = ValueNotifier(data.serviceType)
    ..ticketCategory = ValueNotifier(data.ticketCategory)
    ..ticketNumber = ValueNotifier(data.ticketNumber)
    ..ticketStatus = ValueNotifier(data.ticketStatus)
    ..ticketType = ValueNotifier(data.ticketType)
    ..transportDetailsJobNumber = ValueNotifier(data.transportDetails.jobNumber)
    ..transportDetailsTransportType = ValueNotifier(
      data.transportDetails.transportType,
    )
    ..transportDetailsVehicleReg = ValueNotifier(
      data.transportDetails.vehicleReg,
    )
    ..yardCode = ValueNotifier(data.yardCode);

  late final ValueNotifier<PickerItem<String, String>> account;
  late final ValueNotifier<List<TicketDetailsCommentRow>> comments;
  late final ValueNotifier<String?> containerNumber;
  late final ValueNotifier<String?> contractInternalReference;
  late final ValueNotifier<Created?> created;
  late final ValueNotifier<String?> currency;
  late final ValueNotifier<DateTime?> date;
  late final ValueNotifier<List<DeductionFormData>> deductions;
  late final ValueNotifier<Created?> deletionDetails;
  late final ValueNotifier<PickerItem<String, String>?> haulier;
  late final ValueNotifier<String?> id;
  late final ValueNotifier<UomValue?> internalNet;
  late final ValueNotifier<List<TicketLineFormData>> lines;
  late final ValueNotifier<PickerItem<String, String>?> location;
  late final ValueNotifier<Modified?> modified;
  late final ValueNotifier<Map<String, List<MediaAsset>>> media;
  late final ValueNotifier<String?> outwardTicketNumber;
  late final ValueNotifier<Enum$TicketServiceType?> serviceType;
  late final ValueNotifier<Enum$TicketCategory?> ticketCategory;
  late final ValueNotifier<int?> ticketNumber;
  late final ValueNotifier<Enum$TicketStatus?> ticketStatus;
  late final ValueNotifier<Enum$TicketType?> ticketType;
  late final ValueNotifier<int?> transportDetailsJobNumber;
  late final ValueNotifier<Enum$TransportType?> transportDetailsTransportType;
  late final ValueNotifier<String?> transportDetailsVehicleReg;
  late final ValueNotifier<String?> yardCode;

  // TODO(richard.leonard): To be implemented in the future.
  ValueNotifier<bool> get canEdit => ValueNotifier(false);
}
