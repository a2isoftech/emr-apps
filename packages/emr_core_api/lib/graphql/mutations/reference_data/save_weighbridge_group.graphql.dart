import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$saveWeighbridgeGroup {
  factory Variables$Mutation$saveWeighbridgeGroup({
    required Input$WeighbridgeGroupInput input,
  }) => Variables$Mutation$saveWeighbridgeGroup._({r'input': input});

  Variables$Mutation$saveWeighbridgeGroup._(this._$data);

  factory Variables$Mutation$saveWeighbridgeGroup.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$WeighbridgeGroupInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$saveWeighbridgeGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WeighbridgeGroupInput get input =>
      (_$data['input'] as Input$WeighbridgeGroupInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$saveWeighbridgeGroup<
    Variables$Mutation$saveWeighbridgeGroup
  >
  get copyWith =>
      CopyWith$Variables$Mutation$saveWeighbridgeGroup(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$saveWeighbridgeGroup ||
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

abstract class CopyWith$Variables$Mutation$saveWeighbridgeGroup<TRes> {
  factory CopyWith$Variables$Mutation$saveWeighbridgeGroup(
    Variables$Mutation$saveWeighbridgeGroup instance,
    TRes Function(Variables$Mutation$saveWeighbridgeGroup) then,
  ) = _CopyWithImpl$Variables$Mutation$saveWeighbridgeGroup;

  factory CopyWith$Variables$Mutation$saveWeighbridgeGroup.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$saveWeighbridgeGroup;

  TRes call({Input$WeighbridgeGroupInput? input});
}

class _CopyWithImpl$Variables$Mutation$saveWeighbridgeGroup<TRes>
    implements CopyWith$Variables$Mutation$saveWeighbridgeGroup<TRes> {
  _CopyWithImpl$Variables$Mutation$saveWeighbridgeGroup(
    this._instance,
    this._then,
  );

  final Variables$Mutation$saveWeighbridgeGroup _instance;

  final TRes Function(Variables$Mutation$saveWeighbridgeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$saveWeighbridgeGroup._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$WeighbridgeGroupInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$saveWeighbridgeGroup<TRes>
    implements CopyWith$Variables$Mutation$saveWeighbridgeGroup<TRes> {
  _CopyWithStubImpl$Variables$Mutation$saveWeighbridgeGroup(this._res);

  TRes _res;

  call({Input$WeighbridgeGroupInput? input}) => _res;
}

class Mutation$saveWeighbridgeGroup {
  Mutation$saveWeighbridgeGroup({
    required this.saveWeighbridgeGroup,
    this.$__typename = 'Mutation',
  });

  factory Mutation$saveWeighbridgeGroup.fromJson(Map<String, dynamic> json) {
    final l$saveWeighbridgeGroup = json['saveWeighbridgeGroup'];
    final l$$__typename = json['__typename'];
    return Mutation$saveWeighbridgeGroup(
      saveWeighbridgeGroup:
          Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup.fromJson(
            (l$saveWeighbridgeGroup as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup saveWeighbridgeGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveWeighbridgeGroup = saveWeighbridgeGroup;
    _resultData['saveWeighbridgeGroup'] = l$saveWeighbridgeGroup.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveWeighbridgeGroup = saveWeighbridgeGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveWeighbridgeGroup, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$saveWeighbridgeGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveWeighbridgeGroup = saveWeighbridgeGroup;
    final lOther$saveWeighbridgeGroup = other.saveWeighbridgeGroup;
    if (l$saveWeighbridgeGroup != lOther$saveWeighbridgeGroup) {
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

extension UtilityExtension$Mutation$saveWeighbridgeGroup
    on Mutation$saveWeighbridgeGroup {
  CopyWith$Mutation$saveWeighbridgeGroup<Mutation$saveWeighbridgeGroup>
  get copyWith => CopyWith$Mutation$saveWeighbridgeGroup(this, (i) => i);
}

abstract class CopyWith$Mutation$saveWeighbridgeGroup<TRes> {
  factory CopyWith$Mutation$saveWeighbridgeGroup(
    Mutation$saveWeighbridgeGroup instance,
    TRes Function(Mutation$saveWeighbridgeGroup) then,
  ) = _CopyWithImpl$Mutation$saveWeighbridgeGroup;

  factory CopyWith$Mutation$saveWeighbridgeGroup.stub(TRes res) =
      _CopyWithStubImpl$Mutation$saveWeighbridgeGroup;

  TRes call({
    Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup? saveWeighbridgeGroup,
    String? $__typename,
  });
  CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes>
  get saveWeighbridgeGroup;
}

class _CopyWithImpl$Mutation$saveWeighbridgeGroup<TRes>
    implements CopyWith$Mutation$saveWeighbridgeGroup<TRes> {
  _CopyWithImpl$Mutation$saveWeighbridgeGroup(this._instance, this._then);

  final Mutation$saveWeighbridgeGroup _instance;

  final TRes Function(Mutation$saveWeighbridgeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveWeighbridgeGroup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$saveWeighbridgeGroup(
      saveWeighbridgeGroup:
          saveWeighbridgeGroup == _undefined || saveWeighbridgeGroup == null
          ? _instance.saveWeighbridgeGroup
          : (saveWeighbridgeGroup
                as Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes>
  get saveWeighbridgeGroup {
    final local$saveWeighbridgeGroup = _instance.saveWeighbridgeGroup;
    return CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
      local$saveWeighbridgeGroup,
      (e) => call(saveWeighbridgeGroup: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$saveWeighbridgeGroup<TRes>
    implements CopyWith$Mutation$saveWeighbridgeGroup<TRes> {
  _CopyWithStubImpl$Mutation$saveWeighbridgeGroup(this._res);

  TRes _res;

  call({
    Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup? saveWeighbridgeGroup,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes>
  get saveWeighbridgeGroup =>
      CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup.stub(_res);
}

const documentNodeMutationsaveWeighbridgeGroup = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'saveWeighbridgeGroup'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'WeighbridgeGroupInput'),
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
            name: NameNode(value: 'saveWeighbridgeGroup'),
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
                  name: NameNode(value: 'yardCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'group'),
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

class Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup {
  Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup({
    required this.yardCode,
    required this.group,
    this.$__typename = 'WeighbridgeGroup',
  });

  factory Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
      yardCode: (l$yardCode as String),
      group: (l$group as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final List<String> group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$group = group;
    _resultData['group'] = l$group.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      Object.hashAll(l$group.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group.length != lOther$group.length) {
      return false;
    }
    for (int i = 0; i < l$group.length; i++) {
      final l$group$entry = l$group[i];
      final lOther$group$entry = lOther$group[i];
      if (l$group$entry != lOther$group$entry) {
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

extension UtilityExtension$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup
    on Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup {
  CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<
    Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup
  >
  get copyWith => CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<
  TRes
> {
  factory CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
    Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup instance,
    TRes Function(Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup) then,
  ) = _CopyWithImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup;

  factory CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup;

  TRes call({String? yardCode, List<String>? group, String? $__typename});
}

class _CopyWithImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes>
    implements
        CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes> {
  _CopyWithImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
    this._instance,
    this._then,
  );

  final Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup _instance;

  final TRes Function(Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      group: group == _undefined || group == null
          ? _instance.group
          : (group as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes>
    implements
        CopyWith$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup<TRes> {
  _CopyWithStubImpl$Mutation$saveWeighbridgeGroup$saveWeighbridgeGroup(
    this._res,
  );

  TRes _res;

  call({String? yardCode, List<String>? group, String? $__typename}) => _res;
}
