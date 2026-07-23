import 'package:collection/collection.dart';
import 'package:emr_core_api/models/api_response.dart' show ApiResponse;
import 'package:emr_core_api/services/services.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/constants.dart' as shared;
import 'package:emr_sharedtypes/models/weighbridge/weighbridge_profile.dart'
    show WeighbridgeProfile;
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';

class RepriceTicketController {
  RepriceTicketController({
    required this.repriceService,
    required this.coreApiService,
  });

  final IRepriceTicketService repriceService;
  final CoreApiService coreApiService;
  WeighbridgeProfile? weighbridgeProfile;
  ValueNotifier<List<int>> disabledRows = ValueNotifier([]);
  ValueNotifier<List<RepriceFormData>> repriceFormData = ValueNotifier([]);
  ValueNotifier<bool> rateUpdated = ValueNotifier(false);
  String? territoryId;

  ValueNotifier<Account?> selectedAccount = ValueNotifier(null);
  ValueNotifier<AccountLocation?> selectedArisingPoint = ValueNotifier(null);
  List<AccountLocation> arisingPoints = <AccountLocation>[];
  ValueNotifier<TicketAccount?> ticketAccount = ValueNotifier(null);
  GlobalKey<FormState>? formKey;

  Future<void> updateWeighbridgeProfile(String profileId) async {
    final result = await coreApiService.referenceData.getWeighbridgeProfile(
      id: profileId,
    );
    if (result.success) {
      weighbridgeProfile = result.data!.entity;
    }
  }

  Future<List<Product>> getProducts(String pattern) async {
    final results = await repriceService.getProducts(pattern);

    if (weighbridgeProfile != null &&
        (weighbridgeProfile!.allowedProductIds?.isNotEmpty ?? false)) {
      return results
          .where((x) => weighbridgeProfile!.allowedProductIds!.contains(x.id))
          .toList();
    }
    if (results.any((x) => x.code.toLowerCase() == pattern.toLowerCase())) {
      return results
          .where((x) => x.code.toLowerCase() == pattern.toLowerCase())
          .toList();
    }
    return results;
  }

  Future<ApiResponse<String>> saveTicket(String ticketId) async {
    return repriceService.saveTicket(
      getTicketLinesToSave(),
      ticketId,
      account: ticketAccount.value,
    );
  }

  List<TicketLine> getTicketLinesToSave() {
    return repriceFormData.value.map((x) => x.toTicketLine()).toList();
  }

  Future<List<Location>> getLocations(
    String pattern,
    String yardCode,
    String? productCode,
  ) async {
    final results = await repriceService.getLocations(
      pattern,
      yardCode,
      productCode,
    );
    if (productCode != null && productCode.isNotEmpty) {
      return results.where((x) => x.code == productCode).toList();
    }
    return results;
  }

  void updateDisabledRows(int? rowIndex) {
    if (rowIndex == null) {
      return;
    }
    if (disabledRows.value.contains(rowIndex)) {
      disabledRows.value.remove(rowIndex);
    } else {
      disabledRows.value.add(rowIndex);
    }
    disabledRows.value = [...disabledRows.value];
  }

  void deleteRow(RepriceFormData line) {
    repriceFormData.value.remove(line);
    repriceFormData.value = [...repriceFormData.value];
    disabledRows.value.remove(line.lineNumber.value);
  }

  void addNewRow(
    UserInfo userInfo,
    shared.Uom uom, {
    required bool dirtPresent,
  }) {
    final oldLines = repriceFormData.value;
    final lineNumbers = oldLines.map((x) => x.lineNumber.value);
    final newLine =
        TicketLine(
            isActive: true,
            lineNumber: dirtPresent
                ? getNextLineNumber(
                    repriceFormData.value
                        .map((x) => x.lineNumber.value)
                        .toList(),
                  )
                : lineNumbers.max + 1,
          )
          ..netWeight = UomValue.fromValue(0, shared.Uom.fromCode(uom.uomCode))
          ..created = Created(
            userInfoId: userInfo.id,
            userName: userInfo.name,
            at: DateTime.now(),
          )
          ..rate = UomValue.fromValue(
            0,
            shared.Uom.fromCode(uom.uomCode),
            isRate: true,
          )
          ..price = 0.0
          ..totalCostDeduction = 0
          ..product = null
          ..location = null
          ..extendedProperties = {};
    repriceFormData.value = [...oldLines, RepriceFormData.fromLine(newLine)];
  }

