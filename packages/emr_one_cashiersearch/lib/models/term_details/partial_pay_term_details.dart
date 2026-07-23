import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/term_details/advance_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'partial_pay_term_details.g.dart';

@JsonSerializable()
class PartialPayTermDetails extends AdvanceTerm {
  PartialPayTermDetails({
    required super.termType,
    required this.ticketIds,
    this.tickets = const[],
  });

  factory PartialPayTermDetails.fromJson(Map<String, dynamic> json) =>
      _$PartialPayTermDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PartialPayTermDetailsToJson(this);

  final List<String> ticketIds;
  final List<Ticket> tickets;
}
