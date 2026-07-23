import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_template/controller/create_template_controller.dart';
import 'package:emr_one_inform/create_template/model/client.dart';
import 'package:emr_one_inform/create_template/model/create_edit_form_template.dart';
import 'package:emr_one_inform/create_template/views/create_template_new/question_widget.dart';
import 'package:emr_one_inform/create_template/views/create_template_new/section_widget.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:uuid/uuid.dart';

class CreateTemplateNew extends BasePage<ICreateTemplateController> {
  CreateTemplateNew({this.editTemplateId, this.isClone = false, super.key});

  final _descriptionController = TextEditingController();
  final _referenceIdController = TextEditingController();
  final _clientController = TextEditingController();

  final String? editTemplateId;
  final bool isClone;
  final _formKey = GlobalKey<FormState>();

  final List<KeyValuePair<String, String>> _questionTypes = [
    KeyValuePair(key: 'Checkbox', value: 'Checkbox'),
    KeyValuePair(key: 'Date', value: 'Date'),
    KeyValuePair(key: 'Declaration', value: 'Declaration'),
    KeyValuePair(key: 'Email', value: 'Email'),
    KeyValuePair(key: 'Label', value: 'Label'),
    KeyValuePair(key: 'Rating', value: 'Rating'),
    KeyValuePair(key: 'SingleChoice', value: 'List'),
    KeyValuePair(key: 'Phone', value: 'Phone'),
    KeyValuePair(key: 'TextInput', value: 'Text Input'),
    KeyValuePair(key: 'Url', value: 'Url'),
    KeyValuePair(key: 'YesNoQuestion', value: 'Yes No'),
    KeyValuePair(key: 'DoNotUse', value: 'Do Not Use Warning'),
  ];

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.templates} (${yard.yardCode!})';
  }

  @override
  Widget? getActionButton(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const SizedBox(width: 30),
        ElevatedButton.icon(
          onPressed: () => controller.isBusy || !isActionButtonEnabled()
              ? null
              : onActionButtonPressed(context),
          label: Text(context.l10n.done),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(
              controller.isBusy || !isActionButtonEnabled()
                  ? FormAppColors.black
                  : FormAppColors.success,
            ),
          ),
          icon: Icon(Icons.done, color: FormAppColors.white),
        ),
      ],
    );
  }

  @override
  void initState(BuildContext context) {
    controller.setTemplate(editTemplateId).then((value) async {
      _descriptionController.text = value.title ?? '';

      _referenceIdController.text =
          (!isClone && (value.referenceId?.isNotEmpty ?? false))
          ? value.referenceId!
          : await controller.getNextTemplateNumber();

      controller.declaration = null;
      controller.setIsDeclarationRequired(value: false);

      _clientController.text =
          controller.clients
              .firstWhereOrNull((e) => e.id == controller.template.clientId)
              ?.title ??
          '';
      setState(() => controller.isBusy = false);
    });
    controller.getClients().then((value) {
      _clientController.text =
          controller.clients
              .firstWhereOrNull((e) => e.id == controller.template.clientId)
              ?.title ??
          '';
    });
    controller.getLists();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    final sectItems = controller.template.template?.sections;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: TypeAheadFormField<Client>(
                      suggestionsCallback: (searchText) async {
                        return controller.clients.where(
                          (e) =>
                              e.title?.toLowerCase().contains(
                                searchText.toLowerCase(),
                              ) ??
                              false,
                        );
                      },
                      itemBuilder: (context, Client client) {
                        return ListTile(title: Text(client.title!));
                      },
                      onSuggestionSelected: (Client client) {
                        setState(() {
                          _clientController.text = client.title!;
                          controller.template.clientId = client.id;
                        });
                      },
                      noItemsFoundBuilder: (context) => SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(context.l10n.noRecordsMessage),
                        ),
                      ),
                      textFieldConfiguration: TextFieldConfiguration(
                        controller: _clientController,
                        decoration: FormStyles.textFieldDecoration(context)
                            .copyWith(
                              labelText: context.l10n.category,
                              hintText: context.l10n.category,
                            ),
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: InformTextBox(
                      controller: _descriptionController,
                      hintText: context.l10n.workOrderDescHint,
                      labelText: context.l10n.adhocDescriptionLabel,
                      onChanged: (value) => setState(() {
                        controller.template.title = value;
                        controller.template.template!.title = value;
                      }),
                      validationMessage:
                          context.l10n.adhocDescriptionValidation,
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: AbsorbPointer(
                      absorbing: !isClone && editTemplateId != null,
                      child: InformTextBox(
                        controller: _referenceIdController,
                        labelText: context.l10n.referenceLabel,
                        onChanged: (value) => setState(
                          () => controller.template.referenceId = value,
                        ),
                        validationMessage:
                            context.l10n.referenceLengthValidation,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      size: 50,
                      color: controller.isTemplateParametersValid()
                          ? FormAppColors.success
                          : FormAppColors.foreground,
                    ),
                    onPressed: controller.isTemplateParametersValid()
                        ? () => _previewAdhocTemplate(context)
                        : null,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
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
                        const Text('Questions'),
                        Flexible(
                          child: SingleChildScrollView(
                            child: SingleChildScrollView(
                              child: ListView.builder(
                                itemCount: _questionTypes.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Draggable<String>(
                                      data: _questionTypes[index].key,
                                      feedback: Material(
                                        child: Container(
                                          height: 30,
                                          width: 150,
                                          color: FormAppColors.primaryBlue,
                                          child: Center(
                                            child: Text(
                                              _questionTypes[index].value,
                                              style: TextStyle(
                                                color: FormAppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        height: 30,
                                        color: FormAppColors.primaryBlue,
                                        child: Center(
                                          child: Text(
                                            _questionTypes[index].value,
                                            style: TextStyle(
                                              color: FormAppColors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
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
                            const Text('Template'),
                            _actionButtonAddSections(context),
                          ],
                        ),
                        Flexible(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  if (sectItems?.isNotEmpty ?? false) ...[
                                    Wrap(
                                      runSpacing: 10,
                                      children: [
                                        ReorderableListView(
                                          shrinkWrap: true,
                                          buildDefaultDragHandles: false,
                                          children: [
                                            for (final item in sectItems!)
                                              _listRow(sectItems, item),
                                          ],
                                          onReorder: (oldIndex, newIndex) {
                                            setState(() {
                                              final newItem = sectItems
                                                  .removeAt(oldIndex);

                                              sectItems.insert(
                                                (newIndex > oldIndex)
                                                    ? newIndex - 1
                                                    : newIndex,
                                                newItem,
                                              );
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EmrColours.primaryBlue),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        const Text('Properties'),
                        Flexible(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (controller.selectedQuestion != null)
                                    controller.selectedQuestion!,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _listRow(List<Section> sectItems, Section item) {
    return Padding(
      key: Key('${sectItems.indexOf(item)}'),
      padding: const EdgeInsets.only(bottom: 50),
      child: SectionWidget(
        index: sectItems.indexOf(item),
        key: UniqueKey(),
        template: controller.template.template!,
        section: item,
        onStateChanged: () => setState(() {
          controller.selectedQuestion = null;
        }),
        onQuestionSelected: (section, component) => setState(
          () => controller.selectedQuestion = QuestionWidget(
            key: UniqueKey(),
            section: section,
            component: component,
            onStateChanged: () => setState(() {}),
          ),
        ),
      ),
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
        Section(id: const Uuid().v4(), components: List.empty(growable: true)),
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

  Future<void> _submitAdhocTemplate(BuildContext context) async {
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
    await isReferenceIsInvalid(validateReferenceId: validateReferenceId).then((
      invalid,
    ) async {
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
            controller.template.template!.sections!.any(
              (q) => q.header?.isEmpty ?? true,
            )) {
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
    return controller.checkReferenceId(controller.template.referenceId!);
  }

  Future<void> _previewAdhocTemplate(BuildContext context) async {
    await validateForm(context: context, validateReferenceId: false).then((
      isValid,
    ) async {
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
}
