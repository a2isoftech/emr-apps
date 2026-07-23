import 'package:gql/ast.dart';

class Fragment$CompanyFragment {
  Fragment$CompanyFragment({
    required this.active,
    required this.code,
    required this.fullName,
    required this.id,
    required this.shortName,
    this.territory,
    required this.territoryCode,
    required this.territoryId,
    required this.valueRequiredForTwoSignaturesOnCheque,
    required this.chequeSignatures,
    this.$__typename = 'Company',
  });

  factory Fragment$CompanyFragment.fromJson(Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$territory = json['territory'];
    final l$territoryCode = json['territoryCode'];
    final l$territoryId = json['territoryId'];
    final l$valueRequiredForTwoSignaturesOnCheque =
        json['valueRequiredForTwoSignaturesOnCheque'];
    final l$chequeSignatures = json['chequeSignatures'];
    final l$$__typename = json['__typename'];
    return Fragment$CompanyFragment(
      active: (l$active as bool),
      code: (l$code as String),
      fullName: (l$fullName as String),
      id: (l$id as String),
      shortName: (l$shortName as String),
      territory: l$territory == null
          ? null
          : Fragment$CompanyFragment$territory.fromJson(
              (l$territory as Map<String, dynamic>),
            ),
      territoryCode: (l$territoryCode as String),
      territoryId: (l$territoryId as String),
      valueRequiredForTwoSignaturesOnCheque:
          (l$valueRequiredForTwoSignaturesOnCheque as num).toDouble(),
      chequeSignatures: (l$chequeSignatures as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String code;

  final String fullName;

  final String id;

  final String shortName;

  final Fragment$CompanyFragment$territory? territory;

  final String territoryCode;

  final String territoryId;

  final double valueRequiredForTwoSignaturesOnCheque;

  final List<String> chequeSignatures;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$fullName = fullName;
    _resultData['fullName'] = l$fullName;
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$code = code;
    final l$fullName = fullName;
    final l$id = id;
    final l$shortName = shortName;
    final l$territory = territory;
    final l$territoryCode = territoryCode;
    final l$territoryId = territoryId;
    final l$valueRequiredForTwoSignaturesOnCheque =
        valueRequiredForTwoSignaturesOnCheque;
    final l$chequeSignatures = chequeSignatures;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$code,
      l$fullName,
      l$id,
      l$shortName,
      l$territory,
      l$territoryCode,
      l$territoryId,
      l$valueRequiredForTwoSignaturesOnCheque,
      Object.hashAll(l$chequeSignatures.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CompanyFragment ||
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
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompanyFragment
    on Fragment$CompanyFragment {
  CopyWith$Fragment$CompanyFragment<Fragment$CompanyFragment> get copyWith =>
      CopyWith$Fragment$CompanyFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$CompanyFragment<TRes> {
  factory CopyWith$Fragment$CompanyFragment(
    Fragment$CompanyFragment instance,
    TRes Function(Fragment$CompanyFragment) then,
  ) = _CopyWithImpl$Fragment$CompanyFragment;

  factory CopyWith$Fragment$CompanyFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompanyFragment;

  TRes call({
    bool? active,
    String? code,
    String? fullName,
    String? id,
    String? shortName,
    Fragment$CompanyFragment$territory? territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyFragment$territory<TRes> get territory;
}

class _CopyWithImpl$Fragment$CompanyFragment<TRes>
    implements CopyWith$Fragment$CompanyFragment<TRes> {
  _CopyWithImpl$Fragment$CompanyFragment(this._instance, this._then);

  final Fragment$CompanyFragment _instance;

  final TRes Function(Fragment$CompanyFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? territory = _undefined,
    Object? territoryCode = _undefined,
    Object? territoryId = _undefined,
    Object? valueRequiredForTwoSignaturesOnCheque = _undefined,
    Object? chequeSignatures = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CompanyFragment(
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      fullName: fullName == _undefined || fullName == null
          ? _instance.fullName
          : (fullName as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      territory: territory == _undefined
          ? _instance.territory
          : (territory as Fragment$CompanyFragment$territory?),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment$territory<TRes> get territory {
    final local$territory = _instance.territory;
    return local$territory == null
        ? CopyWith$Fragment$CompanyFragment$territory.stub(_then(_instance))
        : CopyWith$Fragment$CompanyFragment$territory(
            local$territory,
            (e) => call(territory: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$CompanyFragment<TRes>
    implements CopyWith$Fragment$CompanyFragment<TRes> {
  _CopyWithStubImpl$Fragment$CompanyFragment(this._res);

  TRes _res;

  call({
    bool? active,
    String? code,
    String? fullName,
    String? id,
    String? shortName,
    Fragment$CompanyFragment$territory? territory,
    String? territoryCode,
    String? territoryId,
    double? valueRequiredForTwoSignaturesOnCheque,
    List<String>? chequeSignatures,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyFragment$territory<TRes> get territory =>
      CopyWith$Fragment$CompanyFragment$territory.stub(_res);
}

const fragmentDefinitionCompanyFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CompanyFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Company'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'active'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fullName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'shortName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territory'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'active'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'currencyCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'defaultCompanyId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'uomId'),
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
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'territoryCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'territoryId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'valueRequiredForTwoSignaturesOnCheque'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'chequeSignatures'),
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
    ],
  ),
);
const documentNodeFragmentCompanyFragment = DocumentNode(
  definitions: [fragmentDefinitionCompanyFragment],
);

class Fragment$CompanyFragment$territory {
  Fragment$CompanyFragment$territory({
    required this.active,
    required this.code,
    required this.currencyCode,
    required this.defaultCompanyId,
    required this.id,
    required this.name,
    required this.uomId,
    this.$__typename = 'Territory',
  });

  factory Fragment$CompanyFragment$territory.fromJson(
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
    return Fragment$CompanyFragment$territory(
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
    if (other is! Fragment$CompanyFragment$territory ||
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

extension UtilityExtension$Fragment$CompanyFragment$territory
    on Fragment$CompanyFragment$territory {
  CopyWith$Fragment$CompanyFragment$territory<
    Fragment$CompanyFragment$territory
  >
  get copyWith => CopyWith$Fragment$CompanyFragment$territory(this, (i) => i);
}

abstract class CopyWith$Fragment$CompanyFragment$territory<TRes> {
  factory CopyWith$Fragment$CompanyFragment$territory(
    Fragment$CompanyFragment$territory instance,
    TRes Function(Fragment$CompanyFragment$territory) then,
  ) = _CopyWithImpl$Fragment$CompanyFragment$territory;

  factory CopyWith$Fragment$CompanyFragment$territory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompanyFragment$territory;

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

class _CopyWithImpl$Fragment$CompanyFragment$territory<TRes>
    implements CopyWith$Fragment$CompanyFragment$territory<TRes> {
  _CopyWithImpl$Fragment$CompanyFragment$territory(this._instance, this._then);

  final Fragment$CompanyFragment$territory _instance;

  final TRes Function(Fragment$CompanyFragment$territory) _then;

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
    Fragment$CompanyFragment$territory(
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

class _CopyWithStubImpl$Fragment$CompanyFragment$territory<TRes>
    implements CopyWith$Fragment$CompanyFragment$territory<TRes> {
  _CopyWithStubImpl$Fragment$CompanyFragment$territory(this._res);

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
