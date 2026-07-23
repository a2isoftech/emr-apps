import 'package:gql/ast.dart';

class Variables$Query$GetCompanyPreference {
  factory Variables$Query$GetCompanyPreference({required String companyCode}) =>
      Variables$Query$GetCompanyPreference._({
        r'companyCode': companyCode,
      });

  Variables$Query$GetCompanyPreference._(this._$data);

  factory Variables$Query$GetCompanyPreference.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$companyCode = data['companyCode'];
    result$data['companyCode'] = (l$companyCode as String);
    return Variables$Query$GetCompanyPreference._(result$data);
  }

  Map<String, dynamic> _$data;

  String get companyCode => (_$data['companyCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$companyCode = companyCode;
    result$data['companyCode'] = l$companyCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetCompanyPreference<
          Variables$Query$GetCompanyPreference>
      get copyWith => CopyWith$Variables$Query$GetCompanyPreference(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCompanyPreference) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    return Object.hashAll([l$companyCode]);
  }
}

abstract class CopyWith$Variables$Query$GetCompanyPreference<TRes> {
  factory CopyWith$Variables$Query$GetCompanyPreference(
    Variables$Query$GetCompanyPreference instance,
    TRes Function(Variables$Query$GetCompanyPreference) then,
  ) = _CopyWithImpl$Variables$Query$GetCompanyPreference;

  factory CopyWith$Variables$Query$GetCompanyPreference.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompanyPreference;

  TRes call({String? companyCode});
}

