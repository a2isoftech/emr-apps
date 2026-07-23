import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/screens/template_library/template_library_controller.dart';
import 'package:emr_one_inform/screens/template_library/template_library_models.dart';
import 'package:emr_one_inform/widgets/inform_assign_multiple.dart';
import 'package:emr_one_inform/widgets/inform_search_widget.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';

abstract class TemplateLibraryCommon
    extends BasePage<TemplateLibraryController> {
  TemplateLibraryCommon({
    required this.returnSelectedTemplate,
    super.key,
  });

  final bool returnSelectedTemplate;
  final _searchController = TextEditingController();
  final teamController = TextEditingController();
  final effectiveDateController = TextEditingController();

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.templates} (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    controller.getClients();
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onFilter,
        icon: Icon(Icons.filter_list, color: FormAppColors.white),
      ),
    ];
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (!controller.isFilterVisible) ...[
            Material(
              elevation: 20,
              child: _addChoiceChips(),
            ),
          ],
          const SizedBox(height: 5),
          if (controller.isSearchVisible) ...[
            InformSearchWidget(
              key: UniqueKey(),
              searchOptions: [
                DateRangeSearchOption(
                  displayText: 'Date',
                  propertyName: 'date',
                ),
                TypeaheadSearchOption(
                  displayText: 'WO/SI Number',
                  propertyName: 'workOrderId',
                  datasource: null,
                  sourceCallback: controller.getWorkOrderIds,
                ),
                TypeaheadSearchOption(
                  displayText: 'Created By',
                  propertyName: 'createdBy',
                  datasource: null,
                  sourceCallback: controller.getUserNames,
                ),
                ScanSearchOption(
                  displayText: 'Scan asset code',
                  propertyName: 'assetCode',
                ),
              ],
              onStateChanged: (searchState) async {
                controller.searchStateChanged(searchState);

                controller.setFilterText(null);
                controller.setSearchResultMode(isSearchResult: true);
                _searchController.text = '';

                await controller.loadTemplates();
              },
              clearSearchEnabled: true,
              onSearchCriteriaCleared: () async {
                _searchController.text = '';
                await controller.clearSearch();
              },
              initialState: controller.searchState,
            ),
            const SizedBox(height: 5),
          ],
          if (controller.isFilterVisible) ...[
            Material(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    _addSortByOptions(context),
                    _typeAheadFilter(context),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
          if (!controller.isFilterVisible) ...[
            Material(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    _addPageTitle(context),
                    const SizedBox(height: 5),
                    _addSearchText(context),
                  ],
                ),
              ),
            ),
          ],
          if (controller.isBusy) ...[
            Padding(
              padding: const EdgeInsets.all(10),
              child: showSpinner(),
            ),
          ] else if (controller.filteredList.isEmpty) ...[
            Center(child: showNoData(context.l10n.noTemplatesFound)),
          ] else ...[
            if (controller.isSearchResult)
              _addFormsTemplateByClient(context)
            else
              _addFormsTemplates(context, controller.filteredList),
          ],
        ],
      ),
    );
  }

  Widget _addFormsTemplateByClient(BuildContext context) {
    return Material(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 5),
            _addPanelTitle(),
            const SizedBox(height: 5),
            _addExpansionPanelList(context),
          ],
        ),
      ),
    );
  }

  Widget _addPanelTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Templates # : ${controller.templateCount}',
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  ExpansionPanelList _addExpansionPanelList(BuildContext context) {
    final data = controller.filteredPanelParentList;
    final activeLocale = Localizations.localeOf(context);
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(
          () {
            data[index].expanded = isExpanded;
            controller.expandedPanel = index;
          },
        );
      },
      animationDuration: const Duration(milliseconds: 20),
      children: data.map<ExpansionPanel>((PanelParent parent) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title:
                  Text('${parent.clientName} (${parent.clientTemplateCount})'),
            );
          },
          body: Column(
            children: parent.panelChild.map((template) {
              final formTemplate = _getFormTemplateFromPanelChild(template);
              return GestureDetector(
                onTap: () {
                  if (!template.isPublished) {
                    final snackBarMesage = appSnackBarMessage(
                      'Template not published yet',
                      MessageTypes.error,
                    );
                    ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
                        .showSnackBar(snackBarMesage);
                    return;
                  }
                  setState(() {
                    if (controller.selectedTemplate?.id ==
                        template.templateId) {
                      controller.selectedTemplate = null;
                      controller.setFilterText(null);
                      controller.templateSelectedFromPanel = false;
                    } else {
                      controller.selectedTemplate = formTemplate;
                      controller.templateSelectedFromPanel = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    color:
                        (controller.selectedTemplate?.id == template.templateId)
                            ? FormAppColors.success
                            : null,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.all(1),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: EmrColours.secondaryGrey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              cardHeader(
                                formTemplate,
                              ),
                              cardBody(template.clientName),
                              cardBody(template.referenceId),
                              cardBody(
                                DateFormat.yMd(activeLocale.toString())
                                    .format(template.createdDate),
                              ),
                              cardBody(template.createdBy),
                              if (controller.loadingTemplates
                                  .contains(template.templateId))
                                showSpinner()
                              else
                                cardChipButttons(
                                  context,
                                  formTemplate,
                                ),
                            ],
                          ),
                        ),
                        ..._addControlButtons(context, formTemplate),
                        if (template.versions != null &&
                            template.versions!.length > 1) ...[
                          const Divider(),
                          templateVersions(template, context),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          isExpanded: parent.expanded,
        );
      }).toList(),
    );
  }

  Widget templateVersions(
    PanelChild template,
    BuildContext context,
  ) {
    return Visibility(
      visible: controller.versionVisibleId == template.templateId,
      child: Column(
        children: template.versions!.map((templateVersion) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Version#:${templateVersion.version}',
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    FormAppAssetsPath.preview,
                    package: FormAppStringLiteral.PackageName,
                    width: 22,
                    colorFilter: ColorFilter.mode(
                      FormAppColors.foreground,
                      BlendMode.srcIn,
                    ),
                  ),
                  onPressed: () async {
                    if (controller.isLoadingPreview) {
                      return;
                    }
                    if (templateVersion.uuid != '') {
                      controller.isLoadingPreview = true;
                      await controller.templateLibraryService
                          .getFormsTemplateJsonByVersion(
                        templateId: templateVersion.uuid!,
                      )
                          .then((templateJson) async {
                        if (templateJson != null || templateJson!.isNotEmpty) {
                          controller.isLoadingPreview = false;
                          if (context.mounted) {
                            await context.pushNamed(
                              FormsRoutingName.previewTemplate,
                              extra: templateJson,
                              queryParams: {
                                'isDigitalSignatureRequiredForJob': 'false',
                                'isDigitalSignatureRequiredForTemplate':
                                    template.isDigitalSignatureRequired
                                        .toString(),
                              },
                            );
                          }
                        }
                      });
                    }
                  },
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _addSortByOptions(BuildContext context) {
    return Row(
      children: [
        Text(
          context.l10n.sortBy,
        ),
        const SizedBox(width: 20),
        _addSortByDropDownWidget(),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = ['Client', 'Created By', 'Date', 'Title'];
    final dropDownMenuItems = <DropdownMenuItem<SortBy>>[];

    for (final sortField in sortFields) {
      dropDownMenuItems.add(
        DropdownMenuItem(
          value: SortBy(
            fieldName: sortField,
            sortDirection: controller.sortBy.sortDirection,
          ),
          child: Row(
            children: [
              Text(sortField),
            ],
          ),
        ),
      );
    }
    return DropdownButton(
      icon: (controller.sortBy.sortDirection == SortDirection.ascending)
          ? const Icon(Icons.arrow_upward_rounded)
          : const Icon(Icons.arrow_downward_rounded),
      items: dropDownMenuItems.toList(),
      value: controller.sortBy,
      onChanged: (onChanged) {
        controller.setSortBy(onChanged!);
      },
    );
  }

  Widget _typeAheadFilter(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<String>(
          suggestionsCallback: (searchText) async {
            return (searchText.length > 2)
                ? getFilterSuggestions(searchText)
                : const Iterable<String>.empty();
          },
          itemBuilder: (context, String key) {
            return ListTile(title: Text(key));
          },
          onSuggestionSelected: (String suggestion) {
            _searchController.text = suggestion;
            controller.setFilterText(suggestion);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: typeAheadErrorMessageWidget(
              context.l10n.noRecordsMessage,
            ),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _searchController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.filters,
              hintText: context.l10n.search,
              suffixIcon: _searchController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _searchController.clear();
                        controller.setFilterText(null);
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  List<String> getFilterSuggestions(String key) {
    final titles = controller.masterList.map((e) => e.title).toList();
    final clientNames =
        controller.masterList.map((e) => e.clientName ?? '').toList();
    final createdBy =
        controller.masterList.map((e) => e.createdBy ?? '').toList();
    final list = <String>{...titles, ...clientNames, ...createdBy}.toList();
    return list
        .where(
          (element) =>
              element.isNotEmpty &&
              element.toLowerCase().contains(key.toLowerCase()),
        )
        .toList();
  }

  Widget _addChoiceChips() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          controller.isCategoriesExpanded = isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          isExpanded: controller.isCategoriesExpanded,
          headerBuilder: (context, isExpanded) => ListTile(
            title: Text(
              'Categories (Selected: ${controller.selectedClients.length})',
            ),
          ),
          canTapOnHeader: true,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: controller.clients
                      .map(
                        (e) => ChoiceChip(
                          labelPadding: EdgeInsets.zero,
                          label: Text(
                            e.title!,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          selected:
                              controller.selectedClients.contains(e.title),
                          onSelected: (value) {
                            controller.setSelectedClients(e.title!);
                          },
                          selectedColor: FormAppColors.success,
                        ),
                      )
                      .toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        controller.setSearchResultMode(isSearchResult: true);
                        await controller.getTemplatesByDate(
                          filter: SearchQueryFilter(
                            includeAll: true,
                            clientNames: controller.selectedClients,
                          ),
                        );
                      },
                      child: const Text('Get Templates'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _addPageTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.chooseATemplate,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget _addSearchText(BuildContext context) {
    return TypeAheadFormField<FormsTemplate>(
      suggestionsCallback: _getSuggestions,
      itemBuilder: (context, FormsTemplate availableSuggestions) {
        final suggestion = availableSuggestions;
        return ListTile(
          title: Text(suggestion.title),
          subtitle: Text(suggestion.referenceId!),
        );
      },
      onSuggestionSelected: (FormsTemplate availableSuggestions) {
        final suggestion = availableSuggestions;
        _searchController.text = suggestion.title;
        controller.setFilter(_searchController.text);
        controller.setSearchResultMode(isSearchResult: false);
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: typeAheadErrorMessageWidget(context.l10n.noRecordsMessage),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _searchController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: context.l10n.searchByTemplateName,
          hintText: context.l10n.searchByTemplateName,
          suffixIcon: _searchController.text.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    _searchController.clear();
                    controller.setFilterText(null);
                    controller.filteredList.clear();
                    controller.selectedClients.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
        ),
      ),
    );
  }

  Future<List<FormsTemplate>> _getSuggestions(
    String searchText,
  ) async {
    if (searchText.length < 3) return [];
    final masterList = await controller.getTemplates(
      filter: SearchQueryFilter(
        includeAll: true,
        clientNames: controller.selectedClients,
        searchText: searchText,
      ),
    );
    return masterList.toList();
  }

  Widget _addFormsTemplates(
    BuildContext context,
    List<FormsTemplate> formsTemplates,
  ) {
    return Material(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ResponsiveGridRow(
          children: formsTemplates
              .map(
                (e) => ResponsiveGridCol(
                  // md: 6,
                  child: formsTemplateCard(context, e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget formsTemplateCard(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return GestureDetector(
      onTap: () {
        if (!formsTemplate.isPublished) {
          final snackBarMesage = appSnackBarMessage(
            'Template not published yet',
            MessageTypes.error,
          );
          ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
              .showSnackBar(snackBarMesage);
          return;
        }
        setState(() {
          if (controller.selectedTemplate?.id == formsTemplate.id) {
            controller.selectedTemplate = null;
          } else {
            controller.selectedTemplate =
                _getFormTemplateFromFormsTemplate(formsTemplate);
            controller.setFilterText(formsTemplate.title);
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Card(
          color: (controller.selectedTemplate?.id == formsTemplate.id)
              ? FormAppColors.success
              : null,
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(1),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: EmrColours.secondaryGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardHeader(
                      formsTemplate,
                    ),
                    cardBody(formsTemplate.clientName!),
                    cardBody(formsTemplate.referenceId!),
                    if (controller.loadingTemplates.contains(formsTemplate.id))
                      showSpinner()
                    else
                      cardChipButttons(context, formsTemplate),
                  ],
                ),
              ),
              ..._addControlButtons(context, formsTemplate),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardChipButttons(BuildContext context, FormsTemplate formsTemplate) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              if (ScreenAccess().canValidateJobs(context))
                _choiceChipForValidateBySignature(
                  context,
                  formsTemplate,
                ),
              if (ScreenAccess().canValidateJobs(context))
                _choiceChipForValidateByWorkOrder(
                  context,
                  formsTemplate,
                ),
              if (ScreenAccess().canToggleDigitalSignatureInTemplate(context))
                _choiceChipForDigitalSignature(
                  context,
                  formsTemplate,
                ),
              _choiceChipForEmailNotification(
                context,
                formsTemplate,
              ),
              _choiceChipForAssignToTeamOnFailure(
                context,
                formsTemplate,
              ),
              if (ScreenAccess().canPublishUnpublishTemplate(context))
                _choiceChipForPublished(
                  context,
                  formsTemplate,
                ),
            ],
          ),
        ],
      );

  Widget _choiceChipForValidateBySignature(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: const Text(
        'Verify by Sign',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.validateBySignature,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        if (!value) {
          await showConfirmationDialog(
            context: context,
            message: 'Do you want to disable'
                ' validate by signature on this template',
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              final result = await controller.patchTemplate(
                PatchTemplate(
                  templateId: formsTemplate.id,
                  isDigitalSignatureRequired:
                      formsTemplate.isDigitalSignatureRequired,
                  validateBySignature: value,
                  validateByWorkOrder:
                      value ? !value : formsTemplate.validateByWorkOrder,
                  validateFrom: null,
                  isEmailNotificationRequired: null,
                  sendEmailOnFailedQuestions: null,
                  emailIds: null,
                  assignFailedQuestionToTeamId: null,
                  isPublished: null,
                ),
              );
              if (result) {
                formsTemplate.validateBySignature = value;
                formsTemplate.validateByWorkOrder =
                    value ? !value : formsTemplate.validateByWorkOrder;
                controller.updateChipButton(formsTemplate);
              }
            }
          });
        } else {
          controller.effectiveDate = null;
          effectiveDateController.text = '';

          await showDialog<bool?>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text('Enable validate by signature'),
                content: addEffectiveDateSelector(context),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(false),
                    child: Text(context.l10n.close),
                  ),
                  TextButton(
                    onPressed: () => context.pop(true),
                    child: Text(context.l10n.done),
                  ),
                ],
              );
            },
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              final result = await controller.patchTemplate(
                PatchTemplate(
                  templateId: formsTemplate.id,
                  isDigitalSignatureRequired:
                      formsTemplate.isDigitalSignatureRequired,
                  validateBySignature: value,
                  validateByWorkOrder:
                      value ? !value : formsTemplate.validateByWorkOrder,
                  validateFrom: controller.effectiveDate,
                  isEmailNotificationRequired: null,
                  sendEmailOnFailedQuestions: null,
                  emailIds: null,
                  assignFailedQuestionToTeamId: null,
                  isPublished: null,
                ),
              );
              if (result) {
                formsTemplate.validateBySignature = value;
                formsTemplate.validateByWorkOrder =
                    value ? !value : formsTemplate.validateByWorkOrder;
                controller.updateChipButton(formsTemplate);
              }
            }
          });
        }
      },
    );
  }

  Widget _choiceChipForDigitalSignature(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: const Text(
        'Digital Signature',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.isDigitalSignatureRequired,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        await showConfirmationDialog(
          context: context,
          message: 'Do you want to '
              '''
${formsTemplate.isDigitalSignatureRequired ? 'disable' : 'enable'}'''
              ' digital signature on this template',
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired: value,
                validateBySignature: formsTemplate.validateBySignature,
                validateByWorkOrder: formsTemplate.validateByWorkOrder,
                validateFrom: formsTemplate.validateFrom,
                isEmailNotificationRequired: null,
                sendEmailOnFailedQuestions: null,
                emailIds: null,
                assignFailedQuestionToTeamId: null,
                isPublished: null,
              ),
            );
            if (result) {
              formsTemplate.isDigitalSignatureRequired = value;
              controller.updateChipButton(formsTemplate);
            }
          }
        });
      },
    );
  }

  Widget _choiceChipForPublished(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: Text(
        formsTemplate.isPublished ? 'Published' : 'Publish',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.isPublished,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        await showConfirmationDialog(
          context: context,
          message: 'Do you want to '
              '''
${formsTemplate.isPublished ? 'disable' : 'publish'}'''
              '  this template',
        ).then((isConfirmed) async {
          if (isConfirmed ?? false) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired:
                    formsTemplate.isDigitalSignatureRequired,
                validateBySignature: formsTemplate.validateBySignature,
                validateByWorkOrder: formsTemplate.validateByWorkOrder,
                validateFrom: formsTemplate.validateFrom,
                isEmailNotificationRequired: null,
                sendEmailOnFailedQuestions: null,
                emailIds: null,
                assignFailedQuestionToTeamId: null,
                isPublished: value,
              ),
            );
            if (result) {
              formsTemplate.isPublished = value;
              controller.updateChipButton(formsTemplate);
            } else {
              ScaffoldMessenger.of(stateMediator.getBuildContext!())
                  .showSnackBar(
                appSnackBarMessage(
                  '''This template cannot be un-publish as it has jobs linked to it''',
                  MessageTypes.error,
                ),
              );
            }
          }
        });
      },
    );
  }

  Widget _choiceChipForValidateByWorkOrder(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: const Text(
        'Verify by WO',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.validateByWorkOrder,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        if (!value) {
          await showConfirmationDialog(
            context: context,
            message: 'Do you want to disable'
                ' validate by work order on this template',
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              final result = await controller.patchTemplate(
                PatchTemplate(
                  templateId: formsTemplate.id,
                  isDigitalSignatureRequired:
                      formsTemplate.isDigitalSignatureRequired,
                  validateBySignature:
                      value ? !value : formsTemplate.validateBySignature,
                  validateByWorkOrder: value,
                  validateFrom: null,
                  isEmailNotificationRequired: null,
                  sendEmailOnFailedQuestions: null,
                  emailIds: null,
                  assignFailedQuestionToTeamId: null,
                  isPublished: null,
                ),
              );
              if (result) {
                formsTemplate.validateByWorkOrder = value;
                formsTemplate.validateBySignature =
                    value ? !value : formsTemplate.validateBySignature;
                controller.updateChipButton(formsTemplate);
              }
            }
          });
        } else {
          controller.effectiveDate = null;
          effectiveDateController.text = '';

          await showDialog<bool?>(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                title: const Text('Enable validate by work order'),
                content: addEffectiveDateSelector(context),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(false),
                    child: Text(context.l10n.close),
                  ),
                  TextButton(
                    onPressed: () => context.pop(true),
                    child: Text(context.l10n.done),
                  ),
                ],
              );
            },
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              final result = await controller.patchTemplate(
                PatchTemplate(
                  templateId: formsTemplate.id,
                  isDigitalSignatureRequired:
                      formsTemplate.isDigitalSignatureRequired,
                  validateBySignature:
                      value ? !value : formsTemplate.validateBySignature,
                  validateByWorkOrder: value,
                  validateFrom: controller.effectiveDate,
                  isEmailNotificationRequired: null,
                  sendEmailOnFailedQuestions: null,
                  emailIds: null,
                  assignFailedQuestionToTeamId: null,
                  isPublished: null,
                ),
              );
              if (result) {
                formsTemplate.validateByWorkOrder = value;
                formsTemplate.validateBySignature =
                    value ? !value : formsTemplate.validateBySignature;
                controller.updateChipButton(formsTemplate);
              }
            }
          });
        }
      },
    );
  }

  Widget _choiceChipForAssignToTeamOnFailure(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: const Text(
        'Assign to team on failure',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.assignFailedQuestionToTeamId != null,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        teamController.text = formsTemplate.assignFailedQuestionToTeam ?? '';
        controller.selectedTeam = Team(
          uuid: formsTemplate.assignFailedQuestionToTeamId,
          name: formsTemplate.assignFailedQuestionToTeam,
        );
        await showDialog<bool?>(
          context: stateMediator.getBuildContext!.call(),
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: const Text('Enable Assign to team on failure'),
              content: addTeamSelector(context),
              actions: [
                TextButton(
                  onPressed: () => context.pop(false),
                  child: const Text('Unassign'),
                ),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(context.l10n.close),
                ),
                TextButton(
                  onPressed: () async {
                    if (controller.selectedTeam == null) {
                      await showMessageDialog(
                        context: context,
                        messageType: MessageType.error,
                        message: 'Please select a team',
                      );
                      return;
                    }
                    context.pop(true);
                  },
                  child: Text(context.l10n.done),
                ),
              ],
            );
          },
        ).then((isConfirmed) async {
          if (isConfirmed != null && isConfirmed == true) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired: null,
                validateBySignature: null,
                validateByWorkOrder: null,
                validateFrom: null,
                isEmailNotificationRequired: null,
                sendEmailOnFailedQuestions: null,
                assignFailedQuestionToTeamId: controller.selectedTeam?.uuid,
                emailIds: null,
                isPublished: null,
              ),
            );
            if (result) {
              formsTemplate.assignFailedQuestionToTeamId =
                  controller.selectedTeam?.uuid;
              formsTemplate.assignFailedQuestionToTeam =
                  controller.selectedTeam?.name;
              controller.updateChipButton(formsTemplate);
            }
          } else if (isConfirmed != null && isConfirmed == false) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired: null,
                validateBySignature: null,
                validateByWorkOrder: null,
                validateFrom: null,
                isEmailNotificationRequired: null,
                sendEmailOnFailedQuestions: null,
                emailIds: null,
                assignFailedQuestionToTeamId: 'Unassign',
                isPublished: null,
              ),
            );
            if (result) {
              formsTemplate.assignFailedQuestionToTeamId = null;
              formsTemplate.assignFailedQuestionToTeam = null;
              controller.updateChipButton(formsTemplate);
            }
          }
          setState(() => controller.isBusy = false);
        });
      },
    );
  }

  Widget _choiceChipForEmailNotification(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return ChoiceChip(
      label: const Text(
        'Email Notification',
        // style: TextStyle(fontSize: 10),
      ),
      selected: formsTemplate.isEmailNotificationRequired ||
          formsTemplate.sendEmailOnFailedQuestions,
      selectedColor: FormAppColors.success,
      onSelected: (value) async {
        setState(() {
          controller.loadingTemplates.add(formsTemplate.id);
        });
        controller.selectedUsers = [];
        if (formsTemplate.emailIds?.isNotEmpty ?? false) {
          final emailIds = formsTemplate.emailIds!.split(',');
          for (final emailId in emailIds) {
            final users = await controller.getUsers(emailId);
            if (users.isNotEmpty) {
              controller.selectedUsers.add(users.first);
            } else {
              controller.selectedUsers.add(
                User.fromJson(
                  <String, dynamic>{
                    'id': '',
                    'firstName': emailId,
                    'surname': '',
                    'email': emailId,
                  },
                ),
              );
            }
          }
        }

        await showDialog<(bool, bool, bool)?>(
          context: stateMediator.getBuildContext!.call(),
          barrierDismissible: false,
          builder: (context) {
            var onSuccess = formsTemplate.isEmailNotificationRequired;
            var onFailedQuestion = formsTemplate.sendEmailOnFailedQuestions;
            if (!onSuccess && !onFailedQuestion) onSuccess = true;
            return AlertDialog(
              title: const Text('Enable email notification'),
              content: StatefulBuilder(
                builder: (context, setState) {
                  return SizedBox(
                    width: 500,
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            InputChip(
                              label: const Text('On Submit'),
                              onPressed: () {
                                setState(() {
                                  onSuccess = true;
                                  onFailedQuestion = false;
                                });
                              },
                              selected: onSuccess,
                              selectedColor: FormAppColors.success,
                            ),
                            InputChip(
                              label: const Text('On Failed Question'),
                              onPressed: () {
                                setState(() {
                                  onSuccess = false;
                                  onFailedQuestion = true;
                                });
                              },
                              selectedColor: FormAppColors.success,
                              selected: onFailedQuestion,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        AssignMultipleEntity<User>(
                          suggestionsCallback: (searchText) async {
                            if (searchText.length > 2) {
                              final users =
                                  await controller.getUsers(searchText);
                              if (RegExp(RegexPatterns.email)
                                  .hasMatch(searchText)) {
                                users.add(
                                  User.fromJson(
                                    <String, dynamic>{
                                      'id': '',
                                      'firstName': searchText,
                                      'surname': '',
                                      'email': searchText,
                                    },
                                  ),
                                );
                              }
                              return users;
                            }
                            return const Iterable<User>.empty();
                          },
                          valueSelector: (e) => e.displayName,
                          defaultSelectedItems: controller.selectedUsers,
                          onSuggestionSelected: controller.selectedUsers.add,
                          onItemDeleted: controller.selectedUsers.remove,
                          hint: context.l10n.selectUserLabel,
                          label: context.l10n.userLabel,
                          itemBuilder: (context, User user) {
                            return ListTile(
                              title: Text(user.displayName),
                              subtitle: Text(user.email ?? ''),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
              actions: [
                TextButton(
                  onPressed: () => context.pop((false, false, false)),
                  child: const Text('Disable'),
                ),
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(context.l10n.close),
                ),
                TextButton(
                  onPressed: () async {
                    if (controller.selectedUsers.isEmpty) {
                      await showMessageDialog(
                        context: context,
                        messageType: MessageType.error,
                        message: 'Atleast 1 user should be selected',
                      );
                      return;
                    }
                    context.pop((true, onSuccess, onFailedQuestion));
                  },
                  child: Text(context.l10n.done),
                ),
              ],
            );
          },
        ).then((isConfirmed) async {
          if (isConfirmed != null && isConfirmed.$1 == true) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired: null,
                validateBySignature: null,
                validateByWorkOrder: null,
                validateFrom: null,
                isEmailNotificationRequired: isConfirmed.$2,
                sendEmailOnFailedQuestions: isConfirmed.$3,
                assignFailedQuestionToTeamId: null,
                emailIds:
                    controller.selectedUsers.map((e) => e.email).join(','),
                isPublished: null,
              ),
            );
            if (result) {
              formsTemplate.isEmailNotificationRequired = isConfirmed.$2;
              formsTemplate.sendEmailOnFailedQuestions = isConfirmed.$3;
              formsTemplate.emailIds =
                  controller.selectedUsers.map((e) => e.email).join(',');
              controller.updateChipButton(formsTemplate);
            }
          } else if (isConfirmed != null && isConfirmed.$1 == false) {
            final result = await controller.patchTemplate(
              PatchTemplate(
                templateId: formsTemplate.id,
                isDigitalSignatureRequired: null,
                validateBySignature: null,
                validateByWorkOrder: null,
                validateFrom: null,
                isEmailNotificationRequired: false,
                sendEmailOnFailedQuestions: false,
                emailIds: null,
                assignFailedQuestionToTeamId: null,
                isPublished: null,
              ),
            );
            if (result) {
              if (result) {
                formsTemplate.emailIds = null;
                formsTemplate.isEmailNotificationRequired = false;
                formsTemplate.sendEmailOnFailedQuestions = false;
                controller.updateChipButton(formsTemplate);
              }
            }
          }
          setState(() {
            controller.loadingTemplates.remove(formsTemplate.id);
          });
        });
      },
    );
  }

  Widget _addVersionsVisibilityButton(
    BuildContext context,
    FormsTemplate template,
  ) {
    return GestureDetector(
      onTap: () {
        if (controller.versionVisibleId == template.id) {
          setState(() {
            controller.versionVisibleId = null;
          });
          return;
        }
        setState(() {
          controller.versionVisibleId = template.id;
        });
      },
      child: Column(
        children: [
          SvgPicture.asset(
            FormAppAssetsPath.preview,
            package: FormAppStringLiteral.PackageName,
            width: 22,
            colorFilter:
                ColorFilter.mode(FormAppColors.foreground, BlendMode.srcIn),
          ),
          const Text(
            'Versions',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addPreviewTemplateButton(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return GestureDetector(
      onTap: () async {
        if (controller.isLoadingPreview) return;
        if (formsTemplate.id != '') {
          controller.isLoadingPreview = true;
          await controller.templateLibraryService
              .getFormsTemplateJson(
            templateId: formsTemplate.id,
          )
              .then((templateJson) async {
            if (templateJson != null || templateJson!.isNotEmpty) {
              controller.isLoadingPreview = false;
              if (context.mounted) {
                await context.pushNamed(
                  FormsRoutingName.previewTemplate,
                  extra: templateJson,
                  queryParams: {
                    'isDigitalSignatureRequiredForJob': 'false',
                    'isDigitalSignatureRequiredForTemplate':
                        formsTemplate.isDigitalSignatureRequired.toString(),
                  },
                );
              }
            }
          });
        }
      },
      child: Column(
        children: [
          SvgPicture.asset(
            FormAppAssetsPath.preview,
            package: FormAppStringLiteral.PackageName,
            width: 22,
            colorFilter:
                ColorFilter.mode(FormAppColors.foreground, BlendMode.srcIn),
          ),
          Text(
            context.l10n.template,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addEditButton(BuildContext context, FormsTemplate formsTemplate) {
    return GestureDetector(
      onTap: () async {
        await context.pushNamed(
          FormsRoutingName.createAdhocTemplateNew,
          queryParams: {'editTemplateId': formsTemplate.id},
        );
      },
      child: Column(
        children: [
          const Icon(
            Icons.edit_outlined,
          ),
          Text(
            context.l10n.edit,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addCloneButton(BuildContext context, FormsTemplate formsTemplate) {
    return GestureDetector(
      onTap: () async {
        await context.pushNamed(
          FormsRoutingName.createAdhocTemplateNew,
          queryParams: {'editTemplateId': formsTemplate.id, 'isClone': 'true'},
        );
      },
      child: Column(
        children: [
          const Icon(
            Icons.copy_outlined,
          ),
          Text(
            context.l10n.clone,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addScheduleButton(BuildContext context, FormsTemplate formsTemplate) {
    return GestureDetector(
      onTap: () async {
        await context.pushNamed(
          FormsRoutingName.editScheduler,
          extra: formsTemplate,
        );
      },
      child: Column(
        children: [
          const Icon(Icons.schedule),
          Text(
            context.l10n.scheduleLabel,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addDeleteTemplateButton(
    BuildContext context,
    FormsTemplate formsTemplate,
  ) {
    return GestureDetector(
      onTap: () async {
        if (formsTemplate.id != '') {
          await showConfirmationDialog(
            context: context,
            message: context.l10n.deleteTemplateConfirmationMessage,
          ).then((isConfirmed) async {
            if (isConfirmed ?? false) {
              await controller.templateLibraryService
                  .deleteTemplate(
                DeleteTemplateRequest(uuid: formsTemplate.id),
              )
                  .then((value) {
                if (value.success) {
                  _searchController.text = '';
                  controller.clearSearch();
                } else {
                  ScaffoldMessenger.of(stateMediator.getBuildContext!())
                      .showSnackBar(
                    appSnackBarMessage(
                      '''This template cannot be deleted as it has jobs linked to it''',
                      MessageTypes.error,
                    ),
                  );
                }
              });
            }
          });
        }
      },
      child: Column(
        children: [
          const Icon(Icons.delete_sweep),
          Text(
            context.l10n.deleteTemplate,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget cardHeader(FormsTemplate formsTemplate) {
    return Text(
      formsTemplate.title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }

  Widget cardBody(String text) => Text(text);

  Future<void> onActionButtonPressed(BuildContext context) async {
    await context
        .pushNamed(FormsRoutingName.createAdhocTemplateNew)
        .then((result) async {
      if (result != null && result is AdhocTemplate) {
        if (returnSelectedTemplate) {
          controller.selectedTemplate =
              _getFormTemplateFromAdhocTemplate(result);
          if (context.mounted) {
            context.pop(controller.selectedTemplate);
          }
        } else {
          _searchController.text = result.title!;
          controller.selectedClients.clear();
          controller.setSelectedClients('ADHOC');

          await controller.getTemplates(
            filter: SearchQueryFilter(
              includeAll: true,
              clientNames: controller.selectedClients,
              searchText: result.title,
            ),
          );
          controller.setFilter(_searchController.text);
        }
      }
    });
  }

  void onSearch() => controller.toggleSearchWindow();

  void onFilter() => controller.toggleFilterWindow();

  Widget addEffectiveDateSelector(BuildContext context) => TextFormField(
        controller: effectiveDateController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: 'Effective Date',
          hintText: 'Effective Date',
          suffixIcon: IconButton(
            icon: FormAppIcons.searchCalendarIcon,
            onPressed: () async {
              _dismissKeyboard(context);
              await showDialog<SelectedDates>(
                context: context,
                builder: (context) => DatePickerWidget(
                  selectedDate: SelectedDates.date(
                    date: DateTime.now().toUtc(),
                  ),
                  datePickerType: DatePickerType.date,
                  minDate: DateTime.now(),
                  maxDate: DateTime.now().oneYearAhead(),
                ),
                barrierDismissible: false,
              ).then((result) {
                if (result is SelectedDates) {
                  setState(() {
                    final activeLocale = Localizations.localeOf(context);
                    effectiveDateController.text =
                        DateFormat.yMd(activeLocale.toString())
                            .format(result.date!.toLocal());

                    controller.effectiveDate = result.date;
                  });
                }
              });
            },
          ),
        ),
        readOnly: true,
      );

  Widget addTeamSelector(BuildContext context) => TypeAheadFormField<Team?>(
        suggestionsCallback: (searchText) async {
          return (searchText.length > 2)
              ? await controller.getTeams(searchText)
              : const Iterable<Team>.empty();
        },
        itemBuilder: (context, Team? team) {
          return ListTile(title: Text(team!.name!));
        },
        onSuggestionSelected: (Team? team) {
          teamController.text = team!.name!;
          controller.selectedTeam = team;
        },
        noItemsFoundBuilder: (context) => SizedBox(
          height: 50,
          child: typeAheadErrorMessageWidget(
            context.l10n.noRecordsMessage,
          ),
        ),
        textFieldConfiguration: TextFieldConfiguration(
          controller: teamController,
          decoration: FormStyles.textFieldDecoration(context).copyWith(
            labelText: context.l10n.teamLabel,
            hintText: context.l10n.teamHint,
            suffixIcon: teamController.text.isEmpty
                ? null
                : IconButton(
                    onPressed: () {
                      teamController.clear();
                      controller.selectedTeam = null;
                    },
                    icon: const Icon(Icons.clear),
                  ),
          ),
        ),
      );

  void _dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Future<void> onRefresh() async {
    await controller.loadTemplates();
  }

  FormsTemplate _getFormTemplateFromPanelChild(PanelChild template) =>
      FormsTemplate(
        id: template.templateId,
        title: template.templateTitle,
        isDigitalSignatureRequired: template.isDigitalSignatureRequired,
        validateBySignature: template.validateBySignature,
        validateByWorkOrder: template.validateByWorkOrder,
        validateFrom: template.validateFrom,
        isEmailNotificationRequired: template.isEmailNotificationRequired,
        sendEmailOnFailedQuestions: template.sendEmailOnFailedQuestions,
        emailIds: template.emailIds,
        assignFailedQuestionToTeam: template.assignFailedQuestionToTeam,
        assignFailedQuestionToTeamId: template.assignFailedQuestionToTeamId,
        referenceId: template.referenceId,
        clientName: template.clientName,
        canSchedule: canScheduleTemplate(template.clientName),
        isPublished: template.isPublished,
      );

  FormsTemplate _getFormTemplateFromAdhocTemplate(AdhocTemplate result) =>
      FormsTemplate(
        id: result.uuid!,
        title: result.title!,
        isDigitalSignatureRequired: result.isDigitalSignatureRequired ?? false,
        validateBySignature: result.validateBySignature ?? false,
        validateByWorkOrder: result.validateByWorkOrder ?? false,
        validateFrom: result.validateFrom,
        isEmailNotificationRequired:
            result.isEmailNotificationRequired ?? false,
        sendEmailOnFailedQuestions: result.sendEmailOnFailedQuestions ?? false,
        emailIds: result.emailIds,
        assignFailedQuestionToTeam: result.assignFailedQuestionToTeam,
        assignFailedQuestionToTeamId: result.assignFailedQuestionToTeamId,
        isPublished: result.isPublished ?? false,
        referenceId: result.referenceId,
        clientName: getClientName(result.clientId),
        canSchedule: canScheduleTemplate(getClientName(result.clientId)!),
      );

  FormsTemplate _getFormTemplateFromFormsTemplate(
    FormsTemplate formsTemplate,
  ) =>
      FormsTemplate(
        id: formsTemplate.id,
        title: formsTemplate.title,
        isDigitalSignatureRequired: formsTemplate.isDigitalSignatureRequired,
        validateBySignature: formsTemplate.validateBySignature,
        validateByWorkOrder: formsTemplate.validateByWorkOrder,
        validateFrom: formsTemplate.validateFrom,
        isEmailNotificationRequired: formsTemplate.isEmailNotificationRequired,
        sendEmailOnFailedQuestions: formsTemplate.sendEmailOnFailedQuestions,
        emailIds: formsTemplate.emailIds,
        assignFailedQuestionToTeam: formsTemplate.assignFailedQuestionToTeam,
        assignFailedQuestionToTeamId:
            formsTemplate.assignFailedQuestionToTeamId,
        clientName: formsTemplate.clientName,
        canSchedule: canScheduleTemplate(formsTemplate.clientName!),
        referenceId: formsTemplate.referenceId,
        isPublished: formsTemplate.isPublished,
      );

  bool? canScheduleTemplate(String clientName) {
    return controller.clients
            .where(
              (x) =>
                  x.title?.toLowerCase().trim() ==
                  clientName.toLowerCase().trim(),
            )
            .first
            .canSchedule ??
        true;
  }

  String? getClientName(int? clientId) =>
      controller.clients.where((x) => x.id == clientId).firstOrNull?.title;

  List<Widget> _addControlButtons(
    BuildContext context,
    FormsTemplate formTemplate,
  ) {
    return [
      const Divider(),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            if (ScreenAccess().canDeleteTemplate(context))
              Expanded(
                child: _addDeleteTemplateButton(
                  context,
                  formTemplate,
                ),
              ),
            if (canScheduleTemplate(formTemplate.clientName!) ?? false)
              Expanded(
                child: _addScheduleButton(
                  context,
                  formTemplate,
                ),
              ),
            Expanded(
              child: _addCloneButton(
                context,
                formTemplate,
              ),
            ),
            Expanded(
              child: _addEditButton(
                context,
                formTemplate,
              ),
            ),
            Expanded(
              child: _addPreviewTemplateButton(
                context,
                formTemplate,
              ),
            ),
            Expanded(
              child: _addVersionsVisibilityButton(context, formTemplate),
            ),
          ],
        ),
      ),
    ];
  }
}
