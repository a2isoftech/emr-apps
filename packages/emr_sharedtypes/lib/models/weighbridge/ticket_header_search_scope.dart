import 'package:json_annotation/json_annotation.dart';

part 'ticket_header_search_scope.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketHeaderSearchScope {
  const TicketHeaderSearchScope({
    this.accounts = true,
    this.tickets = true,
    this.transportJobs = true,
    this.contracts = true,
    this.elvQuotes = true,
  });

  factory TicketHeaderSearchScope.fromJson(Map<String, dynamic> json) =>
      _$TicketHeaderSearchScopeFromJson(json);

  Map<String, dynamic> toJson() => _$TicketHeaderSearchScopeToJson(this);

  final bool accounts;
  final bool tickets;
  final bool transportJobs;
  final bool contracts;
  final bool elvQuotes;
}
