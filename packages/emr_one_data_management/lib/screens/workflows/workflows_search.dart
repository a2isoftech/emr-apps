import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/workflows/workflow_level_cell.dart';
import 'package:emr_one_data_management/screens/workflows/workflows_add_level.dart';
import 'package:emr_one_data_management/screens/workflows/workflows_data_source.dart';
import 'package:emr_one_data_management/screens/workflows/workflows_filter_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class WorkflowsSearch extends StatefulWidget {
  const WorkflowsSearch({required this.defaultTerritoryCode, super.key});

  final String defaultTerritoryCode;

  @override
  State<WorkflowsSearch> createState() => WorkflowsSearchState();
}

class WorkflowsSearchState extends State<WorkflowsSearch> {
  late final EmrQueryLayoutController<WorkflowRule> _queryLayoutController;
  late WorkflowsFilterController _filterController;

  late ValueNotifier<Yard?> _selectedYard = ValueNotifier(null);
  late ValueNotifier<String> _selectedProductFamily = ValueNotifier('');
  late ValueNotifier<double> _selectedMinAmount = ValueNotifier(0);
  late ValueNotifier<double> _selectedMaxAmount = ValueNotifier(9999);
  late String _selectedWorkflowId = '';

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int _maxLevel = 0;
  static const double _baseCellHeight = Insets.gutter * 2;
  static const double _emptyRowHeight = 55;

  @override
  void initState() {
    super.initState();

    _filterController = WorkflowsFilterController(
      context.coreApi,
      widget.defaultTerritoryCode,
      _handleErrors,
    );

    final stocketakeDataSource = WorkflowsDataSource(
      workflowsFilterController: _filterController,
      coreApiService: context.coreApi,
      errorHandler: _handleErrors,
    );

    _queryLayoutController = EmrQueryLayoutController<WorkflowRule>(
      dataSource: stocketakeDataSource,
      filterController: _filterController,
      supportedViewModes: {EmrQueryLayoutViewMode.grid},
    );

    _queryLayoutController.dataSource.refresh();
  }

