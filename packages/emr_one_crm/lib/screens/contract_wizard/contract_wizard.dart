import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contract_wizard/contract_wizardmobile.dart';
import 'package:emr_one_crm/services/contract_controller.dart';
import 'package:emr_one_crm/services/haulage_price_matrix_service.dart';
import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:emr_one_wizard/emr_one_wizard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class ContractWizard extends StatefulWidget with AppBarExtender {
  ContractWizard({
    required this.contractController,
    super.key,
    this.contractHeaderId,
  });

  factory ContractWizard.create({
    required SettingsController settingsController,
    required String partyAccountNo,
    required BaseClient client,
    required bool isSpot,
    required bool isClone,
    required ContractsProvider contractsProvider,
    required AppConfig appConfig,
    required BuildContext context,
    int? contractHeaderId,
    bool isEditing = false,
  }) {
    final wizardMobileSteps = [
      EOWizardStep(isPage: false, title: context.l10n.overview),
      EOWizardStep(title: context.l10n.contractHeader),
      EOWizardStep(title: context.l10n.deliveryMethod),
      EOWizardStep(title: context.l10n.selectGrades),
      EOWizardStep(title: context.l10n.summary),
      EOWizardStep(title: context.l10n.initialising),
      EOWizardStep(title: context.l10n.processing),
      EOWizardStep(title: context.l10n.complete),
    ];
    final userInfoService = Provider.of<UserInfoService>(
      context,
      listen: false,
    );
    final httpClient = Provider.of<BaseClient>(context);
    final config = Provider.of<AppConfig>(context, listen: false);

    final haulagePriceMatrixService = HaulagePriceMatrixService(
      config: config,
      httpClient: httpClient,
    );

    final contractController = ContractController(
      settingsController,
      partyAccountNo,
      client,
      isSpot: isSpot,
      isClone: isClone,
      contractsProvider,
      contractHeaderId,
      wizardMobileSteps,
      appConfig,
      isEditing: isEditing,
      userInfoService: userInfoService,
      haulagePriceMatrixService: haulagePriceMatrixService,
    );

    return ContractWizard(
      contractController: contractController,
      contractHeaderId: contractHeaderId,
    );
  }

  final ContractController contractController;
  final int? contractHeaderId;

  @override
  bool hideDefaultAppBar() => true;

  @override
  State<ContractWizard> createState() => _ContractWizardState();
}

class _ContractWizardState extends State<ContractWizard> {
  late final GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    // These keys are set on the controller, so they can be retrieved in
    // the various sub-form widget's and used to set a specific key for
    // each section of the form. The keys are then used in the validation
    // logic to cause the form to scroll to whichever heading matches the
    // first validation error.

    //Below to skip the path select on Fixed for now, to be removed later.
    if (!widget.contractController.isSpot) {
      widget.contractController.isGplCreate.value = false;
      if (widget.contractController.appConfig.isWeb) {
        widget.contractController.gotoStep(1);
      }
    }

    formKey = GlobalKey<FormState>();
    widget.contractController.gplIssueReferenceKey = GlobalKey(
      debugLabel: 'gplRef',
    );
    widget.contractController.orderBookKey = GlobalKey(debugLabel: 'orderBook');
    widget.contractController.depotKey = GlobalKey(debugLabel: 'depot');
    widget.contractController.arisignPointKey = GlobalKey(
      debugLabel: 'arising',
    );
    widget.contractController.dateSelectKey = GlobalKey(debugLabel: 'date');
    widget.contractController.deliveryMethodKey = GlobalKey(
      debugLabel: 'delivery',
    );
    widget.contractController.loadsKey = GlobalKey(debugLabel: 'loads');
    widget.contractController.gradesKey = GlobalKey(debugLabel: 'grades');
    widget.contractController.addGradesKey = GlobalKey(
      debugLabel: 'addGradesButton',
    );
    widget.contractController.gradesInvalidKey = GlobalKey(
      debugLabel: 'gradesInvalidKey',
    );
    widget.contractController.pricingInvalidKey = GlobalKey(
      debugLabel: 'pricingInvalidKey',
    );
    widget.contractController.haulageChargeKey = GlobalKey(
      debugLabel: 'haulageCharge',
    );
    widget.contractController.internalLMEKey = GlobalKey(
      debugLabel: 'internalLME',
    );
    widget.contractController.freightRateskey = GlobalKey(
      debugLabel: 'freightRateskey',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ContractWizardMobile(
      contractController: widget.contractController,
      formKey: formKey,
    );
  }
}
