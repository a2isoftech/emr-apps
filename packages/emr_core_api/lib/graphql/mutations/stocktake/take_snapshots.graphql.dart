import 'package:gql/ast.dart';

class Variables$Mutation$TakeSnapshots {
  factory Variables$Mutation$TakeSnapshots({
    required String input,
    required bool overrideExisting,
  }) => Variables$Mutation$TakeSnapshots._({
    r'input': input,
    r'overrideExisting': overrideExisting,
  });

  Variables$Mutation$TakeSnapshots._(this._$data);

  factory Variables$Mutation$TakeSnapshots.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    final l$overrideExisting = data['overrideExisting'];
    result$data['overrideExisting'] = (l$overrideExisting as bool);
    return Variables$Mutation$TakeSnapshots._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  bool get overrideExisting => (_$data['overrideExisting'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    final l$overrideExisting = overrideExisting;
    result$data['overrideExisting'] = l$overrideExisting;
    return result$data;
  }

  CopyWith$Variables$Mutation$TakeSnapshots<Variables$Mutation$TakeSnapshots>
  get copyWith => CopyWith$Variables$Mutation$TakeSnapshots(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TakeSnapshots ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$overrideExisting = overrideExisting;
    final lOther$overrideExisting = other.overrideExisting;
    if (l$overrideExisting != lOther$overrideExisting) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$overrideExisting = overrideExisting;
    return Object.hashAll([l$input, l$overrideExisting]);
  }
}

abstract class CopyWith$Variables$Mutation$TakeSnapshots<TRes> {
  factory CopyWith$Variables$Mutation$TakeSnapshots(
    Variables$Mutation$TakeSnapshots instance,
    TRes Function(Variables$Mutation$TakeSnapshots) then,
  ) = _CopyWithImpl$Variables$Mutation$TakeSnapshots;

  factory CopyWith$Variables$Mutation$TakeSnapshots.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TakeSnapshots;

