import 'package:gql/ast.dart';

class Variables$Query$getLocationByBarcode {
  factory Variables$Query$getLocationByBarcode({required String code}) =>
      Variables$Query$getLocationByBarcode._({r'code': code});

  Variables$Query$getLocationByBarcode._(this._$data);

  factory Variables$Query$getLocationByBarcode.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Query$getLocationByBarcode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Query$getLocationByBarcode<
    Variables$Query$getLocationByBarcode
  >
  get copyWith => CopyWith$Variables$Query$getLocationByBarcode(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getLocationByBarcode ||
        runtimeType != other.runtimeType) {
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
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Query$getLocationByBarcode<TRes> {
  factory CopyWith$Variables$Query$getLocationByBarcode(
    Variables$Query$getLocationByBarcode instance,
    TRes Function(Variables$Query$getLocationByBarcode) then,
  ) = _CopyWithImpl$Variables$Query$getLocationByBarcode;

  factory CopyWith$Variables$Query$getLocationByBarcode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getLocationByBarcode;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$getLocationByBarcode<TRes>
    implements CopyWith$Variables$Query$getLocationByBarcode<TRes> {
  _CopyWithImpl$Variables$Query$getLocationByBarcode(
    this._instance,
    this._then,
  );

  final Variables$Query$getLocationByBarcode _instance;

  final TRes Function(Variables$Query$getLocationByBarcode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(
    Variables$Query$getLocationByBarcode._({
      ..._instance._$data,
      if (code != _undefined && code != null) 'code': (code as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getLocationByBarcode<TRes>
    implements CopyWith$Variables$Query$getLocationByBarcode<TRes> {
  _CopyWithStubImpl$Variables$Query$getLocationByBarcode(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Query$getLocationByBarcode {
  Query$getLocationByBarcode({
    required this.locationByBarcode,
    this.$__typename = 'Query',
  });

  factory Query$getLocationByBarcode.fromJson(Map<String, dynamic> json) {
    final l$locationByBarcode = json['locationByBarcode'];
    final l$$__typename = json['__typename'];
    return Query$getLocationByBarcode(
      locationByBarcode: Query$getLocationByBarcode$locationByBarcode.fromJson(
        (l$locationByBarcode as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getLocationByBarcode$locationByBarcode locationByBarcode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationByBarcode = locationByBarcode;
    _resultData['locationByBarcode'] = l$locationByBarcode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationByBarcode = locationByBarcode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$locationByBarcode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getLocationByBarcode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationByBarcode = locationByBarcode;
    final lOther$locationByBarcode = other.locationByBarcode;
    if (l$locationByBarcode != lOther$locationByBarcode) {
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

extension UtilityExtension$Query$getLocationByBarcode
    on Query$getLocationByBarcode {
  CopyWith$Query$getLocationByBarcode<Query$getLocationByBarcode>
  get copyWith => CopyWith$Query$getLocationByBarcode(this, (i) => i);
}

abstract class CopyWith$Query$getLocationByBarcode<TRes> {
  factory CopyWith$Query$getLocationByBarcode(
    Query$getLocationByBarcode instance,
    TRes Function(Query$getLocationByBarcode) then,
  ) = _CopyWithImpl$Query$getLocationByBarcode;

  factory CopyWith$Query$getLocationByBarcode.stub(TRes res) =
      _CopyWithStubImpl$Query$getLocationByBarcode;

  TRes call({
    Query$getLocationByBarcode$locationByBarcode? locationByBarcode,
    String? $__typename,
  });
  CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes>
  get locationByBarcode;
}

class _CopyWithImpl$Query$getLocationByBarcode<TRes>
    implements CopyWith$Query$getLocationByBarcode<TRes> {
  _CopyWithImpl$Query$getLocationByBarcode(this._instance, this._then);

  final Query$getLocationByBarcode _instance;

  final TRes Function(Query$getLocationByBarcode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationByBarcode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getLocationByBarcode(
      locationByBarcode:
          locationByBarcode == _undefined || locationByBarcode == null
          ? _instance.locationByBarcode
          : (locationByBarcode as Query$getLocationByBarcode$locationByBarcode),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes>
  get locationByBarcode {
    final local$locationByBarcode = _instance.locationByBarcode;
    return CopyWith$Query$getLocationByBarcode$locationByBarcode(
      local$locationByBarcode,
      (e) => call(locationByBarcode: e),
    );
  }
}

class _CopyWithStubImpl$Query$getLocationByBarcode<TRes>
    implements CopyWith$Query$getLocationByBarcode<TRes> {
  _CopyWithStubImpl$Query$getLocationByBarcode(this._res);

  TRes _res;

  call({
    Query$getLocationByBarcode$locationByBarcode? locationByBarcode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes>
  get locationByBarcode =>
      CopyWith$Query$getLocationByBarcode$locationByBarcode.stub(_res);
}

const documentNodeQuerygetLocationByBarcode = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getLocationByBarcode'),
      variableDefinitions: [
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
            name: NameNode(value: 'locationByBarcode'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'barcode'),
                value: VariableNode(name: NameNode(value: 'code')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'yardId'),
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
                  name: NameNode(value: 'code'),
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
                  name: NameNode(value: 'what3Words'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentId'),
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

class Query$getLocationByBarcode$locationByBarcode {
  Query$getLocationByBarcode$locationByBarcode({
    required this.description,
    required this.yardId,
    required this.id,
    required this.code,
    required this.active,
    this.what3Words,
    this.parentId,
    this.$__typename = 'InventoryLocation',
  });

  factory Query$getLocationByBarcode$locationByBarcode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$description = json['description'];
    final l$yardId = json['yardId'];
    final l$id = json['id'];
    final l$code = json['code'];
    final l$active = json['active'];
    final l$what3Words = json['what3Words'];
    final l$parentId = json['parentId'];
    final l$$__typename = json['__typename'];
    return Query$getLocationByBarcode$locationByBarcode(
      description: (l$description as String),
      yardId: (l$yardId as String),
      id: (l$id as String),
      code: (l$code as String),
      active: (l$active as bool),
      what3Words: (l$what3Words as String?),
      parentId: (l$parentId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String description;

  final String yardId;

  final String id;

  final String code;

  final bool active;

  final String? what3Words;

  final String? parentId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$parentId = parentId;
    _resultData['parentId'] = l$parentId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$yardId = yardId;
    final l$id = id;
    final l$code = code;
    final l$active = active;
    final l$what3Words = what3Words;
    final l$parentId = parentId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$yardId,
      l$id,
      l$code,
      l$active,
      l$what3Words,
      l$parentId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getLocationByBarcode$locationByBarcode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
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
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
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

extension UtilityExtension$Query$getLocationByBarcode$locationByBarcode
    on Query$getLocationByBarcode$locationByBarcode {
  CopyWith$Query$getLocationByBarcode$locationByBarcode<
    Query$getLocationByBarcode$locationByBarcode
  >
  get copyWith =>
      CopyWith$Query$getLocationByBarcode$locationByBarcode(this, (i) => i);
}

abstract class CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes> {
  factory CopyWith$Query$getLocationByBarcode$locationByBarcode(
    Query$getLocationByBarcode$locationByBarcode instance,
    TRes Function(Query$getLocationByBarcode$locationByBarcode) then,
  ) = _CopyWithImpl$Query$getLocationByBarcode$locationByBarcode;

  factory CopyWith$Query$getLocationByBarcode$locationByBarcode.stub(TRes res) =
      _CopyWithStubImpl$Query$getLocationByBarcode$locationByBarcode;

  TRes call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? what3Words,
    String? parentId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getLocationByBarcode$locationByBarcode<TRes>
    implements CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes> {
  _CopyWithImpl$Query$getLocationByBarcode$locationByBarcode(
    this._instance,
    this._then,
  );

  final Query$getLocationByBarcode$locationByBarcode _instance;

  final TRes Function(Query$getLocationByBarcode$locationByBarcode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? yardId = _undefined,
    Object? id = _undefined,
    Object? code = _undefined,
    Object? active = _undefined,
    Object? what3Words = _undefined,
    Object? parentId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getLocationByBarcode$locationByBarcode(
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      what3Words: what3Words == _undefined
          ? _instance.what3Words
          : (what3Words as String?),
      parentId: parentId == _undefined
          ? _instance.parentId
          : (parentId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getLocationByBarcode$locationByBarcode<TRes>
    implements CopyWith$Query$getLocationByBarcode$locationByBarcode<TRes> {
  _CopyWithStubImpl$Query$getLocationByBarcode$locationByBarcode(this._res);

  TRes _res;

  call({
    String? description,
    String? yardId,
    String? id,
    String? code,
    bool? active,
    String? what3Words,
    String? parentId,
    String? $__typename,
  }) => _res;
}
