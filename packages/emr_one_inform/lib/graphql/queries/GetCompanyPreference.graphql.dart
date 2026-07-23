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
            name: NameNode(value: 'preferenceJson'),
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
]);

class Query$GetCompanyPreference$companyPreference {
  Query$GetCompanyPreference$companyPreference({
    required this.companyCode,
    required this.isActive,
    required this.preferenceJson,
    this.$__typename = 'CompanyPreference',
  });

  factory Query$GetCompanyPreference$companyPreference.fromJson(
      Map<String, dynamic> json) {
    final l$companyCode = json['companyCode'];
    final l$isActive = json['isActive'];
    final l$preferenceJson = json['preferenceJson'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyPreference$companyPreference(
      companyCode: (l$companyCode as String),
      isActive: (l$isActive as bool),
      preferenceJson: (l$preferenceJson as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String companyCode;

  final bool isActive;

  final String preferenceJson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$preferenceJson = preferenceJson;
    _resultData['preferenceJson'] = l$preferenceJson;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    final l$isActive = isActive;
    final l$preferenceJson = preferenceJson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyCode,
      l$isActive,
      l$preferenceJson,
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
    final l$preferenceJson = preferenceJson;
    final lOther$preferenceJson = other.preferenceJson;
    if (l$preferenceJson != lOther$preferenceJson) {
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
    String? preferenceJson,
    String? $__typename,
  });
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
    Object? preferenceJson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCompanyPreference$companyPreference(
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        preferenceJson: preferenceJson == _undefined || preferenceJson == null
            ? _instance.preferenceJson
            : (preferenceJson as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference<TRes>
    implements CopyWith$Query$GetCompanyPreference$companyPreference<TRes> {
  _CopyWithStubImpl$Query$GetCompanyPreference$companyPreference(this._res);

  TRes _res;

  call({
    String? companyCode,
    bool? isActive,
    String? preferenceJson,
    String? $__typename,
  }) =>
      _res;
}
