import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTerritoryById {
  factory Variables$Query$GetTerritoryById({required String territoryId}) =>
      Variables$Query$GetTerritoryById._({r'territoryId': territoryId});

  Variables$Query$GetTerritoryById._(this._$data);

  factory Variables$Query$GetTerritoryById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$territoryId = data['territoryId'];
    result$data['territoryId'] = (l$territoryId as String);
    return Variables$Query$GetTerritoryById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get territoryId => (_$data['territoryId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryId = territoryId;
    result$data['territoryId'] = l$territoryId;
    return result$data;
  }

  CopyWith$Variables$Query$GetTerritoryById<Variables$Query$GetTerritoryById>
  get copyWith => CopyWith$Variables$Query$GetTerritoryById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTerritoryById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryId = territoryId;
    return Object.hashAll([l$territoryId]);
  }
}

abstract class CopyWith$Variables$Query$GetTerritoryById<TRes> {
  factory CopyWith$Variables$Query$GetTerritoryById(
    Variables$Query$GetTerritoryById instance,
    TRes Function(Variables$Query$GetTerritoryById) then,
  ) = _CopyWithImpl$Variables$Query$GetTerritoryById;

  factory CopyWith$Variables$Query$GetTerritoryById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTerritoryById;

  TRes call({String? territoryId});
}

