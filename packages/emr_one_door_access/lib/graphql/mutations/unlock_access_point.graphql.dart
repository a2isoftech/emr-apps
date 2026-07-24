import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UnlockAccessPoint {
  factory Variables$Mutation$UnlockAccessPoint({
    required Input$UnlockAccessPointInput input,
  }) => Variables$Mutation$UnlockAccessPoint._({r'input': input});

  Variables$Mutation$UnlockAccessPoint._(this._$data);

  factory Variables$Mutation$UnlockAccessPoint.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UnlockAccessPointInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UnlockAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UnlockAccessPointInput get input =>
      (_$data['input'] as Input$UnlockAccessPointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UnlockAccessPoint<
    Variables$Mutation$UnlockAccessPoint
  >
  get copyWith => CopyWith$Variables$Mutation$UnlockAccessPoint(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UnlockAccessPoint ||
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

abstract class CopyWith$Variables$Mutation$UnlockAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$UnlockAccessPoint(
    Variables$Mutation$UnlockAccessPoint instance,
    TRes Function(Variables$Mutation$UnlockAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$UnlockAccessPoint;

  factory CopyWith$Variables$Mutation$UnlockAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UnlockAccessPoint;

  TRes call({Input$UnlockAccessPointInput? input});
}

class _CopyWithImpl$Variables$Mutation$UnlockAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$UnlockAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$UnlockAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UnlockAccessPoint _instance;

  final TRes Function(Variables$Mutation$UnlockAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UnlockAccessPoint._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UnlockAccessPointInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UnlockAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$UnlockAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UnlockAccessPoint(this._res);

  TRes _res;

  call({Input$UnlockAccessPointInput? input}) => _res;
}

class Mutation$UnlockAccessPoint {
  Mutation$UnlockAccessPoint({
    required this.unlockAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UnlockAccessPoint.fromJson(Map<String, dynamic> json) {
    final l$unlockAccessPoint = json['unlockAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$UnlockAccessPoint(
      unlockAccessPoint: (l$unlockAccessPoint as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool unlockAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unlockAccessPoint = unlockAccessPoint;
    _resultData['unlockAccessPoint'] = l$unlockAccessPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unlockAccessPoint = unlockAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([l$unlockAccessPoint, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UnlockAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unlockAccessPoint = unlockAccessPoint;
    final lOther$unlockAccessPoint = other.unlockAccessPoint;
    if (l$unlockAccessPoint != lOther$unlockAccessPoint) {
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

extension UtilityExtension$Mutation$UnlockAccessPoint
    on Mutation$UnlockAccessPoint {
  CopyWith$Mutation$UnlockAccessPoint<Mutation$UnlockAccessPoint>
  get copyWith => CopyWith$Mutation$UnlockAccessPoint(this, (i) => i);
}

abstract class CopyWith$Mutation$UnlockAccessPoint<TRes> {
  factory CopyWith$Mutation$UnlockAccessPoint(
    Mutation$UnlockAccessPoint instance,
    TRes Function(Mutation$UnlockAccessPoint) then,
  ) = _CopyWithImpl$Mutation$UnlockAccessPoint;

  factory CopyWith$Mutation$UnlockAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UnlockAccessPoint;

  TRes call({bool? unlockAccessPoint, String? $__typename});
}

class _CopyWithImpl$Mutation$UnlockAccessPoint<TRes>
    implements CopyWith$Mutation$UnlockAccessPoint<TRes> {
  _CopyWithImpl$Mutation$UnlockAccessPoint(this._instance, this._then);

  final Mutation$UnlockAccessPoint _instance;

  final TRes Function(Mutation$UnlockAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unlockAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UnlockAccessPoint(
      unlockAccessPoint:
          unlockAccessPoint == _undefined || unlockAccessPoint == null
          ? _instance.unlockAccessPoint
          : (unlockAccessPoint as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UnlockAccessPoint<TRes>
    implements CopyWith$Mutation$UnlockAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$UnlockAccessPoint(this._res);

  TRes _res;

  call({bool? unlockAccessPoint, String? $__typename}) => _res;
}

const documentNodeMutationUnlockAccessPoint = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UnlockAccessPoint'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UnlockAccessPointInput'),
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
            name: NameNode(value: 'unlockAccessPoint'),
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
