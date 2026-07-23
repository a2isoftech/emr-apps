import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/models/search/sort_item.dart';
import 'package:emr_one_yard_app/models/ticket/ticket_list_model.dart';
import 'package:emr_one_yard_app/services/yard_ticket_service.dart';
import 'package:signals/signals_flutter.dart';

class TicketController {
  TicketController({
    required this.ticketService,
    required this.userInfoService,
  });

  final Map<SortItem, Input$SearchTicketsSortInput> sortOptions = {
    SortItem.createdAsc: Input$SearchTicketsSortInput(
      createdDateEpoch: Enum$SortEnumType.ASC,
    ),
    SortItem.createdDesc: Input$SearchTicketsSortInput(
      createdDateEpoch: Enum$SortEnumType.DESC,
    ),
    SortItem.accountNameAsc: Input$SearchTicketsSortInput(
      partyName: Enum$SortEnumType.ASC,
    ),
    SortItem.accountNameDesc: Input$SearchTicketsSortInput(
      partyName: Enum$SortEnumType.DESC,
    ),
  };

  final YardTicketService ticketService;
  final UserInfoService userInfoService;

  Future<AsyncState<List<Query$SearchTickets$searchTickets$nodes>>> loadTickets(
    TicketListMode ticketMode,
    SortItem sortOrder, {
    int pageCount = 1,
  }) async {
    final yards = [userInfoService.userInfo.defaultYard];

    final input = switch (ticketMode) {
      TicketListMode.inProgress => Input$SearchTicketsInput(
          yardCodes: yards,
          ticketStatus: [Enum$TicketStatus.DRAFT],
        ),
      TicketListMode.today => Input$SearchTicketsInput(
          yardCodes: yards,
          epochMax: DateTime.now().millisecondsSinceEpoch,
          epochMin: DateTime.now().dateOnly.millisecondsSinceEpoch,
          ticketStatus: [
            Enum$TicketStatus.DRAFT,
            Enum$TicketStatus.ACTIVE,
            Enum$TicketStatus.CLOSED,
          ],
        ),
      TicketListMode.sevenDay => Input$SearchTicketsInput(
          yardCodes: yards,
          epochMin: DateTime.now()
              .dateOnly
              .add(const Duration(days: -7))
              .millisecondsSinceEpoch,
          ticketStatus: [
            Enum$TicketStatus.DRAFT,
            Enum$TicketStatus.ACTIVE,
            Enum$TicketStatus.CLOSED,
          ],
        ),
    };

    final order = [sortOptions[sortOrder] ?? sortOptions.entries.first.value];

    final ticketData = await ticketService.getYardTickets(
      input: input,
      order: order,
      count: pageCount * YardAppConstants.pageSize,
    );
    return AsyncData(ticketData);
  }

  Future<AsyncState<List<Query$SearchTickets$searchTickets$nodes>>>
      searchTickets(String? query, int pageCount) async {
    final yards = [userInfoService.userInfo.defaultYard];

    final thirtyDayEpoch = DateTime.now()
        .dateOnly
        .add(const Duration(days: -30))
        .millisecondsSinceEpoch;

    final searchQuery = (query?.isEmpty ?? true)
        ? null
        : query!.endsWith('*')
            ? query
            : '$query*';

    final input = Input$SearchTicketsInput(
      yardCodes: yards,
      ticketStatus: [
        Enum$TicketStatus.DRAFT,
        Enum$TicketStatus.ACTIVE,
        Enum$TicketStatus.CLOSED,
      ],
      epochMin: thirtyDayEpoch,
      query: searchQuery,
    );

    final ticketData = await ticketService.getYardTickets(
      input: input,
      count: pageCount * YardAppConstants.pageSize,
    );

    return AsyncData(ticketData);
  }
}
