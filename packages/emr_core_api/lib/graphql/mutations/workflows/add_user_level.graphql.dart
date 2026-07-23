import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddUserLevel {
  factory Variables$Mutation$AddUserLevel({
    required Input$AddUserLevelInput input,
  }) => Variables$Mutation$AddUserLevel._({r'input': input});

  Variables$Mutation$AddUserLevel._(this._$data);

  factory Variables$Mutation$AddUserLevel.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddUserLevelInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddUserLevel._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddUserLevelInput get input =>
      (_$data['input'] as Input$AddUserLevelInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddUserLevel<Variables$Mutation$AddUserLevel>
  get copyWith => CopyWith$Variables$Mutation$AddUserLevel(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddUserLevel ||
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

abstract class CopyWith$Variables$Mutation$AddUserLevel<TRes> {
  factory CopyWith$Variables$Mutation$AddUserLevel(
    Variables$Mutation$AddUserLevel instance,
    TRes Function(Variables$Mutation$AddUserLevel) then,
  ) = _CopyWithImpl$Variables$Mutation$AddUserLevel;

  factory CopyWith$Variables$Mutation$AddUserLevel.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddUserLevel;

  TRes call({Input$AddUserLevelInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddUserLevel<TRes>
    implements CopyWith$Variables$Mutation$AddUserLevel<TRes> {
  _CopyWithImpl$Variables$Mutation$AddUserLevel(this._instance, this._then);

  final Variables$Mutation$AddUserLevel _instance;

  final TRes Function(Variables$Mutation$AddUserLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddUserLevel._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AddUserLevelInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddUserLevel<TRes>
    implements CopyWith$Variables$Mutation$AddUserLevel<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddUserLevel(this._res);

  TRes _res;

  call({Input$AddUserLevelInput? input}) => _res;
}

class Mutation$AddUserLevel {
  Mutation$AddUserLevel({
    required this.addUserLevel,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddUserLevel.fromJson(Map<String, dynamic> json) {
    final l$addUserLevel = json['addUserLevel'];
    final l$$__typename = json['__typename'];
    return Mutation$AddUserLevel(
      addUserLevel: (l$addUserLevel as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> addUserLevel;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addUserLevel = addUserLevel;
    _resultData['addUserLevel'] = l$addUserLevel.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addUserLevel = addUserLevel;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$addUserLevel.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddUserLevel || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addUserLevel = addUserLevel;
    final lOther$addUserLevel = other.addUserLevel;
    if (l$addUserLevel.length != lOther$addUserLevel.length) {
      return false;
    }
    for (int i = 0; i < l$addUserLevel.length; i++) {
      final l$addUserLevel$entry = l$addUserLevel[i];
      final lOther$addUserLevel$entry = lOther$addUserLevel[i];
      if (l$addUserLevel$entry != lOther$addUserLevel$entry) {
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

extension UtilityExtension$Mutation$AddUserLevel on Mutation$AddUserLevel {
  CopyWith$Mutation$AddUserLevel<Mutation$AddUserLevel> get copyWith =>
      CopyWith$Mutation$AddUserLevel(this, (i) => i);
}

abstract class CopyWith$Mutation$AddUserLevel<TRes> {
  factory CopyWith$Mutation$AddUserLevel(
    Mutation$AddUserLevel instance,
    TRes Function(Mutation$AddUserLevel) then,
  ) = _CopyWithImpl$Mutation$AddUserLevel;

  factory CopyWith$Mutation$AddUserLevel.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddUserLevel;

  TRes call({List<String>? addUserLevel, String? $__typename});
}

class _CopyWithImpl$Mutation$AddUserLevel<TRes>
    implements CopyWith$Mutation$AddUserLevel<TRes> {
  _CopyWithImpl$Mutation$AddUserLevel(this._instance, this._then);

  final Mutation$AddUserLevel _instance;

  final TRes Function(Mutation$AddUserLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addUserLevel = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddUserLevel(
      addUserLevel: addUserLevel == _undefined || addUserLevel == null
          ? _instance.addUserLevel
          : (addUserLevel as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddUserLevel<TRes>
    implements CopyWith$Mutation$AddUserLevel<TRes> {
  _CopyWithStubImpl$Mutation$AddUserLevel(this._res);

  TRes _res;

  call({List<String>? addUserLevel, String? $__typename}) => _res;
}

const documentNodeMutationAddUserLevel = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddUserLevel'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddUserLevelInput'),
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
            name: NameNode(value: 'addUserLevel'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
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
