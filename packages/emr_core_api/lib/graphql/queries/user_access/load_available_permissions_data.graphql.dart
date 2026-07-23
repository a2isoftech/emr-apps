import 'package:gql/ast.dart';

class Query$LoadAvailablePermissions {
  Query$LoadAvailablePermissions({
    required this.availablePermissions,
    this.$__typename = 'Query',
  });

  factory Query$LoadAvailablePermissions.fromJson(Map<String, dynamic> json) {
    final l$availablePermissions = json['availablePermissions'];
    final l$$__typename = json['__typename'];
    return Query$LoadAvailablePermissions(
      availablePermissions: (l$availablePermissions as List<dynamic>)
          .map(
            (e) => Query$LoadAvailablePermissions$availablePermissions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$LoadAvailablePermissions$availablePermissions>
  availablePermissions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$availablePermissions = availablePermissions;
    _resultData['availablePermissions'] = l$availablePermissions
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$availablePermissions = availablePermissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$availablePermissions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadAvailablePermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$availablePermissions = availablePermissions;
    final lOther$availablePermissions = other.availablePermissions;
    if (l$availablePermissions.length != lOther$availablePermissions.length) {
      return false;
    }
    for (int i = 0; i < l$availablePermissions.length; i++) {
      final l$availablePermissions$entry = l$availablePermissions[i];
      final lOther$availablePermissions$entry = lOther$availablePermissions[i];
      if (l$availablePermissions$entry != lOther$availablePermissions$entry) {
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

extension UtilityExtension$Query$LoadAvailablePermissions
    on Query$LoadAvailablePermissions {
  CopyWith$Query$LoadAvailablePermissions<Query$LoadAvailablePermissions>
  get copyWith => CopyWith$Query$LoadAvailablePermissions(this, (i) => i);
}

abstract class CopyWith$Query$LoadAvailablePermissions<TRes> {
  factory CopyWith$Query$LoadAvailablePermissions(
    Query$LoadAvailablePermissions instance,
    TRes Function(Query$LoadAvailablePermissions) then,
  ) = _CopyWithImpl$Query$LoadAvailablePermissions;

  factory CopyWith$Query$LoadAvailablePermissions.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadAvailablePermissions;

  TRes call({
    List<Query$LoadAvailablePermissions$availablePermissions>?
    availablePermissions,
    String? $__typename,
  });
  TRes availablePermissions(
    Iterable<Query$LoadAvailablePermissions$availablePermissions> Function(
      Iterable<
        CopyWith$Query$LoadAvailablePermissions$availablePermissions<
          Query$LoadAvailablePermissions$availablePermissions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LoadAvailablePermissions<TRes>
    implements CopyWith$Query$LoadAvailablePermissions<TRes> {
  _CopyWithImpl$Query$LoadAvailablePermissions(this._instance, this._then);

  final Query$LoadAvailablePermissions _instance;

  final TRes Function(Query$LoadAvailablePermissions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? availablePermissions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadAvailablePermissions(
      availablePermissions:
          availablePermissions == _undefined || availablePermissions == null
          ? _instance.availablePermissions
          : (availablePermissions
                as List<Query$LoadAvailablePermissions$availablePermissions>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes availablePermissions(
    Iterable<Query$LoadAvailablePermissions$availablePermissions> Function(
      Iterable<
        CopyWith$Query$LoadAvailablePermissions$availablePermissions<
          Query$LoadAvailablePermissions$availablePermissions
        >
      >,
    )
    _fn,
  ) => call(
    availablePermissions: _fn(
      _instance.availablePermissions.map(
        (e) => CopyWith$Query$LoadAvailablePermissions$availablePermissions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LoadAvailablePermissions<TRes>
    implements CopyWith$Query$LoadAvailablePermissions<TRes> {
  _CopyWithStubImpl$Query$LoadAvailablePermissions(this._res);

  TRes _res;

  call({
    List<Query$LoadAvailablePermissions$availablePermissions>?
    availablePermissions,
    String? $__typename,
  }) => _res;

  availablePermissions(_fn) => _res;
}

const documentNodeQueryLoadAvailablePermissions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadAvailablePermissions'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'availablePermissions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'permissionCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'permissionName'),
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

class Query$LoadAvailablePermissions$availablePermissions {
  Query$LoadAvailablePermissions$availablePermissions({
    required this.permissionCode,
    required this.permissionName,
    this.$__typename = 'AllAvailablePermissionsOutput',
  });

  factory Query$LoadAvailablePermissions$availablePermissions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$permissionCode = json['permissionCode'];
    final l$permissionName = json['permissionName'];
    final l$$__typename = json['__typename'];
    return Query$LoadAvailablePermissions$availablePermissions(
      permissionCode: (l$permissionCode as String),
      permissionName: (l$permissionName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String permissionCode;

  final String permissionName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permissionCode = permissionCode;
    _resultData['permissionCode'] = l$permissionCode;
    final l$permissionName = permissionName;
    _resultData['permissionName'] = l$permissionName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permissionCode = permissionCode;
    final l$permissionName = permissionName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permissionCode, l$permissionName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadAvailablePermissions$availablePermissions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissionCode = permissionCode;
    final lOther$permissionCode = other.permissionCode;
    if (l$permissionCode != lOther$permissionCode) {
      return false;
    }
    final l$permissionName = permissionName;
    final lOther$permissionName = other.permissionName;
    if (l$permissionName != lOther$permissionName) {
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

extension UtilityExtension$Query$LoadAvailablePermissions$availablePermissions
    on Query$LoadAvailablePermissions$availablePermissions {
  CopyWith$Query$LoadAvailablePermissions$availablePermissions<
    Query$LoadAvailablePermissions$availablePermissions
  >
  get copyWith => CopyWith$Query$LoadAvailablePermissions$availablePermissions(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$LoadAvailablePermissions$availablePermissions<
  TRes
> {
  factory CopyWith$Query$LoadAvailablePermissions$availablePermissions(
    Query$LoadAvailablePermissions$availablePermissions instance,
    TRes Function(Query$LoadAvailablePermissions$availablePermissions) then,
  ) = _CopyWithImpl$Query$LoadAvailablePermissions$availablePermissions;

  factory CopyWith$Query$LoadAvailablePermissions$availablePermissions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LoadAvailablePermissions$availablePermissions;

  TRes call({
    String? permissionCode,
    String? permissionName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LoadAvailablePermissions$availablePermissions<TRes>
    implements
        CopyWith$Query$LoadAvailablePermissions$availablePermissions<TRes> {
  _CopyWithImpl$Query$LoadAvailablePermissions$availablePermissions(
    this._instance,
    this._then,
  );

  final Query$LoadAvailablePermissions$availablePermissions _instance;

  final TRes Function(Query$LoadAvailablePermissions$availablePermissions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permissionCode = _undefined,
    Object? permissionName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadAvailablePermissions$availablePermissions(
      permissionCode: permissionCode == _undefined || permissionCode == null
          ? _instance.permissionCode
          : (permissionCode as String),
      permissionName: permissionName == _undefined || permissionName == null
          ? _instance.permissionName
          : (permissionName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LoadAvailablePermissions$availablePermissions<
  TRes
>
    implements
        CopyWith$Query$LoadAvailablePermissions$availablePermissions<TRes> {
  _CopyWithStubImpl$Query$LoadAvailablePermissions$availablePermissions(
    this._res,
  );

  TRes _res;

  call({String? permissionCode, String? permissionName, String? $__typename}) =>
      _res;
}
