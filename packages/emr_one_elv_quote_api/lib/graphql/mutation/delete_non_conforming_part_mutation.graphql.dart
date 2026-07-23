import 'package:gql/ast.dart';

class Variables$Mutation$DeleteNonConformingPartMutation {
  factory Variables$Mutation$DeleteNonConformingPartMutation({
    required int batchQuoteId,
    required String partName,
  }) =>
      Variables$Mutation$DeleteNonConformingPartMutation._({
        r'batchQuoteId': batchQuoteId,
        r'partName': partName,
      });

  Variables$Mutation$DeleteNonConformingPartMutation._(this._$data);

  factory Variables$Mutation$DeleteNonConformingPartMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$partName = data['partName'];
    result$data['partName'] = (l$partName as String);
    return Variables$Mutation$DeleteNonConformingPartMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  String get partName => (_$data['partName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$partName = partName;
    result$data['partName'] = l$partName;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteNonConformingPartMutation<
          Variables$Mutation$DeleteNonConformingPartMutation>
      get copyWith =>
          CopyWith$Variables$Mutation$DeleteNonConformingPartMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteNonConformingPartMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$partName = partName;
    return Object.hashAll([
      l$batchQuoteId,
      l$partName,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteNonConformingPartMutation<
    TRes> {
  factory CopyWith$Variables$Mutation$DeleteNonConformingPartMutation(
    Variables$Mutation$DeleteNonConformingPartMutation instance,
    TRes Function(Variables$Mutation$DeleteNonConformingPartMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteNonConformingPartMutation;

  factory CopyWith$Variables$Mutation$DeleteNonConformingPartMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPartMutation;

  TRes call({
    int? batchQuoteId,
    String? partName,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteNonConformingPartMutation<TRes>
    implements
        CopyWith$Variables$Mutation$DeleteNonConformingPartMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteNonConformingPartMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteNonConformingPartMutation _instance;

  final TRes Function(Variables$Mutation$DeleteNonConformingPartMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? partName = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteNonConformingPartMutation._({
        ..._instance._$data,
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (partName != _undefined && partName != null)
          'partName': (partName as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPartMutation<TRes>
    implements
        CopyWith$Variables$Mutation$DeleteNonConformingPartMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteNonConformingPartMutation(
      this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    String? partName,
  }) =>
      _res;
}

class Mutation$DeleteNonConformingPartMutation {
  Mutation$DeleteNonConformingPartMutation({
    required this.deleteNonConformingPart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteNonConformingPartMutation.fromJson(
      Map<String, dynamic> json) {
    final l$deleteNonConformingPart = json['deleteNonConformingPart'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteNonConformingPartMutation(
      deleteNonConformingPart: (l$deleteNonConformingPart as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteNonConformingPart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteNonConformingPart = deleteNonConformingPart;
    _resultData['deleteNonConformingPart'] = l$deleteNonConformingPart;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteNonConformingPart = deleteNonConformingPart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteNonConformingPart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteNonConformingPartMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteNonConformingPart = deleteNonConformingPart;
    final lOther$deleteNonConformingPart = other.deleteNonConformingPart;
    if (l$deleteNonConformingPart != lOther$deleteNonConformingPart) {
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

extension UtilityExtension$Mutation$DeleteNonConformingPartMutation
    on Mutation$DeleteNonConformingPartMutation {
  CopyWith$Mutation$DeleteNonConformingPartMutation<
          Mutation$DeleteNonConformingPartMutation>
      get copyWith => CopyWith$Mutation$DeleteNonConformingPartMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteNonConformingPartMutation<TRes> {
  factory CopyWith$Mutation$DeleteNonConformingPartMutation(
    Mutation$DeleteNonConformingPartMutation instance,
    TRes Function(Mutation$DeleteNonConformingPartMutation) then,
  ) = _CopyWithImpl$Mutation$DeleteNonConformingPartMutation;

  factory CopyWith$Mutation$DeleteNonConformingPartMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteNonConformingPartMutation;

  TRes call({
    String? deleteNonConformingPart,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteNonConformingPartMutation<TRes>
    implements CopyWith$Mutation$DeleteNonConformingPartMutation<TRes> {
  _CopyWithImpl$Mutation$DeleteNonConformingPartMutation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteNonConformingPartMutation _instance;

  final TRes Function(Mutation$DeleteNonConformingPartMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteNonConformingPart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteNonConformingPartMutation(
        deleteNonConformingPart: deleteNonConformingPart == _undefined ||
                deleteNonConformingPart == null
            ? _instance.deleteNonConformingPart
            : (deleteNonConformingPart as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteNonConformingPartMutation<TRes>
    implements CopyWith$Mutation$DeleteNonConformingPartMutation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteNonConformingPartMutation(this._res);

  TRes _res;

  call({
    String? deleteNonConformingPart,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteNonConformingPartMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteNonConformingPartMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'batchQuoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteNonConformingPart'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'batchQuoteId'),
            value: VariableNode(name: NameNode(value: 'batchQuoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'partName'),
            value: VariableNode(name: NameNode(value: 'partName')),
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
    ]),
  ),
]);
