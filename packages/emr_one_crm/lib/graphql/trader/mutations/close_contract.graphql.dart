import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CloseContract {
  factory Variables$Mutation$CloseContract(
          {required Input$CloseContractInput input}) =>
      Variables$Mutation$CloseContract._({
        r'input': input,
      });

  Variables$Mutation$CloseContract._(this._$data);

  factory Variables$Mutation$CloseContract.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CloseContractInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CloseContract._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CloseContractInput get input =>
      (_$data['input'] as Input$CloseContractInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CloseContract<Variables$Mutation$CloseContract>
      get copyWith => CopyWith$Variables$Mutation$CloseContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CloseContract ||
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

abstract class CopyWith$Variables$Mutation$CloseContract<TRes> {
  factory CopyWith$Variables$Mutation$CloseContract(
    Variables$Mutation$CloseContract instance,
    TRes Function(Variables$Mutation$CloseContract) then,
  ) = _CopyWithImpl$Variables$Mutation$CloseContract;

  factory CopyWith$Variables$Mutation$CloseContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CloseContract;

  TRes call({Input$CloseContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$CloseContract<TRes>
    implements CopyWith$Variables$Mutation$CloseContract<TRes> {
  _CopyWithImpl$Variables$Mutation$CloseContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CloseContract _instance;

  final TRes Function(Variables$Mutation$CloseContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CloseContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CloseContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CloseContract<TRes>
    implements CopyWith$Variables$Mutation$CloseContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CloseContract(this._res);

  TRes _res;

  call({Input$CloseContractInput? input}) => _res;
}

class Mutation$CloseContract {
  Mutation$CloseContract({
    this.closeContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CloseContract.fromJson(Map<String, dynamic> json) {
    final l$closeContract = json['closeContract'];
    final l$$__typename = json['__typename'];
    return Mutation$CloseContract(
      closeContract: l$closeContract == null
          ? null
          : Mutation$CloseContract$closeContract.fromJson(
              (l$closeContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CloseContract$closeContract? closeContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$closeContract = closeContract;
    _resultData['closeContract'] = l$closeContract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$closeContract = closeContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$closeContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CloseContract || runtimeType != other.runtimeType) {
      return false;
    }
    final l$closeContract = closeContract;
    final lOther$closeContract = other.closeContract;
    if (l$closeContract != lOther$closeContract) {
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

extension UtilityExtension$Mutation$CloseContract on Mutation$CloseContract {
  CopyWith$Mutation$CloseContract<Mutation$CloseContract> get copyWith =>
      CopyWith$Mutation$CloseContract(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CloseContract<TRes> {
  factory CopyWith$Mutation$CloseContract(
    Mutation$CloseContract instance,
    TRes Function(Mutation$CloseContract) then,
  ) = _CopyWithImpl$Mutation$CloseContract;

  factory CopyWith$Mutation$CloseContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloseContract;

  TRes call({
    Mutation$CloseContract$closeContract? closeContract,
    String? $__typename,
  });
  CopyWith$Mutation$CloseContract$closeContract<TRes> get closeContract;
}

class _CopyWithImpl$Mutation$CloseContract<TRes>
    implements CopyWith$Mutation$CloseContract<TRes> {
  _CopyWithImpl$Mutation$CloseContract(
    this._instance,
    this._then,
  );

  final Mutation$CloseContract _instance;

  final TRes Function(Mutation$CloseContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? closeContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CloseContract(
        closeContract: closeContract == _undefined
            ? _instance.closeContract
            : (closeContract as Mutation$CloseContract$closeContract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CloseContract$closeContract<TRes> get closeContract {
    final local$closeContract = _instance.closeContract;
    return local$closeContract == null
        ? CopyWith$Mutation$CloseContract$closeContract.stub(_then(_instance))
        : CopyWith$Mutation$CloseContract$closeContract(
            local$closeContract, (e) => call(closeContract: e));
  }
}

class _CopyWithStubImpl$Mutation$CloseContract<TRes>
    implements CopyWith$Mutation$CloseContract<TRes> {
  _CopyWithStubImpl$Mutation$CloseContract(this._res);

  TRes _res;

  call({
    Mutation$CloseContract$closeContract? closeContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CloseContract$closeContract<TRes> get closeContract =>
      CopyWith$Mutation$CloseContract$closeContract.stub(_res);
}

const documentNodeMutationCloseContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CloseContract'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CloseContractInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'closeContract'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'contractHeaderId'),
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
        ]),
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

class Mutation$CloseContract$closeContract {
  Mutation$CloseContract$closeContract({
    required this.contractHeaderId,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$CloseContract$closeContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractHeaderId = json['contractHeaderId'];
    final l$$__typename = json['__typename'];
    return Mutation$CloseContract$closeContract(
      contractHeaderId: (l$contractHeaderId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractHeaderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractHeaderId = contractHeaderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractHeaderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CloseContract$closeContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
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

extension UtilityExtension$Mutation$CloseContract$closeContract
    on Mutation$CloseContract$closeContract {
  CopyWith$Mutation$CloseContract$closeContract<
          Mutation$CloseContract$closeContract>
      get copyWith => CopyWith$Mutation$CloseContract$closeContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CloseContract$closeContract<TRes> {
  factory CopyWith$Mutation$CloseContract$closeContract(
    Mutation$CloseContract$closeContract instance,
    TRes Function(Mutation$CloseContract$closeContract) then,
  ) = _CopyWithImpl$Mutation$CloseContract$closeContract;

  factory CopyWith$Mutation$CloseContract$closeContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloseContract$closeContract;

  TRes call({
    int? contractHeaderId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CloseContract$closeContract<TRes>
    implements CopyWith$Mutation$CloseContract$closeContract<TRes> {
  _CopyWithImpl$Mutation$CloseContract$closeContract(
    this._instance,
    this._then,
  );

  final Mutation$CloseContract$closeContract _instance;

  final TRes Function(Mutation$CloseContract$closeContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractHeaderId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CloseContract$closeContract(
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CloseContract$closeContract<TRes>
    implements CopyWith$Mutation$CloseContract$closeContract<TRes> {
  _CopyWithStubImpl$Mutation$CloseContract$closeContract(this._res);

  TRes _res;

  call({
    int? contractHeaderId,
    String? $__typename,
  }) =>
      _res;
}