  TRes call({String? input, bool? overrideExisting});
}

class _CopyWithImpl$Variables$Mutation$TakeSnapshots<TRes>
    implements CopyWith$Variables$Mutation$TakeSnapshots<TRes> {
  _CopyWithImpl$Variables$Mutation$TakeSnapshots(this._instance, this._then);

  final Variables$Mutation$TakeSnapshots _instance;

  final TRes Function(Variables$Mutation$TakeSnapshots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? overrideExisting = _undefined,
  }) => _then(
    Variables$Mutation$TakeSnapshots._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
      if (overrideExisting != _undefined && overrideExisting != null)
        'overrideExisting': (overrideExisting as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$TakeSnapshots<TRes>
    implements CopyWith$Variables$Mutation$TakeSnapshots<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TakeSnapshots(this._res);

  TRes _res;

  call({String? input, bool? overrideExisting}) => _res;
}

class Mutation$TakeSnapshots {
  Mutation$TakeSnapshots({
    required this.takeSnapshots,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TakeSnapshots.fromJson(Map<String, dynamic> json) {
    final l$takeSnapshots = json['takeSnapshots'];
    final l$$__typename = json['__typename'];
    return Mutation$TakeSnapshots(
      takeSnapshots: Mutation$TakeSnapshots$takeSnapshots.fromJson(
        (l$takeSnapshots as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TakeSnapshots$takeSnapshots takeSnapshots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$takeSnapshots = takeSnapshots;
    _resultData['takeSnapshots'] = l$takeSnapshots.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$takeSnapshots = takeSnapshots;
    final l$$__typename = $__typename;
    return Object.hashAll([l$takeSnapshots, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TakeSnapshots || runtimeType != other.runtimeType) {
      return false;
    }
    final l$takeSnapshots = takeSnapshots;
    final lOther$takeSnapshots = other.takeSnapshots;
    if (l$takeSnapshots != lOther$takeSnapshots) {
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

extension UtilityExtension$Mutation$TakeSnapshots on Mutation$TakeSnapshots {
  CopyWith$Mutation$TakeSnapshots<Mutation$TakeSnapshots> get copyWith =>
      CopyWith$Mutation$TakeSnapshots(this, (i) => i);
}

abstract class CopyWith$Mutation$TakeSnapshots<TRes> {
  factory CopyWith$Mutation$TakeSnapshots(
    Mutation$TakeSnapshots instance,
    TRes Function(Mutation$TakeSnapshots) then,
  ) = _CopyWithImpl$Mutation$TakeSnapshots;

  factory CopyWith$Mutation$TakeSnapshots.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TakeSnapshots;

  TRes call({
    Mutation$TakeSnapshots$takeSnapshots? takeSnapshots,
    String? $__typename,
  });
  CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> get takeSnapshots;
}

class _CopyWithImpl$Mutation$TakeSnapshots<TRes>
    implements CopyWith$Mutation$TakeSnapshots<TRes> {
  _CopyWithImpl$Mutation$TakeSnapshots(this._instance, this._then);

  final Mutation$TakeSnapshots _instance;

  final TRes Function(Mutation$TakeSnapshots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? takeSnapshots = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TakeSnapshots(
      takeSnapshots: takeSnapshots == _undefined || takeSnapshots == null
          ? _instance.takeSnapshots
          : (takeSnapshots as Mutation$TakeSnapshots$takeSnapshots),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> get takeSnapshots {
    final local$takeSnapshots = _instance.takeSnapshots;
    return CopyWith$Mutation$TakeSnapshots$takeSnapshots(
      local$takeSnapshots,
      (e) => call(takeSnapshots: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$TakeSnapshots<TRes>
    implements CopyWith$Mutation$TakeSnapshots<TRes> {
  _CopyWithStubImpl$Mutation$TakeSnapshots(this._res);

  TRes _res;

  call({
    Mutation$TakeSnapshots$takeSnapshots? takeSnapshots,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> get takeSnapshots =>
      CopyWith$Mutation$TakeSnapshots$takeSnapshots.stub(_res);
}

const documentNodeMutationTakeSnapshots = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TakeSnapshots'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'overrideExisting')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'takeSnapshots'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'stocktakeId'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'overrideExisting'),
                value: VariableNode(name: NameNode(value: 'overrideExisting')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
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
  ],
);

class Mutation$TakeSnapshots$takeSnapshots {
  Mutation$TakeSnapshots$takeSnapshots({
    required this.success,
    required this.message,
    required this.errorCode,
    this.data,
    this.$__typename = 'StocktakeResponseOfStocktake',
  });

  factory Mutation$TakeSnapshots$takeSnapshots.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$TakeSnapshots$takeSnapshots(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: l$data == null
          ? null
          : Mutation$TakeSnapshots$takeSnapshots$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final Mutation$TakeSnapshots$takeSnapshots$data? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$errorCode,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TakeSnapshots$takeSnapshots ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$TakeSnapshots$takeSnapshots
    on Mutation$TakeSnapshots$takeSnapshots {
  CopyWith$Mutation$TakeSnapshots$takeSnapshots<
    Mutation$TakeSnapshots$takeSnapshots
  >
  get copyWith => CopyWith$Mutation$TakeSnapshots$takeSnapshots(this, (i) => i);
}

abstract class CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> {
  factory CopyWith$Mutation$TakeSnapshots$takeSnapshots(
    Mutation$TakeSnapshots$takeSnapshots instance,
    TRes Function(Mutation$TakeSnapshots$takeSnapshots) then,
  ) = _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots;

  factory CopyWith$Mutation$TakeSnapshots$takeSnapshots.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$TakeSnapshots$takeSnapshots$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> get data;
}

class _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots<TRes>
    implements CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> {
  _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots(
    this._instance,
    this._then,
  );

  final Mutation$TakeSnapshots$takeSnapshots _instance;

  final TRes Function(Mutation$TakeSnapshots$takeSnapshots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TakeSnapshots$takeSnapshots(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      data: data == _undefined
          ? _instance.data
          : (data as Mutation$TakeSnapshots$takeSnapshots$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$TakeSnapshots$takeSnapshots$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TakeSnapshots$takeSnapshots$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots<TRes>
    implements CopyWith$Mutation$TakeSnapshots$takeSnapshots<TRes> {
  _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    Mutation$TakeSnapshots$takeSnapshots$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> get data =>
      CopyWith$Mutation$TakeSnapshots$takeSnapshots$data.stub(_res);
}

class Mutation$TakeSnapshots$takeSnapshots$data {
  Mutation$TakeSnapshots$takeSnapshots$data({
    required this.id,
    this.$__typename = 'Stocktake',
  });

  factory Mutation$TakeSnapshots$takeSnapshots$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$TakeSnapshots$takeSnapshots$data(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TakeSnapshots$takeSnapshots$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$TakeSnapshots$takeSnapshots$data
    on Mutation$TakeSnapshots$takeSnapshots$data {
  CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<
    Mutation$TakeSnapshots$takeSnapshots$data
  >
  get copyWith =>
      CopyWith$Mutation$TakeSnapshots$takeSnapshots$data(this, (i) => i);
}

abstract class CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> {
  factory CopyWith$Mutation$TakeSnapshots$takeSnapshots$data(
    Mutation$TakeSnapshots$takeSnapshots$data instance,
    TRes Function(Mutation$TakeSnapshots$takeSnapshots$data) then,
  ) = _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots$data;

  factory CopyWith$Mutation$TakeSnapshots$takeSnapshots$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots$data<TRes>
    implements CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> {
  _CopyWithImpl$Mutation$TakeSnapshots$takeSnapshots$data(
    this._instance,
    this._then,
  );

  final Mutation$TakeSnapshots$takeSnapshots$data _instance;

  final TRes Function(Mutation$TakeSnapshots$takeSnapshots$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$TakeSnapshots$takeSnapshots$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots$data<TRes>
    implements CopyWith$Mutation$TakeSnapshots$takeSnapshots$data<TRes> {
  _CopyWithStubImpl$Mutation$TakeSnapshots$takeSnapshots$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
