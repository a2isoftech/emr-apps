import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/constants/permission.dart';
import 'package:emr_one_stock_take/extensions/iterable_string_extensions.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:flutter/material.dart';

extension StocktakeSearchExtensions on String {
  Enum$StocktakeStatus facetTermToEnum$StocktakeStatus() =>
      switch (toLowerCase().replaceAll('_', '')) {
        ('completed') => Enum$StocktakeStatus.COMPLETED,
        ('inprogress') => Enum$StocktakeStatus.IN_PROGRESS,
        ('open') => Enum$StocktakeStatus.OPEN,
        ('awaitingapproval') => Enum$StocktakeStatus.AWAITING_APPROVAL,
        ('deleted') => Enum$StocktakeStatus.DELETED,
        ('failed') => Enum$StocktakeStatus.FAILED,
        ('rejected') => Enum$StocktakeStatus.REJECTED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };

  Enum$InventoryLocationType toInvLocationType() =>
      switch (toLowerCase().replaceAll('_', '')) {
        ('itemised') => Enum$InventoryLocationType.ITEMISED,
        ('weighted') => Enum$InventoryLocationType.WEIGHTED,
        _ => throw ArgumentError.value(
            this,
            'statusString',
            'Invalid status string',
          ),
      };
}

extension StocktakeExtension on Fragment$StocktakeSearchFields {
  StockTake toStockTake() {
    return StockTake(
      name: name,
      yardCode: yardCode,
      createdDate: created.at,
      modifiedDate: modified.at,
      conductedBy: conductedBy,
      status: status,
      originator: created.userName,
      originatorId: created.userInfoId,
      id: id,
      productFamily: productFamily,
      currencyCode: currencyCode,
      locations: [],
      defaultUom: defaultUom,
    );
  }

  String workFlowStatus(BuildContext context, Map<int, String> titleMap) {
    if (isRoutineCheck) {
      return context.l10n.notApplicableRoutineCheck;
    }

    if (status == Enum$StocktakeStatus.COMPLETED) {
      return context.l10n.completed;
    }

    if (workflow != null) {
      switch (workflow!.stocktakeStatus) {
        case Enum$StocktakeApprovalStatus.APPROVED:
          return context.l10n.completed;
        case Enum$StocktakeApprovalStatus.PENDING:
          return HelperMethods.getWorkFlowTitle(
            context,
            workflow!.currentLevel,
            context.l10n.pending,
            titleMap,
          );
        case Enum$StocktakeApprovalStatus.REJECTED:
          return HelperMethods.getWorkFlowTitle(
            context,
            workflow!.currentLevel,
            context.l10n.rejected,
            titleMap,
          );
        case Enum$StocktakeApprovalStatus.NOT_STARTED:
        case Enum$StocktakeApprovalStatus.$unknown:
          return context.l10n.notStarted;
      }
    }

    return context.l10n.notStarted;
  }
}

extension StocktakeStatusExtension on Enum$StocktakeStatus {
  String toStatusString(BuildContext context) {
    switch (this) {
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
}

extension StocktakeModelExtension on StockTake {
  bool canApprove(BuildContext context, String loggedInUserEmail) {
    return status == Enum$StocktakeStatus.AWAITING_APPROVAL &&
        currentWfEmails.containsIgnoreCase(loggedInUserEmail) &&
        !isVotedCurrentLevel;
  }

  bool canOpenReviewScreen(BuildContext context, String loggedInUserEmail) {
    return (status == Enum$StocktakeStatus.AWAITING_APPROVAL ||
            status == Enum$StocktakeStatus.COMPLETED) &&
        (context.userHasPermission(StockTakePermissions.reviewStocktake) ||
            currentWfEmails.containsIgnoreCase(loggedInUserEmail));
  }
}
