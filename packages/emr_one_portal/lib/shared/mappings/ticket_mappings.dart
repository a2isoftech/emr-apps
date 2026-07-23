import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';

extension ToTicketViewModelMappings on Query$GetTicket$ticket {
  TicketViewModel toTicketViewModel() {
    return TicketViewModel(
      legacyTicketNumber: legacyTicketNumber,
      currency: currency ?? '',
      ticketNo: ticketNumber.toString(),
      depot: depotNo,
      ticketStatus: extendedAttributes.ticketStatus,
      ticketLines: ticketLines.map((e) {
        final tl = TicketLineModel(provCommValue: e.price);
        tl.ewcCode = e.ewcCode;
        tl.gradeShortName = e.gradeName.isEmpty ? e.gradeCode : e.gradeName;
        tl.provRate = e.rate;
        tl.provTonnes = e.netWeight;
        tl.provRateUomString = e.rateUom;
        tl.provTonnesUomString = e.netWeightUom;
        return tl;
      }).toList(),
      ticketDate: ticketDate,
      yard: YardModel(
        shortName: yard.shortName,
        addressLine1: yard.addressLine1,
        addressLine2: yard.addressLine2,
        addressLine3: yard.addressLine3,
        addressLine4: yard.addressLine4,
        addressLine5: yard.addressLine5,
        addressLine6: yard.addressLine6,
        postCode: yard.postCode,
        telephone: yard.telephone,
        wmlExemptionNo: yard.wmlExemptionNo,
        wasteCarrierRegNo: yard.wasteCarrierRegNo,
      ),
    );
  }
}
