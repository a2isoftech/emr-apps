import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveLoadOut {
  factory Variables$Mutation$SaveLoadOut({
    required Input$SaveLoadOutInput input,
  }) => Variables$Mutation$SaveLoadOut._({r'input': input});

  Variables$Mutation$SaveLoadOut._(this._$data);

  factory Variables$Mutation$SaveLoadOut.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveLoadOutInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SaveLoadOut._(result$data);
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

  CopyWith$Variables$Mutation$SaveLoadOut<Variables$Mutation$SaveLoadOut>
  get copyWith => CopyWith$Variables$Mutation$SaveLoadOut(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveLoadOut ||
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

abstract class CopyWith$Variables$Mutation$SaveLoadOut<TRes> {
  factory CopyWith$Variables$Mutation$SaveLoadOut(
    Variables$Mutation$SaveLoadOut instance,
    TRes Function(Variables$Mutation$SaveLoadOut) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveLoadOut;

  factory CopyWith$Variables$Mutation$SaveLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveLoadOut;

  TRes call({Input$SaveLoadOutInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveLoadOut<TRes>
    implements CopyWith$Variables$Mutation$SaveLoadOut<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveLoadOut(this._instance, this._then);

  final Variables$Mutation$SaveLoadOut _instance;

  final TRes Function(Variables$Mutation$SaveLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SaveLoadOut._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SaveLoadOutInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveLoadOut<TRes>
    implements CopyWith$Variables$Mutation$SaveLoadOut<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveLoadOut(this._res);

  TRes _res;

  call({Input$SaveLoadOutInput? input}) => _res;
}

class Mutation$SaveLoadOut {
  Mutation$SaveLoadOut({
    required this.saveLoadOut,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveLoadOut.fromJson(Map<String, dynamic> json) {
    final l$saveLoadOut = json['saveLoadOut'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveLoadOut(
      saveLoadOut: Mutation$SaveLoadOut$saveLoadOut.fromJson(
        (l$saveLoadOut as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveLoadOut$saveLoadOut saveLoadOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveLoadOut = saveLoadOut;
    _resultData['saveLoadOut'] = l$saveLoadOut.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveLoadOut = saveLoadOut;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveLoadOut, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveLoadOut || runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveLoadOut = saveLoadOut;
    final lOther$saveLoadOut = other.saveLoadOut;
    if (l$saveLoadOut != lOther$saveLoadOut) {
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

extension UtilityExtension$Mutation$SaveLoadOut on Mutation$SaveLoadOut {
  CopyWith$Mutation$SaveLoadOut<Mutation$SaveLoadOut> get copyWith =>
      CopyWith$Mutation$SaveLoadOut(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveLoadOut<TRes> {
  factory CopyWith$Mutation$SaveLoadOut(
    Mutation$SaveLoadOut instance,
    TRes Function(Mutation$SaveLoadOut) then,
  ) = _CopyWithImpl$Mutation$SaveLoadOut;

  factory CopyWith$Mutation$SaveLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveLoadOut;

  TRes call({
    Mutation$SaveLoadOut$saveLoadOut? saveLoadOut,
    String? $__typename,
  });
  CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> get saveLoadOut;
}

class _CopyWithImpl$Mutation$SaveLoadOut<TRes>
    implements CopyWith$Mutation$SaveLoadOut<TRes> {
  _CopyWithImpl$Mutation$SaveLoadOut(this._instance, this._then);

  final Mutation$SaveLoadOut _instance;

  final TRes Function(Mutation$SaveLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveLoadOut = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveLoadOut(
      saveLoadOut: saveLoadOut == _undefined || saveLoadOut == null
          ? _instance.saveLoadOut
          : (saveLoadOut as Mutation$SaveLoadOut$saveLoadOut),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> get saveLoadOut {
    final local$saveLoadOut = _instance.saveLoadOut;
    return CopyWith$Mutation$SaveLoadOut$saveLoadOut(
      local$saveLoadOut,
      (e) => call(saveLoadOut: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveLoadOut<TRes>
    implements CopyWith$Mutation$SaveLoadOut<TRes> {
  _CopyWithStubImpl$Mutation$SaveLoadOut(this._res);

  TRes _res;

  call({Mutation$SaveLoadOut$saveLoadOut? saveLoadOut, String? $__typename}) =>
      _res;

  CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> get saveLoadOut =>
      CopyWith$Mutation$SaveLoadOut$saveLoadOut.stub(_res);
}

const documentNodeMutationSaveLoadOut = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveLoadOut'),
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
            name: NameNode(value: 'saveLoadOut'),
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

class Mutation$SaveLoadOut$saveLoadOut {
  Mutation$SaveLoadOut$saveLoadOut({
    required this.id,
    this.$__typename = 'LoadOut',
  });

  factory Mutation$SaveLoadOut$saveLoadOut.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveLoadOut$saveLoadOut(
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
    if (other is! Mutation$SaveLoadOut$saveLoadOut ||
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

extension UtilityExtension$Mutation$SaveLoadOut$saveLoadOut
    on Mutation$SaveLoadOut$saveLoadOut {
  CopyWith$Mutation$SaveLoadOut$saveLoadOut<Mutation$SaveLoadOut$saveLoadOut>
  get copyWith => CopyWith$Mutation$SaveLoadOut$saveLoadOut(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> {
  factory CopyWith$Mutation$SaveLoadOut$saveLoadOut(
    Mutation$SaveLoadOut$saveLoadOut instance,
    TRes Function(Mutation$SaveLoadOut$saveLoadOut) then,
  ) = _CopyWithImpl$Mutation$SaveLoadOut$saveLoadOut;

  factory CopyWith$Mutation$SaveLoadOut$saveLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveLoadOut$saveLoadOut;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$SaveLoadOut$saveLoadOut<TRes>
    implements CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> {
  _CopyWithImpl$Mutation$SaveLoadOut$saveLoadOut(this._instance, this._then);

  final Mutation$SaveLoadOut$saveLoadOut _instance;

  final TRes Function(Mutation$SaveLoadOut$saveLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$SaveLoadOut$saveLoadOut(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$SaveLoadOut$saveLoadOut<TRes>
    implements CopyWith$Mutation$SaveLoadOut$saveLoadOut<TRes> {
  _CopyWithStubImpl$Mutation$SaveLoadOut$saveLoadOut(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
