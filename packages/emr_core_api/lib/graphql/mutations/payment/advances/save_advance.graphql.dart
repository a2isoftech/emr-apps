import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$saveAdvance {
  factory Variables$Mutation$saveAdvance({required Input$AdvanceInput input}) =>
      Variables$Mutation$saveAdvance._({r'input': input});

  Variables$Mutation$saveAdvance._(this._$data);

  factory Variables$Mutation$saveAdvance.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AdvanceInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$saveAdvance._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AdvanceInput get input => (_$data['input'] as Input$AdvanceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$saveAdvance<Variables$Mutation$saveAdvance>
  get copyWith => CopyWith$Variables$Mutation$saveAdvance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$saveAdvance ||
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

abstract class CopyWith$Variables$Mutation$saveAdvance<TRes> {
  factory CopyWith$Variables$Mutation$saveAdvance(
    Variables$Mutation$saveAdvance instance,
    TRes Function(Variables$Mutation$saveAdvance) then,
  ) = _CopyWithImpl$Variables$Mutation$saveAdvance;

  factory CopyWith$Variables$Mutation$saveAdvance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$saveAdvance;

  TRes call({Input$AdvanceInput? input});
}

class _CopyWithImpl$Variables$Mutation$saveAdvance<TRes>
    implements CopyWith$Variables$Mutation$saveAdvance<TRes> {
  _CopyWithImpl$Variables$Mutation$saveAdvance(this._instance, this._then);

  final Variables$Mutation$saveAdvance _instance;

  final TRes Function(Variables$Mutation$saveAdvance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$saveAdvance._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AdvanceInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$saveAdvance<TRes>
    implements CopyWith$Variables$Mutation$saveAdvance<TRes> {
  _CopyWithStubImpl$Variables$Mutation$saveAdvance(this._res);

  TRes _res;

  call({Input$AdvanceInput? input}) => _res;
}

class Mutation$saveAdvance {
  Mutation$saveAdvance({
    required this.saveAdvance,
    this.$__typename = 'Mutation',
  });

  factory Mutation$saveAdvance.fromJson(Map<String, dynamic> json) {
    final l$saveAdvance = json['saveAdvance'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAdvance(
      saveAdvance: Mutation$saveAdvance$saveAdvance.fromJson(
        (l$saveAdvance as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$saveAdvance$saveAdvance saveAdvance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveAdvance = saveAdvance;
    _resultData['saveAdvance'] = l$saveAdvance.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveAdvance = saveAdvance;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveAdvance, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$saveAdvance || runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveAdvance = saveAdvance;
    final lOther$saveAdvance = other.saveAdvance;
    if (l$saveAdvance != lOther$saveAdvance) {
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

extension UtilityExtension$Mutation$saveAdvance on Mutation$saveAdvance {
  CopyWith$Mutation$saveAdvance<Mutation$saveAdvance> get copyWith =>
      CopyWith$Mutation$saveAdvance(this, (i) => i);
}

abstract class CopyWith$Mutation$saveAdvance<TRes> {
  factory CopyWith$Mutation$saveAdvance(
    Mutation$saveAdvance instance,
    TRes Function(Mutation$saveAdvance) then,
  ) = _CopyWithImpl$Mutation$saveAdvance;

  factory CopyWith$Mutation$saveAdvance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$saveAdvance;

  TRes call({
    Mutation$saveAdvance$saveAdvance? saveAdvance,
    String? $__typename,
  });
  CopyWith$Mutation$saveAdvance$saveAdvance<TRes> get saveAdvance;
}

class _CopyWithImpl$Mutation$saveAdvance<TRes>
    implements CopyWith$Mutation$saveAdvance<TRes> {
  _CopyWithImpl$Mutation$saveAdvance(this._instance, this._then);

  final Mutation$saveAdvance _instance;

  final TRes Function(Mutation$saveAdvance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveAdvance = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$saveAdvance(
      saveAdvance: saveAdvance == _undefined || saveAdvance == null
          ? _instance.saveAdvance
          : (saveAdvance as Mutation$saveAdvance$saveAdvance),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$saveAdvance$saveAdvance<TRes> get saveAdvance {
    final local$saveAdvance = _instance.saveAdvance;
    return CopyWith$Mutation$saveAdvance$saveAdvance(
      local$saveAdvance,
      (e) => call(saveAdvance: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$saveAdvance<TRes>
    implements CopyWith$Mutation$saveAdvance<TRes> {
  _CopyWithStubImpl$Mutation$saveAdvance(this._res);

  TRes _res;

  call({Mutation$saveAdvance$saveAdvance? saveAdvance, String? $__typename}) =>
      _res;

  CopyWith$Mutation$saveAdvance$saveAdvance<TRes> get saveAdvance =>
      CopyWith$Mutation$saveAdvance$saveAdvance.stub(_res);
}

const documentNodeMutationsaveAdvance = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'saveAdvance'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AdvanceInput'),
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
            name: NameNode(value: 'saveAdvance'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
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

class Mutation$saveAdvance$saveAdvance {
  Mutation$saveAdvance$saveAdvance({
    required this.id,
    this.$__typename = 'Advance',
  });

  factory Mutation$saveAdvance$saveAdvance.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$saveAdvance$saveAdvance(
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
    if (other is! Mutation$saveAdvance$saveAdvance ||
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

extension UtilityExtension$Mutation$saveAdvance$saveAdvance
    on Mutation$saveAdvance$saveAdvance {
  CopyWith$Mutation$saveAdvance$saveAdvance<Mutation$saveAdvance$saveAdvance>
  get copyWith => CopyWith$Mutation$saveAdvance$saveAdvance(this, (i) => i);
}

abstract class CopyWith$Mutation$saveAdvance$saveAdvance<TRes> {
  factory CopyWith$Mutation$saveAdvance$saveAdvance(
    Mutation$saveAdvance$saveAdvance instance,
    TRes Function(Mutation$saveAdvance$saveAdvance) then,
  ) = _CopyWithImpl$Mutation$saveAdvance$saveAdvance;

  factory CopyWith$Mutation$saveAdvance$saveAdvance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$saveAdvance$saveAdvance;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$saveAdvance$saveAdvance<TRes>
    implements CopyWith$Mutation$saveAdvance$saveAdvance<TRes> {
  _CopyWithImpl$Mutation$saveAdvance$saveAdvance(this._instance, this._then);

  final Mutation$saveAdvance$saveAdvance _instance;

  final TRes Function(Mutation$saveAdvance$saveAdvance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$saveAdvance$saveAdvance(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$saveAdvance$saveAdvance<TRes>
    implements CopyWith$Mutation$saveAdvance$saveAdvance<TRes> {
  _CopyWithStubImpl$Mutation$saveAdvance$saveAdvance(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
