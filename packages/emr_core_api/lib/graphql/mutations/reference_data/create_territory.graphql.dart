import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateTerritory {
  factory Variables$Mutation$CreateTerritory({
    required String id,
    required String name,
    required int uomId,
    required String defaultCompanyId,
    required String currencyCode,
    required String code,
  }) => Variables$Mutation$CreateTerritory._({
    r'id': id,
    r'name': name,
    r'uomId': uomId,
    r'defaultCompanyId': defaultCompanyId,
    r'currencyCode': currencyCode,
    r'code': code,
  });

  Variables$Mutation$CreateTerritory._(this._$data);

  factory Variables$Mutation$CreateTerritory.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$uomId = data['uomId'];
    result$data['uomId'] = (l$uomId as int);
    final l$defaultCompanyId = data['defaultCompanyId'];
    result$data['defaultCompanyId'] = (l$defaultCompanyId as String);
    final l$currencyCode = data['currencyCode'];
    result$data['currencyCode'] = (l$currencyCode as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$CreateTerritory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  int get uomId => (_$data['uomId'] as int);

  String get defaultCompanyId => (_$data['defaultCompanyId'] as String);

  String get currencyCode => (_$data['currencyCode'] as String);

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$uomId = uomId;
    result$data['uomId'] = l$uomId;
    final l$defaultCompanyId = defaultCompanyId;
    result$data['defaultCompanyId'] = l$defaultCompanyId;
    final l$currencyCode = currencyCode;
    result$data['currencyCode'] = l$currencyCode;
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTerritory<
    Variables$Mutation$CreateTerritory
  >
  get copyWith => CopyWith$Variables$Mutation$CreateTerritory(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateTerritory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
      return false;
    }
    final l$defaultCompanyId = defaultCompanyId;
    final lOther$defaultCompanyId = other.defaultCompanyId;
    if (l$defaultCompanyId != lOther$defaultCompanyId) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$uomId = uomId;
    final l$defaultCompanyId = defaultCompanyId;
    final l$currencyCode = currencyCode;
    final l$code = code;
    return Object.hashAll([
      l$id,
      l$name,
      l$uomId,
      l$defaultCompanyId,
      l$currencyCode,
      l$code,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateTerritory<TRes> {
  factory CopyWith$Variables$Mutation$CreateTerritory(
    Variables$Mutation$CreateTerritory instance,
    TRes Function(Variables$Mutation$CreateTerritory) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTerritory;

  factory CopyWith$Variables$Mutation$CreateTerritory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTerritory;

  TRes call({
    String? id,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateTerritory<TRes>
    implements CopyWith$Variables$Mutation$CreateTerritory<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTerritory(this._instance, this._then);

  final Variables$Mutation$CreateTerritory _instance;

  final TRes Function(Variables$Mutation$CreateTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? uomId = _undefined,
    Object? defaultCompanyId = _undefined,
    Object? currencyCode = _undefined,
    Object? code = _undefined,
  }) => _then(
    Variables$Mutation$CreateTerritory._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (uomId != _undefined && uomId != null) 'uomId': (uomId as int),
      if (defaultCompanyId != _undefined && defaultCompanyId != null)
        'defaultCompanyId': (defaultCompanyId as String),
      if (currencyCode != _undefined && currencyCode != null)
        'currencyCode': (currencyCode as String),
      if (code != _undefined && code != null) 'code': (code as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateTerritory<TRes>
    implements CopyWith$Variables$Mutation$CreateTerritory<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTerritory(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
  }) => _res;
}

class Mutation$CreateTerritory {
  Mutation$CreateTerritory({
    required this.createTerritory,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateTerritory.fromJson(Map<String, dynamic> json) {
    final l$createTerritory = json['createTerritory'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTerritory(
      createTerritory: Mutation$CreateTerritory$createTerritory.fromJson(
        (l$createTerritory as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTerritory$createTerritory createTerritory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTerritory = createTerritory;
    _resultData['createTerritory'] = l$createTerritory.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTerritory = createTerritory;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createTerritory, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTerritory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTerritory = createTerritory;
    final lOther$createTerritory = other.createTerritory;
    if (l$createTerritory != lOther$createTerritory) {
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

extension UtilityExtension$Mutation$CreateTerritory
    on Mutation$CreateTerritory {
  CopyWith$Mutation$CreateTerritory<Mutation$CreateTerritory> get copyWith =>
      CopyWith$Mutation$CreateTerritory(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTerritory<TRes> {
  factory CopyWith$Mutation$CreateTerritory(
    Mutation$CreateTerritory instance,
    TRes Function(Mutation$CreateTerritory) then,
  ) = _CopyWithImpl$Mutation$CreateTerritory;

  factory CopyWith$Mutation$CreateTerritory.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTerritory;

  TRes call({
    Mutation$CreateTerritory$createTerritory? createTerritory,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTerritory$createTerritory<TRes> get createTerritory;
}

class _CopyWithImpl$Mutation$CreateTerritory<TRes>
    implements CopyWith$Mutation$CreateTerritory<TRes> {
  _CopyWithImpl$Mutation$CreateTerritory(this._instance, this._then);

  final Mutation$CreateTerritory _instance;

  final TRes Function(Mutation$CreateTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTerritory = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTerritory(
      createTerritory: createTerritory == _undefined || createTerritory == null
          ? _instance.createTerritory
          : (createTerritory as Mutation$CreateTerritory$createTerritory),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTerritory$createTerritory<TRes> get createTerritory {
    final local$createTerritory = _instance.createTerritory;
    return CopyWith$Mutation$CreateTerritory$createTerritory(
      local$createTerritory,
      (e) => call(createTerritory: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateTerritory<TRes>
    implements CopyWith$Mutation$CreateTerritory<TRes> {
  _CopyWithStubImpl$Mutation$CreateTerritory(this._res);

  TRes _res;

  call({
    Mutation$CreateTerritory$createTerritory? createTerritory,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTerritory$createTerritory<TRes> get createTerritory =>
      CopyWith$Mutation$CreateTerritory$createTerritory.stub(_res);
}

const documentNodeMutationCreateTerritory = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTerritory'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'uomId')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'defaultCompanyId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'currencyCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'code')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createTerritory'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: VariableNode(name: NameNode(value: 'name')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'uomId'),
                      value: VariableNode(name: NameNode(value: 'uomId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'defaultCompanyId'),
                      value: VariableNode(
                        name: NameNode(value: 'defaultCompanyId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'currencyCode'),
                      value: VariableNode(
                        name: NameNode(value: 'currencyCode'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'code'),
                      value: VariableNode(name: NameNode(value: 'code')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'TerritoryFragment'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'defaultCompany'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CompanyFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionTerritoryFragment,
    fragmentDefinitionCompanyFragment,
  ],
);

class Mutation$CreateTerritory$createTerritory
    implements Fragment$TerritoryFragment {
  Mutation$CreateTerritory$createTerritory({
    required this.id,
    required this.active,
    required this.name,
    required this.uomId,
    required this.defaultCompanyId,
    required this.currencyCode,
    required this.code,
    this.defaultCompany,
    this.$__typename = 'Territory',
  });

  factory Mutation$CreateTerritory$createTerritory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$active = json['active'];
    final l$name = json['name'];
    final l$uomId = json['uomId'];
    final l$defaultCompanyId = json['defaultCompanyId'];
    final l$currencyCode = json['currencyCode'];
    final l$code = json['code'];
    final l$defaultCompany = json['defaultCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTerritory$createTerritory(
      id: (l$id as String),
      active: (l$active as bool),
      name: (l$name as String),
      uomId: (l$uomId as int),
      defaultCompanyId: (l$defaultCompanyId as String),
      currencyCode: (l$currencyCode as String),
      code: (l$code as String),
      defaultCompany: l$defaultCompany == null
          ? null
          : Mutation$CreateTerritory$createTerritory$defaultCompany.fromJson(
              (l$defaultCompany as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool active;

  final String name;

  final int uomId;

  final String defaultCompanyId;

  final String currencyCode;

  final String code;

  final Mutation$CreateTerritory$createTerritory$defaultCompany? defaultCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$uomId = uomId;
    _resultData['uomId'] = l$uomId;
    final l$defaultCompanyId = defaultCompanyId;
    _resultData['defaultCompanyId'] = l$defaultCompanyId;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$defaultCompany = defaultCompany;
    _resultData['defaultCompany'] = l$defaultCompany?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$name = name;
    final l$uomId = uomId;
    final l$defaultCompanyId = defaultCompanyId;
    final l$currencyCode = currencyCode;
    final l$code = code;
    final l$defaultCompany = defaultCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$active,
      l$name,
      l$uomId,
      l$defaultCompanyId,
      l$currencyCode,
      l$code,
      l$defaultCompany,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTerritory$createTerritory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
      return false;
    }
    final l$defaultCompanyId = defaultCompanyId;
    final lOther$defaultCompanyId = other.defaultCompanyId;
    if (l$defaultCompanyId != lOther$defaultCompanyId) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$defaultCompany = defaultCompany;
    final lOther$defaultCompany = other.defaultCompany;
    if (l$defaultCompany != lOther$defaultCompany) {
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

extension UtilityExtension$Mutation$CreateTerritory$createTerritory
    on Mutation$CreateTerritory$createTerritory {
  CopyWith$Mutation$CreateTerritory$createTerritory<
    Mutation$CreateTerritory$createTerritory
  >
  get copyWith =>
      CopyWith$Mutation$CreateTerritory$createTerritory(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTerritory$createTerritory<TRes> {
  factory CopyWith$Mutation$CreateTerritory$createTerritory(
    Mutation$CreateTerritory$createTerritory instance,
    TRes Function(Mutation$CreateTerritory$createTerritory) then,
  ) = _CopyWithImpl$Mutation$CreateTerritory$createTerritory;

  factory CopyWith$Mutation$CreateTerritory$createTerritory.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory;

  TRes call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Mutation$CreateTerritory$createTerritory$defaultCompany? defaultCompany,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<TRes>
  get defaultCompany;
}

class _CopyWithImpl$Mutation$CreateTerritory$createTerritory<TRes>
    implements CopyWith$Mutation$CreateTerritory$createTerritory<TRes> {
  _CopyWithImpl$Mutation$CreateTerritory$createTerritory(
    this._instance,
    this._then,
  );

  final Mutation$CreateTerritory$createTerritory _instance;

  final TRes Function(Mutation$CreateTerritory$createTerritory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? active = _undefined,
    Object? name = _undefined,
    Object? uomId = _undefined,
    Object? defaultCompanyId = _undefined,
    Object? currencyCode = _undefined,
    Object? code = _undefined,
    Object? defaultCompany = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTerritory$createTerritory(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      uomId: uomId == _undefined || uomId == null
          ? _instance.uomId
          : (uomId as int),
      defaultCompanyId:
          defaultCompanyId == _undefined || defaultCompanyId == null
          ? _instance.defaultCompanyId
          : (defaultCompanyId as String),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      defaultCompany: defaultCompany == _undefined
          ? _instance.defaultCompany
          : (defaultCompany
                as Mutation$CreateTerritory$createTerritory$defaultCompany?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<TRes>
  get defaultCompany {
    final local$defaultCompany = _instance.defaultCompany;
    return local$defaultCompany == null
        ? CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany(
            local$defaultCompany,
            (e) => call(defaultCompany: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory<TRes>
    implements CopyWith$Mutation$CreateTerritory$createTerritory<TRes> {
  _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Mutation$CreateTerritory$createTerritory$defaultCompany? defaultCompany,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<TRes>
  get defaultCompany =>
      CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany.stub(
        _res,
      );
}

class Mutation$CreateTerritory$createTerritory$defaultCompany
    implements
        Fragment$TerritoryFragment$defaultCompany,
        Fragment$CompanyFragment {
  Mutation$CreateTerritory$createTerritory$defaultCompany({
    required this.id,
    required this.code,
    required this.fullName,
    this.$__typename = 'Company',
    required this.active,
    required this.shortName,
    this.territory,
    required this.territoryCode,
    required this.territoryId,
    required this.valueRequiredForTwoSignaturesOnCheque,
    required this.chequeSignatures,
  });

  factory Mutation$CreateTerritory$createTerritory$defaultCompany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    final l$active = json['active'];
    final l$shortName = json['shortName'];
    final l$territory = json['territory'];
    final l$territoryCode = json['territoryCode'];
    final l$territoryId = json['territoryId'];
    final l$valueRequiredForTwoSignaturesOnCheque =
        json['valueRequiredForTwoSignaturesOnCheque'];
    final l$chequeSignatures = json['chequeSignatures'];
    return Mutation$CreateTerritory$createTerritory$defaultCompany(
      id: (l$id as String),
      code: (l$code as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
      active: (l$active as bool),
      shortName: (l$shortName as String),
      territory: l$territory == null
          ? null
          : Mutation$CreateTerritory$createTerritory$defaultCompany$territory.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      territoryCode: (l$territoryCode as String),
      territoryId: (l$territoryId as String),
      valueRequiredForTwoSignaturesOnCheque:
          (l$valueRequiredForTwoSignaturesOnCheque as num).toDouble(),
      chequeSignatures: (l$chequeSignatures as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
    );
  }

  final String id;

  final String code;

  final String fullName;

  final String $__typename;

  final bool active;

  final String shortName;

  final Mutation$CreateTerritory$createTerritory$defaultCompany$territory?
  territory;

  final String territoryCode;

  final String territoryId;

  final double valueRequiredForTwoSignaturesOnCheque;

  final List<String> chequeSignatures;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$territory = territory;
    _resultData['territory'] = l$territory?.toJson();
    final l$territoryCode = territoryCode;
    _resultData['territoryCode'] = l$territoryCode;
    final l$territoryId = territoryId;
    _resultData['territoryId'] = l$territoryId;
    final l$valueRequiredForTwoSignaturesOnCheque =
        valueRequiredForTwoSignaturesOnCheque;
    _resultData['valueRequiredForTwoSignaturesOnCheque'] =
        l$valueRequiredForTwoSignaturesOnCheque;
    final l$chequeSignatures = chequeSignatures;
    _resultData['chequeSignatures'] = l$chequeSignatures.map((e) => e).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    final l$active = active;
    final l$shortName = shortName;
    final l$territory = territory;
    final l$territoryCode = territoryCode;
    final l$territoryId = territoryId;
    final l$valueRequiredForTwoSignaturesOnCheque =
        valueRequiredForTwoSignaturesOnCheque;
    final l$chequeSignatures = chequeSignatures;
    return Object.hashAll([
      l$id,
      l$code,
      l$fullName,
      l$$__typename,
      l$active,
      l$shortName,
      l$territory,
      l$territoryCode,
      l$territoryId,
      l$valueRequiredForTwoSignaturesOnCheque,
      Object.hashAll(l$chequeSignatures.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTerritory$createTerritory$defaultCompany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$valueRequiredForTwoSignaturesOnCheque =
        valueRequiredForTwoSignaturesOnCheque;
    final lOther$valueRequiredForTwoSignaturesOnCheque =
        other.valueRequiredForTwoSignaturesOnCheque;
    if (l$valueRequiredForTwoSignaturesOnCheque !=
        lOther$valueRequiredForTwoSignaturesOnCheque) {
      return false;
    }
    final l$chequeSignatures = chequeSignatures;
    final lOther$chequeSignatures = other.chequeSignatures;
    if (l$chequeSignatures.length != lOther$chequeSignatures.length) {
      return false;
    }
    for (int i = 0; i < l$chequeSignatures.length; i++) {
      final l$chequeSignatures$entry = l$chequeSignatures[i];
      final lOther$chequeSignatures$entry = lOther$chequeSignatures[i];
      if (l$chequeSignatures$entry != lOther$chequeSignatures$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateTerritory$createTerritory$defaultCompany
    on Mutation$CreateTerritory$createTerritory$defaultCompany {
  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<
    Mutation$CreateTerritory$createTerritory$defaultCompany
  >
  get copyWith =>
      CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<
  TRes
> {
  factory CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany(
    Mutation$CreateTerritory$createTerritory$defaultCompany instance,
    TRes Function(Mutation$CreateTerritory$createTerritory$defaultCompany) then,
  ) = _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany;

  factory CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany;

  TRes call({
    String? id,
    String? code,
    String? fullName,
    String? $__typename,
    bool? active,
    String? shortName,
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory?
    territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
  });
  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
    TRes
  >
  get territory;
}

class _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany<
  TRes
>
    implements
        CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<TRes> {
  _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany(
    this._instance,
    this._then,
  );

  final Mutation$CreateTerritory$createTerritory$defaultCompany _instance;

  final TRes Function(Mutation$CreateTerritory$createTerritory$defaultCompany)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
    Object? active = _undefined,
    Object? shortName = _undefined,
    Object? territory = _undefined,
    Object? territoryCode = _undefined,
    Object? territoryId = _undefined,
    Object? valueRequiredForTwoSignaturesOnCheque = _undefined,
    Object? chequeSignatures = _undefined,
  }) => _then(
    Mutation$CreateTerritory$createTerritory$defaultCompany(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      territory: territory == _undefined
          ? _instance.territory
          : (territory
                as Mutation$CreateTerritory$createTerritory$defaultCompany$territory?),
      territoryCode: territoryCode == _undefined || territoryCode == null
          ? _instance.territoryCode
          : (territoryCode as String),
      territoryId: territoryId == _undefined || territoryId == null
          ? _instance.territoryId
          : (territoryId as String),
      valueRequiredForTwoSignaturesOnCheque:
          valueRequiredForTwoSignaturesOnCheque == _undefined ||
              valueRequiredForTwoSignaturesOnCheque == null
          ? _instance.valueRequiredForTwoSignaturesOnCheque
          : (valueRequiredForTwoSignaturesOnCheque as double),
      chequeSignatures:
          chequeSignatures == _undefined || chequeSignatures == null
          ? _instance.chequeSignatures
          : (chequeSignatures as List<String>),
    ),
  );

  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
    TRes
  >
  get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
            local$territory,
            (e) => call(territory: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany<
  TRes
>
    implements
        CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany<TRes> {
  _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? code,
    String? fullName,
    String? $__typename,
    bool? active,
    String? shortName,
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory?
    territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
  }) => _res;

  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
    TRes
  >
  get territory =>
      CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory.stub(
        _res,
      );
}

class Mutation$CreateTerritory$createTerritory$defaultCompany$territory
    implements Fragment$CompanyFragment$territory {
  Mutation$CreateTerritory$createTerritory$defaultCompany$territory({
    required this.active,
    required this.code,
    required this.currencyCode,
    required this.defaultCompanyId,
    required this.id,
    required this.name,
    required this.uomId,
    this.$__typename = 'Territory',
  });

  factory Mutation$CreateTerritory$createTerritory$defaultCompany$territory.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$active = json['active'];
    final l$code = json['code'];
    final l$currencyCode = json['currencyCode'];
    final l$defaultCompanyId = json['defaultCompanyId'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$uomId = json['uomId'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
      active: (l$active as bool),
      code: (l$code as String),
      currencyCode: (l$currencyCode as String),
      defaultCompanyId: (l$defaultCompanyId as String),
      id: (l$id as String),
      name: (l$name as String),
      uomId: (l$uomId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String code;

  final String currencyCode;

  final String defaultCompanyId;

  final String id;

  final String name;

  final int uomId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$defaultCompanyId = defaultCompanyId;
    _resultData['defaultCompanyId'] = l$defaultCompanyId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$uomId = uomId;
    _resultData['uomId'] = l$uomId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$code = code;
    final l$currencyCode = currencyCode;
    final l$defaultCompanyId = defaultCompanyId;
    final l$id = id;
    final l$name = name;
    final l$uomId = uomId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$code,
      l$currencyCode,
      l$defaultCompanyId,
      l$id,
      l$name,
      l$uomId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTerritory$createTerritory$defaultCompany$territory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$defaultCompanyId = defaultCompanyId;
    final lOther$defaultCompanyId = other.defaultCompanyId;
    if (l$defaultCompanyId != lOther$defaultCompanyId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
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

extension UtilityExtension$Mutation$CreateTerritory$createTerritory$defaultCompany$territory
    on Mutation$CreateTerritory$createTerritory$defaultCompany$territory {
  CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory
  >
  get copyWith =>
      CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
  TRes
> {
  factory CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory instance,
    TRes Function(
      Mutation$CreateTerritory$createTerritory$defaultCompany$territory,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory;

  factory CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory;

  TRes call({
    bool? active,
    String? code,
    String? currencyCode,
    String? defaultCompanyId,
    String? id,
    String? name,
    int? uomId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
  TRes
>
    implements
        CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
    this._instance,
    this._then,
  );

  final Mutation$CreateTerritory$createTerritory$defaultCompany$territory
  _instance;

  final TRes Function(
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? code = _undefined,
    Object? currencyCode = _undefined,
    Object? defaultCompanyId = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? uomId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      defaultCompanyId:
          defaultCompanyId == _undefined || defaultCompanyId == null
          ? _instance.defaultCompanyId
          : (defaultCompanyId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      uomId: uomId == _undefined || uomId == null
          ? _instance.uomId
          : (uomId as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
  TRes
>
    implements
        CopyWith$Mutation$CreateTerritory$createTerritory$defaultCompany$territory<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTerritory$createTerritory$defaultCompany$territory(
    this._res,
  );

  TRes _res;

  call({
    bool? active,
    String? code,
    String? currencyCode,
    String? defaultCompanyId,
    String? id,
    String? name,
    int? uomId,
    String? $__typename,
  }) => _res;
}