class _CopyWithImpl$Variables$Query$GetCompanyPreference<TRes>
    implements CopyWith$Variables$Query$GetCompanyPreference<TRes> {
  _CopyWithImpl$Variables$Query$GetCompanyPreference(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCompanyPreference _instance;

  final TRes Function(Variables$Query$GetCompanyPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? companyCode = _undefined}) =>
      _then(Variables$Query$GetCompanyPreference._({
        ..._instance._$data,
        if (companyCode != _undefined && companyCode != null)
          'companyCode': (companyCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCompanyPreference<TRes>
    implements CopyWith$Variables$Query$GetCompanyPreference<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompanyPreference(this._res);

  TRes _res;

  call({String? companyCode}) => _res;
}

class Query$GetCompanyPreference {
  Query$GetCompanyPreference({
    required this.companyPreference,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetCompanyPreference.fromJson(Map<String, dynamic> json) {
    final l$companyPreference = json['companyPreference'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference(
      companyPreference: Query$GetCompanyPreference$companyPreference.fromJson(
          (l$companyPreference as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCompanyPreference$companyPreference companyPreference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyPreference = companyPreference;
    _resultData['companyPreference'] = l$companyPreference.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyPreference = companyPreference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyPreference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCompanyPreference) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyPreference = companyPreference;
    final lOther$companyPreference = other.companyPreference;
    if (l$companyPreference != lOther$companyPreference) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference
    on Query$GetCompanyPreference {
  CopyWith$Query$GetCompanyPreference<Query$GetCompanyPreference>
      get copyWith => CopyWith$Query$GetCompanyPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference<TRes> {
  factory CopyWith$Query$GetCompanyPreference(
    Query$GetCompanyPreference instance,
    TRes Function(Query$GetCompanyPreference) then,
  ) = _CopyWithImpl$Query$GetCompanyPreference;

  factory CopyWith$Query$GetCompanyPreference.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference;

  TRes call({
    Query$GetCompanyPreference$companyPreference? companyPreference,
    String? $__typename,
  });
  CopyWith$Query$GetCompanyPreference$companyPreference<TRes>
      get companyPreference;
}

class _CopyWithImpl$Query$GetCompanyPreference<TRes>
    implements CopyWith$Query$GetCompanyPreference<TRes> {
  _CopyWithImpl$Query$GetCompanyPreference(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference _instance;

  final TRes Function(Query$GetCompanyPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyPreference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCompanyPreference(
        companyPreference:
            companyPreference == _undefined || companyPreference == null
                ? _instance.companyPreference
                : (companyPreference
                    as Query$GetCompanyPreference$companyPreference),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCompanyPreference$companyPreference<TRes>
      get companyPreference {
    final local$companyPreference = _instance.companyPreference;
    return CopyWith$Query$GetCompanyPreference$companyPreference(
        local$companyPreference, (e) => call(companyPreference: e));
  }
}

class _CopyWithStubImpl$Query$GetCompanyPreference<TRes>
    implements CopyWith$Query$GetCompanyPreference<TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference(this._res);

  TRes _res;

  call({
    Query$GetCompanyPreference$companyPreference? companyPreference,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCompanyPreference$companyPreference<TRes>
      get companyPreference =>
          CopyWith$Query$GetCompanyPreference$companyPreference.stub(_res);
}

const documentNodeQueryGetCompanyPreference = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCompanyPreference'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'companyCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'companyPreference'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyCode'),
            value: VariableNode(name: NameNode(value: 'companyCode')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'companyCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'preference'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'isD365Enabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMROEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLoggingEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pageSize'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'importWithAdhocTemplate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'overrides'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'isDigitalSignForWorkOrdersEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'overrides'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'isScannerForAssetSearchEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'overrides'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetCompanyPreference$companyPreference {
  Query$GetCompanyPreference$companyPreference({
    required this.companyCode,
    required this.isActive,
    required this.preference,
    this.$__typename = 'CompanyPreference',
  });

  factory Query$GetCompanyPreference$companyPreference.fromJson(
      Map<String, dynamic> json) {
    final l$companyCode = json['companyCode'];
    final l$isActive = json['isActive'];
    final l$preference = json['preference'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference(
      companyCode: (l$companyCode as String),
      isActive: (l$isActive as bool),
      preference:
          Query$GetCompanyPreference$companyPreference$preference.fromJson(
              (l$preference as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String companyCode;

  final bool isActive;

  final Query$GetCompanyPreference$companyPreference$preference preference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$preference = preference;
    _resultData['preference'] = l$preference.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$isActive = isActive;
    final l$preference = preference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyCode,
      l$isActive,
      l$preference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCompanyPreference$companyPreference) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$preference = preference;
    final lOther$preference = other.preference;
    if (l$preference != lOther$preference) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference
    on Query$GetCompanyPreference$companyPreference {
  CopyWith$Query$GetCompanyPreference$companyPreference<
          Query$GetCompanyPreference$companyPreference>
      get copyWith => CopyWith$Query$GetCompanyPreference$companyPreference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference<TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference(
    Query$GetCompanyPreference$companyPreference instance,
    TRes Function(Query$GetCompanyPreference$companyPreference) then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference;

  factory CopyWith$Query$GetCompanyPreference$companyPreference.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference;

  TRes call({
    String? companyCode,
    bool? isActive,
    Query$GetCompanyPreference$companyPreference$preference? preference,
    String? $__typename,
  });
  CopyWith$Query$GetCompanyPreference$companyPreference$preference<TRes>
      get preference;
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference<TRes>
    implements CopyWith$Query$GetCompanyPreference$companyPreference<TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference _instance;

  final TRes Function(Query$GetCompanyPreference$companyPreference) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyCode = _undefined,
    Object? isActive = _undefined,
    Object? preference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCompanyPreference$companyPreference(
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        preference: preference == _undefined || preference == null
            ? _instance.preference
            : (preference
                as Query$GetCompanyPreference$companyPreference$preference),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCompanyPreference$companyPreference$preference<TRes>
      get preference {
    final local$preference = _instance.preference;
    return CopyWith$Query$GetCompanyPreference$companyPreference$preference(
        local$preference, (e) => call(preference: e));
  }
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference<TRes>
    implements CopyWith$Query$GetCompanyPreference$companyPreference<TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference(this._res);

  TRes _res;

  call({
    String? companyCode,
    bool? isActive,
    Query$GetCompanyPreference$companyPreference$preference? preference,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCompanyPreference$companyPreference$preference<TRes>
      get preference =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference.stub(
              _res);
}

class Query$GetCompanyPreference$companyPreference$preference {
  Query$GetCompanyPreference$companyPreference$preference({
    this.isD365Enabled,
    this.isMROEnabled,
    this.isLoggingEnabled,
    this.pageSize,
    this.importWithAdhocTemplate,
    this.isDigitalSignForWorkOrdersEnabled,
    this.isScannerForAssetSearchEnabled,
    this.$__typename = 'Preference',
  });

  factory Query$GetCompanyPreference$companyPreference$preference.fromJson(
      Map<String, dynamic> json) {
    final l$isD365Enabled = json['isD365Enabled'];
    final l$isMROEnabled = json['isMROEnabled'];
    final l$isLoggingEnabled = json['isLoggingEnabled'];
    final l$pageSize = json['pageSize'];
    final l$importWithAdhocTemplate = json['importWithAdhocTemplate'];
    final l$isDigitalSignForWorkOrdersEnabled =
        json['isDigitalSignForWorkOrdersEnabled'];
    final l$isScannerForAssetSearchEnabled =
        json['isScannerForAssetSearchEnabled'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference(
      isD365Enabled: (l$isD365Enabled as bool?),
      isMROEnabled: (l$isMROEnabled as bool?),
      isLoggingEnabled: (l$isLoggingEnabled as bool?),
      pageSize: (l$pageSize as int?),
      importWithAdhocTemplate: l$importWithAdhocTemplate == null
          ? null
          : Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
              .fromJson((l$importWithAdhocTemplate as Map<String, dynamic>)),
      isDigitalSignForWorkOrdersEnabled: l$isDigitalSignForWorkOrdersEnabled ==
              null
          ? null
          : Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
              .fromJson((l$isDigitalSignForWorkOrdersEnabled
                  as Map<String, dynamic>)),
      isScannerForAssetSearchEnabled: l$isScannerForAssetSearchEnabled == null
          ? null
          : Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
              .fromJson(
                  (l$isScannerForAssetSearchEnabled as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isD365Enabled;

  final bool? isMROEnabled;

  final bool? isLoggingEnabled;

  final int? pageSize;

  final Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate?
      importWithAdhocTemplate;

  final Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled?
      isDigitalSignForWorkOrdersEnabled;

  final Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled?
      isScannerForAssetSearchEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isD365Enabled = isD365Enabled;
    _resultData['isD365Enabled'] = l$isD365Enabled;
    final l$isMROEnabled = isMROEnabled;
    _resultData['isMROEnabled'] = l$isMROEnabled;
    final l$isLoggingEnabled = isLoggingEnabled;
    _resultData['isLoggingEnabled'] = l$isLoggingEnabled;
    final l$pageSize = pageSize;
    _resultData['pageSize'] = l$pageSize;
    final l$importWithAdhocTemplate = importWithAdhocTemplate;
    _resultData['importWithAdhocTemplate'] =
        l$importWithAdhocTemplate?.toJson();
    final l$isDigitalSignForWorkOrdersEnabled =
        isDigitalSignForWorkOrdersEnabled;
    _resultData['isDigitalSignForWorkOrdersEnabled'] =
        l$isDigitalSignForWorkOrdersEnabled?.toJson();
    final l$isScannerForAssetSearchEnabled = isScannerForAssetSearchEnabled;
    _resultData['isScannerForAssetSearchEnabled'] =
        l$isScannerForAssetSearchEnabled?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isD365Enabled = isD365Enabled;
    final l$isMROEnabled = isMROEnabled;
    final l$isLoggingEnabled = isLoggingEnabled;
    final l$pageSize = pageSize;
    final l$importWithAdhocTemplate = importWithAdhocTemplate;
    final l$isDigitalSignForWorkOrdersEnabled =
        isDigitalSignForWorkOrdersEnabled;
    final l$isScannerForAssetSearchEnabled = isScannerForAssetSearchEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isD365Enabled,
      l$isMROEnabled,
      l$isLoggingEnabled,
      l$pageSize,
      l$importWithAdhocTemplate,
      l$isDigitalSignForWorkOrdersEnabled,
      l$isScannerForAssetSearchEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCompanyPreference$companyPreference$preference) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isD365Enabled = isD365Enabled;
    final lOther$isD365Enabled = other.isD365Enabled;
    if (l$isD365Enabled != lOther$isD365Enabled) {
      return false;
    }
    final l$isMROEnabled = isMROEnabled;
    final lOther$isMROEnabled = other.isMROEnabled;
    if (l$isMROEnabled != lOther$isMROEnabled) {
      return false;
    }
    final l$isLoggingEnabled = isLoggingEnabled;
    final lOther$isLoggingEnabled = other.isLoggingEnabled;
    if (l$isLoggingEnabled != lOther$isLoggingEnabled) {
      return false;
    }
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (l$pageSize != lOther$pageSize) {
      return false;
    }
    final l$importWithAdhocTemplate = importWithAdhocTemplate;
    final lOther$importWithAdhocTemplate = other.importWithAdhocTemplate;
    if (l$importWithAdhocTemplate != lOther$importWithAdhocTemplate) {
      return false;
    }
    final l$isDigitalSignForWorkOrdersEnabled =
        isDigitalSignForWorkOrdersEnabled;
    final lOther$isDigitalSignForWorkOrdersEnabled =
        other.isDigitalSignForWorkOrdersEnabled;
    if (l$isDigitalSignForWorkOrdersEnabled !=
        lOther$isDigitalSignForWorkOrdersEnabled) {
      return false;
    }
    final l$isScannerForAssetSearchEnabled = isScannerForAssetSearchEnabled;
    final lOther$isScannerForAssetSearchEnabled =
        other.isScannerForAssetSearchEnabled;
    if (l$isScannerForAssetSearchEnabled !=
        lOther$isScannerForAssetSearchEnabled) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference
    on Query$GetCompanyPreference$companyPreference$preference {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference<
          Query$GetCompanyPreference$companyPreference$preference>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference(
    Query$GetCompanyPreference$companyPreference$preference instance,
    TRes Function(Query$GetCompanyPreference$companyPreference$preference) then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference;

  TRes call({
    bool? isD365Enabled,
    bool? isMROEnabled,
    bool? isLoggingEnabled,
    int? pageSize,
    Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate?
        importWithAdhocTemplate,
    Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled?
        isDigitalSignForWorkOrdersEnabled,
    Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled?
        isScannerForAssetSearchEnabled,
    String? $__typename,
  });
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
      TRes> get importWithAdhocTemplate;
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
      TRes> get isDigitalSignForWorkOrdersEnabled;
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
      TRes> get isScannerForAssetSearchEnabled;
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference<TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference _instance;

  final TRes Function(Query$GetCompanyPreference$companyPreference$preference)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isD365Enabled = _undefined,
    Object? isMROEnabled = _undefined,
    Object? isLoggingEnabled = _undefined,
    Object? pageSize = _undefined,
    Object? importWithAdhocTemplate = _undefined,
    Object? isDigitalSignForWorkOrdersEnabled = _undefined,
    Object? isScannerForAssetSearchEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCompanyPreference$companyPreference$preference(
        isD365Enabled: isD365Enabled == _undefined
            ? _instance.isD365Enabled
            : (isD365Enabled as bool?),
        isMROEnabled: isMROEnabled == _undefined
            ? _instance.isMROEnabled
            : (isMROEnabled as bool?),
        isLoggingEnabled: isLoggingEnabled == _undefined
            ? _instance.isLoggingEnabled
            : (isLoggingEnabled as bool?),
        pageSize:
            pageSize == _undefined ? _instance.pageSize : (pageSize as int?),
        importWithAdhocTemplate: importWithAdhocTemplate == _undefined
            ? _instance.importWithAdhocTemplate
            : (importWithAdhocTemplate
                as Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate?),
        isDigitalSignForWorkOrdersEnabled: isDigitalSignForWorkOrdersEnabled ==
                _undefined
            ? _instance.isDigitalSignForWorkOrdersEnabled
            : (isDigitalSignForWorkOrdersEnabled
                as Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled?),
        isScannerForAssetSearchEnabled: isScannerForAssetSearchEnabled ==
                _undefined
            ? _instance.isScannerForAssetSearchEnabled
            : (isScannerForAssetSearchEnabled
                as Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
      TRes> get importWithAdhocTemplate {
    final local$importWithAdhocTemplate = _instance.importWithAdhocTemplate;
    return local$importWithAdhocTemplate == null
        ? CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
            .stub(_then(_instance))
        : CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
            local$importWithAdhocTemplate,
            (e) => call(importWithAdhocTemplate: e));
  }

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
      TRes> get isDigitalSignForWorkOrdersEnabled {
    final local$isDigitalSignForWorkOrdersEnabled =
        _instance.isDigitalSignForWorkOrdersEnabled;
    return local$isDigitalSignForWorkOrdersEnabled == null
        ? CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
            .stub(_then(_instance))
        : CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
            local$isDigitalSignForWorkOrdersEnabled,
            (e) => call(isDigitalSignForWorkOrdersEnabled: e));
  }

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
      TRes> get isScannerForAssetSearchEnabled {
    final local$isScannerForAssetSearchEnabled =
        _instance.isScannerForAssetSearchEnabled;
    return local$isScannerForAssetSearchEnabled == null
        ? CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
            .stub(_then(_instance))
        : CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
            local$isScannerForAssetSearchEnabled,
            (e) => call(isScannerForAssetSearchEnabled: e));
  }
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference<TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference(
      this._res);

  TRes _res;

  call({
    bool? isD365Enabled,
    bool? isMROEnabled,
    bool? isLoggingEnabled,
    int? pageSize,
    Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate?
        importWithAdhocTemplate,
    Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled?
        isDigitalSignForWorkOrdersEnabled,
    Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled?
        isScannerForAssetSearchEnabled,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
          TRes>
      get importWithAdhocTemplate =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
              .stub(_res);

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
          TRes>
      get isDigitalSignForWorkOrdersEnabled =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
              .stub(_res);

  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
          TRes>
      get isScannerForAssetSearchEnabled =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
              .stub(_res);
}

class Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate {
  Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate({
    required this.value,
    required this.overrides,
    this.$__typename = 'OverridableValuesOfBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$overrides = json['overrides'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
      value: (l$value as bool),
      overrides: (l$overrides as List<dynamic>)
          .map((e) =>
              Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool value;

  final List<
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>
      overrides;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$overrides = overrides;
    _resultData['overrides'] = l$overrides.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$overrides = overrides;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      Object.hashAll(l$overrides.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$overrides = overrides;
    final lOther$overrides = other.overrides;
    if (l$overrides.length != lOther$overrides.length) {
      return false;
    }
    for (int i = 0; i < l$overrides.length; i++) {
      final l$overrides$entry = l$overrides[i];
      final lOther$overrides$entry = lOther$overrides[i];
      if (l$overrides$entry != lOther$overrides$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
    on Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
    Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate;

  TRes call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>?
        overrides,
    String? $__typename,
  });
  TRes overrides(
      Iterable<Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides> Function(
              Iterable<
                  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
                      Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>>)
          _fn);
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? overrides = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        overrides: overrides == _undefined || overrides == null
            ? _instance.overrides
            : (overrides as List<
                Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes overrides(
          Iterable<Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides> Function(
                  Iterable<
                      CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
                          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>>)
              _fn) =>
      call(
          overrides: _fn(_instance.overrides.map((e) =>
              CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate(
      this._res);

  TRes _res;

  call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>?
        overrides,
    String? $__typename,
  }) =>
      _res;

  overrides(_fn) => _res;
}

class Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides {
  Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
      key: (l$key as String),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides
    on Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
    Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides;

  TRes call({
    String? key,
    bool? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$importWithAdhocTemplate$overrides(
      this._res);

  TRes _res;

  call({
    String? key,
    bool? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled {
  Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled({
    required this.value,
    required this.overrides,
    this.$__typename = 'OverridableValuesOfBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$overrides = json['overrides'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
      value: (l$value as bool),
      overrides: (l$overrides as List<dynamic>)
          .map((e) =>
              Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool value;

  final List<
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>
      overrides;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$overrides = overrides;
    _resultData['overrides'] = l$overrides.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$overrides = overrides;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      Object.hashAll(l$overrides.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$overrides = overrides;
    final lOther$overrides = other.overrides;
    if (l$overrides.length != lOther$overrides.length) {
      return false;
    }
    for (int i = 0; i < l$overrides.length; i++) {
      final l$overrides$entry = l$overrides[i];
      final lOther$overrides$entry = lOther$overrides[i];
      if (l$overrides$entry != lOther$overrides$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
    on Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
    Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled;

  TRes call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>?
        overrides,
    String? $__typename,
  });
  TRes overrides(
      Iterable<Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides> Function(
              Iterable<
                  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
                      Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>>)
          _fn);
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? overrides = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        overrides: overrides == _undefined || overrides == null
            ? _instance.overrides
            : (overrides as List<
                Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes overrides(
          Iterable<Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides> Function(
                  Iterable<
                      CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
                          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>>)
              _fn) =>
      call(
          overrides: _fn(_instance.overrides.map((e) =>
              CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled(
      this._res);

  TRes _res;

  call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>?
        overrides,
    String? $__typename,
  }) =>
      _res;

  overrides(_fn) => _res;
}

class Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides {
  Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
      key: (l$key as String),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides
    on Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
    Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides;

  TRes call({
    String? key,
    bool? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isDigitalSignForWorkOrdersEnabled$overrides(
      this._res);

  TRes _res;

  call({
    String? key,
    bool? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled {
  Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled({
    required this.value,
    required this.overrides,
    this.$__typename = 'OverridableValuesOfBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$overrides = json['overrides'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
      value: (l$value as bool),
      overrides: (l$overrides as List<dynamic>)
          .map((e) =>
              Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool value;

  final List<
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>
      overrides;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$overrides = overrides;
    _resultData['overrides'] = l$overrides.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$overrides = overrides;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      Object.hashAll(l$overrides.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$overrides = overrides;
    final lOther$overrides = other.overrides;
    if (l$overrides.length != lOther$overrides.length) {
      return false;
    }
    for (int i = 0; i < l$overrides.length; i++) {
      final l$overrides$entry = l$overrides[i];
      final lOther$overrides$entry = lOther$overrides[i];
      if (l$overrides$entry != lOther$overrides$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
    on Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
    Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled;

  TRes call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>?
        overrides,
    String? $__typename,
  });
  TRes overrides(
      Iterable<Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides> Function(
              Iterable<
                  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
                      Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>>)
          _fn);
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? overrides = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        overrides: overrides == _undefined || overrides == null
            ? _instance.overrides
            : (overrides as List<
                Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes overrides(
          Iterable<Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides> Function(
                  Iterable<
                      CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
                          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>>)
              _fn) =>
      call(
          overrides: _fn(_instance.overrides.map((e) =>
              CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled(
      this._res);

  TRes _res;

  call({
    bool? value,
    List<Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>?
        overrides,
    String? $__typename,
  }) =>
      _res;

  overrides(_fn) => _res;
}

class Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides {
  Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndBoolean',
  });

  factory Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
      key: (l$key as String),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides
    on Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides {
  CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides>
      get copyWith =>
          CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
    TRes> {
  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
    Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides
        instance,
    TRes Function(
            Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides)
        then,
  ) = _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides;

  factory CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides;

  TRes call({
    String? key,
    bool? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
            TRes> {
  _CopyWithImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
    this._instance,
    this._then,
  );

  final Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides
      _instance;

  final TRes Function(
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
        TRes>
    implements
        CopyWith$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides<
            TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference$preference$isScannerForAssetSearchEnabled$overrides(
      this._res);

  TRes _res;

  call({
    String? key,
    bool? value,
    String? $__typename,
  }) =>
      _res;
}
