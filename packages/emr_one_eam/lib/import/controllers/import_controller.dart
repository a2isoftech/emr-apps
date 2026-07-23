import 'dart:convert';

import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/import/services/import_service.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:emr_one_eam/models/import_api_response.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

abstract class BaseImportController {
  ValueNotifier<bool> get isBusy;
  Future<bool> pickFile();
  XFile? get selectedFile;
  TextEditingController get importFileTextController;
  ValueNotifier<ImportApiResponse?> get importResponseType;
  void resetController();
}

abstract class IImportAssetController extends BaseController<IImportService>
    implements BaseImportController {
  IImportAssetController({required super.service});

  TextEditingController get workSheetName;
  TextEditingController get startRow;
  TextEditingController get endRow;
  TextEditingController get selectedTemplate;
  ValueNotifier<List<Map<String, dynamic>>?> get editProps;
  Map<String, dynamic>? get responseJson;

  Future<Iterable<AssetTemplate>> fetchAssetTemplates(String search);
  void importAsset({bool preview = true});
  void setSelectedTemplate(AssetTemplate? selectedValue);

  void updateAssetPropOrCounter(
    dynamic propertyName,
    Map<String, String> changedFragment,
  );
}

abstract class IImportController extends BaseController<IImportService>
    implements BaseImportController {
  IImportController({required super.service});
  void importAssetTemplate({bool preview});
}

abstract class IBulkUpdateController extends BaseController<IImportService>
    implements BaseImportController {
  IBulkUpdateController({required super.service});
  void bulkUpdateAssets();
}