  int getNextLineNumber(List<int> lines) {
    if (lines.isEmpty) return 1;

    lines.sort();

    var isConsecutive = true;

    for (var i = 1; i < lines.length; i++) {
      if (lines[i] != lines[i - 1] + 1) {
        isConsecutive = false;
        break;
      }
    }

    final max = lines.last;

    if (isConsecutive) {
      return max + 2; // skip one number
    }

    return max + 1; // normal next number
  }

  Future<UomValue> getBaseRate(
    String selectedProductId,
    Ticket ticket,
    String accountCode,
    String accountId,
    shared.Uom uom,
  ) async {
    try {
      final context = await _prepareRateContext(ticket, accountCode, accountId);
      if (context.skipPricing) {
        return UomValue.fromValue(
          0,
          weighbridgeProfile?.weighbridgeUom ?? uom,
          isRate: true,
        );
      }

      final rates = await getRates(
        productIds: [selectedProductId],
        accountId: context.accountId ?? '',
        yardId: context.yardId,
        yardAccountId: context.yardAccountId,
      );

      final rateMatrix = rates[selectedProductId] ?? {};

      final method = switch (ticket.serviceType!) {
        ServiceType.collected => DeliveryMethod.collected,
        ServiceType.delivered => DeliveryMethod.delivered,
      };

      return rateMatrix[method] ??
          UomValue.fromValue(
            0,
            weighbridgeProfile?.weighbridgeUom ?? uom,
            isRate: true,
          );
    } catch (e, st) {
      EmrLogger.error(
        source: 'Get Base Rate',
        'Failed getting base rate for product: $e',
        stackTrace: st,
        params: {
          'productId': selectedProductId,
          'ticketNumber': ticket.ticketNumber.toString(),
        },
      );

      return UomValue.fromValue(
        0,
        weighbridgeProfile?.weighbridgeUom ?? uom,
        isRate: true,
      );
    }
  }

  Future<Map<String, UomValue>> getBaseRates(
    List<String> productIds,
    Ticket ticket,
    String accountCode,
    String accountId,
    shared.Uom uom,
  ) async {
    try {
      final context = await _prepareRateContext(ticket, accountCode, accountId);

      final baseResult = {
        for (final id in productIds)
          id: UomValue.fromValue(
            0,
            weighbridgeProfile?.weighbridgeUom ?? uom,
            isRate: true,
          ),
      };

      if (context.skipPricing) return baseResult;

      final allRates = await getRates(
        productIds: productIds,
        accountId: context.accountId ?? '',
        yardId: context.yardId,
        yardAccountId: context.yardAccountId,
      );

      for (final entry in allRates.entries) {
        final productId = entry.key;
        final rateMatrix = entry.value;
        final method = switch (ticket.serviceType!) {
          ServiceType.collected => DeliveryMethod.collected,
          ServiceType.delivered => DeliveryMethod.delivered,
        };

        baseResult[productId] = rateMatrix[method] ?? baseResult[productId]!;
      }

      return baseResult;
    } catch (e, st) {
      EmrLogger.error(
        source: 'Get Base Rates',
        'Failed getting base rates: $e',
        stackTrace: st,
        params: {
          'productIds': productIds.join(','),
          'ticketNumber': ticket.ticketNumber.toString(),
        },
      );

      return {
        for (final id in productIds)
          id: UomValue.fromValue(
            0,
            weighbridgeProfile?.weighbridgeUom ?? uom,
            isRate: true,
          ),
      };
    }
  }

  Future<Map<String, Map<DeliveryMethod, UomValue>>> getRates({
    required List<String> productIds,
    required String accountId,
    required String yardId,
    required String yardAccountId,
  }) async {
    EmrLogger.info(
      source: 'Get Rate',
      'Retrieving rates',
      params: {'productIds': productIds.join(','), 'accountId': accountId},
    );

    final result = await repriceService.getRate(
      productIds: productIds,
      accountIds: [accountId, yardAccountId],
      yardId: yardId,
    );

    final response = result.data ?? {};

    if (response[accountId]?.isNotEmpty ?? false) return response[accountId]!;
    if (response[yardAccountId]?.isNotEmpty ?? false) {
      return response[yardAccountId]!;
    }

    return {};
  }

  Future<List<Account>> searchAccounts(String query) async {
    final result = await repriceService.searchCashierAccounts(
      query: query,
      territoryId: territoryId,
    );
    return result
        .where((account) => account.locations?.isNotEmpty ?? false)
        .toList();
  }

