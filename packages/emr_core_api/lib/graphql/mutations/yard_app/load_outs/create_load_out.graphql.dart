import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateLoadOut {
  factory Variables$Mutation$CreateLoadOut({
    required Input$CreateLoadOutInput input,
  }) => Variables$Mutation$CreateLoadOut._({r'input': input});

  Variables$Mutation$CreateLoadOut._(this._$data);

  factory Variables$Mutation$CreateLoadOut.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateLoadOutInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateLoadOut._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateLoadOutInput get input =>
      (_$data['input'] as Input$CreateLoadOutInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateLoadOut<Variables$Mutation$CreateLoadOut>
  get copyWith => CopyWith$Variables$Mutation$CreateLoadOut(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateLoadOut ||
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

abstract class CopyWith$Variables$Mutation$CreateLoadOut<TRes> {
  factory CopyWith$Variables$Mutation$CreateLoadOut(
    Variables$Mutation$CreateLoadOut instance,
    TRes Function(Variables$Mutation$CreateLoadOut) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateLoadOut;

  factory CopyWith$Variables$Mutation$CreateLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateLoadOut;

  TRes call({Input$CreateLoadOutInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateLoadOut<TRes>
    implements CopyWith$Variables$Mutation$CreateLoadOut<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateLoadOut(this._instance, this._then);

  final Variables$Mutation$CreateLoadOut _instance;

  final TRes Function(Variables$Mutation$CreateLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateLoadOut._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateLoadOutInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateLoadOut<TRes>
    implements CopyWith$Variables$Mutation$CreateLoadOut<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateLoadOut(this._res);

  TRes _res;

  call({Input$CreateLoadOutInput? input}) => _res;
}

class Mutation$CreateLoadOut {
  Mutation$CreateLoadOut({
    required this.createLoadOut,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateLoadOut.fromJson(Map<String, dynamic> json) {
    final l$createLoadOut = json['createLoadOut'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateLoadOut(
      createLoadOut: (l$createLoadOut as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String createLoadOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createLoadOut = createLoadOut;
    _resultData['createLoadOut'] = l$createLoadOut;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createLoadOut = createLoadOut;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createLoadOut, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateLoadOut || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createLoadOut = createLoadOut;
    final lOther$createLoadOut = other.createLoadOut;
    if (l$createLoadOut != lOther$createLoadOut) {
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

extension UtilityExtension$Mutation$CreateLoadOut on Mutation$CreateLoadOut {
  CopyWith$Mutation$CreateLoadOut<Mutation$CreateLoadOut> get copyWith =>
      CopyWith$Mutation$CreateLoadOut(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateLoadOut<TRes> {
  factory CopyWith$Mutation$CreateLoadOut(
    Mutation$CreateLoadOut instance,
    TRes Function(Mutation$CreateLoadOut) then,
  ) = _CopyWithImpl$Mutation$CreateLoadOut;

  factory CopyWith$Mutation$CreateLoadOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateLoadOut;

  TRes call({String? createLoadOut, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateLoadOut<TRes>
    implements CopyWith$Mutation$CreateLoadOut<TRes> {
  _CopyWithImpl$Mutation$CreateLoadOut(this._instance, this._then);

  final Mutation$CreateLoadOut _instance;

  final TRes Function(Mutation$CreateLoadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createLoadOut = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateLoadOut(
      createLoadOut: createLoadOut == _undefined || createLoadOut == null
          ? _instance.createLoadOut
          : (createLoadOut as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateLoadOut<TRes>
    implements CopyWith$Mutation$CreateLoadOut<TRes> {
  _CopyWithStubImpl$Mutation$CreateLoadOut(this._res);

  TRes _res;

  call({String? createLoadOut, String? $__typename}) => _res;
}

const documentNodeMutationCreateLoadOut = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateLoadOut'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateLoadOutInput'),
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
            name: NameNode(value: 'createLoadOut'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'loadOutInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
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
  ],
);
