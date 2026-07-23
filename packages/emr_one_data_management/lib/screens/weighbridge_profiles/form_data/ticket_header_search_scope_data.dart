import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';

class TicketHeaderSearchScopeData {
  TicketHeaderSearchScopeData({
    bool? accounts,
    bool? tickets,
    bool? transportJobs,
    bool? contracts,
    bool? elvQuotes,
  })  : accounts = ValueNotifier(accounts ?? true),
        tickets = ValueNotifier(tickets ?? true),
        transportJobs = ValueNotifier(transportJobs ?? true),
        contracts = ValueNotifier(contracts ?? true),
        elvQuotes = ValueNotifier(elvQuotes ?? true);

  TicketHeaderSearchScopeData.fromTicketHeaderSearchScope(
    TicketHeaderSearchScope searchIn,
  )   : accounts = ValueNotifier(searchIn.accounts),
        tickets = ValueNotifier(searchIn.tickets),
        transportJobs = ValueNotifier(searchIn.transportJobs),
        contracts = ValueNotifier(searchIn.contracts),
        elvQuotes = ValueNotifier(searchIn.elvQuotes);

  TicketHeaderSearchScope toTicketHeaderSearchScope() {
    return TicketHeaderSearchScope(
      accounts: accounts.value,
      tickets: tickets.value,
      transportJobs: transportJobs.value,
      contracts: contracts.value,
      elvQuotes: elvQuotes.value,
    );
  }

  late final ValueNotifier<bool> accounts;
  late final ValueNotifier<bool> tickets;
  late final ValueNotifier<bool> transportJobs;
  late final ValueNotifier<bool> contracts;
  late final ValueNotifier<bool> elvQuotes;
}
