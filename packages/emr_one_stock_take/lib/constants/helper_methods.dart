import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_stock_take/extensions/double_extensions.dart';
import 'package:emr_one_stock_take/extensions/location_weight_extensions.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/extensions/string_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/screens/shared/shared.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:emr_one_stock_take/widgets/history_timeline/history_timeline_view.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HelperMethods {
  static Input$StocktakeSearchInput getSearchInput(
    Map<String, dynamic> filters,
    String? query,
    String? yardCodeFilter,
  ) {
    EmrDateRangeValue? dateFilter;
    final status = getStringFilterList(
      filters,
      StockTakeFilterController.kStatus,
    )?.map((s) => s.facetTermToEnum$StocktakeStatus()).toList();

    final yardCode =
        yardCodeFilter ??
        getStringFilter(filters, StockTakeFilterController.kYards);

    final conductedBy = getStringFilterList(
      filters,
      StockTakeFilterController.kConductedBy,
    );

    final productClasses = getStringFilterList(
      filters,
      StockTakeFilterController.kProductClasses,
    );

    final productFamilies = getStringFilterList(
      filters,
      StockTakeFilterController.kProductFamilies,
    );

    final createdBy = getStringFilterList(
      filters,
      StockTakeFilterController.kOriginator,
    );

    if (filters[StockTakeFilterController.kDateRange] != null) {
      dateFilter =
          filters[StockTakeFilterController.kDateRange] as EmrDateRangeValue;
    }

    return Input$StocktakeSearchInput(
      stocktakeStatuses: status ?? [],
      yardCode: yardCode,
      conductedBy: conductedBy ?? [],
      createdBy: createdBy ?? [],
      endDate: dateFilter?.endDate
          ?.add(const Duration(hours: 23, minutes: 59, seconds: 59))
          .toUtc(),
      startDate: dateFilter?.startDate?.toUtc(),
      query: query,
      productClasses: productClasses,
      productFamilies: productFamilies,
    );
  }

  static List<String>? getStringFilterList(
    Map<String, dynamic> filters,
    String key,
  ) => (filters[key] as List<String?>?)?.whereType<String>().toList();

  static String? getStringFilter(Map<String, dynamic> filters, String key) =>
      filters[key] as String?;

  static StatusType getStatusType(Enum$StocktakeStatus status) {
    switch (status) {
      case Enum$StocktakeStatus.OPEN:
      case Enum$StocktakeStatus.IN_PROGRESS:
      case Enum$StocktakeStatus.AWAITING_APPROVAL:
      case Enum$StocktakeStatus.DELETED:
      case Enum$StocktakeStatus.$unknown:
        return StatusType.information;
      case Enum$StocktakeStatus.COMPLETED:
        return StatusType.positive;
      case Enum$StocktakeStatus.REJECTED:
      case Enum$StocktakeStatus.FAILED:
        return StatusType.negative;
    }
  }

  static Future<void> showApproveRejectModal({
    required BuildContext context,
    required ReviewStocktakeController controller,
    required String stockTakeId,
    required void Function() onVoteSubmit,
    bool isApproveLocation = true,
    bool isWeb = false,
    int? currentLevel,
  }) async {
    final formKey = GlobalKey<FormState>();
    final comments = ValueNotifier<String?>(null);
    await EmrDialog.modal<String?>(
      context,
      titleText: isApproveLocation
          ? context.l10n.approveStockTake
          : context.l10n.rejectStockTake,
      acceptLabel: isApproveLocation
          ? context.l10n.approve
          : context.l10n.reject,
      isDanger: !isApproveLocation,
      dialogMode: DialogMode.compact,
      builder: (BuildContext dialogContext) {
        return SizedBox(
          width: isWeb
              ? MediaQuery.of(context).size.width * 0.3
              : MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.l10n.reviewStocktakeConfirmation(
                  isApproveLocation
                      ? context.l10n.approve
                      : context.l10n.reject,
                ),
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Insets.gutter),
              Form(
                key: formKey,
                child: EmrTextFormField(
                  binding: comments,
                  validator: (value) {
                    return Validators.length(value, max: 500);
                  },
                  labelText: context.l10n.comments,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        );
      },
      onAccept: () {
        if (formKey.currentState?.validate() ?? false) {
          return onApproveOrRejectStockTake(
            context,
            controller,
            stockTakeId,
            currentLevel,
            isApprove: isApproveLocation,
            comments: comments.value,
            onVoteSubmit: onVoteSubmit,
          );
        }
        return Future.value();
      },
    );
  }

  static Future<void> onApproveOrRejectStockTake(
    BuildContext context,
    ReviewStocktakeController controller,
    String stockTakeId,
    int? level, {
    required void Function() onVoteSubmit,
    bool isApprove = true,
    String? comments,
  }) async {
    controller.showLoader.value = true;
    final result = await controller.service.voteForStocktake(
      input: Input$ApproveOrRejectStocktakeApprovalInput(
        stocktakeId: stockTakeId,
        isApproved: isApprove,
        comment: comments ?? '',
        level: level ?? 0,
      ),
    );

    controller.showLoader.value = false;
    if (!context.mounted) return;
    Navigator.of(context).pop();
    if (result.success) {
      onVoteSubmit.call();
      await EmrModal.showMessageBar(
        context,
        isApprove
            ? context.l10n.stockTakeApproved
            : context.l10n.stockTakeRejected,
      );
    } else {
      await EmrModal.showMessageBar(
        context,
        HelperMethods.getErrorMessage(context, result),
        messageType: MessageBarTypes.error,
      );
    }
  }

  static String encodedStocktakeId(String ravenId) {
    final id = ravenId.replaceFirst('stocktakes/', '');
    return id.replaceAll('/', '-');
  }

  static String decodedStocktakeId(String encoded) {
    final decoded = encoded.replaceFirstN('-', '/', 2);
    return 'stocktakes/$decoded';
  }

  static String? getYardCodeFromId(String encoded) {
    final splitted = encoded.split('-');
    if (splitted.isEmpty || splitted.length == 1) {
      return null;
    }
    return splitted[1];
  }

  static String getWorkFlowTitle(
    BuildContext context,
    int key,
    String action,
    Map<int, String> titleMap,
  ) {
    if (titleMap.containsKey(key)) {
      return '${titleMap[key]} - $action';
    }
    return context.l10n.workflowStatus(key, action);
  }

  static Future<void> showLocationFullDetailsScreen(
    BuildContext context,
    StocktakeLocation location,
    ReviewStocktakeController controller,
  ) async {
    await EmrModal.showModalBottomSheetOrFlyout<void>(
      context,
      child: LocationApprovalDetail(location: location, controller: controller),
    );
  }

  static double calculateTotalWeight(
    List<LocationWeightModel> weights,
    Uom uom,
  ) {
    double totalWeight = 0;
    for (final weight in weights) {
      final grossWeight = weight.grossWeight?.convertWeight(uom).value ?? 0;
      final tareWeight = weight.tareWeight?.convertWeight(uom).value ?? 0;
      totalWeight += grossWeight - tareWeight;
    }
    return totalWeight;
  }

  static String toStatusString(
    BuildContext context,
    Enum$StocktakeStatus status,
  ) {
    switch (status) {
      case Enum$StocktakeStatus.OPEN:
        return context.l10n.open;
      case Enum$StocktakeStatus.IN_PROGRESS:
        return context.l10n.inProgress;
      case Enum$StocktakeStatus.AWAITING_APPROVAL:
        return context.l10n.awaitingApproval;
      case Enum$StocktakeStatus.DELETED:
        return context.l10n.deleted;
      case Enum$StocktakeStatus.COMPLETED:
        return context.l10n.completed;
      case Enum$StocktakeStatus.REJECTED:
        return context.l10n.rejected;
      case Enum$StocktakeStatus.FAILED:
        return context.l10n.failed;
      case Enum$StocktakeStatus.$unknown:
        return context.l10n.unknown;
    }
  }

  static String toFormattedDecimal(
    BuildContext context,
    double number,
    Uom uom, {
    bool showPlusSign = false,
  }) {
    final locale = Localizations.localeOf(context).toString();
    final decimalDigits = uom == Uom.mt ? 3 : 2;
    final formattedNumber = NumberFormat.decimalPatternDigits(
      decimalDigits: decimalDigits,
      locale: locale,
    ).format(number.absoluteIfZero);
    return showPlusSign && number > 0 ? '+$formattedNumber' : formattedNumber;
  }

  static String toFormattedWeight(
    BuildContext context,
    double number,
    Uom uom, {
    bool showPlusSign = false,
  }) {
    final value = toFormattedDecimal(
      context,
      number,
      uom,
      showPlusSign: showPlusSign,
    );
    return '$value ${uom.uomCode}';
  }

  static String toCurrency(
    BuildContext context,
    double value, {
    String currencyCode = 'GBP',
    bool showPlusSign = false,
  }) {
    final locale = Localizations.localeOf(context).toString();
    final formattedvalue = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale,
    ).format(value.absoluteIfZero);
    return showPlusSign && value > 0 ? '+$formattedvalue' : formattedvalue;
  }

  static void openCommentsDialog(
    BuildContext context,
    String stockTakeId,
    StocktakeLocation item,
    StocktakeService stockTakeSevice, {
    int? weightId,
  }) {
    final locationCommentsCount = ValueNotifier(item.comments.length);
    EmrDialog.modal<void>(
      context,
      titleText: context.l10n.comments,
      buttons: {},
      builder: (p0) {
        return Material(
          color: kIsWeb
              ? Theme.of(context).dialogTheme.backgroundColor
              : Theme.of(context).colorScheme.surface,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * (kIsWeb ? 0.35 : 0.9),
            height: MediaQuery.of(context).size.height * (kIsWeb ? 0.7 : 0.8),
            child: Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (context) => DefaultTabController(
                    length: 2,
                    initialIndex: weightId != null ? 1 : 0,
                    child: Column(
                      children: [
                        if (kIsWeb)
                          commentsTabBarForWeb(
                            context,
                            item,
                            locationCommentsCount,
                          ),
                        if (!kIsWeb)
                          commentsTabBarForMobile(
                            context,
                            item,
                            locationCommentsCount,
                          ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              LocationComments(
                                location: item,
                                stockTakeId: stockTakeId,
                                stockTakeService: stockTakeSevice,
                                locationCommentsCount: locationCommentsCount,
                              ),
                              WeightLines(
                                location: item,
                                stockTakeId: stockTakeId,
                                stockTakeService: stockTakeSevice,
                                weightId: weightId,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  static Widget commentsTabBarForMobile(
    BuildContext context,
    StocktakeLocation item,
    ValueNotifier<int> locationCommentsCount,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Insets.gutter * 2),
      ),
      elevation: 1,
      child: ValueListenableBuilder(
        valueListenable: locationCommentsCount,
        builder: (context, value, child) {
          return TabBar(
            indicator: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(Insets.gutter * 2),
            ),
            labelColor: Theme.of(context).colorScheme.surface,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: '${item.code} ($value)'),
              Tab(
                text:
                    '${context.l10n.weightLine}s '
                    '(${item.takenWeights.activeWeights().length})',
              ),
            ],
          );
        },
      ),
    );
  }

  static Widget commentsTabBarForWeb(
    BuildContext context,
    StocktakeLocation item,
    ValueNotifier<int> locationCommentsCount,
  ) {
    return ValueListenableBuilder(
      valueListenable: locationCommentsCount,
      builder: (context, value, child) {
        final weightLinesCount = item.takenWeights
            .whereNot(
              (x) =>
                  (x.captureMethod ==
                      Enum$StockTakeWeightCaptureMethod.ADJUSTED_MANUALLY) &&
                  x.isDeleted == null,
            )
            .length;
        return TabBar(
          indicatorColor: Theme.of(context).colorScheme.onSurface,
          labelColor: Theme.of(context).colorScheme.onSurface,
          tabs: [
            Tab(text: '${item.code} ($value)'),
            Tab(text: '${context.l10n.weightLine}s ($weightLinesCount)'),
          ],
        );
      },
    );
  }

  static Future<void> showWorkflowHistory(
    BuildContext context,
    StocktakeService service,
    StockTake stockTake,
  ) async {
    await EmrModal.showModalBottomSheetOrFlyout<void>(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.all(Insets.gutter),
            child: Text(
              '${context.l10n.workflowHistory} - ${stockTake.name}',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
          FutureBuilder(
            future: service.prepareWorkflowTimeline(
              stockTake: stockTake,
              context: context,
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError || snapshot.data == null) {
                  return Center(
                    child: Text(
                      context.l10n.anErrorOccurredTryAgain,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                return TimelineWidget(steps: snapshot.data!);
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
  }

  static String _getErrorMessage(BuildContext context, String errorCode) {
    final errorMessages = <String, String>{
      'STOCKTAKE_NOT_FOUND': context.l10n.stockTakeNotFound,
      'UPDATE_FAILED_STATUS_CONFLICT': context.l10n.stockTakeUpdateConflict,
      'DELETE_FAILED_STATUS_CONFLICT': context.l10n.stockTakeDeleteConflict,
      'REFRESH_SNAPSHOT_FAILED_STATUS_CONFLICT':
          context.l10n.stockTakeRefreshSnapshotConflict,
      'TRADE2_KEY_MISSING': context.l10n.stockTakeTrade2KeyMissing,
      'STOCKTAKE_LOCATION_NOT_FOUND': context.l10n.stockTakeLocationNotFound,
      'SNAPSHOT_NOT_FOUND': context.l10n.stockTakeSnapshotNotFound,
      'COMMENT_NOT_FOUND': context.l10n.stockTakeCommentNotFound,
      'USER_NOT_ALLOWED_TO_DELETE_COMMENT':
          context.l10n.stockTakeUserNotAllowedToDeleteComment,
      'STOCKTAKE_WEIGHT_NOT_FOUND': context.l10n.stockTakeWeightNotFound,
      'INVENTORY_LOCATION_NOT_FOUND':
          context.l10n.stockTakeInventoryLocationNotFound,
      'STOCKTAKE_OR_INVENTORY_LOCATION_NOT_FOUND':
          context.l10n.stockTakeOrInventoryLocationNotFound,
      'STOCKTAKE_APPROVAL_NOT_FOUND': context.l10n.stockTakeApprovalNotFound,
      'CONFLICT': context.l10n.stockTakeAlreadySubmitted,
      'RULE_NOT_FOUND': context.l10n.stockTakeWfRuleNotFound,
      'ALREADY_VOTED': context.l10n.stockTakeAlreadyVoted,
      'LEVEL_NOT_FOUND': context.l10n.stockTakeLevelNotFound,
      'UNAUTHORISED': context.l10n.stockTakeUnauthorized,
      'YARD_NOT_FOUND': context.l10n.stockTakeYardNotFound,
      'LEVEL_NOT_PROCESSED': context.l10n.stockTakeLevelNotProcessed,
      'EXCEPTION': context.l10n.anErrorOccurredTryAgain,
      'ERROR': context.l10n.anErrorOccurredTryAgain,
      'CANNOT_MOVE_UNSAVED_WEIGHT_LINE':
          context.l10n.cannotMoveUnsavedWeightLine,
    };

    return errorMessages[errorCode] ?? context.l10n.anErrorOccurredTryAgain;
  }

  static String getErrorMessage<T>(
    BuildContext context,
    StockTakeApiResponse<T> response,
  ) {
    return _getErrorMessage(context, response.errorCode);
  }
}
