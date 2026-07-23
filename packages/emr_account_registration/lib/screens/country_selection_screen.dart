import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountrySelectionScreen extends StatelessWidget with FullExtent {
  CountrySelectionScreen({
    required this.journeyController,
    required this.signupModel,
    super.key,
  });

  final JourneyController journeyController;
  final SignupModel signupModel;
  final _formKey = GlobalKey<FormState>();

  Future<CountryData?> _fetchData() async {
    final currentCountry = CountryData.getCountryData(
      signupModel.getLocatedAtCountryCode(),
    );
    if (currentCountry != null) {
      return currentCountry;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final countries = CountryData.getCounties(
      context,
    ).insertSelect(context.l10n.selectCountry);
    return FutureBuilder(
      future: _fetchData(),
      builder: (BuildContext ctx, AsyncSnapshot<CountryData?> snapshot) {
        if (ConnectionState.done == snapshot.connectionState) {
          final model = snapshot.data ?? countries[0];
          var canSubmit = false;
          return SignupLayout(
            runContext: signupModel.runContext,
            title: '',
            formKey: _formKey,
            onGoBack: () async {
              await journeyController.uiActions.onBackFromCountrySelection(
                journeyController,
                signupModel,
                context: context,
              );
            },
            widgets: [
              //Consumer Widget to listen for changes
              Consumer<ChangeNotifyingService>(
                builder: (context, dataBindingService, child) {
                  canSubmit =
                      signupModel.getLocatedAtCountryCode() !=
                          context.l10n.selectCountry &&
                      journeyController.validationService
                          .canSubmitFromCountrySelection(signupModel);
                  journeyController.refresh(signupModel);
                  return Column(
                    children: [
                      InputDecorator(
                        decoration:
                            InputDecorationService.getDropDownInputDecoration(
                              context.l10n.chooseYourCountry,
                              contentPadding: const EdgeInsets.all(
                                Insets.gutter / 2,
                              ),
                              theme: theme,
                            ),
                        child: Align(
                          child: CountryPicker(
                            countries: countries,
                            onChanged: (cnt) {
                              journeyController.dataBinding.setLocatedAtCountry(
                                cnt,
                                notify: true,
                              );
                            },
                            disable: false,
                            initialValue: model.shortName,
                            showFullName: true,
                            isIsPortraitMode: context.isInPortraitMode(),
                          ),
                        ),
                      ),
                      verticalSpacer(),
                      colouredButton(
                        text: context.l10n.continueForm,
                        style: canSubmit
                            ? EmrButtonStyles.cta()
                            : AccountRegistrationButtonStyles.disabled(theme),
                        onPressed: canSubmit
                            ? () async {
                                await journeyController.uiActions
                                    .onCountrySelected(
                                      journeyController,
                                      signupModel,
                                      context: context,
                                    );
                              }
                            : null,
                      ),
                      verticalSpacer(),
                      colouredButton(
                        text: context.l10n.cancel,
                        style: AccountRegistrationButtonStyles.secondaryCta(
                          theme,
                        ),
                        onPressed: () async {
                          await journeyController.uiActions
                              .onCancelFromCountrySelection(
                                journeyController,
                                signupModel,
                                context: context,
                              );
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          );
        } else {
          return processingIndicator();
        }
      },
    );
  }
}