  Future<List<AccountLocation>> searchAccountLocations(String query) async {
    if (query.isEmpty) return arisingPoints;
    return arisingPoints
        .where(
          (location) =>
              location.fts.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  void onAccountSelected() {
    ticketAccount.value = null;
    if (selectedAccount.value == null) {
      arisingPoints = [];
      selectedArisingPoint.value = null;
    }
    arisingPoints = selectedAccount.value?.locations ?? [];
    selectedArisingPoint.value = arisingPoints.length == 1
        ? arisingPoints.first
        : null;
  }

  void onArisingPointSelected() {
    if (selectedArisingPoint.value == null) {
      ticketAccount.value = null;
      return;
    }
    final account = selectedAccount.value;
    if (account != null) {
      ticketAccount.value = _convertToTicketAccount(
        account: account,
        arrisingPointIndex: account.locations!.indexOf(
          selectedArisingPoint.value!,
        ),
      );
    }
  }

  Future<
    ({String? accountId, String yardId, String yardAccountId, bool skipPricing})
  >
  _prepareRateContext(
    Ticket ticket,
    String selectedAccountCode,
    String selectedAccountId,
  ) async {
    final yardCode = ticket.yardCode;
    final accountNumber = selectedAccountCode;
    var accountId = selectedAccountId;
    var yardId = ticket.yardId;

    // check if we should skip pricing
    final skipPricing =
        (ticket.ticketCategory == TicketCategory.interDepot &&
            weighbridgeProfile?.pricingServicesConfig.interDepot == false) ||
        (accountNumber.toLowerCase().startsWith('n') &&
            weighbridgeProfile?.pricingServicesConfig.retailAccount == false) ||
        (accountNumber.toLowerCase().startsWith('l') &&
            weighbridgeProfile?.pricingServicesConfig.businessAccount == false);

    final yardAccountId = await repriceService.getAccountIdByAccountNumber(
      accountNumber: yardCode,
    );

    // Flip YardId and AccountId if InterDepot Outwards ticket
    if (ticket.ticketType == TicketType.outwards &&
        ticket.ticketCategory == TicketCategory.interDepot) {
      accountId = await repriceService.getAccountIdByAccountNumber(
        accountNumber: yardCode,
      );
      yardId = await repriceService.getYardIdByYardCode(
        yardCode: accountNumber,
      );
    }

    return (
      accountId: accountId,
      yardId: yardId,
      yardAccountId: yardAccountId,
      skipPricing: skipPricing,
    );
  }

  TicketAccount _convertToTicketAccount({
    required Account account,
    int? arrisingPointIndex,
  }) {
    final addressKey = arrisingPointIndex != null && account.locations != null
        ? account.locations![arrisingPointIndex].addressKey
        : null;

    Address? accountAddress;
    if (addressKey != null) {
      accountAddress = account.addresses
          ?.firstWhereOrNull((x) => x?.key == addressKey)
          ?.value;
    }

    return (TicketAccount()
      ..name = account.name
      ..accountNumber = account.code
      ..accountId = account.id
      ..locationId = arrisingPointIndex != null && account.locations != null
          ? account.locations![arrisingPointIndex].code
          : account.code
      ..locationName = arrisingPointIndex != null && account.locations != null
          ? account.locations![arrisingPointIndex].name
          : account.name
      ..sicCode = int.tryParse(account.sicCodeId?.split('/')[1] ?? '0')
      ..address = arrisingPointIndex != null
          ? Address(
              address1: accountAddress?.address1 ?? '',
              address2: accountAddress?.address2 ?? '',
              address3: accountAddress?.address3 ?? '',
              address4: accountAddress?.address4 ?? '',
              address5: accountAddress?.address5 ?? '',
              address6: accountAddress?.address6 ?? '',
              postCode: accountAddress?.postCode ?? '',
              countryCode: accountAddress?.countryCode ?? '',
              what3Words: accountAddress?.what3Words ?? '',
            )
          : Address(
              address1: account.accountAddresses?.firstOrNull?.address1 ?? '',
              address2: account.accountAddresses?.firstOrNull?.address2 ?? '',
              address3: account.accountAddresses?.firstOrNull?.address3 ?? '',
              address4: account.accountAddresses?.firstOrNull?.address4 ?? '',
              address5: account.accountAddresses?.firstOrNull?.address5 ?? '',
              address6: account.accountAddresses?.firstOrNull?.address6 ?? '',
              postCode: account.accountAddresses?.firstOrNull?.postCode ?? '',
              countryCode:
                  account.accountAddresses?.firstOrNull?.countryCode ?? '',
              what3Words:
                  account.accountAddresses?.firstOrNull?.what3Words ?? '',
            ));
  }
}
