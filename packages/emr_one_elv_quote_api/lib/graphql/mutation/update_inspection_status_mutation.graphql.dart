import 'package:gql/ast.dart';

class Variables$Mutation$UpdateInspectionToInProgressMutation {
  factory Variables$Mutation$UpdateInspectionToInProgressMutation(
          {required int quoteId}) =>
      Variables$Mutation$UpdateInspectionToInProgressMutation._({
        r'quoteId': quoteId,
      });

  Variables$Mutation$UpdateInspectionToInProgressMutation._(this._$data);

  factory Variables$Mutation$UpdateInspectionToInProgressMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Variables$Mutation$UpdateInspectionToInProgressMutation._(
        result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation<
          Variables$Mutation$UpdateInspectionToInProgressMutation>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateInspectionToInProgressMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quoteId = quoteId;
    return Object.hashAll([l$quoteId]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation<
    TRes> {
  factory CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation(
    Variables$Mutation$UpdateInspectionToInProgressMutation instance,
    TRes Function(Variables$Mutation$UpdateInspectionToInProgressMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateInspectionToInProgressMutation;

  factory CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateInspectionToInProgressMutation;

  TRes call({int? quoteId});
}

class _CopyWithImpl$Variables$Mutation$UpdateInspectionToInProgressMutation<
        TRes>
    implements
        CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateInspectionToInProgressMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateInspectionToInProgressMutation _instance;

  final TRes Function(Variables$Mutation$UpdateInspectionToInProgressMutation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? quoteId = _undefined}) =>
      _then(Variables$Mutation$UpdateInspectionToInProgressMutation._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateInspectionToInProgressMutation<
        TRes>
    implements
        CopyWith$Variables$Mutation$UpdateInspectionToInProgressMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateInspectionToInProgressMutation(
      this._res);

  TRes _res;

  call({int? quoteId}) => _res;
}

class Mutation$UpdateInspectionToInProgressMutation {
  Mutation$UpdateInspectionToInProgressMutation({
    required this.updateInspectionToInProgress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateInspectionToInProgressMutation.fromJson(
      Map<String, dynamic> json) {
    final l$updateInspectionToInProgress = json['updateInspectionToInProgress'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateInspectionToInProgressMutation(
      updateInspectionToInProgress: (l$updateInspectionToInProgress as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateInspectionToInProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInspectionToInProgress = updateInspectionToInProgress;
    _resultData['updateInspectionToInProgress'] =
        l$updateInspectionToInProgress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInspectionToInProgress = updateInspectionToInProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateInspectionToInProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateInspectionToInProgressMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInspectionToInProgress = updateInspectionToInProgress;
    final lOther$updateInspectionToInProgress =
        other.updateInspectionToInProgress;
    if (l$updateInspectionToInProgress != lOther$updateInspectionToInProgress) {
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

extension UtilityExtension$Mutation$UpdateInspectionToInProgressMutation
    on Mutation$UpdateInspectionToInProgressMutation {
  CopyWith$Mutation$UpdateInspectionToInProgressMutation<
          Mutation$UpdateInspectionToInProgressMutation>
      get copyWith => CopyWith$Mutation$UpdateInspectionToInProgressMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateInspectionToInProgressMutation<TRes> {
  factory CopyWith$Mutation$UpdateInspectionToInProgressMutation(
    Mutation$UpdateInspectionToInProgressMutation instance,
    TRes Function(Mutation$UpdateInspectionToInProgressMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateInspectionToInProgressMutation;

  factory CopyWith$Mutation$UpdateInspectionToInProgressMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateInspectionToInProgressMutation;

  TRes call({
    bool? updateInspectionToInProgress,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateInspectionToInProgressMutation<TRes>
    implements CopyWith$Mutation$UpdateInspectionToInProgressMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateInspectionToInProgressMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateInspectionToInProgressMutation _instance;

  final TRes Function(Mutation$UpdateInspectionToInProgressMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInspectionToInProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateInspectionToInProgressMutation(
        updateInspectionToInProgress:
            updateInspectionToInProgress == _undefined ||
                    updateInspectionToInProgress == null
                ? _instance.updateInspectionToInProgress
                : (updateInspectionToInProgress as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateInspectionToInProgressMutation<TRes>
    implements CopyWith$Mutation$UpdateInspectionToInProgressMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateInspectionToInProgressMutation(this._res);

  TRes _res;

  call({
    bool? updateInspectionToInProgress,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateInspectionToInProgressMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateInspectionToInProgressMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateInspectionToInProgress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          )
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
    ]),
  ),
]);
