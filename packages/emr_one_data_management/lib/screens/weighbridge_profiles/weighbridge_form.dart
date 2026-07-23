import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/models/document.dart';
import 'package:emr_core_api/services/inventory_services/location_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeighbridgeForm extends StatefulWidget {
  const WeighbridgeForm({
    required this.profileId,
    required this.userInfoService,
    this.clone,
    super.key,
  });

  final String profileId;
  final bool? clone;
  final UserInfoService userInfoService;

  @override
  State<WeighbridgeForm> createState() => _WeighbridgeForm();
}

class _WeighbridgeForm extends State<WeighbridgeForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  WeighbridgeFormData? _model;

  String? _changeVector;

  ValueNotifier<bool> isFormValid = ValueNotifier<bool>(true);

  late final UomService _uomService;

  final ValueNotifier<List<Uom>> uoms = ValueNotifier([]);
  final ValueNotifier<List<String>> ticketPrintTemplates = ValueNotifier([]);
  final ValueNotifier<List<String>> yardWeighbridgeGroups = ValueNotifier([]);
  @override
  void initState() {
    super.initState();

    _uomService = Provider.of<UomService>(context, listen: false);
  }

  @override
  void dispose() {
    removeListeners();

    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
      future: _loadProfile(buildContext),
      builder: (context, snapshot) {
        return Form(
          key: _formKey,
          child: (snapshot.connectionState != ConnectionState.done)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (_model == null)
                  ? Center(
                      child: Text(context.l10n.weighbridgeProfileNotFound),
                    )
                  : EmrTabBarVerticalView(
                      onSave: () async {
                        await _onWeighbridgeProfileSave(context);
                      },
                      onCancel: () => context.pop(),
                      children: [
                        WeighbridgeBasicCard(
                          title: context.l10n.basic,
                          context: context,
                          model: _model!,
                          uomService: _uomService,
                          userInfoService: widget.userInfoService,
                          uoms: uoms,
                          yardWeighbridgeGroups: yardWeighbridgeGroups,
                        ),
                        WeighbridgeScaleCards(
                          title: context.l10n.scales,
                          scaleCards: _model!.scales,
                          addScale: addScale,
                          deleteScale: deleteScale,
                          addCamera: addCamera,
                          deleteCamera: deleteCamera,
                        ),
                        WeighbridgeTicketPrintCards(
                          title: context.l10n.ticketPrints,
                          ticketPrints: _model!.ticketPrints,
                          ticketPrintTemplates: ticketPrintTemplates,
                          addTicketPrint: addTicketPrint,
                          deleteTicketPrint: deleteTicketPrint,
                        ),
                      ],
                    ),
        );
      },
    );
  }

  Future<void> _onWeighbridgeProfileSave(BuildContext context) async {
    if (_formKey.currentState?.validate() == false) {
      isFormValid.value = false;
      await EmrModal.showMessageBar(
        context,
        context.l10n.correctTheValidationErrors,
        messageType: MessageBarTypes.error,
      );

      return;
    }

    if (_model!.id.value.isEmpty || (widget.clone ?? false)) {
      _model!.id.value =
          'weighbridgeProfiles/${_model!.yard.value!.yardCode}/${_model!.name.value.toDocumentId}';
    }

    final weighbridgeProfile = _model!.toWeighbridgeProfile();

    final result = await context.coreApi.referenceData.saveWeighbridgeProfile(
      profileDocument: Document(
        entity: weighbridgeProfile,
        changeVector: _changeVector ?? '',
      ),
    );

    if (result.success == false) {
      if (!context.mounted) {
        return;
      }

      await EmrModal.showMessageBar(
        context,
        result.message,
        messageType: MessageBarTypes.error,
      );

      return;
    }

    if (!context.mounted) {
      return;
    }

    await EmrModal.showMessageBar(
      context,
      context.l10n.successfullySaved,
    ).then(
      (_) {
        if (!context.mounted) {
          return;
        }

        context.pop();
      },
    );
  }

  Future<void> _loadProfile(BuildContext context) async {
    final templateNamesResponse =
        await context.coreApi.referenceData.ticketPrintTemplates();
    ticketPrintTemplates.value = templateNamesResponse.success
        ? List<String>.from(templateNamesResponse.data ?? [])
        : <String>[];

    if (widget.profileId.endsWith(EmrOneDataManagementConstants.kEmptyGuid)) {
      _model = WeighbridgeFormData.fromNew();
      _setDefaultValues();
      _changeVector = null;
    } else if (context.mounted) {
      final response = await context.coreApi.referenceData
          .getWeighbridgeProfile(id: widget.profileId);

      if (response.success) {
        _model = WeighbridgeFormData.fromWeighbridgeProfile(
          response.data!.entity,
        );
        await _validateSelectedYardFields();
        updateUoms();
        await _updateYardWeighbridgeGroups();
        _changeVector = response.data!.changeVector;

        if (widget.clone ?? false) {
          _model!.id.value = '';
          _model!.name.value = '';
          _changeVector = null;
          _setDefaultValues();
        }
      } else if (context.mounted) {
        await EmrModal.showMessageBar(
          context,
          response.message,
          messageType: MessageBarTypes.error,
        );
        return;
      }
    }
    if (context.mounted) {
      await addListeners(context);
    }
  }

  void _setDefaultValues() {
    _model!.piPrintApiKey.value = 'C5BFF7F0-B4DF-475E-A331-F737424F013C';
  }

  void removeListeners() {
    _model?.roundingType.removeListener(_onRoundingTypeChanged);
    _model?.yard.removeListener(_onYardChanged);
    _model?.canMode.value.product.removeListener(_onCanModeProductChanged);
    _model?.techemetCatSettings.value.defaultProduct
        .removeListener(_onTechemetCatDefaultProductChanged);
    _model?.elvSettings.value.product.removeListener(_onElvProductChanged);
    _model?.canMode.value.enabled.removeListener(_onCanModeEnabledChanged);
    _model?.techemetCatSettings.value.enabled
        .removeListener(_onTechemetCatEnabledChanged);
  }

  Future<void> addListeners(BuildContext context) async {
    if (_model == null) {
      return;
    }

    _model!.roundingType.addListener(_onRoundingTypeChanged);

    _model!.yard.addListener(_onYardChanged);

    _model!.techemetCatSettings.value.enabled
        .addListener(_onTechemetCatEnabledChanged);

    _model!.canMode.value.enabled.addListener(_onCanModeEnabledChanged);

    _model!.elvSettings.value.product.addListener(_onElvProductChanged);

    _model!.techemetCatSettings.value.defaultProduct
        .addListener(_onTechemetCatDefaultProductChanged);

    _model!.canMode.value.product.addListener(_onCanModeProductChanged);
  }

  void _onTechemetCatEnabledChanged() {
    _model!.fieldsConfigurations.value.enableTechmetCatSettingsLocation.value =
        _model!.techemetCatSettings.value.enabled.value &&
            _model!.fieldsConfigurations.value.yardSelected.value;
    validateForm();
  }

  void _onCanModeEnabledChanged() {
    _model!.fieldsConfigurations.value.enableCanModeLocation.value =
        _model!.canMode.value.enabled.value &&
            _model!.fieldsConfigurations.value.yardSelected.value;
    validateForm();
  }

  Future<void> _onElvProductChanged() async {
    _model!.elvSettings.value.location.value = await getLocation(
      context,
      _model!.yard.value?.yardCode ?? '',
      _model!.elvSettings.value.product.value,
    );
  }

  Future<void> _onTechemetCatDefaultProductChanged() async {
    _model!.techemetCatSettings.value.defaultLocation.value = await getLocation(
      context,
      _model!.yard.value?.yardCode ?? '',
      _model!.techemetCatSettings.value.defaultProduct.value,
    );
  }

  Future<void> _onCanModeProductChanged() async {
    _model!.canMode.value.location.value = await getLocation(
      context,
      _model!.yard.value?.yardCode ?? '',
      _model!.canMode.value.product.value,
    );
  }

  void _onRoundingTypeChanged() {
    if (_model == null) {
      return;
    }

    if (_model!.roundingType.value == RoundingOption.noRounding) {
      _model!.roundingPrecision.value = null;
    }
  }

  Future<void> _onYardChanged() async {
    await _validateSelectedYardFields();

    _model!.territoryCode.value =
        _model!.yard.value?.company?.territory?.code ?? '';
    _model!.currency.value =
        _model!.yard.value?.company?.territory?.currencyCode ?? '';
    _model!.fieldsConfigurations.value.yardSelected.value =
        _model!.yard.value?.id?.isNotEmpty ?? false;

    _model!.fieldsConfigurations.value.enableTechmetCatSettingsLocation.value =
        _model!.techemetCatSettings.value.enabled.value &&
            _model!.fieldsConfigurations.value.yardSelected.value;
    _model!.fieldsConfigurations.value.enableCanModeLocation.value =
        _model!.canMode.value.enabled.value &&
            _model!.fieldsConfigurations.value.yardSelected.value;
    updateUoms();
    await _updateYardWeighbridgeGroups();
    await validateForm();
  }

  Future<void> _validateSelectedYardFields() async {
    if (_model!.yard.value != null && context.mounted) {
      final missingFields = <String>[];
      if (_model!.yard.value?.company == null) {
        missingFields.add(context.l10n.company);
      } else if (_model!.yard.value?.company?.territory == null) {
        missingFields.add(context.l10n.territory);
      } else {
        if (_model!.yard.value?.company?.territory?.code.isEmpty ??
            true) {
          missingFields.add(context.l10n.territoryCode);
        }
        if (_model!.yard.value?.company?.territory?.currencyCode?.isEmpty ??
            true) {
          missingFields.add(context.l10n.currencyCode);
        }
      }
      if (missingFields.isNotEmpty) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.notFoundForTheSelectedYard(missingFields.join(', ')),
          messageType: MessageBarTypes.error,
        );
      }
    }
  }

  Future<void> _updateYardWeighbridgeGroups() async {
    yardWeighbridgeGroups.value = await _getYardWeighbridgeGroups();
  }

  Future<List<String>> _getYardWeighbridgeGroups() async {
    {
      final groupsResposne =
          await context.coreApi.referenceData.searchWeighbridgeGroups(
        yardCodes:
            _model!.yard.value != null ? [_model!.yard.value!.yardCode] : null,
      );
      if (groupsResposne.success && groupsResposne.data != null) {
        return groupsResposne.data!.$1
            .expand((wg) => wg.group)
            .toSet()
            .toList();
      }
      return [];
    }
  }

  Future<void> validateForm() async {
    if (!isFormValid.value) {
      _formKey.currentState?.validate();
    }
  }

  void updateUoms() {
    final territory =
        _model!.yard.value?.company?.territory?.code ?? '';

    uoms.value = territory.isEmpty
        ? <Uom>[]
        : _uomService.getUoms(
            territory,
          );
  }

  Future<InventoryLocation> getLocation(
    BuildContext context,
    String yardCode,
    ProductData? product,
  ) async {
    InventoryLocation? location;

    if (product != null) {
      final fetchedLocations =
          await context.coreApi.inventoryService.getLocations(
        yardCode: yardCode,
        productCode: product.code.value,
        pattern: product.code.value,
      );

      location = fetchedLocations.firstWhereOrNull(
        (l) =>
            (l.productId == product.id.value) && (l.code == product.code.value),
      );
    }
    return location ?? InventoryLocation.none();
  }

  void addScale() {
    _model!.scales.value = [
      ..._model!.scales.value,
      WeighbridgeScaleData(
        name: '',
        url: '',
        assetCode: '',
        scaleNumber: _model!.scales.value.length + 1,
        cameras: [],
      ),
    ];
  }

  void deleteScale(WeighbridgeScaleData scale) {
    _model!.scales.value =
        _model!.scales.value.where((x) => x != scale).toList();
  }

  void addCamera(WeighbridgeScaleData scale) {
    scale.cameras.value = [
      ...scale.cameras.value,
      WeighbridgeScaleCameraData(
        name: '',
        imageUrl: '',
        videoUrl: '',
        overlayUrl: '',
        ipAddress: '',
        userName:'',
        password:'',
      ),
    ];
  }

  void deleteCamera(WeighbridgeScaleCameraData camera) {
    final scale = _model!.scales.value.firstWhere(
      (scale) => scale.cameras.value.contains(camera),
    );

    scale.cameras.value =
        scale.cameras.value.where((x) => x != camera).toList();
  }

  void addTicketPrint() {
    _model!.ticketPrints.value = [
      ..._model!.ticketPrints.value,
      WeighbridgeProfileTicketPrintData(
        name: '',
        headerText: '',
        printer: WeighbridgeProfileTicketPrintPrinterData(
          name: '',
          url: '',
        ),
        templateName: '',
      ),
    ];
  }

  void deleteTicketPrint(WeighbridgeProfileTicketPrintData ticketPrint) {
    _model!.ticketPrints.value =
        _model!.ticketPrints.value.where((x) => x != ticketPrint).toList();
  }
}
