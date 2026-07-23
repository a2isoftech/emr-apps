// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_header_search_scope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketHeaderSearchScope _$TicketHeaderSearchScopeFromJson(
        Map<String, dynamic> json) =>
    TicketHeaderSearchScope(
      accounts: json['accounts'] as bool? ?? true,
      tickets: json['tickets'] as bool? ?? true,
      transportJobs: json['transportJobs'] as bool? ?? true,
      contracts: json['contracts'] as bool? ?? true,
      elvQuotes: json['elvQuotes'] as bool? ?? true,
    );

Map<String, dynamic> _$TicketHeaderSearchScopeToJson(
        TicketHeaderSearchScope instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
      'tickets': instance.tickets,
      'transportJobs': instance.transportJobs,
      'contracts': instance.contracts,
      'elvQuotes': instance.elvQuotes,
    };
