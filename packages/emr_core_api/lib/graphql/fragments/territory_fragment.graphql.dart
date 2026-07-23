import 'package:gql/ast.dart';

class Fragment$TerritoryFragment {
  Fragment$TerritoryFragment({
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

  factory Fragment$TerritoryFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$active = json['active'];
    final l$name = json['name'];
    final l$uomId = json['uomId'];
    final l$defaultCompanyId = json['defaultCompanyId'];
    final l$currencyCode = json['currencyCode'];
    final l$code = json['code'];
    final l$defaultCompany = json['defaultCompany'];
    final l$$__typename = json['__typename'];
    return Fragment$TerritoryFragment(
      id: (l$id as String),
      active: (l$active as bool),
      name: (l$name as String),
      uomId: (l$uomId as int),
      defaultCompanyId: (l$defaultCompanyId as String),
      currencyCode: (l$currencyCode as String),
      code: (l$code as String),
      defaultCompany: l$defaultCompany == null
          ? null
          : Fragment$TerritoryFragment$defaultCompany.fromJson(
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

  final Fragment$TerritoryFragment$defaultCompany? defaultCompany;

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
    if (other is! Fragment$TerritoryFragment ||
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

extension UtilityExtension$Fragment$TerritoryFragment
    on Fragment$TerritoryFragment {
  CopyWith$Fragment$TerritoryFragment<Fragment$TerritoryFragment>
  get copyWith => CopyWith$Fragment$TerritoryFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$TerritoryFragment<TRes> {
  factory CopyWith$Fragment$TerritoryFragment(
    Fragment$TerritoryFragment instance,
    TRes Function(Fragment$TerritoryFragment) then,
  ) = _CopyWithImpl$Fragment$TerritoryFragment;

  factory CopyWith$Fragment$TerritoryFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TerritoryFragment;

  TRes call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Fragment$TerritoryFragment$defaultCompany? defaultCompany,
    String? $__typename,
  });
  CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> get defaultCompany;
}

class _CopyWithImpl$Fragment$TerritoryFragment<TRes>
    implements CopyWith$Fragment$TerritoryFragment<TRes> {
  _CopyWithImpl$Fragment$TerritoryFragment(this._instance, this._then);

  final Fragment$TerritoryFragment _instance;

  final TRes Function(Fragment$TerritoryFragment) _then;

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
    Fragment$TerritoryFragment(
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
          : (defaultCompany as Fragment$TerritoryFragment$defaultCompany?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> get defaultCompany {
    final local$defaultCompany = _instance.defaultCompany;
    return local$defaultCompany == null
        ? CopyWith$Fragment$TerritoryFragment$defaultCompany.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TerritoryFragment$defaultCompany(
            local$defaultCompany,
            (e) => call(defaultCompany: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$TerritoryFragment<TRes>
    implements CopyWith$Fragment$TerritoryFragment<TRes> {
  _CopyWithStubImpl$Fragment$TerritoryFragment(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? name,
    int? uomId,
    String? defaultCompanyId,
    String? currencyCode,
    String? code,
    Fragment$TerritoryFragment$defaultCompany? defaultCompany,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> get defaultCompany =>
      CopyWith$Fragment$TerritoryFragment$defaultCompany.stub(_res);
}

const fragmentDefinitionTerritoryFragment = FragmentDefinitionNode(
  name: NameNode(value: 'TerritoryFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Territory'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'active'),
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
        name: NameNode(value: 'defaultCompanyId'),
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
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'defaultCompany'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
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
);
const documentNodeFragmentTerritoryFragment = DocumentNode(
  definitions: [fragmentDefinitionTerritoryFragment],
);

class Fragment$TerritoryFragment$defaultCompany {
  Fragment$TerritoryFragment$defaultCompany({
    required this.id,
    required this.code,
    required this.fullName,
    this.$__typename = 'Company',
  });

  factory Fragment$TerritoryFragment$defaultCompany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$fullName = json['fullName'];
    final l$$__typename = json['__typename'];
    return Fragment$TerritoryFragment$defaultCompany(
      id: (l$id as String),
      code: (l$code as String),
      fullName: (l$fullName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String fullName;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$fullName = fullName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$fullName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TerritoryFragment$defaultCompany ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$TerritoryFragment$defaultCompany
    on Fragment$TerritoryFragment$defaultCompany {
  CopyWith$Fragment$TerritoryFragment$defaultCompany<
    Fragment$TerritoryFragment$defaultCompany
  >
  get copyWith =>
      CopyWith$Fragment$TerritoryFragment$defaultCompany(this, (i) => i);
}

abstract class CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> {
  factory CopyWith$Fragment$TerritoryFragment$defaultCompany(
    Fragment$TerritoryFragment$defaultCompany instance,
    TRes Function(Fragment$TerritoryFragment$defaultCompany) then,
  ) = _CopyWithImpl$Fragment$TerritoryFragment$defaultCompany;

  factory CopyWith$Fragment$TerritoryFragment$defaultCompany.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TerritoryFragment$defaultCompany;

  TRes call({String? id, String? code, String? fullName, String? $__typename});
}

class _CopyWithImpl$Fragment$TerritoryFragment$defaultCompany<TRes>
    implements CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> {
  _CopyWithImpl$Fragment$TerritoryFragment$defaultCompany(
    this._instance,
    this._then,
  );

  final Fragment$TerritoryFragment$defaultCompany _instance;

  final TRes Function(Fragment$TerritoryFragment$defaultCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? fullName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TerritoryFragment$defaultCompany(
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
    ),
  );
}

class _CopyWithStubImpl$Fragment$TerritoryFragment$defaultCompany<TRes>
    implements CopyWith$Fragment$TerritoryFragment$defaultCompany<TRes> {
  _CopyWithStubImpl$Fragment$TerritoryFragment$defaultCompany(this._res);

  TRes _res;

  call({String? id, String? code, String? fullName, String? $__typename}) =>
      _res;
}
