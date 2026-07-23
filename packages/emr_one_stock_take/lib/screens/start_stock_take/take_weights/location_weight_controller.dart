import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/scales/emr_scale_controller.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/models/stock_take_scale_local_storage.dart';
import 'package:emr_one_stock_take/services/shared_preferences_service.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LocationWeightController {
  LocationWeightController({
    required this.sharedPreferenceService,
    required this.stocktakeService,
    required this.apimBaseUrl,
  });

  final StocktakeService stocktakeService;
  final SharedPreferencesService sharedPreferenceService;
  final String apimBaseUrl;
  final ValueNotifier<StocktakeScale?> activeScale = ValueNotifier(null);
  final ValueNotifier<LocationWeightModel?> activeWeight = ValueNotifier(null);

  final formKey = GlobalKey<FormState>();
  late List<LocationWeightModel> weights = [];

  final bulkUpdateWeighedBy = ValueNotifier<User?>(null);
  final bulkUpdateWeighedDateTime = ValueNotifier<DateTime?>(null);
  final bulkUpdateUomValue = ValueNotifier<Uom?>(null);

  final showLoader = signal(false);
  List<StocktakeScale> scales = [];

  Future<StockTakeApiResponse<List<LocationWeightModel>>> addStocktakeWeight(
    String locationId,
    String stockTakeId,
    List<LocationWeightModel> locationWeights,
  ) async {
    final weights = mapLocationWeights(locationWeights);
    final weightsInput = Input$AddStocktakeWeightInput(
      locationId: locationId,
      stocktakeId: stockTakeId,
      locationWeightInputs: weights,
    );
    final response = await stocktakeService.addStocktakeWeight(weightsInput);
    return response;
  }

  List<Input$LocationWeightInput> mapLocationWeights(
    List<LocationWeightModel> locationWeights,
  ) {
    final weights = locationWeights.map((toElement) {
      return Input$LocationWeightInput(
        id: toElement.id,
        title: toElement.title,
        grossWeight: Input$UomValueInput(
          uom: Enum$Uom.fromJson(
            toElement.grossWeight?.uom.name.toUpperCase() ??
                AppConstants.defaultUom,
          ),
          value: toElement.grossWeight?.value ?? 0,
          isRate: toElement.grossWeight?.isRate ?? false,
        ),
        tareWeight: Input$UomValueInput(
          uom: Enum$Uom.fromJson(
            toElement.tareWeight?.uom.name.toUpperCase() ??
                AppConstants.defaultUom,
          ),
          value: toElement.tareWeight?.value ?? 0,
          isRate: toElement.tareWeight?.isRate ?? false,
        ),
        grossWeightScaleIdentifier: toElement.grossWeightScaleIdentifier,
        tareWeightScaleIdentifier: toElement.tareWeightScaleIdentifier,
        grossWeightSerialNumber: toElement.grossWeightSerialNumber,
        tareWeightSerialNumber: toElement.tareWeightSerialNumber,
        isDeleted: toElement.isDeleted,
        weighedDateTime: toElement.weighedDateTime?.toUtc(),
        captureMethod: toElement.captureMethod,
      );
    }).toList();
    return weights;
  }

  Future<void> showSubmitForApprovalConfirmation(
    BuildContext context,
    int remainingCount,
    Future<void> Function() onAccept, {
    bool isWeb = false,
    bool isRoutineCheck = false,
  }) async {
    final submitOrCompleteStocktakeConfirmation = isRoutineCheck
        ? context.l10n.stockTakeCompleteConfirmation
        : context.l10n.stockTakeSubmitForApprovalConfirmation;
    await EmrDialog.modal<String>(
      context,
      titleText: isRoutineCheck
          ? context.l10n.completeStockTakeNoStockImpact
          : context.l10n.submitForApproval,
      dialogMode: DialogMode.compact,
      builder: (BuildContext dialogContext) {
        return SizedBox(
          width: isWeb ? null : MediaQuery.of(context).size.width * 0.7,
          child: Text(
            remainingCount > 0
                ? context.l10n.stockTakePendingLocationsConfirmation(
                    isRoutineCheck
                        ? context.l10n.completeStocktake
                        : context.l10n.submitForApproval,
                    remainingCount,
                  )
                : submitOrCompleteStocktakeConfirmation,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        );
      },
      acceptLabel: context.l10n.confirm,
      onAccept: () => onAccept.call(),
    );
  }

  String getApimScaleUrl(String scaleUrl, String authToken) {
    final scaleUri = Uri.tryParse(scaleUrl);
    if (scaleUri == null) {
      return '';
    }
    final baseUri = Uri.parse(apimBaseUrl);

    final apimScaleUrl = baseUri.replace(
      pathSegments: [...baseUri.pathSegments, 'piweigh'],
      queryParameters: {
        'hostname': scaleUri.host,
        'port': scaleUri.port.toString(),
        'token': authToken,
      },
    );
    return apimScaleUrl.toString();
  }

  EmrScaleController newScaleController() {
    return EmrScaleController(
      scale: Scale(
        url: '',
        assetCode: '',
        cameras: [],
        name: '',
        scaleNumber: 1,
      ),
    );
  }

  List<StocktakeScale> mapToScales(List<WeighbridgeProfile> profiles) {
    return profiles
        .expand(
          (profile) => profile.scales.map(
            (s) => StocktakeScale(
              name: s.name,
              url: s.url,
              scaleNumber: s.scaleNumber,
              cameras: s.cameras
                  .map(
                    (c) => Camera(
                      name: c.name,
                      imageUrl: c.imageUrl ?? '',
                      videoUrl: c.videoUrl ?? '',
                      userName: c.userName,
                      password: c.password,
                    ),
                  )
                  .toList(),
              assetCode: s.assetCode,
              profile: profile.name,
              knownTares: profile.knownTares
                  .map(
                    (x) => WeightDeduction(
                      value: UomValue.fromValue(
                        x.value.value,
                        x.value.uom,
                      ),
                      comments: x.comments,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
        .toList();
  }

  List<StocktakeScale> searchScales(String query) {
    return scales
        .where((s) => s.name.toUpperCase().contains(query.toUpperCase()))
        .toList();
  }

  Future<void> getLastSelectedScale(String stockTakeId) async {
    final lastScale = await sharedPreferenceService.getLastUsedScale(
      stockTakeId,
    );

    if (lastScale != null) {
      final scale = scales.firstWhereOrNull(
        (s) => s.key == lastScale.lastUsedScale,
      );
      activeScale.value = scale;
    }
  }

  void setLastSelectedScale(String stockTakeId, String? scaleIdentifier) {
    if (scaleIdentifier != null) {
      sharedPreferenceService.setLastUsedScale(
        StockTakeScaleLocalStorage(
          lastUsedScale: scaleIdentifier,
          id: stockTakeId,
        ),
      );
    }
  }
}
