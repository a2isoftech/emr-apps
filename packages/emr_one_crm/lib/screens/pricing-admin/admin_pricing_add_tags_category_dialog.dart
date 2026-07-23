import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminPricingAddTagsCategoryDialog extends StatefulWidget {
  const AdminPricingAddTagsCategoryDialog({
    required this.coreapiService,
    required this.accountPrices,
    super.key,
  });

  final CoreApiService coreapiService;
  final List<AccountPrice> accountPrices;

  @override
  State<AdminPricingAddTagsCategoryDialog> createState() =>
      _AdminPricingAddTagsCategoryDialog();
}

class _AdminPricingAddTagsCategoryDialog
    extends State<AdminPricingAddTagsCategoryDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formData = _FormModel();
  bool _loading = false;

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
        context.l10n.createTagCategory,
        style: Theme.of(
          context,
        ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      content: _buildContent(context),
      actions: _getActions(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final userInfo = Provider.of<UserInfoService>(context).userInfo;
    return Form(
      key: _formKey,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: EmrTextFormField(
                labelText: context.l10n.category,
                binding: _formData.category,
                validator: Validators.required,
              ),
            ),
            Text(context.l10n.tagTerritory),
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter / 2),
              child: Column(
                children: userInfo.territories.map((territory) {
                  return ValueListenableBuilder<List<String>>(
                    valueListenable: _formData.territorryId,
                    builder: (context, selectedTerritoryCodes, child) {
                      final isSelected = selectedTerritoryCodes.contains(
                        territory.code,
                      );

                      return CheckboxListTile(
                        title: Text(territory.code),
                        value: isSelected,
                        onChanged: (bool? value) {
                          if (value ?? false == true) {
                            _formData.territorryId.value = List.from(
                              _formData.territorryId.value,
                            )..add(territory.code);
                          } else {
                            _formData.territorryId.value = List.from(
                              _formData.territorryId.value,
                            )..remove(territory.code);
                          }
                        },
                      );
                    },
                  );
                }).toList(),
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
          if (_formData.territorryId.value.isEmpty) {
            _formData.errorMessage.value = context.l10n.pleaseSelectTerritory;
            return;
          }
          if (_formData.category.value!.toLowerCase().contains(
                CrmDeliveryMethod.collected.name,
              ) ||
              _formData.category.value!.toLowerCase().contains(
                EmrOneCrmConstants.legacy.toLowerCase(),
              ) ||
              _formData.category.value!
                  .replaceAll(' ', '')
                  .toLowerCase()
                  .contains(EmrOneCrmConstants.systemGenerated.toLowerCase())) {
            _formData.errorMessage.value = context.l10n.reservedKeyWordsError;
            return;
          }
          setState(() {
            _loading = true;
          });
          final output = await _createTagCategory();
          setState(() {
            _loading = false;
          });
          if (context.mounted) {
            if (output.$1 != null) {
              context.pop(output.$1);
            } else {
              _getTagCategoryAlreadyExistsError(context, output.$2);
            }
          }
        },
        child: Text(context.l10n.save),
      ),
  ];

  Future<(TagCategoryOutput?, List<String?>? errors)>
  _createTagCategory() async {
    if (_formKey.currentState?.validate() ?? false) {
      return widget.coreapiService.pricingService.createTagCategories(
        category: _formData.category.value!,
        territoryIds: _formData.territorryId.value
            .map((elem) => 'territories/$elem')
            .toList(),
        functional: true,
      );
    }
    return (null, null);
  }

  void _getTagCategoryAlreadyExistsError(
    BuildContext context,
    List<String?>? errors,
  ) {
    for (final ext in errors ?? []) {
      final errorCode = ext;

      switch (errorCode) {
        case 'TAG_CATEGORY_ALREADY_EXISTS':
          _formData.errorMessage.value = context.l10n.duplicateTagCategoryError
              .replaceFirst('[TagCategory]', _formData.category.value!);

        default:
          _formData.errorMessage.value = context.l10n.createTagCategoryError;
      }
    }
  }
}

class _FormModel {
  _FormModel({
    List<String> territorryId = const [],
    bool functional = false,
    String? category,
  }) {
    this.category = ValueNotifier(category);
    this.functional = ValueNotifier(functional);
    this.territorryId = ValueNotifier(territorryId);
  }

  late final ValueNotifier<bool> functional;
  late final ValueNotifier<String?> category;
  late final ValueNotifier<List<String>> territorryId;
  final loading = ValueNotifier(false);
  final errorMessage = ValueNotifier<String?>(null);

  void dispose() {
    category.dispose();
    loading.dispose();
    errorMessage.dispose();
  }
}