  Future<void> _handleErrors(String errorMessage) async {
    await EmrModal.showMessageBar(
      context,
      errorMessage,
      messageType: MessageBarTypes.error,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _filterController.filters,
      builder: (context, value, child) {
        final workflowType = _filterController.getCurrentWorkflowAsEnum();
        return FutureBuilder(
          future: Future.wait([
            context.coreApi.referenceData.getWorkflowRuleConfiguration(
              workflowType,
            ),
            context.coreApi.referenceData.getWorkflowRuleMaxLevel(
              workflowType: workflowType,
            ),
          ]),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            _maxLevel = snapshot.data![1].data != null
                ? (snapshot.data![1].data! as WorkflowRuleMaxLevel).maxLevel
                : 0;

            return ValueListenableBuilder(
              valueListenable: _queryLayoutController.dataSource.data,
              builder: (context, value, child) {
                return EmrQueryLayoutHybrid(
                  controller: _queryLayoutController,
                  pinnedColumnCount: 1,
                  key: GlobalKey(),
                  actions: {
                    WorkflowsAddLevelIntent: WorkflowsAddLevelAction(
                      createIntent: (context) =>
                          WorkflowsAddLevelIntent(context: context),
                      label: 'Add Level',
                      onAddLevel: _addLevel,
                    ),
                  },
                  rowHeight: _getRowHeight,
                  columns: _buildColumns(
                    snapshot.data![0].data == null
                        ? WorkflowConfiguration(id: '', levelTitle: {})
                        : snapshot.data![0].data! as WorkflowConfiguration,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  double _getRowHeight(int rowIndex) {
    if (rowIndex != -1 &&
        _queryLayoutController.dataSource.data.value.isNotEmpty) {
      final row = _queryLayoutController.dataSource.data.value[rowIndex];
      final userEmailsCount = row.levelUserEmails.isNotEmpty
          ? row.levelUserEmails.values.map((toElement) => toElement.length).max
          : 0;
      final maxLines = userEmailsCount * (Insets.gutter + 4);
      return maxLines == 0 ? _emptyRowHeight : _baseCellHeight + maxLines;
    }
    return _emptyRowHeight;
  }

  List<EmrGridColumn<WorkflowRule>> _getWorkflowSpecificColumns() {
    final workflowType = _filterController.getCurrentWorkflow();
    switch (workflowType) {
      case WorkflowsFilterController.kStocktakeWorkflow:
        return [
          EmrGridColumn<WorkflowRule>(
            headerBuilder: () => const EmrGridHeader(text: 'Product Family'),
            cellBuilder: (x) => Text((x as StocktakeRule).productFamily),
          ),
        ];
      case WorkflowsFilterController.kPaymentWorkflow:
        return [
          EmrGridColumn<WorkflowRule>(
            headerBuilder: () => getAmountColumHeader('Min. Amount'),
            cellBuilder: (x) =>
                _buildAmountCell(x as YardPaymentRule, x.minAmount),
          ),
          EmrGridColumn<WorkflowRule>(
            headerBuilder: () => getAmountColumHeader('Max. Amount'),
            cellBuilder: (x) =>
                _buildAmountCell(x as YardPaymentRule, x.maxAmount),
          ),
        ];
      default:
        return [];
    }
  }

  Widget getAmountColumHeader(String header) {
    return EmrGridHeader(text: header, textAlign: TextAlign.center);
  }

  List<EmrGridColumn<WorkflowRule>> _buildColumns(
    WorkflowConfiguration workflowConfiguration,
  ) {
    return [
      EmrGridColumn<WorkflowRule>(
        headerBuilder: _buildYardCodeCell,
        cellBuilder: (x) => Text(x.yardCode),
      ),
      ..._getWorkflowSpecificColumns(),
      ..._getLevelColumns(workflowConfiguration),
    ];
  }

  void _addLevel() {
    _maxLevel++;
    _queryLayoutController.dataSource.data.value = [
      ..._queryLayoutController.dataSource.data.value,
    ];
  }

  List<EmrGridColumn<WorkflowRule>> _getLevelColumns(
    WorkflowConfiguration workflowConfiguration,
  ) {
    final levelColumns = <EmrGridColumn<WorkflowRule>>[];
    for (var i = 1; i <= _maxLevel; i++) {
      levelColumns.add(
        EmrGridColumn<WorkflowRule>(
          headerBuilder: () => Center(
            child: Wrap(
              children: [
                Text(
                  workflowConfiguration.levelTitle[i] ?? 'Level $i',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.edit_rounded),
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  iconSize: 16,
                  padding: const EdgeInsets.only(left: 2, top: 2),
                  constraints: const BoxConstraints(
                    maxHeight: 16,
                    maxWidth: 16,
                  ),
                  onPressed: () async {
                    final title = ValueNotifier(
                      workflowConfiguration.levelTitle[i] ?? '',
                    );
                    await EmrDialog.modal<void>(
                      context,
                      titleText: 'Edit Level Title',
                      builder: (BuildContext context) {
                        return Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 500,
                                child: EmrTextFormField<String>(binding: title),
                              ),
                            ],
                          ),
                        );
                      },
                      onAccept: () async {
                        final response = await context.coreApi.referenceData
                            .addWorkflowConfiguration(
                              id: workflowConfiguration.id,
                              level: i,
                              title: title.value,
                            );

                        if (!mounted) return;

                        Navigator.pop(context);

                        if (response.success) {
                          await EmrModal.showMessageBar(
                            context,
                            'Level Title saved successfully.',
                          );
                          setState(() {});
                        } else {
                          await EmrModal.showMessageBar(
                            context,
                            response.message,
                            messageType: MessageBarTypes.error,
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          width: 200,
          cellBuilder: (row) {
            return _buildLevelCell(row, i);
          },
        ),
      );
    }

    return levelColumns;
  }

  Widget _buildYardCodeCell() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const EmrGridHeader(text: 'Yard Code'),
            IconButton(
              iconSize: 16,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              padding: const EdgeInsets.only(left: 2, top: 0.5),
              constraints: const BoxConstraints(maxHeight: 16, maxWidth: 16),
              onPressed: () {
                _selectedYard = ValueNotifier(null);
                _selectedProductFamily = ValueNotifier('');
                _selectedMinAmount = ValueNotifier(0);
                _selectedMaxAmount = ValueNotifier(9999);
                _manageWorkflowRule('Add Workflow Rule for Yard');
              },
              icon: const Icon(Icons.add_circle),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _manageWorkflowRule(String title, {bool isEdit = false}) async {
    await EmrDialog.modal<void>(
      context,
      titleText: title,
      builder: (BuildContext context) {
        return Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 500,
                child: EmrPickerFormField<Yard>(
                  validator: Validators.required,
                  labelText: 'Yard',
                  items: _getYards,
                  itemTitleText: (item) => item.yardCode,
                  itemSubtitleText: (item) =>
                      item.region != null ? item.region!.name : '',
                  binding: _selectedYard,
                  enabled: ValueNotifier(!isEdit),
                ),
              ),
              const SizedBox(height: Insets.gutter),
              if (_filterController.getCurrentWorkflow() ==
                  WorkflowsFilterController.kStocktakeWorkflow)
                SizedBox(
                  width: 500,
                  child: EmrPickerFormField<String>(
                    validator: (val) => Validators.join([
                      Validators.required(val),
                      validateYardWithProductFamily(),
                    ]),
                    labelText: 'Product Family',
                    items: _getProductFamilies,
                    itemTitleText: (item) => item,
                    binding: _selectedProductFamily,
                  ),
                ),
              if (_filterController.getCurrentWorkflow() ==
                  WorkflowsFilterController.kPaymentWorkflow)
                SizedBox(
                  width: 500,
                  child: EmrTextFormField<double>(
                    labelText: 'Min. Amount',
                    binding: _selectedMinAmount,
                    validator: Validators.required,
                  ),
                ),
              if (_filterController.getCurrentWorkflow() ==
                  WorkflowsFilterController.kPaymentWorkflow)
                SizedBox(
                  width: 500,
                  child: EmrTextFormField<double>(
                    labelText: 'Max. Amount',
                    binding: _selectedMaxAmount,
                    validator: (value) {
                      final required = Validators.required(value);

                      if (required == null && value!.isNotEmpty) {
                        return _selectedMinAmount.value >
                                _selectedMaxAmount.value
                            ? 'Min. amount cannot be greater'
                                  ' than Max. amonut'
                            : null;
                      }

                      return required;
                    },
                  ),
                ),
            ],
          ),
        );
      },
      onAccept: () async {
        if (formKey.currentState?.validate() ?? false == true) {
          if (!mounted) return;
          Navigator.pop(context);

          final rule = switch (_filterController.getCurrentWorkflow()) {
            WorkflowsFilterController.kStocktakeWorkflow => StocktakeRule(
              id: '',
              yardCode: _selectedYard.value!.yardCode,
              levelUserEmails: {},
              productFamily: _selectedProductFamily.value,
            ),
            WorkflowsFilterController.kPaymentWorkflow => YardPaymentRule(
              id: '',
              yardCode: _selectedYard.value!.yardCode,
              levelUserEmails: {},
              maxAmount: _selectedMaxAmount.value,
              minAmount: _selectedMinAmount.value,
            ),
            WorkflowsFilterController.kAccountWorkflow => AccountApprovalRule(
              id: '',
              yardCode: _selectedYard.value!.yardCode,
              levelUserEmails: {},
            ),
            _ => throw Exception('Workflow Type not found'),
          };

          if (isEdit) {
            final response = await context.coreApi.referenceData
                .modifyWorkflowYardPaymentRule(
                  _selectedWorkflowId,
                  _selectedMinAmount.value,
                  _selectedMaxAmount.value,
                );

            if (!response.success) {
              await _handleErrors(response.message);
            } else {
              if (!mounted) return;
              await EmrModal.showMessageBar(
                context,
                'Yard Payment Rule saved successfully.',
              );
              await _queryLayoutController.dataSource.refresh();
            }
          } else {
            if (_maxLevel == 0) {
              _maxLevel = 1;
            }
            _queryLayoutController.dataSource.data.value = [
              rule,
              ..._queryLayoutController.dataSource.data.value,
            ];
          }
        }
      },
    );
  }

  String? validateYardWithProductFamily() {
    return _queryLayoutController.dataSource.data.value
            .where(
              (x) =>
                  x.yardCode == _selectedYard.value!.yardCode &&
                  ((x as StocktakeRule).productFamily ==
                      _selectedProductFamily.value),
            )
            .isEmpty
        ? null
        : 'Yard with Product'
              ' Family already exists.';
  }

  Future<List<Yard>> _getYards(String yardCode) async {
    late final List<Territory> territoryCodes;
    final filterValues = _filterController.getCurrentTerritory();

    if (filterValues != null) {
      territoryCodes = filterValues
          .map((x) => Territory(x, '', const []))
          .toList();
    }
    final response = await context.coreApi.referenceData.yards(
      yardCode,
      territories: territoryCodes,
    );
    return response;
  }

  Widget _buildAmountCell(YardPaymentRule yardPaymentRule, double amount) {
    return WorkflowLevelCell(
      onTap: () {
        _selectedWorkflowId = yardPaymentRule.id;
        _selectedYard = ValueNotifier(
          Yard(yardCode: yardPaymentRule.yardCode, name: '', shortName: ''),
        );
        _selectedMinAmount = ValueNotifier(yardPaymentRule.minAmount);
        _selectedMaxAmount = ValueNotifier(yardPaymentRule.maxAmount);
        _manageWorkflowRule(
          'Modify Amount for Workflow Yard Payment Rule',
          isEdit: true,
        );
      },
      children: [Text(amount.toString())],
    );
  }

  Widget _buildLevelCell(WorkflowRule workflowRule, int currentLevel) {
    var levelEmails = ValueNotifier<List<String>>([]);
    final emails = <Widget>[];
    for (final x in workflowRule.levelUserEmails[currentLevel] ?? []) {
      emails.add(
        Tooltip(
          message: x as String,
          child: Text(x, overflow: TextOverflow.ellipsis, maxLines: 1),
        ),
      );
    }
    return WorkflowLevelCell(
      children: emails,
      onTap: () async {
        levelEmails = ValueNotifier(
          workflowRule.levelUserEmails[currentLevel] ?? [],
        );
        await EmrDialog.modal<void>(
          context,
          titleText: 'Users to notify for ${workflowRule.yardCode}',
          builder: (BuildContext context) {
            return SizedBox(
              width: 500,
              child: EmrMultiPickerFormField<String>(
                items: _getUsers,
                itemTitleText: (item) => item,
                binding: levelEmails,
              ),
            );
          },
          onAccept: () async {
            workflowRule.levelUserEmails.remove(currentLevel);
            final noUsersForYard =
                workflowRule.levelUserEmails.values.flattened.isEmpty;

            if (noUsersForYard && levelEmails.value.isEmpty) {
              await EmrDialog.noYes(
                context,
                titleText:
                    'Are you sure you want to remove user'
                    ' as it will remove'
                    ' the Workflow Rule Yard as well?',
                onYes: () async => _modifyLevelApprovalUser(
                  workflowRule,
                  currentLevel,
                  levelEmails.value,
                ),
              );
            } else {
              await _modifyLevelApprovalUser(
                workflowRule,
                currentLevel,
                levelEmails.value,
              );
            }
          },
        );
      },
    );
  }

  Future<List<String>> _getUsers(String email) async {
    final response = await context.coreApi.userAccess.searchUsers(query: email);
    return response.data?.$1.map((x) => x.emailAddress).toList() ?? [];
  }

  Future<void> _modifyLevelApprovalUser(
    WorkflowRule workflowRule,
    int currentLevel,
    List<String> levelEmails,
  ) async {
    final workflowRuleType = _filterController.getCurrentWorkflowAsEnum();
    final response = await context.coreApi.referenceData.addLevelUser(
      workflowRule.id,
      workflowRule.yardCode,
      currentLevel,
      levelEmails,
      workflowRule is StocktakeRule ? workflowRule.productFamily : '',
      workflowRuleType,
      workflowRule is YardPaymentRule ? workflowRule.minAmount : 0,
      workflowRule is YardPaymentRule ? workflowRule.maxAmount : 0,
    );

    if (!mounted) return;
    Navigator.pop(context);

    await _queryLayoutController.dataSource.refresh();

    if (!mounted) return;
    if (response.success) {
      await EmrModal.showMessageBar(
        context,
        'Level Approval changes saved successfully.',
      );
    } else {
      await EmrModal.showMessageBar(
        context,
        response.message,
        messageType: MessageBarTypes.error,
      );
    }
  }

  Future<List<String>> _getProductFamilies(String query) async {
    final response = await context.coreApi.referenceData.searchProductFamilies(
      query: query,
    );
    if (response.success) {
      return response.data ?? [];
    }

    await _handleErrors(response.message);
    return [];
  }
}
