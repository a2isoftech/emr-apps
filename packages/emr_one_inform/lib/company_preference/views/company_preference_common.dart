import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/company_preference/controllers/company_preference_controller.dart';
import 'package:emr_one_inform/company_preference/views/overridable_preference_widget.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyPreferenceCommon extends BasePage<ICompanyPreferenceController> {
  CompanyPreferenceCommon({super.key});

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) => 'Company Preference';

  @override
  void initState(BuildContext context) {
    controller.getAllCompanyPreference();
    controller.getAllCompanies();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: EmrColours.primaryBlue),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Companies'),
                    _actionButtonAddSections(context),
                  ],
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: controller.companyPreferences
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(5),
                                child: InputChip(
                                  showCheckmark: false,
                                  selectedColor: FormAppColors.success,
                                  selected: controller.selectedCompanyPreference
                                          ?.companyCode ==
                                      e.companyCode!,
                                  label: Text(e.companyCode!),
                                  onPressed: () {
                                    controller
                                        .getCompanyPreference(e.companyCode!);
                                  },
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: EmrColours.primaryBlue),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Text(
                  '''Preferences${controller.selectedCompanyPreference != null ? ' (${controller.selectedCompanyPreference!.companyCode})' : ''}''',
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (controller.selectedCompanyPreference != null)
                            ...controller.selectedCompanyPreference!
                                .preferenceAsJson!.entries
                                .where((e) => e.key != 'OverrideTags')
                                .map(
                                  (e) => OverridablePreferenceWidget(
                                    key: ValueKey(
                                      e.key +
                                          (controller.selectedCompanyPreference!
                                                  .companyCode ??
                                              ''),
                                    ),
                                    isDefault: controller
                                            .selectedCompanyPreference!
                                            .companyCode ==
                                        'Default',
                                    parentModel: controller
                                        .selectedCompanyPreference!
                                        .preferenceAsJson!,
                                    currentModel: e,
                                    onStateChanged: () => setState(() {}),
                                    yards: controller.yards,
                                    overrideTags: (controller
                                            .selectedCompanyPreference!
                                            .preferenceAsJson!
                                            .entries
                                            .firstWhere(
                                              (e) => e.key == 'OverrideTags',
                                            )
                                            .value as List<dynamic>)
                                        .cast<String>(),
                                    defaultModel: controller
                                        .defaultCompanyPreference
                                        .preferenceAsJson!
                                        .entries
                                        .firstWhere((x) => x.key == e.key),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (controller.selectedCompanyPreference != null)
                  ElevatedButton.icon(
                    onPressed: () async {
                      await controller.save().then((value) async {
                        if (context.mounted) {
                          await showMessageDialog(
                            context: context,
                            messageType: MessageType.success,
                            message:
                                '''Preference saved for company code: ${controller.selectedCompanyPreference!.companyCode}''',
                          );
                        }
                      });
                    },
                    icon: const Icon(Icons.save),
                    label: const Text('Save'),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _actionButtonAddSections(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () async {
              final textController = TextEditingController();
              String? value;
              await showDialog<String>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Company Code'),
                  content: TypeAheadFormField<String>(
                    onSuggestionSelected: (suggestion) {
                      textController.text = suggestion;
                      value = suggestion;
                    },
                    itemBuilder: (context, itemData) =>
                        ListTile(title: Text(itemData)),
                    suggestionsCallback: (pattern) =>
                        controller.companies.where(
                      (e) => e.toLowerCase().contains(pattern.toLowerCase()),
                    ),
                    textFieldConfiguration: TextFieldConfiguration(
                      controller: textController,
                      decoration:
                          FormStyles.textFieldDecoration(context).copyWith(
                        labelText: 'Company Code',
                        hintText: 'Company Code',
                      ),
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => context.pop(value),
                      child: const Text('Ok'),
                    ),
                  ],
                ),
                barrierDismissible: false,
              ).then((companyCode) async {
                if (companyCode?.isEmpty ?? true) return;

                await controller.getCompanyPreference(companyCode!);
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(context.l10n.add),
                SvgPicture.asset(
                  FormAppAssetsPath.add,
                  package: FormAppStringLiteral.PackageName,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    FormAppColors.lightGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
