import 'package:gql/ast.dart';

class Variables$Mutation$PullNewGroupFromAD {
  factory Variables$Mutation$PullNewGroupFromAD({required String groupId}) =>
      Variables$Mutation$PullNewGroupFromAD._({r'groupId': groupId});

  Variables$Mutation$PullNewGroupFromAD._(this._$data);

  factory Variables$Mutation$PullNewGroupFromAD.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    return Variables$Mutation$PullNewGroupFromAD._(result$data);
  }

  Map<String, dynamic> _$data;

  String get groupId => (_$data['groupId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    return result$data;
  }

  CopyWith$Variables$Mutation$PullNewGroupFromAD<
    Variables$Mutation$PullNewGroupFromAD
  >
  get copyWith =>
      CopyWith$Variables$Mutation$PullNewGroupFromAD(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PullNewGroupFromAD ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    return Object.hashAll([l$groupId]);
  }
}

abstract class CopyWith$Variables$Mutation$PullNewGroupFromAD<TRes> {
  factory CopyWith$Variables$Mutation$PullNewGroupFromAD(
    Variables$Mutation$PullNewGroupFromAD instance,
    TRes Function(Variables$Mutation$PullNewGroupFromAD) then,
  ) = _CopyWithImpl$Variables$Mutation$PullNewGroupFromAD;

  factory CopyWith$Variables$Mutation$PullNewGroupFromAD.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PullNewGroupFromAD;

  TRes call({String? groupId});
}

class _CopyWithImpl$Variables$Mutation$PullNewGroupFromAD<TRes>
    implements CopyWith$Variables$Mutation$PullNewGroupFromAD<TRes> {
  _CopyWithImpl$Variables$Mutation$PullNewGroupFromAD(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PullNewGroupFromAD _instance;

  final TRes Function(Variables$Mutation$PullNewGroupFromAD) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupId = _undefined}) => _then(
    Variables$Mutation$PullNewGroupFromAD._({
      ..._instance._$data,
      if (groupId != _undefined && groupId != null)
        'groupId': (groupId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PullNewGroupFromAD<TRes>
    implements CopyWith$Variables$Mutation$PullNewGroupFromAD<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PullNewGroupFromAD(this._res);

  TRes _res;

  call({String? groupId}) => _res;
}

class Mutation$PullNewGroupFromAD {
  Mutation$PullNewGroupFromAD({
    required this.pullNewGroupFromAD,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PullNewGroupFromAD.fromJson(Map<String, dynamic> json) {
    final l$pullNewGroupFromAD = json['pullNewGroupFromAD'];
    final l$$__typename = json['__typename'];
    return Mutation$PullNewGroupFromAD(
      pullNewGroupFromAD: (l$pullNewGroupFromAD as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool pullNewGroupFromAD;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pullNewGroupFromAD = pullNewGroupFromAD;
    _resultData['pullNewGroupFromAD'] = l$pullNewGroupFromAD;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pullNewGroupFromAD = pullNewGroupFromAD;
    final l$$__typename = $__typename;
    return Object.hashAll([l$pullNewGroupFromAD, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PullNewGroupFromAD ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pullNewGroupFromAD = pullNewGroupFromAD;
    final lOther$pullNewGroupFromAD = other.pullNewGroupFromAD;
    if (l$pullNewGroupFromAD != lOther$pullNewGroupFromAD) {
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

extension UtilityExtension$Mutation$PullNewGroupFromAD
    on Mutation$PullNewGroupFromAD {
  CopyWith$Mutation$PullNewGroupFromAD<Mutation$PullNewGroupFromAD>
  get copyWith => CopyWith$Mutation$PullNewGroupFromAD(this, (i) => i);
}

abstract class CopyWith$Mutation$PullNewGroupFromAD<TRes> {
  factory CopyWith$Mutation$PullNewGroupFromAD(
    Mutation$PullNewGroupFromAD instance,
    TRes Function(Mutation$PullNewGroupFromAD) then,
  ) = _CopyWithImpl$Mutation$PullNewGroupFromAD;

  factory CopyWith$Mutation$PullNewGroupFromAD.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PullNewGroupFromAD;

  TRes call({bool? pullNewGroupFromAD, String? $__typename});
}

class _CopyWithImpl$Mutation$PullNewGroupFromAD<TRes>
    implements CopyWith$Mutation$PullNewGroupFromAD<TRes> {
  _CopyWithImpl$Mutation$PullNewGroupFromAD(this._instance, this._then);

  final Mutation$PullNewGroupFromAD _instance;

  final TRes Function(Mutation$PullNewGroupFromAD) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pullNewGroupFromAD = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PullNewGroupFromAD(
      pullNewGroupFromAD:
          pullNewGroupFromAD == _undefined || pullNewGroupFromAD == null
          ? _instance.pullNewGroupFromAD
          : (pullNewGroupFromAD as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PullNewGroupFromAD<TRes>
    implements CopyWith$Mutation$PullNewGroupFromAD<TRes> {
  _CopyWithStubImpl$Mutation$PullNewGroupFromAD(this._res);

  TRes _res;

  call({bool? pullNewGroupFromAD, String? $__typename}) => _res;
}

const documentNodeMutationPullNewGroupFromAD = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PullNewGroupFromAD'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'pullNewGroupFromAD'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'groupId'),
                value: VariableNode(name: NameNode(value: 'groupId')),
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
