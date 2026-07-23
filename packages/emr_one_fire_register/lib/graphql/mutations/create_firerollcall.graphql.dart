import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateFireRollCall {
  factory Variables$Mutation$CreateFireRollCall(
          {required Input$FireRollCallLogsInput input}) =>
      Variables$Mutation$CreateFireRollCall._({
        r'input': input,
      });

  Variables$Mutation$CreateFireRollCall._(this._$data);

  factory Variables$Mutation$CreateFireRollCall.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$FireRollCallLogsInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateFireRollCall._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FireRollCallLogsInput get input =>
      (_$data['input'] as Input$FireRollCallLogsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateFireRollCall<
          Variables$Mutation$CreateFireRollCall>
      get copyWith => CopyWith$Variables$Mutation$CreateFireRollCall(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateFireRollCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateFireRollCall<TRes> {
  factory CopyWith$Variables$Mutation$CreateFireRollCall(
    Variables$Mutation$CreateFireRollCall instance,
    TRes Function(Variables$Mutation$CreateFireRollCall) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateFireRollCall;

  factory CopyWith$Variables$Mutation$CreateFireRollCall.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateFireRollCall;

  TRes call({Input$FireRollCallLogsInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateFireRollCall<TRes>
    implements CopyWith$Variables$Mutation$CreateFireRollCall<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateFireRollCall(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateFireRollCall _instance;

  final TRes Function(Variables$Mutation$CreateFireRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateFireRollCall._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$FireRollCallLogsInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateFireRollCall<TRes>
    implements CopyWith$Variables$Mutation$CreateFireRollCall<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateFireRollCall(this._res);

  TRes _res;

  call({Input$FireRollCallLogsInput? input}) => _res;
}

class Mutation$CreateFireRollCall {
  Mutation$CreateFireRollCall({
    required this.createFireRollCall,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateFireRollCall.fromJson(Map<String, dynamic> json) {
    final l$createFireRollCall = json['createFireRollCall'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateFireRollCall(
      createFireRollCall:
          Mutation$CreateFireRollCall$createFireRollCall.fromJson(
              (l$createFireRollCall as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateFireRollCall$createFireRollCall createFireRollCall;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createFireRollCall = createFireRollCall;
    _resultData['createFireRollCall'] = l$createFireRollCall.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createFireRollCall = createFireRollCall;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createFireRollCall,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateFireRollCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createFireRollCall = createFireRollCall;
    final lOther$createFireRollCall = other.createFireRollCall;
    if (l$createFireRollCall != lOther$createFireRollCall) {
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

extension UtilityExtension$Mutation$CreateFireRollCall
    on Mutation$CreateFireRollCall {
  CopyWith$Mutation$CreateFireRollCall<Mutation$CreateFireRollCall>
      get copyWith => CopyWith$Mutation$CreateFireRollCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateFireRollCall<TRes> {
  factory CopyWith$Mutation$CreateFireRollCall(
    Mutation$CreateFireRollCall instance,
    TRes Function(Mutation$CreateFireRollCall) then,
  ) = _CopyWithImpl$Mutation$CreateFireRollCall;

  factory CopyWith$Mutation$CreateFireRollCall.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateFireRollCall;

  TRes call({
    Mutation$CreateFireRollCall$createFireRollCall? createFireRollCall,
    String? $__typename,
  });
  CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes>
      get createFireRollCall;
}

class _CopyWithImpl$Mutation$CreateFireRollCall<TRes>
    implements CopyWith$Mutation$CreateFireRollCall<TRes> {
  _CopyWithImpl$Mutation$CreateFireRollCall(
    this._instance,
    this._then,
  );

  final Mutation$CreateFireRollCall _instance;

  final TRes Function(Mutation$CreateFireRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createFireRollCall = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateFireRollCall(
        createFireRollCall:
            createFireRollCall == _undefined || createFireRollCall == null
                ? _instance.createFireRollCall
                : (createFireRollCall
                    as Mutation$CreateFireRollCall$createFireRollCall),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes>
      get createFireRollCall {
    final local$createFireRollCall = _instance.createFireRollCall;
    return CopyWith$Mutation$CreateFireRollCall$createFireRollCall(
        local$createFireRollCall, (e) => call(createFireRollCall: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateFireRollCall<TRes>
    implements CopyWith$Mutation$CreateFireRollCall<TRes> {
  _CopyWithStubImpl$Mutation$CreateFireRollCall(this._res);

  TRes _res;

  call({
    Mutation$CreateFireRollCall$createFireRollCall? createFireRollCall,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes>
      get createFireRollCall =>
          CopyWith$Mutation$CreateFireRollCall$createFireRollCall.stub(_res);
}

const documentNodeMutationCreateFireRollCall = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateFireRollCall'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'FireRollCallLogsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createFireRollCall'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'fireRollCallLogs'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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

class Mutation$CreateFireRollCall$createFireRollCall {
  Mutation$CreateFireRollCall$createFireRollCall({
    required this.success,
    required this.message,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$CreateFireRollCall$createFireRollCall.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateFireRollCall$createFireRollCall(
      success: (l$success as bool),
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateFireRollCall$createFireRollCall) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateFireRollCall$createFireRollCall
    on Mutation$CreateFireRollCall$createFireRollCall {
  CopyWith$Mutation$CreateFireRollCall$createFireRollCall<
          Mutation$CreateFireRollCall$createFireRollCall>
      get copyWith => CopyWith$Mutation$CreateFireRollCall$createFireRollCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes> {
  factory CopyWith$Mutation$CreateFireRollCall$createFireRollCall(
    Mutation$CreateFireRollCall$createFireRollCall instance,
    TRes Function(Mutation$CreateFireRollCall$createFireRollCall) then,
  ) = _CopyWithImpl$Mutation$CreateFireRollCall$createFireRollCall;

  factory CopyWith$Mutation$CreateFireRollCall$createFireRollCall.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateFireRollCall$createFireRollCall;

  TRes call({
    bool? success,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateFireRollCall$createFireRollCall<TRes>
    implements CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes> {
  _CopyWithImpl$Mutation$CreateFireRollCall$createFireRollCall(
    this._instance,
    this._then,
  );

  final Mutation$CreateFireRollCall$createFireRollCall _instance;

  final TRes Function(Mutation$CreateFireRollCall$createFireRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateFireRollCall$createFireRollCall(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateFireRollCall$createFireRollCall<TRes>
    implements CopyWith$Mutation$CreateFireRollCall$createFireRollCall<TRes> {
  _CopyWithStubImpl$Mutation$CreateFireRollCall$createFireRollCall(this._res);

  TRes _res;

  call({
    bool? success,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
