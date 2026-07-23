import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/models/api/data_list_value.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/iuser_preference_repository.dart';
import 'package:emr_one_forms_engine/core/store/components/drop_down_component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_keyed_value.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/graphql_query_data_provider.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/graphql/ListValues.graphql.dart';
import 'package:emr_one_forms_engine/views/components/component.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends FormComponentWidget<DropdownComponent> {
  const DropdownWidget({super.key, required super.model});

  @override
  State<StatefulWidget> createState() => _DropdownState();
}

class _DropdownState
    extends FormComponentState<DropdownComponent, DropdownWidget> {
  final _textController = TextEditingController();
  late String _question;
  late String _errorMessage;
  late List<DataListValue> _dataListValue = [];
  late DataListValue? _selectedValue;

  @override
  void initState() {
    super.initState();
    initialiseDropdown();
  }

  void initialiseDropdown() async {
    _textController.text = currentModel.selectedDropdownValue ?? '';
    _question = _getQuestionText(currentModel);
    _errorMessage = _getErrorMessage(currentModel);
    _dataListValue = _getDataList(currentModel);
    _selectedValue = _getSelectedValue();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> cellChildren = [
      Text(_question, style: FormTextStyles.questionStyle),
      const SizedBox(height: 10),
      _buildDropdown(_dataListValue),
    ];

    if (!currentModel.isValid) {
      cellChildren.add(const SizedBox(height: 10.0));
      cellChildren.add(
        Text(
          StringLiteral.ComponentValidationText,
          style: FormTextStyles.errorMessageTextStyle,
        ),
      );
    }

    bool differentUser =
        FormsEngine().isPreview ||
        (currentModel.answeredBy !=
                ServiceContainer().get<IFormConfiguration>().userName &&
            (_selectedValue != null && _selectedValue!.text.isNotEmpty));

    return Column(
      children: [
        AbsorbPointer(
          absorbing: differentUser,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: _decoration(differentUser),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: cellChildren,
            ),
          ),
        ),
      ],
    );
  }

  DropdownButtonFormField _buildDropdown(List<DataListValue> dataList) =>
      DropdownButtonFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: _dropdownDecoration(),
        hint: Text(
          currentModel.hintText ?? '',
          style: FormTextStyles.hintTextStyle,
        ),
        icon: FormIcons.dropdownList,
        iconSize: 30,
        isExpanded: true,
        items: dataList.map((e) {
          return DropdownMenuItem<DataListValue>(
            value: e,
            child: ButtonTheme(
              alignedDropdown: true,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    e.text,
                    style: FormTextStyles.dropdownListTitleStyle,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: _onChanged,
        validator: _onValidate,
        initialValue: _selectedValue,
      );

  BoxDecoration _decoration(bool differentUser) => BoxDecoration(
    border: Border.all(
      color: currentModel.isValid
          ? FormColors.componentBorderColor
          : FormColors.componentErrorBorderColor,
      width: currentModel.isValid ? 1.0 : 2.0,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(7)),
    color: differentUser ? FormColors.componentBorderColor : null,
  );

  InputDecoration _dropdownDecoration() => const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
  );

  DataListValue? _getSelectedValue() {
    if (currentModel.selectedDropdownValue == null ||
        _dataListValue.isEmpty ||
        _dataListValue.isEmpty) {
      return null;
    }
    return _dataListValue
        .where(
          (d) =>
              d.text.toLowerCase() ==
              currentModel.selectedDropdownValue?.toLowerCase(),
        )
        .first;
  }

  List<DataListValue> _getDataList(DropdownComponent currentModel) {
    List<DataListValue> dropdownDataListValues = [];
    if (currentModel.dropdownDataProvider is GraphQLQueryDataProvider) {
      _getListFromGraphQl(
        currentModel.dropdownDataProvider as GraphQLQueryDataProvider,
      );
    } else {
      var listMap = currentModel.dropdownDataProvider?.values;
      listMap?.forEach((dl) {
        dropdownDataListValues.add(
          DataListValue(
            id: dl.id,
            active: true,
            orderIndex: -1,
            listId: -1,
            text: dl.value,
            value: dl.value,
          ),
        );
      });
    }
    return dropdownDataListValues;
  }

  Future<List<DataListValue>> _getListFromGraphQl(
    GraphQLQueryDataProvider provider,
  ) async {
    List<DataListValue> dataListValue = [];

    dataListValue =
        await ServiceContainer().get<IUserPreferencesRepository>().getDataList(
          currentModel.dropdownDataProviderId!,
        ) ??
        [];
    if (dataListValue.isNotEmpty) {
      setState(() {
        _dataListValue = dataListValue;
        _selectedValue = _getSelectedValue();
      });
      return dataListValue;
    }

    var config = ServiceContainer().get<IFormConfiguration>();
    final policy = SimplePolicy(config.formsApiUrl!);
    policy.timeout = const Duration(minutes: 10);
    policy.getToken = (ServiceContainer()
        .get<IAuthorizationProvider?>()
        ?.getSimpleAuthorizationToken)!;
    policy.shouldRetry = (retryContext) => Future.value(false);
    var client = ResilientHttpClient.withPolicy(policy);
    var result = await documentNodeQuerygetListValues.execute(
      client,
      Query$getListValues.fromJson,
    );

    List<ProviderKeyedValue> jsonResponseData = result.data!.listValues
        .map(
          (e) => ProviderKeyedValue(
            id: e.id.toString(),
            value: e.value.toString(),
            properties: e.toJson(),
          ),
        )
        .toList();

    for (var element in jsonResponseData) {
      dataListValue.add(DataListValue.fromJson(element.properties!));
    }
    debugPrint(jsonResponseData.length.toString());
    setState(() {
      _dataListValue = dataListValue;
      _selectedValue = _getSelectedValue();
    });

    await ServiceContainer().get<IUserPreferencesRepository>().saveDataList(
      currentModel.dropdownDataProviderId!,
      dataListValue,
    );
    return dataListValue;
  }

  String _getQuestionText(DropdownComponent currentModel) =>
      (currentModel.isRequired)
      ? '${currentModel.questionText} *'
      : currentModel.questionText;

  String _getErrorMessage(DropdownComponent currentModel) {
    String componentErrorMessage = '';
    if (currentModel.isRequired) {
      List<ValidatorDTO>? validators = currentModel.validators;
      if (validators != null) {
        componentErrorMessage =
            validators[0].message ?? StringLiteral.RequiredFieldErrorMessage;
      }
    }
    return componentErrorMessage;
  }

  void _onChanged(dynamic value) {
    var selectedDropdownValue = value.text;
    _setStateForField(selectedDropdownValue);
    changeValue(selectedDropdownValue);
  }

  void _setStateForField(String value) {
    setState(() {
      if (currentModel.isRequired) {
        currentModel.isValid = _onValidate(value) == null;
      }
      debugPrint(value.toString());
      _textController.text = value.toString();
    });
  }

  String? _onValidate(value) {
    if (value == null || value == '') {
      return _errorMessage;
    }
    return null;
  }
}
