import 'package:gql/ast.dart';

class Query$GetAllSites {
  Query$GetAllSites({required this.allSites, this.$__typename = 'Query'});

  factory Query$GetAllSites.fromJson(Map<String, dynamic> json) {
    final l$allSites = json['allSites'];
    final l$$__typename = json['__typename'];
    return Query$GetAllSites(
      allSites: (l$allSites as List<dynamic>)
          .map(
            (e) => Query$GetAllSites$allSites.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllSites$allSites> allSites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allSites = allSites;
    _resultData['allSites'] = l$allSites.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allSites = allSites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allSites.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllSites || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allSites = allSites;
    final lOther$allSites = other.allSites;
    if (l$allSites.length != lOther$allSites.length) {
      return false;
    }
    for (int i = 0; i < l$allSites.length; i++) {
      final l$allSites$entry = l$allSites[i];
      final lOther$allSites$entry = lOther$allSites[i];
      if (l$allSites$entry != lOther$allSites$entry) {
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

extension UtilityExtension$Query$GetAllSites on Query$GetAllSites {
  CopyWith$Query$GetAllSites<Query$GetAllSites> get copyWith =>
      CopyWith$Query$GetAllSites(this, (i) => i);
}

abstract class CopyWith$Query$GetAllSites<TRes> {
  factory CopyWith$Query$GetAllSites(
    Query$GetAllSites instance,
    TRes Function(Query$GetAllSites) then,
  ) = _CopyWithImpl$Query$GetAllSites;

  factory CopyWith$Query$GetAllSites.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllSites;

  TRes call({List<Query$GetAllSites$allSites>? allSites, String? $__typename});
  TRes allSites(
    Iterable<Query$GetAllSites$allSites> Function(
      Iterable<CopyWith$Query$GetAllSites$allSites<Query$GetAllSites$allSites>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllSites<TRes>
    implements CopyWith$Query$GetAllSites<TRes> {
  _CopyWithImpl$Query$GetAllSites(this._instance, this._then);

  final Query$GetAllSites _instance;

  final TRes Function(Query$GetAllSites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allSites = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllSites(
      allSites: allSites == _undefined || allSites == null
          ? _instance.allSites
          : (allSites as List<Query$GetAllSites$allSites>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allSites(
    Iterable<Query$GetAllSites$allSites> Function(
      Iterable<CopyWith$Query$GetAllSites$allSites<Query$GetAllSites$allSites>>,
    )
    _fn,
  ) => call(
    allSites: _fn(
      _instance.allSites.map(
        (e) => CopyWith$Query$GetAllSites$allSites(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllSites<TRes>
    implements CopyWith$Query$GetAllSites<TRes> {
  _CopyWithStubImpl$Query$GetAllSites(this._res);

  TRes _res;

  call({List<Query$GetAllSites$allSites>? allSites, String? $__typename}) =>
      _res;

  allSites(_fn) => _res;
}

const documentNodeQueryGetAllSites = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllSites'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allSites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'yardCode'),
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
                  name: NameNode(value: 'createdOn'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'createdBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'modifiedOn'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'modifiedBy'),
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
                  name: NameNode(value: 'active'),
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
    ),
  ],
);

class Query$GetAllSites$allSites {
  Query$GetAllSites$allSites({
    required this.yardCode,
    required this.name,
    required this.createdOn,
    required this.createdBy,
    this.modifiedOn,
    this.modifiedBy,
    required this.id,
    required this.active,
    this.$__typename = 'Site',
  });

  factory Query$GetAllSites$allSites.fromJson(Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$createdOn = json['createdOn'];
    final l$createdBy = json['createdBy'];
    final l$modifiedOn = json['modifiedOn'];
    final l$modifiedBy = json['modifiedBy'];
    final l$id = json['id'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$GetAllSites$allSites(
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      createdOn: DateTime.parse((l$createdOn as String)),
      createdBy: (l$createdBy as String),
      modifiedOn: l$modifiedOn == null
          ? null
          : DateTime.parse((l$modifiedOn as String)),
      modifiedBy: (l$modifiedBy as String?),
      id: (l$id as String),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String name;

  final DateTime createdOn;

  final String createdBy;

  final DateTime? modifiedOn;

  final String? modifiedBy;

  final String id;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn?.toIso8601String();
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$modifiedOn = modifiedOn;
    final l$modifiedBy = modifiedBy;
    final l$id = id;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      l$createdOn,
      l$createdBy,
      l$modifiedOn,
      l$modifiedBy,
      l$id,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllSites$allSites ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllSites$allSites
    on Query$GetAllSites$allSites {
  CopyWith$Query$GetAllSites$allSites<Query$GetAllSites$allSites>
  get copyWith => CopyWith$Query$GetAllSites$allSites(this, (i) => i);
}

abstract class CopyWith$Query$GetAllSites$allSites<TRes> {
  factory CopyWith$Query$GetAllSites$allSites(
    Query$GetAllSites$allSites instance,
    TRes Function(Query$GetAllSites$allSites) then,
  ) = _CopyWithImpl$Query$GetAllSites$allSites;

  factory CopyWith$Query$GetAllSites$allSites.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllSites$allSites;

  TRes call({
    String? yardCode,
    String? name,
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? modifiedBy,
    String? id,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllSites$allSites<TRes>
    implements CopyWith$Query$GetAllSites$allSites<TRes> {
  _CopyWithImpl$Query$GetAllSites$allSites(this._instance, this._then);

  final Query$GetAllSites$allSites _instance;

  final TRes Function(Query$GetAllSites$allSites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? modifiedOn = _undefined,
    Object? modifiedBy = _undefined,
    Object? id = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllSites$allSites(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      createdOn: createdOn == _undefined || createdOn == null
          ? _instance.createdOn
          : (createdOn as DateTime),
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      modifiedOn: modifiedOn == _undefined
          ? _instance.modifiedOn
          : (modifiedOn as DateTime?),
      modifiedBy: modifiedBy == _undefined
          ? _instance.modifiedBy
          : (modifiedBy as String?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllSites$allSites<TRes>
    implements CopyWith$Query$GetAllSites$allSites<TRes> {
  _CopyWithStubImpl$Query$GetAllSites$allSites(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? modifiedBy,
    String? id,
    bool? active,
    String? $__typename,
  }) => _res;
}
