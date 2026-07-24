import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveFloorPlan {
  factory Variables$Mutation$SaveFloorPlan({
    required Input$UpsertFloorPlanInput input,
  }) => Variables$Mutation$SaveFloorPlan._({r'input': input});

  Variables$Mutation$SaveFloorPlan._(this._$data);

  factory Variables$Mutation$SaveFloorPlan.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpsertFloorPlanInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SaveFloorPlan._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpsertFloorPlanInput get input =>
      (_$data['input'] as Input$UpsertFloorPlanInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveFloorPlan<Variables$Mutation$SaveFloorPlan>
  get copyWith => CopyWith$Variables$Mutation$SaveFloorPlan(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveFloorPlan ||
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

abstract class CopyWith$Variables$Mutation$SaveFloorPlan<TRes> {
  factory CopyWith$Variables$Mutation$SaveFloorPlan(
    Variables$Mutation$SaveFloorPlan instance,
    TRes Function(Variables$Mutation$SaveFloorPlan) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveFloorPlan;

  factory CopyWith$Variables$Mutation$SaveFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveFloorPlan;

  TRes call({Input$UpsertFloorPlanInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$SaveFloorPlan<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveFloorPlan(this._instance, this._then);

  final Variables$Mutation$SaveFloorPlan _instance;

  final TRes Function(Variables$Mutation$SaveFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SaveFloorPlan._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpsertFloorPlanInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$SaveFloorPlan<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveFloorPlan(this._res);

  TRes _res;

  call({Input$UpsertFloorPlanInput? input}) => _res;
}

class Mutation$SaveFloorPlan {
  Mutation$SaveFloorPlan({
    required this.saveFloorPlan,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveFloorPlan.fromJson(Map<String, dynamic> json) {
    final l$saveFloorPlan = json['saveFloorPlan'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveFloorPlan(
      saveFloorPlan: (l$saveFloorPlan as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool saveFloorPlan;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveFloorPlan = saveFloorPlan;
    _resultData['saveFloorPlan'] = l$saveFloorPlan;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveFloorPlan = saveFloorPlan;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveFloorPlan, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveFloorPlan || runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveFloorPlan = saveFloorPlan;
    final lOther$saveFloorPlan = other.saveFloorPlan;
    if (l$saveFloorPlan != lOther$saveFloorPlan) {
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

extension UtilityExtension$Mutation$SaveFloorPlan on Mutation$SaveFloorPlan {
  CopyWith$Mutation$SaveFloorPlan<Mutation$SaveFloorPlan> get copyWith =>
      CopyWith$Mutation$SaveFloorPlan(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveFloorPlan<TRes> {
  factory CopyWith$Mutation$SaveFloorPlan(
    Mutation$SaveFloorPlan instance,
    TRes Function(Mutation$SaveFloorPlan) then,
  ) = _CopyWithImpl$Mutation$SaveFloorPlan;

  factory CopyWith$Mutation$SaveFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveFloorPlan;

  TRes call({bool? saveFloorPlan, String? $__typename});
}

class _CopyWithImpl$Mutation$SaveFloorPlan<TRes>
    implements CopyWith$Mutation$SaveFloorPlan<TRes> {
  _CopyWithImpl$Mutation$SaveFloorPlan(this._instance, this._then);

  final Mutation$SaveFloorPlan _instance;

  final TRes Function(Mutation$SaveFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveFloorPlan = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveFloorPlan(
      saveFloorPlan: saveFloorPlan == _undefined || saveFloorPlan == null
          ? _instance.saveFloorPlan
          : (saveFloorPlan as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveFloorPlan<TRes>
    implements CopyWith$Mutation$SaveFloorPlan<TRes> {
  _CopyWithStubImpl$Mutation$SaveFloorPlan(this._res);

  TRes _res;

  call({bool? saveFloorPlan, String? $__typename}) => _res;
}

const documentNodeMutationSaveFloorPlan = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveFloorPlan'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpsertFloorPlanInput'),
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
            name: NameNode(value: 'saveFloorPlan'),
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
