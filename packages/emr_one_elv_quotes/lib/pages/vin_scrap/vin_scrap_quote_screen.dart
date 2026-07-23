import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_elv_core/widgets/elv_wrapper.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class VINScrapQuoteScreen extends StatefulWidget {
  const VINScrapQuoteScreen({super.key});

  @override
  State<VINScrapQuoteScreen> createState() => _VINScrapQuoteScreenState();
}

class _VINScrapQuoteScreenState extends State<VINScrapQuoteScreen> {
  late final ValueNotifier<String> makeVN;
  late final ValueNotifier<String> modelVN;
  late final ValueNotifier<int?> yearVN;
  late final ValueNotifier<double> engineSizeVN;

  late final Signal<bool> _isFormValid;
  final GlobalKey<FormState> _form1Key = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    makeVN = ValueNotifier('');
    modelVN = ValueNotifier('');
    yearVN = ValueNotifier(null);
    engineSizeVN = ValueNotifier(0);
    _isFormValid = Signal(false);

    makeVN.addListener(_changeValueListener);
    modelVN.addListener(_changeValueListener);
    yearVN.addListener(_changeValueListener);
    engineSizeVN.addListener(_changeValueListener);
    _setYard();
  }

  @override
  void dispose() {
    makeVN.removeListener(_changeValueListener);
    modelVN.removeListener(_changeValueListener);
    yearVN.removeListener(_changeValueListener);
    engineSizeVN.removeListener(_changeValueListener);

    makeVN.dispose();
    modelVN.dispose();
    yearVN.dispose();
    engineSizeVN.dispose();

    super.dispose();
  }

  void _changeValueListener() {
    if (_form1Key.currentState!.validate()) {
      _isFormValid.value = true;
      return;
    }

    _isFormValid.value = false;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<VINScrapController>(context);    
    final vin = controller.vinController.text;
    final isShortVIN =
        !(vin.length == ElvConstants.standardVinLength) &&
        (vin.isNotEmpty) &&
        (controller.activeTerritory == ElvTerritory.usa);

    return Form(
      key: _form1Key,
      child: ElvScreenWrapper(
        header: const VinScrapHeader(),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: Insets.gutter / 2),
                      child: Text(
                        controller.activeTerritory.getScrapText(context),
                        style: EmrOneConstants.kMediumHeadingTextStyle,
                      ),
                    ),
                    if (controller.state.otherYards.length > 1)
                      ChangeYard(controller: controller),
                    if (controller.activeTerritory == ElvTerritory.uk)
                      AccountInputField(
                        accountService: controller.accountService,
                        defaultTerritoryCode: controller.activeTerritory
                            .territoryCode(),
                        onAccountSelected: controller.setAccount,
                        controller: controller.accountSelectController,
                      ),
                    const VinInputField(),
                    const LoadingIndicator(),
                    const VehicleList(),
                    const SizedBox(height: Insets.gutter),

                    if (isShortVIN)
                      VehicleDetailWidget(
                        engineSizeVN: engineSizeVN,
                        makeVN: makeVN,
                        modelVN: modelVN,
                        yearVN: yearVN,
                      ),
                    Watch(
                      (context) => OutlinedButton(
                        onPressed: (!_isFormValid.value && isShortVIN)
                            ? null
                            : (_enableConfirmButton(controller)
                                  ? () {
                                      EmrDialog.busy(
                                        context,
                                        titleText:
                                            context.l10n.sendingToInspection,
                                      );

                                      controller
                                          .createBatchQuote(
                                            isShortVIN:  isShortVIN,
                                            make: makeVN.value,
                                            model: modelVN.value,
                                            year: yearVN.value,
                                            engineSize: engineSizeVN.value,
                                          )
                                          .then((value) {
                                            if (context.mounted) {
                                              context.pop();
                                            }

                                            if (!value) {
                                              if (context.mounted) {
                                                EmrDialog.ok(
                                                  context,
                                                  titleText:
                                                      controller
                                                          .state
                                                          .apiErrorMessage
                                                          .isEmpty
                                                      ? context
                                                            .l10n
                                                            .pleaseTryAgain
                                                      : controller
                                                            .state
                                                            .apiErrorMessage,
                                                );
                                              }
                                              controller.state.apiErrorMessage =
                                                  '';
                                            }
                                          });
                                    }
                                  : null),
                        child: Text(context.l10n.confirm),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _enableConfirmButton(VINScrapController controller) {
    final descriptions = controller.state.vehicleDescriptions;
    if (descriptions.isEmpty) return false;

    final isUk = controller.activeTerritory == ElvTerritory.uk;
    final isUsa = controller.activeTerritory == ElvTerritory.usa;

    // must have an account selected if in UK
    if (controller.state.account == null && isUk) {
      return false;
    }

    for (final v in descriptions) {
      // Block quoting of EV/Hybrid Vehicles in US when elvUsaTreatHybridAsNonQuotable is set
      if (isUsa &&
          v.vehicleType == VehicleType.hasFlaggedFuelType &&
          controller.appConfig.ffExperiments.contains(
            ElvConstants.elvUsaTreatHybridAsNonQuotable,
          )) {
        return false;
      }

      // Block quoting of NonQuotable Vehicles except in the UK when
      // elvUkAllowNonQuotable is set
      if ((v.vehicleType == VehicleType.hasFlaggedBodyType && isUsa) ||
          (v.vehicleType == VehicleType.hasFlaggedBodyType &&
              isUk &&
              !controller.appConfig.ffExperiments.contains(
                ElvConstants.elvUkAllowNonQuotable,
              ))) {
        return false;
      }
    }

    return true;
  }

  void _setYard() {
    final settingsController =
        Provider.of<BaseSettingsController>(context, listen: false)
            as SettingsController;
    final controller = Provider.of<VINScrapController>(context, listen: false);

    controller.setYard(settingsController);
  }
}
