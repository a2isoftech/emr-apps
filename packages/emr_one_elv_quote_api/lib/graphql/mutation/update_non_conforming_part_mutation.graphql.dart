import 'package:gql/ast.dart';

class Variables$Mutation$UpdateNonConformingPartMutation {
  factory Variables$Mutation$UpdateNonConformingPartMutation({
    required int quoteId,
    required int batchQuoteId,
    required String partName,
  }) =>
      Variables$Mutation$UpdateNonConformingPartMutation._({
        r'quoteId': quoteId,
        r'batchQuoteId': batchQuoteId,
        r'partName': partName,
      });

  Variables$Mutation$UpdateNonConformingPartMutation._(this._$data);

  factory Variables$Mutation$UpdateNonConformingPartMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$partName = data['partName'];
    result$data['partName'] = (l$partName as String);
    return Variables$Mutation$UpdateNonConformingPartMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  String get partName => (_$data['partName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$partName = partName;
    result$data['partName'] = l$partName;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateNonConformingPartMutation<
          Variables$Mutation$UpdateNonConformingPartMutation>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdateNonConformingPartMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateNonConformingPartMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
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
    final l$quoteId = quoteId;
    final l$batchQuoteId = batchQuoteId;
    final l$partName = partName;
    return Object.hashAll([
      l$quoteId,
      l$batchQuoteId,
      l$partName,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateNonConformingPartMutation<
    TRes> {
  factory CopyWith$Variables$Mutation$UpdateNonConformingPartMutation(
    Variables$Mutation$UpdateNonConformingPartMutation instance,
    TRes Function(Variables$Mutation$UpdateNonConformingPartMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateNonConformingPartMutation;

  factory CopyWith$Variables$Mutation$UpdateNonConformingPartMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPartMutation;

  TRes call({
    int? quoteId,
    int? batchQuoteId,
    String? partName,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateNonConformingPartMutation<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateNonConformingPartMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateNonConformingPartMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateNonConformingPartMutation _instance;

  final TRes Function(Variables$Mutation$UpdateNonConformingPartMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quoteId = _undefined,
    Object? batchQuoteId = _undefined,
    Object? partName = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateNonConformingPartMutation._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (partName != _undefined && partName != null)
          'partName': (partName as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPartMutation<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateNonConformingPartMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPartMutation(
      this._res);

  TRes _res;

  call({
    int? quoteId,
    int? batchQuoteId,
    String? partName,
  }) =>
      _res;
}

class Mutation$UpdateNonConformingPartMutation {
  Mutation$UpdateNonConformingPartMutation({
    required this.updateNonConformingPart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateNonConformingPartMutation.fromJson(
      Map<String, dynamic> json) {
    final l$updateNonConformingPart = json['updateNonConformingPart'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNonConformingPartMutation(
      updateNonConformingPart: (l$updateNonConformingPart as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateNonConformingPart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateNonConformingPart = updateNonConformingPart;
    _resultData['updateNonConformingPart'] = l$updateNonConformingPart;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateNonConformingPart = updateNonConformingPart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateNonConformingPart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateNonConformingPartMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateNonConformingPart = updateNonConformingPart;
    final lOther$updateNonConformingPart = other.updateNonConformingPart;
    if (l$updateNonConformingPart != lOther$updateNonConformingPart) {
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

extension UtilityExtension$Mutation$UpdateNonConformingPartMutation
    on Mutation$UpdateNonConformingPartMutation {
  CopyWith$Mutation$UpdateNonConformingPartMutation<
          Mutation$UpdateNonConformingPartMutation>
      get copyWith => CopyWith$Mutation$UpdateNonConformingPartMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateNonConformingPartMutation<TRes> {
  factory CopyWith$Mutation$UpdateNonConformingPartMutation(
    Mutation$UpdateNonConformingPartMutation instance,
    TRes Function(Mutation$UpdateNonConformingPartMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPartMutation;

  factory CopyWith$Mutation$UpdateNonConformingPartMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNonConformingPartMutation;

  TRes call({
    bool? updateNonConformingPart,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateNonConformingPartMutation<TRes>
    implements CopyWith$Mutation$UpdateNonConformingPartMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateNonConformingPartMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNonConformingPartMutation _instance;

  final TRes Function(Mutation$UpdateNonConformingPartMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateNonConformingPart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateNonConformingPartMutation(
        updateNonConformingPart: updateNonConformingPart == _undefined ||
                updateNonConformingPart == null
            ? _instance.updateNonConformingPart
            : (updateNonConformingPart as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPartMutation<TRes>
    implements CopyWith$Mutation$UpdateNonConformingPartMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPartMutation(this._res);

  TRes _res;

  call({
    bool? updateNonConformingPart,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateNonConformingPartMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateNonConformingPartMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        name: NameNode(value: 'updateNonConformingPart'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          ),
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
