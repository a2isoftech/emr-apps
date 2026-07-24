import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateSchedule {
  factory Variables$Mutation$CreateSchedule({
    required Input$CreateScheduleInput input,
  }) => Variables$Mutation$CreateSchedule._({r'input': input});

  Variables$Mutation$CreateSchedule._(this._$data);

  factory Variables$Mutation$CreateSchedule.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateScheduleInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateSchedule._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateScheduleInput get input =>
      (_$data['input'] as Input$CreateScheduleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateSchedule<Variables$Mutation$CreateSchedule>
  get copyWith => CopyWith$Variables$Mutation$CreateSchedule(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateSchedule ||
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

abstract class CopyWith$Variables$Mutation$CreateSchedule<TRes> {
  factory CopyWith$Variables$Mutation$CreateSchedule(
    Variables$Mutation$CreateSchedule instance,
    TRes Function(Variables$Mutation$CreateSchedule) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateSchedule;

  factory CopyWith$Variables$Mutation$CreateSchedule.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateSchedule;

  TRes call({Input$CreateScheduleInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateSchedule<TRes>
    implements CopyWith$Variables$Mutation$CreateSchedule<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateSchedule(this._instance, this._then);

  final Variables$Mutation$CreateSchedule _instance;

  final TRes Function(Variables$Mutation$CreateSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateSchedule._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateScheduleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateSchedule<TRes>
    implements CopyWith$Variables$Mutation$CreateSchedule<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateSchedule(this._res);

  TRes _res;

  call({Input$CreateScheduleInput? input}) => _res;
}

class Mutation$CreateSchedule {
  Mutation$CreateSchedule({
    required this.createSchedule,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateSchedule.fromJson(Map<String, dynamic> json) {
    final l$createSchedule = json['createSchedule'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSchedule(
      createSchedule: (l$createSchedule as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool createSchedule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSchedule = createSchedule;
    _resultData['createSchedule'] = l$createSchedule;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSchedule = createSchedule;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createSchedule, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateSchedule || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSchedule = createSchedule;
    final lOther$createSchedule = other.createSchedule;
    if (l$createSchedule != lOther$createSchedule) {
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

extension UtilityExtension$Mutation$CreateSchedule on Mutation$CreateSchedule {
  CopyWith$Mutation$CreateSchedule<Mutation$CreateSchedule> get copyWith =>
      CopyWith$Mutation$CreateSchedule(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateSchedule<TRes> {
  factory CopyWith$Mutation$CreateSchedule(
    Mutation$CreateSchedule instance,
    TRes Function(Mutation$CreateSchedule) then,
  ) = _CopyWithImpl$Mutation$CreateSchedule;

  factory CopyWith$Mutation$CreateSchedule.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSchedule;

  TRes call({bool? createSchedule, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateSchedule<TRes>
    implements CopyWith$Mutation$CreateSchedule<TRes> {
  _CopyWithImpl$Mutation$CreateSchedule(this._instance, this._then);

  final Mutation$CreateSchedule _instance;

  final TRes Function(Mutation$CreateSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createSchedule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateSchedule(
      createSchedule: createSchedule == _undefined || createSchedule == null
          ? _instance.createSchedule
          : (createSchedule as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateSchedule<TRes>
    implements CopyWith$Mutation$CreateSchedule<TRes> {
  _CopyWithStubImpl$Mutation$CreateSchedule(this._res);

  TRes _res;

  call({bool? createSchedule, String? $__typename}) => _res;
}

const documentNodeMutationCreateSchedule = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateSchedule'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateScheduleInput'),
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
            name: NameNode(value: 'createSchedule'),
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
