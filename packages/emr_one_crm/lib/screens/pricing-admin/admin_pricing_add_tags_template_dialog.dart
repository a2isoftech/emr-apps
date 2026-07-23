import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_add_tags_category_dialog.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:flutter/material.dart';

class AdminPricingAddTagsTemplateDialog extends StatefulWidget {
  const AdminPricingAddTagsTemplateDialog({
    required this.coreapiService,
    required this.accountPrices,
    required this.settingsController,
    super.key,
  });

  final CoreApiService coreapiService;
  final List<AccountPrice> accountPrices;
  final SettingsController settingsController;

  @override
  State<AdminPricingAddTagsTemplateDialog> createState() =>
      _AdminPricingAddTagsTemplateDialog();
}

class _AdminPricingAddTagsTemplateDialog
    extends State<AdminPricingAddTagsTemplateDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formData = _FormModel();
  late bool _loading = false;

  @override
  void dispose() {
    _formData.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(
        context.l10n.addTagTenplatePrices,
        style: Theme.of(
          context,
        ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      content: _buildContent(context),
      actions: _getActions(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: EmrPickerFormField(
                      labelText: context.l10n.category,
                      validator: Validators.required,
                      binding: _formData.category,
                      itemTitleText: (template) => template.name,
                      items: (item) {
                        return widget.coreapiService.pricingService
                            .getTagCategories(
                              territoryIds: [
                                'territories/${widget.settingsController.territory}',
                              ],
                            );
                      },
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () async {
                    final output = await _showAddTagCategoryDialog(context);
                    _formData.category.value = output;
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: EmrTextFormField(
                labelText: context.l10n.reason,
                binding: _formData.reason,
                validator: Validators.required,
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _formData.errorMessage,
              builder: (context, value, _) {
                if (value == null) return Container();

                return Padding(
                  padding: const EdgeInsets.only(top: Insets.gutter),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getActions(BuildContext context) => [
    TextButton(
      onPressed: () => context.pop(),
      child: Text(context.l10n.cancel),
    ),
    if (_loading)
      const CircularProgressIndicator()
    else
      TextButton(
        onPressed: () async {
          if (_formData.reason.value!.toLowerCase().contains(
                CrmDeliveryMethod.collected.name,
              ) ||
              _formData.reason.value!.toLowerCase().contains(
                EmrOneCrmConstants.legacy.toLowerCase(),
              ) ||
              _formData.reason.value!
                  .replaceAll(' ', '')
                  .toLowerCase()
                  .contains(EmrOneCrmConstants.systemGenerated.toLowerCase())) {
            _formData.errorMessage.value = context.l10n.reservedKeyWordsError;
            return;
          }
          setState(() {
            _loading = true;
          });
          final output = await _createTagTemplate();
          setState(() {
            _loading = false;
          });
          if (context.mounted) {
            if (output.$1 != null) {
              context.pop();
            } else {
              _getTagReasonAlreadyExistsError(context, output.$2);
            }
          }
        },
        child: Text(context.l10n.save),
      ),
  ];

  Future<(TagTemplateOutput?, List<String?>?)> _createTagTemplate() async {
    if (_formKey.currentState?.validate() ?? false) {
      return widget.coreapiService.pricingService.createTagTemplates(
        categoryId: _formData.category.value!.id,
        reason: _formData.reason.value!,
      );
    }
    return (null, null);
  }

  Future<TagCategoryOutput?> _showAddTagCategoryDialog(BuildContext context) {
    return showDialog<TagCategoryOutput>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AdminPricingAddTagsCategoryDialog(
          coreapiService: widget.coreapiService,
          accountPrices: widget.accountPrices,
        );
      },
    );
  }

  void _getTagReasonAlreadyExistsError(
    BuildContext context,
    List<String?>? errors,
  ) {
    for (final ext in errors ?? []) {
      final errorCode = ext;

      switch (errorCode) {
        case 'TAG_REASON_ALREADY_EXISTS':
          _formData.errorMessage.value = context.l10n.duplicateTagReasonError
              .replaceFirst('[TagReason]', _formData.reason.value!);

        default:
          _formData.errorMessage.value = context.l10n.createTagTemplateError;
      }
    }
  }
}

class _FormModel {
  _FormModel({TagCategoryOutput? category, String? reason, UomValue? rate}) {
    this.category = ValueNotifier(category);
    this.reason = ValueNotifier(reason);
    this.rate = ValueNotifier(rate);
  }

  late final ValueNotifier<TagCategoryOutput?> category;
  late final ValueNotifier<String?> reason;
  late final ValueNotifier<UomValue?> rate;
  final loading = ValueNotifier(false);
  final errorMessage = ValueNotifier<String?>(null);

  void dispose() {
    category.dispose();
    reason.dispose();
    rate.dispose();
    loading.dispose();
    errorMessage.dispose();
  }
}
