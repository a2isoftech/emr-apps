import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CompleteLoadOut {
  factory Variables$Mutation$CompleteLoadOut({
    required Input$SaveLoadOutInput input,
  }) => Variables$Mutation$CompleteLoadOut._({r'input': input});

  Variables$Mutation$CompleteLoadOut._(this._$data);

  factory Variables$Mutation$CompleteLoadOut.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveLoadOutInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CompleteLoadOut._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaveLoadOutInput get input =>
      (_$data['input'] as Input$SaveLoadOutInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CompleteLoadOut<
    Variables$Mutation$CompleteLoadOut
  >
  get copyWith => CopyWith$Variables$Mutation$CompleteLoadOut(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CompleteLoadOut ||
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

abstract class CopyWith$Variables$Mutation$CompleteLoadOut<TRes> {
  factory CopyWith$Variables$Mutation$CompleteLoadOut(
    Variables$Mutation$CompleteLoadOut instance,
    TRes Function(Variables$Mutation$CompleteLoadOut) then,
  ) = _CopyWithImpl$Variables$Mutation$CompleteLoadOut;

  factory CopyWith$Variables$Mutation$CompleteLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CompleteLoadOut;

  TRes call({Input$SaveLoadOutInput? input});
}

class _CopyWithImpl$Variables$Mutation$CompleteLoadOut<TRes>
    implements CopyWith$Variables$Mutation$CompleteLoadOut<TRes> {
  _CopyWithImpl$Variables$Mutation$CompleteLoadOut(this._instance, this._then);

  final Variables$Mutation$CompleteLoadOut _instance;

  final TRes Function(Variables$Mutation$CompleteLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CompleteLoadOut._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SaveLoadOutInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CompleteLoadOut<TRes>
    implements CopyWith$Variables$Mutation$CompleteLoadOut<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CompleteLoadOut(this._res);

  TRes _res;

  call({Input$SaveLoadOutInput? input}) => _res;
}

class Mutation$CompleteLoadOut {
  Mutation$CompleteLoadOut({
    required this.completeLoadOut,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CompleteLoadOut.fromJson(Map<String, dynamic> json) {
    final l$completeLoadOut = json['completeLoadOut'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteLoadOut(
      completeLoadOut: Mutation$CompleteLoadOut$completeLoadOut.fromJson(
        (l$completeLoadOut as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CompleteLoadOut$completeLoadOut completeLoadOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$completeLoadOut = completeLoadOut;
    _resultData['completeLoadOut'] = l$completeLoadOut.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$completeLoadOut = completeLoadOut;
    final l$$__typename = $__typename;
    return Object.hashAll([l$completeLoadOut, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CompleteLoadOut ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$completeLoadOut = completeLoadOut;
    final lOther$completeLoadOut = other.completeLoadOut;
    if (l$completeLoadOut != lOther$completeLoadOut) {
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

extension UtilityExtension$Mutation$CompleteLoadOut
    on Mutation$CompleteLoadOut {
  CopyWith$Mutation$CompleteLoadOut<Mutation$CompleteLoadOut> get copyWith =>
      CopyWith$Mutation$CompleteLoadOut(this, (i) => i);
}

abstract class CopyWith$Mutation$CompleteLoadOut<TRes> {
  factory CopyWith$Mutation$CompleteLoadOut(
    Mutation$CompleteLoadOut instance,
    TRes Function(Mutation$CompleteLoadOut) then,
  ) = _CopyWithImpl$Mutation$CompleteLoadOut;

  factory CopyWith$Mutation$CompleteLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteLoadOut;

  TRes call({
    Mutation$CompleteLoadOut$completeLoadOut? completeLoadOut,
    String? $__typename,
  });
  CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> get completeLoadOut;
}

class _CopyWithImpl$Mutation$CompleteLoadOut<TRes>
    implements CopyWith$Mutation$CompleteLoadOut<TRes> {
  _CopyWithImpl$Mutation$CompleteLoadOut(this._instance, this._then);

  final Mutation$CompleteLoadOut _instance;

  final TRes Function(Mutation$CompleteLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? completeLoadOut = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CompleteLoadOut(
      completeLoadOut: completeLoadOut == _undefined || completeLoadOut == null
          ? _instance.completeLoadOut
          : (completeLoadOut as Mutation$CompleteLoadOut$completeLoadOut),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> get completeLoadOut {
    final local$completeLoadOut = _instance.completeLoadOut;
    return CopyWith$Mutation$CompleteLoadOut$completeLoadOut(
      local$completeLoadOut,
      (e) => call(completeLoadOut: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CompleteLoadOut<TRes>
    implements CopyWith$Mutation$CompleteLoadOut<TRes> {
  _CopyWithStubImpl$Mutation$CompleteLoadOut(this._res);

  TRes _res;

  call({
    Mutation$CompleteLoadOut$completeLoadOut? completeLoadOut,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> get completeLoadOut =>
      CopyWith$Mutation$CompleteLoadOut$completeLoadOut.stub(_res);
}

const documentNodeMutationCompleteLoadOut = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CompleteLoadOut'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SaveLoadOutInput'),
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
            name: NameNode(value: 'completeLoadOut'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'loadOutInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
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
  ],
);

class Mutation$CompleteLoadOut$completeLoadOut {
  Mutation$CompleteLoadOut$completeLoadOut({
    required this.id,
    this.$__typename = 'LoadOut',
  });

  factory Mutation$CompleteLoadOut$completeLoadOut.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CompleteLoadOut$completeLoadOut(
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
    if (other is! Mutation$CompleteLoadOut$completeLoadOut ||
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

extension UtilityExtension$Mutation$CompleteLoadOut$completeLoadOut
    on Mutation$CompleteLoadOut$completeLoadOut {
  CopyWith$Mutation$CompleteLoadOut$completeLoadOut<
    Mutation$CompleteLoadOut$completeLoadOut
  >
  get copyWith =>
      CopyWith$Mutation$CompleteLoadOut$completeLoadOut(this, (i) => i);
}

abstract class CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> {
  factory CopyWith$Mutation$CompleteLoadOut$completeLoadOut(
    Mutation$CompleteLoadOut$completeLoadOut instance,
    TRes Function(Mutation$CompleteLoadOut$completeLoadOut) then,
  ) = _CopyWithImpl$Mutation$CompleteLoadOut$completeLoadOut;

  factory CopyWith$Mutation$CompleteLoadOut$completeLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CompleteLoadOut$completeLoadOut;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CompleteLoadOut$completeLoadOut<TRes>
    implements CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> {
  _CopyWithImpl$Mutation$CompleteLoadOut$completeLoadOut(
    this._instance,
    this._then,
  );

  final Mutation$CompleteLoadOut$completeLoadOut _instance;

  final TRes Function(Mutation$CompleteLoadOut$completeLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CompleteLoadOut$completeLoadOut(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CompleteLoadOut$completeLoadOut<TRes>
    implements CopyWith$Mutation$CompleteLoadOut$completeLoadOut<TRes> {
  _CopyWithStubImpl$Mutation$CompleteLoadOut$completeLoadOut(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
