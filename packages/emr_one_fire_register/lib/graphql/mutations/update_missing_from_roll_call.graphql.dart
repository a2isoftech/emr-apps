import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updateMissingFromRollCall {
  factory Variables$Mutation$updateMissingFromRollCall(
          {required List<Input$UpdateOrCreateMissingEmployeesInput> input}) =>
      Variables$Mutation$updateMissingFromRollCall._({
        r'input': input,
      });

  Variables$Mutation$updateMissingFromRollCall._(this._$data);

  factory Variables$Mutation$updateMissingFromRollCall.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as List<dynamic>)
        .map((e) => Input$UpdateOrCreateMissingEmployeesInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$updateMissingFromRollCall._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UpdateOrCreateMissingEmployeesInput> get input =>
      (_$data['input'] as List<Input$UpdateOrCreateMissingEmployeesInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateMissingFromRollCall<
          Variables$Mutation$updateMissingFromRollCall>
      get copyWith => CopyWith$Variables$Mutation$updateMissingFromRollCall(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateMissingFromRollCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input.length != lOther$input.length) {
      return false;
    }
    for (int i = 0; i < l$input.length; i++) {
      final l$input$entry = l$input[i];
      final lOther$input$entry = lOther$input[i];
      if (l$input$entry != lOther$input$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([Object.hashAll(l$input.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$updateMissingFromRollCall<TRes> {
  factory CopyWith$Variables$Mutation$updateMissingFromRollCall(
    Variables$Mutation$updateMissingFromRollCall instance,
    TRes Function(Variables$Mutation$updateMissingFromRollCall) then,
  ) = _CopyWithImpl$Variables$Mutation$updateMissingFromRollCall;

  factory CopyWith$Variables$Mutation$updateMissingFromRollCall.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateMissingFromRollCall;

  TRes call({List<Input$UpdateOrCreateMissingEmployeesInput>? input});
}

class _CopyWithImpl$Variables$Mutation$updateMissingFromRollCall<TRes>
    implements CopyWith$Variables$Mutation$updateMissingFromRollCall<TRes> {
  _CopyWithImpl$Variables$Mutation$updateMissingFromRollCall(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateMissingFromRollCall _instance;

  final TRes Function(Variables$Mutation$updateMissingFromRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$updateMissingFromRollCall._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as List<Input$UpdateOrCreateMissingEmployeesInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateMissingFromRollCall<TRes>
    implements CopyWith$Variables$Mutation$updateMissingFromRollCall<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateMissingFromRollCall(this._res);

  TRes _res;

  call({List<Input$UpdateOrCreateMissingEmployeesInput>? input}) => _res;
}

class Mutation$updateMissingFromRollCall {
  Mutation$updateMissingFromRollCall({
    required this.updateMissingFromRollCall,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateMissingFromRollCall.fromJson(
      Map<String, dynamic> json) {
    final l$updateMissingFromRollCall = json['updateMissingFromRollCall'];
    final l$$__typename = json['__typename'];
    return Mutation$updateMissingFromRollCall(
      updateMissingFromRollCall:
          Mutation$updateMissingFromRollCall$updateMissingFromRollCall.fromJson(
              (l$updateMissingFromRollCall as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateMissingFromRollCall$updateMissingFromRollCall
      updateMissingFromRollCall;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMissingFromRollCall = updateMissingFromRollCall;
    _resultData['updateMissingFromRollCall'] =
        l$updateMissingFromRollCall.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMissingFromRollCall = updateMissingFromRollCall;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMissingFromRollCall,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateMissingFromRollCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMissingFromRollCall = updateMissingFromRollCall;
    final lOther$updateMissingFromRollCall = other.updateMissingFromRollCall;
    if (l$updateMissingFromRollCall != lOther$updateMissingFromRollCall) {
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

extension UtilityExtension$Mutation$updateMissingFromRollCall
    on Mutation$updateMissingFromRollCall {
  CopyWith$Mutation$updateMissingFromRollCall<
          Mutation$updateMissingFromRollCall>
      get copyWith => CopyWith$Mutation$updateMissingFromRollCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateMissingFromRollCall<TRes> {
  factory CopyWith$Mutation$updateMissingFromRollCall(
    Mutation$updateMissingFromRollCall instance,
    TRes Function(Mutation$updateMissingFromRollCall) then,
  ) = _CopyWithImpl$Mutation$updateMissingFromRollCall;

  factory CopyWith$Mutation$updateMissingFromRollCall.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateMissingFromRollCall;

  TRes call({
    Mutation$updateMissingFromRollCall$updateMissingFromRollCall?
        updateMissingFromRollCall,
    String? $__typename,
  });
  CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<TRes>
      get updateMissingFromRollCall;
}

class _CopyWithImpl$Mutation$updateMissingFromRollCall<TRes>
    implements CopyWith$Mutation$updateMissingFromRollCall<TRes> {
  _CopyWithImpl$Mutation$updateMissingFromRollCall(
    this._instance,
    this._then,
  );

  final Mutation$updateMissingFromRollCall _instance;

  final TRes Function(Mutation$updateMissingFromRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMissingFromRollCall = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateMissingFromRollCall(
        updateMissingFromRollCall: updateMissingFromRollCall == _undefined ||
                updateMissingFromRollCall == null
            ? _instance.updateMissingFromRollCall
            : (updateMissingFromRollCall
                as Mutation$updateMissingFromRollCall$updateMissingFromRollCall),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<TRes>
      get updateMissingFromRollCall {
    final local$updateMissingFromRollCall = _instance.updateMissingFromRollCall;
    return CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
        local$updateMissingFromRollCall,
        (e) => call(updateMissingFromRollCall: e));
  }
}

class _CopyWithStubImpl$Mutation$updateMissingFromRollCall<TRes>
    implements CopyWith$Mutation$updateMissingFromRollCall<TRes> {
  _CopyWithStubImpl$Mutation$updateMissingFromRollCall(this._res);

  TRes _res;

  call({
    Mutation$updateMissingFromRollCall$updateMissingFromRollCall?
        updateMissingFromRollCall,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<TRes>
      get updateMissingFromRollCall =>
          CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall
              .stub(_res);
}

const documentNodeMutationupdateMissingFromRollCall =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateMissingFromRollCall'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateOrCreateMissingEmployeesInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateMissingFromRollCall'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'rollCallEmployees'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
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

class Mutation$updateMissingFromRollCall$updateMissingFromRollCall {
  Mutation$updateMissingFromRollCall$updateMissingFromRollCall({
    required this.message,
    required this.success,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$updateMissingFromRollCall$updateMissingFromRollCall.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
      message: (l$message as String),
      success: (l$success as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final bool success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$updateMissingFromRollCall$updateMissingFromRollCall) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
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

extension UtilityExtension$Mutation$updateMissingFromRollCall$updateMissingFromRollCall
    on Mutation$updateMissingFromRollCall$updateMissingFromRollCall {
  CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
          Mutation$updateMissingFromRollCall$updateMissingFromRollCall>
      get copyWith =>
          CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
    TRes> {
  factory CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
    Mutation$updateMissingFromRollCall$updateMissingFromRollCall instance,
    TRes Function(Mutation$updateMissingFromRollCall$updateMissingFromRollCall)
        then,
  ) = _CopyWithImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall;

  factory CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall;

  TRes call({
    String? message,
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
        TRes>
    implements
        CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
            TRes> {
  _CopyWithImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
    this._instance,
    this._then,
  );

  final Mutation$updateMissingFromRollCall$updateMissingFromRollCall _instance;

  final TRes Function(
      Mutation$updateMissingFromRollCall$updateMissingFromRollCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
        TRes>
    implements
        CopyWith$Mutation$updateMissingFromRollCall$updateMissingFromRollCall<
            TRes> {
  _CopyWithStubImpl$Mutation$updateMissingFromRollCall$updateMissingFromRollCall(
      this._res);

  TRes _res;

  call({
    String? message,
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
