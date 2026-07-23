import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/controller/create_template_controller.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/section_widget.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uuid/uuid.dart';

abstract class CreateTemplateCommon
    extends BasePage<ICreateTemplateController> {
  CreateTemplateCommon({this.editTemplateId, this.isClone = false, super.key});

  final _formKey = GlobalKey<FormState>();
  final bool isClone;
  final String? editTemplateId;

  final TextEditingController _referenceIdController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _declarationController = TextEditingController();
  final TextEditingController _doNotUseWarningController =
      TextEditingController();

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.templates} (${yard.yardCode!})';
  }

  @override
  void initState(BuildContext context) {
    controller.setTemplate(editTemplateId).then(
      (value) async {
        _descriptionController.text = value.title ?? '';

        _referenceIdController.text =
            (!isClone && (value.referenceId?.isNotEmpty ?? false))
                ? value.referenceId!
                : await controller.getNextTemplateNumber();

        final declaration = value.template?.sections?.lastOrNull?.components
            ?.firstWhereOrNull((e) => e.id == 'declaration');

        if (declaration != null) {
          _declarationController.text = declaration.message ?? '';
          controller.declaration = declaration.message;
          controller.setIsDeclarationRequired(value: true);
          value.template!.sections!.last.components!.remove(declaration);
        }

        final doNotUseWarning = value.template?.sections?.lastOrNull?.components
            ?.firstWhereOrNull((e) => e.id == 'do-not-use-warning');

        if (doNotUseWarning != null) {
          _doNotUseWarningController.text = doNotUseWarning.message ?? '';
          controller.doNotUseWarningMessage = doNotUseWarning.message;
          controller.setdoNotUseWarningRequired(value: true);
          value.template!.sections!.last.components!.remove(doNotUseWarning);
        }

        setState(() => controller.isBusy = false);
      },
    );
    controller.getClients();
    controller.getLists();
  }

  Widget _addHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Wrap(children: [_addChoiceChips()]),
        ),
      ],
    );
  }

  Widget _addChoiceChips() {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: controller.clients
          .map(
            (e) => ChoiceChip(
              labelPadding: EdgeInsets.zero,
              label: Text(
                e.title!,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
              ),
              selected: controller.template.clientId == e.id,
              onSelected: (value) {
                setState(() => controller.template.clientId = e.id);
              },
              selectedColor: FormAppColors.success,
            ),
          )
          .toList(),
    );
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return needWillPopScope()
        ? PopScope(
            canPop: false,
            onPopInvokedWithResult: (_, __) async {
              await EmrDialog.noYes(
                context,
                titleText: context.l10n.createTemplateConfirmationTitle,
                contentText: context.l10n.createTemplateConfirmationMessage,
                onNo: () {},
                onYes: () => context.pop(context.l10n.stringYes),
              );
            },
            child: _body(context),
          )
        : _body(context);
  }

  bool needWillPopScope();

  Widget _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: parentWidget(
            Wrap(
              runSpacing: 10,
              children: [
                if (controller.isBusy) ...[
                  showSpinner(),
                ] else ...[
                  _addTitle(context),
                  _addHeader(context),
                  InformTextBox(
                    controller: _descriptionController,
                    hintText: context.l10n.workOrderDescHint,
                    labelText: context.l10n.adhocDescriptionLabel,
                    onChanged: (value) => setState(() {
                      controller.template.title = value;
                      controller.template.template!.title = value;
                    }),
                    validationMessage: context.l10n.adhocDescriptionValidation,
                  ),
                  AbsorbPointer(
                    absorbing: !isClone && editTemplateId != null,
                    child: InformTextBox(
                      controller: _referenceIdController,
                      labelText: context.l10n.referenceLabel,
                      onChanged: (value) => setState(
                        () => controller.template.referenceId = value,
                      ),
                      validationMessage: context.l10n.referenceLengthValidation,
                    ),
                  ),
                  const SizedBox(width: 5),
                  ChoiceChip(
                    label: Text(context.l10n.addDeclaration),
                    selected: controller.isDeclarationRequired,
                    onSelected: (value) {
                      controller.setIsDeclarationRequired(value: value);
                    },
                    selectedColor: FormAppColors.success,
                  ),
                  if (controller.isDeclarationRequired) ...[
                    InformTextBox(
                      controller: _declarationController,
                      labelText: context.l10n.declarationLabel,
                      onChanged: (value) =>
                          controller.declaration = value ?? '',
                      validationMessage: context.l10n.declarationValidation,
                      isMultiline: true,
                    ),
                  ],
                  const SizedBox(
                    width: 5,
                  ),
                  ChoiceChip(
                    label: Text(context.l10n.doNotUse),
                    selected: controller.doNotUseWarning,
                    onSelected: (value) {
                      controller.setdoNotUseWarningRequired(value: value);
                    },
                    selectedColor: FormAppColors.success,
                  ),
                  if (controller.doNotUseWarning) ...[
                    InformTextBox(
                      controller: _doNotUseWarningController,
                      labelText: context.l10n.doNotUse,
                      onChanged: (value) =>
                          controller.doNotUseWarningMessage = value ?? '',
                      validationMessage: context.l10n.validWarning,
                      isMultiline: true,
                    ),
                  ],
                  if (controller.template.template?.sections?.isNotEmpty ??
                      false) ...[
                    Wrap(
                      runSpacing: 10,
                      children: controller.template.template!.sections!
                          .map(
                            (e) => SectionWidget(
                              key: UniqueKey(),
                              template: controller.template.template!,
                              section: e,
                              onStateChanged: () => setState(() {}),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                  _actionButtonAddSections(context),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget parentWidget(Widget child);

  Widget _addTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.createATemplate,
          style: const TextStyle(fontSize: 20),
        ),
        IconButton(
          icon: SvgPicture.asset(
            FormAppAssetsPath.preview,
            package: FormAppStringLiteral.PackageName,
            width: 22,
            colorFilter: ColorFilter.mode(
              controller.isTemplateParametersValid()
                  ? FormAppColors.success
                  : FormAppColors.foreground,
              BlendMode.srcIn,
            ),
          ),
          onPressed: controller.isTemplateParametersValid()
              ? () => _previewAdhocTemplate(context)
              : null,
        ),
      ],
    );
  }

  Future<void> _previewAdhocTemplate(BuildContext context) async {
    await validateForm(context: context, validateReferenceId: false)
        .then((isValid) async {
      if (isValid) {
        await controller.previewAdhocTemplate().then((jsonDocument) async {
          if (context.mounted) {
            await context.pushNamed(
              FormsRoutingName.previewTemplate,
              extra: jsonDocument,
              queryParams: {
                'isDigitalSignatureRequiredForJob': 'false',
                'isDigitalSignatureRequiredForTemplate': 'false',
              },
            );
          }
        });
      }
    });
  }

  Future<void> _submitAdhocTemplate(
    BuildContext context,
  ) async {
    await validateForm(
      context: context,
      validateReferenceId: editTemplateId == null,
    ).then((isValid) async {
      if (isValid) {
        await controller.submitAdhocTemplate().then((template) {
          if (template != null) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                appSnackBarMessage(
                  editTemplateId == null
                      ? context.l10n.adhocTemplateCreated
                      : context.l10n.adhocTemplateUpdated,
                  MessageTypes.success,
                ),
              );
              context.pop(template);
            }
          }
        });
      }
    });
  }

  Future<bool> validateForm({
    required BuildContext context,
    required bool validateReferenceId,
  }) async {
    /// validate and call api to create a new template.
    if (!_formKey.currentState!.validate()) return false;

    var result = true;
    await isReferenceIsInvalid(validateReferenceId: validateReferenceId)
        .then((invalid) async {
      if (invalid) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            appSnackBarMessage(
              context.l10n.referenceExists,
              MessageTypes.error,
            ),
          );
        }
        result = false;
      } else {
        if (controller.template.template?.sections?.isEmpty ?? true) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              appSnackBarMessage(
                context.l10n.adhocTemplateMissingSections,
                MessageTypes.error,
              ),
            );
          }
          result = false;
        }
        if ((controller.template.template?.sections?.isNotEmpty ?? false) &&
            controller.template.template!.sections!
                .any((q) => q.header?.isEmpty ?? true)) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              appSnackBarMessage(
                context.l10n.adhocTemplateMissingQuestions,
                MessageTypes.error,
              ),
            );
          }
          result = false;
        }
      }
    });

    return result;
  }

  Future<bool> isReferenceIsInvalid({required bool validateReferenceId}) async {
    if (!validateReferenceId) return false;
    return controller.checkReferenceId(
      controller.template.referenceId!,
    );
  }

  Widget _actionButtonAddSections(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: addSection,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(context.l10n.addASection),
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

  void addSection() {
    setState(
      () => controller.template.template!.sections!.add(
        Section(
          id: const Uuid().v4(),
          components: List.empty(growable: true),
        ),
      ),
    );
  }

  Future<void> onActionButtonPressed(BuildContext context) async {
    if (controller.isTemplateParametersValid()) {
      await _submitAdhocTemplate(context);
    }
  }

  bool isActionButtonEnabled() {
    return controller.isTemplateParametersValid();
  }
}