class _CopyWithImpl$Variables$Query$GetTerritoryById<TRes>
    implements CopyWith$Variables$Query$GetTerritoryById<TRes> {
  _CopyWithImpl$Variables$Query$GetTerritoryById(this._instance, this._then);

  final Variables$Query$GetTerritoryById _instance;

  final TRes Function(Variables$Query$GetTerritoryById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryId = _undefined}) => _then(
    Variables$Query$GetTerritoryById._({
      ..._instance._$data,
      if (territoryId != _undefined && territoryId != null)
        'territoryId': (territoryId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTerritoryById<TRes>
    implements CopyWith$Variables$Query$GetTerritoryById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTerritoryById(this._res);

  TRes _res;

  call({String? territoryId}) => _res;
}

class Query$GetTerritoryById {
  Query$GetTerritoryById({this.territoryById, this.$__typename = 'Query'});

  factory Query$GetTerritoryById.fromJson(Map<String, dynamic> json) {
    final l$territoryById = json['territoryById'];
    final l$$__typename = json['__typename'];
    return Query$GetTerritoryById(
      territoryById: l$territoryById == null
          ? null
          : Query$GetTerritoryById$territoryById.fromJson(
              (l$territoryById as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTerritoryById$territoryById? territoryById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territoryById = territoryById;
    _resultData['territoryById'] = l$territoryById?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territoryById = territoryById;
    final l$$__typename = $__typename;
    return Object.hashAll([l$territoryById, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTerritoryById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryById = territoryById;
    final lOther$territoryById = other.territoryById;
    if (l$territoryById != lOther$territoryById) {
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

extension UtilityExtension$Query$GetTerritoryById on Query$GetTerritoryById {
  CopyWith$Query$GetTerritoryById<Query$GetTerritoryById> get copyWith =>
      CopyWith$Query$GetTerritoryById(this, (i) => i);
}

abstract class CopyWith$Query$GetTerritoryById<TRes> {
  factory CopyWith$Query$GetTerritoryById(
    Query$GetTerritoryById instance,
    TRes Function(Query$GetTerritoryById) then,
  ) = _CopyWithImpl$Query$GetTerritoryById;

  factory CopyWith$Query$GetTerritoryById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryById;

  TRes call({
    Query$GetTerritoryById$territoryById? territoryById,
    String? $__typename,
  });
  CopyWith$Query$GetTerritoryById$territoryById<TRes> get territoryById;
}

class _CopyWithImpl$Query$GetTerritoryById<TRes>
    implements CopyWith$Query$GetTerritoryById<TRes> {
  _CopyWithImpl$Query$GetTerritoryById(this._instance, this._then);

  final Query$GetTerritoryById _instance;

  final TRes Function(Query$GetTerritoryById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territoryById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTerritoryById(
      territoryById: territoryById == _undefined
          ? _instance.territoryById
          : (territoryById as Query$GetTerritoryById$territoryById?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTerritoryById$territoryById<TRes> get territoryById {
    final local$territoryById = _instance.territoryById;
    return local$territoryById == null
        ? CopyWith$Query$GetTerritoryById$territoryById.stub(_then(_instance))
        : CopyWith$Query$GetTerritoryById$territoryById(
            local$territoryById,
            (e) => call(territoryById: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTerritoryById<TRes>
    implements CopyWith$Query$GetTerritoryById<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryById(this._res);

  TRes _res;

  call({
    Query$GetTerritoryById$territoryById? territoryById,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTerritoryById$territoryById<TRes> get territoryById =>
      CopyWith$Query$GetTerritoryById$territoryById.stub(_res);
}

const documentNodeQueryGetTerritoryById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTerritoryById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'territoryById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'territoryId'),
                value: VariableNode(name: NameNode(value: 'territoryId')),
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

class Query$GetTerritoryById$territoryById
    implements Fragment$TerritoryFragment {
  Query$GetTerritoryById$territoryById({
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

  factory Query$GetTerritoryById$territoryById.fromJson(
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
    return Query$GetTerritoryById$territoryById(
      id: (l$id as String),
      active: (l$active as bool),
      name: (l$name as String),
      uomId: (l$uomId as int),
      defaultCompanyId: (l$defaultCompanyId as String),
      currencyCode: (l$currencyCode as String),
      code: (l$code as String),
      defaultCompany: l$defaultCompany == null
          ? null
          : Query$GetTerritoryById$territoryById$defaultCompany.fromJson(
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

  final Query$GetTerritoryById$territoryById$defaultCompany? defaultCompany;

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
    if (other is! Query$GetTerritoryById$territoryById ||
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

extension UtilityExtension$Query$GetTerritoryById$territoryById
    on Query$GetTerritoryById$territoryById {
  CopyWith$Query$GetTerritoryById$territoryById<
    Query$GetTerritoryById$territoryById
  >
  get copyWith => CopyWith$Query$GetTerritoryById$territoryById(this, (i) => i);
}

abstract class CopyWith$Query$GetTerritoryById$territoryById<TRes> {
  factory CopyWith$Query$GetTerritoryById$territoryById(
    Query$GetTerritoryById$territoryById instance,
    TRes Function(Query$GetTerritoryById$territoryById) then,
  ) = _CopyWithImpl$Query$GetTerritoryById$territoryById;

  factory CopyWith$Query$GetTerritoryById$territoryById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTerritoryById$territoryById;

  TRes call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Query$GetTerritoryById$territoryById$defaultCompany? defaultCompany,
    String? $__typename,
  });
  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<TRes>
  get defaultCompany;
}

class _CopyWithImpl$Query$GetTerritoryById$territoryById<TRes>
    implements CopyWith$Query$GetTerritoryById$territoryById<TRes> {
  _CopyWithImpl$Query$GetTerritoryById$territoryById(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryById$territoryById _instance;

  final TRes Function(Query$GetTerritoryById$territoryById) _then;

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
    Query$GetTerritoryById$territoryById(
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
                as Query$GetTerritoryById$territoryById$defaultCompany?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<TRes>
  get defaultCompany {
    final local$defaultCompany = _instance.defaultCompany;
    return local$defaultCompany == null
        ? CopyWith$Query$GetTerritoryById$territoryById$defaultCompany.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTerritoryById$territoryById$defaultCompany(
            local$defaultCompany,
            (e) => call(defaultCompany: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTerritoryById$territoryById<TRes>
    implements CopyWith$Query$GetTerritoryById$territoryById<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryById$territoryById(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Query$GetTerritoryById$territoryById$defaultCompany? defaultCompany,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<TRes>
  get defaultCompany =>
      CopyWith$Query$GetTerritoryById$territoryById$defaultCompany.stub(_res);
}

class Query$GetTerritoryById$territoryById$defaultCompany
    implements
        Fragment$TerritoryFragment$defaultCompany,
        Fragment$CompanyFragment {
  Query$GetTerritoryById$territoryById$defaultCompany({
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

  factory Query$GetTerritoryById$territoryById$defaultCompany.fromJson(
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
    return Query$GetTerritoryById$territoryById$defaultCompany(
      id: (l$id as String),
      code: (l$code as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
      active: (l$active as bool),
      shortName: (l$shortName as String),
      territory: l$territory == null
          ? null
          : Query$GetTerritoryById$territoryById$defaultCompany$territory.fromJson(
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

  final Query$GetTerritoryById$territoryById$defaultCompany$territory?
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
    if (other is! Query$GetTerritoryById$territoryById$defaultCompany ||
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

extension UtilityExtension$Query$GetTerritoryById$territoryById$defaultCompany
    on Query$GetTerritoryById$territoryById$defaultCompany {
  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<
    Query$GetTerritoryById$territoryById$defaultCompany
  >
  get copyWith => CopyWith$Query$GetTerritoryById$territoryById$defaultCompany(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<
  TRes
> {
  factory CopyWith$Query$GetTerritoryById$territoryById$defaultCompany(
    Query$GetTerritoryById$territoryById$defaultCompany instance,
    TRes Function(Query$GetTerritoryById$territoryById$defaultCompany) then,
  ) = _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany;

  factory CopyWith$Query$GetTerritoryById$territoryById$defaultCompany.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany;

  TRes call({
    String? id,
    String? code,
    String? fullName,
    String? $__typename,
    bool? active,
    String? shortName,
    Query$GetTerritoryById$territoryById$defaultCompany$territory? territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
  });
  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<TRes>
  get territory;
}

class _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany<TRes>
    implements
        CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<TRes> {
  _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryById$territoryById$defaultCompany _instance;

  final TRes Function(Query$GetTerritoryById$territoryById$defaultCompany)
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
    Query$GetTerritoryById$territoryById$defaultCompany(
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
                as Query$GetTerritoryById$territoryById$defaultCompany$territory?),
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

  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<TRes>
  get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory(
            local$territory,
            (e) => call(territory: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany<
  TRes
>
    implements
        CopyWith$Query$GetTerritoryById$territoryById$defaultCompany<TRes> {
  _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany(
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
    Query$GetTerritoryById$territoryById$defaultCompany$territory? territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
  }) => _res;

  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<TRes>
  get territory =>
      CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory.stub(
        _res,
      );
}

class Query$GetTerritoryById$territoryById$defaultCompany$territory
    implements Fragment$CompanyFragment$territory {
  Query$GetTerritoryById$territoryById$defaultCompany$territory({
    required this.active,
    required this.code,
    required this.currencyCode,
    required this.defaultCompanyId,
    required this.id,
    required this.name,
    required this.uomId,
    this.$__typename = 'Territory',
  });

  factory Query$GetTerritoryById$territoryById$defaultCompany$territory.fromJson(
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
    return Query$GetTerritoryById$territoryById$defaultCompany$territory(
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
            is! Query$GetTerritoryById$territoryById$defaultCompany$territory ||
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

extension UtilityExtension$Query$GetTerritoryById$territoryById$defaultCompany$territory
    on Query$GetTerritoryById$territoryById$defaultCompany$territory {
  CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<
    Query$GetTerritoryById$territoryById$defaultCompany$territory
  >
  get copyWith =>
      CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<
  TRes
> {
  factory CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory(
    Query$GetTerritoryById$territoryById$defaultCompany$territory instance,
    TRes Function(Query$GetTerritoryById$territoryById$defaultCompany$territory)
    then,
  ) = _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory;

  factory CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory;

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

class _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory<
  TRes
>
    implements
        CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<
          TRes
        > {
  _CopyWithImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory(
    this._instance,
    this._then,
  );

  final Query$GetTerritoryById$territoryById$defaultCompany$territory _instance;

  final TRes Function(
    Query$GetTerritoryById$territoryById$defaultCompany$territory,
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
    Query$GetTerritoryById$territoryById$defaultCompany$territory(
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

class _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory<
  TRes
>
    implements
        CopyWith$Query$GetTerritoryById$territoryById$defaultCompany$territory<
          TRes
        > {
  _CopyWithStubImpl$Query$GetTerritoryById$territoryById$defaultCompany$territory(
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