class ImportController extends IImportController
    implements IBulkUpdateController, IImportAssetController {
  ImportController({required super.service});
  final ValueNotifier<bool> _isBusy = ValueNotifier(false);
  XFile? _selectedFile;
  final TextEditingController _importFileTextController =
      TextEditingController(text: '');

  final ValueNotifier<ImportApiResponse?> _importResponseType =
      ValueNotifier(null);

  final TextEditingController _workSheetName = TextEditingController();
  final TextEditingController _startRow = TextEditingController();
  final TextEditingController _endRow = TextEditingController();
  final TextEditingController _selectedTemplate = TextEditingController();
  final ValueNotifier<List<Map<String, dynamic>>?> _editProps =
      ValueNotifier(null);

  Map<String, dynamic>? _responseJson = {};

  @override
  ValueNotifier<bool> get isBusy => _isBusy;

  @override
  Future<bool> pickFile() async {
    final result = await openFile(
      acceptedTypeGroups: <XTypeGroup>[
        const XTypeGroup(
          extensions: <String>['xlsx'],
        ),
      ],
    );

    if (result != null) {
      final file = result;
      if (file.name.split('.').last != 'xlsx') {
        return false;
      }
      _importFileTextController.text = file.name;
      _selectedFile = file;
      return true;
    }
    return false;
  }

  @override
  XFile? get selectedFile => _selectedFile;

  @override
  TextEditingController get importFileTextController =>
      _importFileTextController;

  @override
  Future<void> importAssetTemplate({bool preview = true}) async {
    _isBusy.value = true;
    try {
      _importResponseType.value = await service.importAssetTemplate(
        preview: preview,
        file: _selectedFile,
      );
    } finally {
      _isBusy.value = false;
    }
  }

  @override
  ValueNotifier<ImportApiResponse?> get importResponseType =>
      _importResponseType;

  @override
  Future<void> bulkUpdateAssets() async {
    _isBusy.value = true;
    try {
      _importResponseType.value = await service.bulkUpdateAsset(
        file: _selectedFile,
      );
    } finally {
      _isBusy.value = false;
    }
  }

  @override
  void resetController() {
    _selectedFile = null;
    _importFileTextController.text = '';
    _importResponseType.value = null;
    _workSheetName.text = '';
    _startRow.text = '';
    _endRow.text = '';
    _selectedTemplate.text = '';
    _editProps.value = [];
  }

  @override
  TextEditingController get endRow => _endRow;

  @override
  TextEditingController get startRow => _startRow;

  @override
  TextEditingController get workSheetName => _workSheetName;

  @override
  Future<Iterable<AssetTemplate>> fetchAssetTemplates(String search) {
    return service.fetchAssetTemplates(
      first: 50,
      where: Input$AssetTemplateFilterInput(
        name: Input$StringOperationFilterInput(contains: search),
      ),
    );
  }

  @override
  Future<void> setSelectedTemplate(AssetTemplate? selectedValue) async {
    _editProps.value = [];
    _responseJson = null;
    if (selectedValue == null) {
      _responseJson = {};
      return;
    }
    final response = await service.fetchAssetBytemplateid(selectedValue.id!);
    if (response != null) {
      _responseJson = response;
      populateProps();
      _editProps.value = [..._editProps.value ?? []];
    }
  }

  @override
  ValueNotifier<List<Map<String, dynamic>>?> get editProps => _editProps;

  @override
  Map<String, dynamic>? get responseJson => _responseJson;
  void addReplacement(
    String name,
    String propName,
    String xlsxToJsonProcessor,
    String valueType,
  ) {
    final fragment = {
      'xslxToJsonProcessor': xlsxToJsonProcessor,
      'column': '',
      'valueType': valueType,
    };

    responseJson?[propName] = fragment;
    _editProps.value ??= [];
    _editProps.value!.add({'id': '', 'name': name, 'fragment': fragment});
  }

  void populateProps() {
    for (final item in ImportAssetEdit.importAssetEditProperties.entries) {
      final propName = item.value['propertyName'];
      final xslxToJsonProcessor = item.value['xslxToJsonProcessor'];
      final valueType = item.value['valueType'];
      addReplacement(
        item.key,
        (propName ?? '').toString(),
        (xslxToJsonProcessor ?? '').toString(),
        (valueType ?? '').toString(),
      );
    }
    final valueTypes = {
      'Date': 'dateiso8601',
      'Date/Time': 'datetimeiso8601',
      'Numeric': 'number',
      'Yes/No': 'boolean',
    };
    final isMandatoryValueTypeSuffixes = {true: '', false: '?'};
    final tempProps =
        responseJson?['assetProperties'] as List<Map<String, dynamic>>;
    for (final item in tempProps) {
      addReplacement(
        (item['name'] ?? '').toString(),
        'propertyValue',
        'CellValue',
        (valueTypes[item['dataType']] ?? 'string') +
            isMandatoryValueTypeSuffixes[item['isMandatory'] as bool]!,
      );
    }

    final tempCounters =
        responseJson?['assetCounters'] as List<Map<String, dynamic>>;

    for (final item in tempCounters) {
      final valueType = (item['dataType'] ?? '').toString() == 'Date/Time'
          ? 'datetimeepoch'
          : 'number';
      addReplacement(
        '${item['name']} (Value)',
        'value',
        'CellValue',
        valueType,
      );
      addReplacement(
        '${item['name']} (Breach Value)',
        'breachValue',
        'CellValue',
        valueType,
      );
    }
  }

  @override
  Future<void> importAsset({bool preview = true}) async {
    _isBusy.value = true;
    try {
      _importResponseType.value = await service.importAsset(
        preview: preview,
        file: _selectedFile,
        startRow: int.parse(startRow.text),
        endRow: int.parse(endRow.text),
        jsonSchema: jsonEncode(responseJson ?? ''),
        worksheetName: workSheetName.text,
      );
    } finally {
      _isBusy.value = false;
    }
  }

  @override
  void updateAssetPropOrCounter(
    dynamic propertyName,
    Map<String, String> changedFragment,
  ) {
    final tempProps =
        responseJson?['assetProperties'] as List<Map<String, dynamic>>;
    final tempCounters =
        responseJson?['assetCounters'] as List<Map<String, dynamic>>;
    final selectedTempProp = tempProps
        .where(
          (element) => element['name'] == propertyName,
        )
        .firstOrNull;
    final selectedTempCounter = tempCounters
        .where(
          (element) => element['name'] == propertyName,
        )
        .firstOrNull;
    if (selectedTempProp != null) {
      selectedTempProp['propertyValue'] = changedFragment;
      return;
    }
    if (selectedTempCounter != null) {
      selectedTempCounter['propertyValue'] = changedFragment;
      return;
    }
  }

  @override
  TextEditingController get selectedTemplate => _selectedTemplate;
}
