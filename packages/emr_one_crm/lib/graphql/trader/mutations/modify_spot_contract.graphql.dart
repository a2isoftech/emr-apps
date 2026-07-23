import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ModifySpotContract {
  factory Variables$Mutation$ModifySpotContract(
          {required Input$CreateSpotContractInput input}) =>
      Variables$Mutation$ModifySpotContract._({
        r'input': input,
      });

  Variables$Mutation$ModifySpotContract._(this._$data);

  factory Variables$Mutation$ModifySpotContract.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateSpotContractInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ModifySpotContract._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateSpotContractInput get input =>
      (_$data['input'] as Input$CreateSpotContractInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ModifySpotContract<
          Variables$Mutation$ModifySpotContract>
      get copyWith => CopyWith$Variables$Mutation$ModifySpotContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ModifySpotContract ||
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

abstract class CopyWith$Variables$Mutation$ModifySpotContract<TRes> {
  factory CopyWith$Variables$Mutation$ModifySpotContract(
    Variables$Mutation$ModifySpotContract instance,
    TRes Function(Variables$Mutation$ModifySpotContract) then,
  ) = _CopyWithImpl$Variables$Mutation$ModifySpotContract;

  factory CopyWith$Variables$Mutation$ModifySpotContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ModifySpotContract;

  TRes call({Input$CreateSpotContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$ModifySpotContract<TRes>
    implements CopyWith$Variables$Mutation$ModifySpotContract<TRes> {
  _CopyWithImpl$Variables$Mutation$ModifySpotContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ModifySpotContract _instance;

  final TRes Function(Variables$Mutation$ModifySpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ModifySpotContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateSpotContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ModifySpotContract<TRes>
    implements CopyWith$Variables$Mutation$ModifySpotContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ModifySpotContract(this._res);

  TRes _res;

  call({Input$CreateSpotContractInput? input}) => _res;
}

class Mutation$ModifySpotContract {
  Mutation$ModifySpotContract({
    this.modifySpotContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ModifySpotContract.fromJson(Map<String, dynamic> json) {
    final l$modifySpotContract = json['modifySpotContract'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifySpotContract(
      modifySpotContract: l$modifySpotContract == null
          ? null
          : Mutation$ModifySpotContract$modifySpotContract.fromJson(
              (l$modifySpotContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ModifySpotContract$modifySpotContract? modifySpotContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$modifySpotContract = modifySpotContract;
    _resultData['modifySpotContract'] = l$modifySpotContract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$modifySpotContract = modifySpotContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$modifySpotContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ModifySpotContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$modifySpotContract = modifySpotContract;
    final lOther$modifySpotContract = other.modifySpotContract;
    if (l$modifySpotContract != lOther$modifySpotContract) {
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

extension UtilityExtension$Mutation$ModifySpotContract
    on Mutation$ModifySpotContract {
  CopyWith$Mutation$ModifySpotContract<Mutation$ModifySpotContract>
      get copyWith => CopyWith$Mutation$ModifySpotContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ModifySpotContract<TRes> {
  factory CopyWith$Mutation$ModifySpotContract(
    Mutation$ModifySpotContract instance,
    TRes Function(Mutation$ModifySpotContract) then,
  ) = _CopyWithImpl$Mutation$ModifySpotContract;

  factory CopyWith$Mutation$ModifySpotContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ModifySpotContract;

  TRes call({
    Mutation$ModifySpotContract$modifySpotContract? modifySpotContract,
    String? $__typename,
  });
  CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes>
      get modifySpotContract;
}

class _CopyWithImpl$Mutation$ModifySpotContract<TRes>
    implements CopyWith$Mutation$ModifySpotContract<TRes> {
  _CopyWithImpl$Mutation$ModifySpotContract(
    this._instance,
    this._then,
  );

  final Mutation$ModifySpotContract _instance;

  final TRes Function(Mutation$ModifySpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? modifySpotContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ModifySpotContract(
        modifySpotContract: modifySpotContract == _undefined
            ? _instance.modifySpotContract
            : (modifySpotContract
                as Mutation$ModifySpotContract$modifySpotContract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes>
      get modifySpotContract {
    final local$modifySpotContract = _instance.modifySpotContract;
    return local$modifySpotContract == null
        ? CopyWith$Mutation$ModifySpotContract$modifySpotContract.stub(
            _then(_instance))
        : CopyWith$Mutation$ModifySpotContract$modifySpotContract(
            local$modifySpotContract, (e) => call(modifySpotContract: e));
  }
}

class _CopyWithStubImpl$Mutation$ModifySpotContract<TRes>
    implements CopyWith$Mutation$ModifySpotContract<TRes> {
  _CopyWithStubImpl$Mutation$ModifySpotContract(this._res);

  TRes _res;

  call({
    Mutation$ModifySpotContract$modifySpotContract? modifySpotContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes>
      get modifySpotContract =>
          CopyWith$Mutation$ModifySpotContract$modifySpotContract.stub(_res);
}

const documentNodeMutationModifySpotContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ModifySpotContract'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateSpotContractInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'modifySpotContract'),
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
            name: NameNode(value: 'contractRef'),
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

class Mutation$ModifySpotContract$modifySpotContract {
  Mutation$ModifySpotContract$modifySpotContract({
    this.contractRef,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$ModifySpotContract$modifySpotContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractRef = json['contractRef'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifySpotContract$modifySpotContract(
      contractRef: (l$contractRef as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? contractRef;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractRef = contractRef;
    _resultData['contractRef'] = l$contractRef;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractRef = contractRef;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractRef,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ModifySpotContract$modifySpotContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractRef = contractRef;
    final lOther$contractRef = other.contractRef;
    if (l$contractRef != lOther$contractRef) {
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

extension UtilityExtension$Mutation$ModifySpotContract$modifySpotContract
    on Mutation$ModifySpotContract$modifySpotContract {
  CopyWith$Mutation$ModifySpotContract$modifySpotContract<
          Mutation$ModifySpotContract$modifySpotContract>
      get copyWith => CopyWith$Mutation$ModifySpotContract$modifySpotContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes> {
  factory CopyWith$Mutation$ModifySpotContract$modifySpotContract(
    Mutation$ModifySpotContract$modifySpotContract instance,
    TRes Function(Mutation$ModifySpotContract$modifySpotContract) then,
  ) = _CopyWithImpl$Mutation$ModifySpotContract$modifySpotContract;

  factory CopyWith$Mutation$ModifySpotContract$modifySpotContract.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ModifySpotContract$modifySpotContract;

  TRes call({
    String? contractRef,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ModifySpotContract$modifySpotContract<TRes>
    implements CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes> {
  _CopyWithImpl$Mutation$ModifySpotContract$modifySpotContract(
    this._instance,
    this._then,
  );

  final Mutation$ModifySpotContract$modifySpotContract _instance;

  final TRes Function(Mutation$ModifySpotContract$modifySpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ModifySpotContract$modifySpotContract(
        contractRef: contractRef == _undefined
            ? _instance.contractRef
            : (contractRef as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ModifySpotContract$modifySpotContract<TRes>
    implements CopyWith$Mutation$ModifySpotContract$modifySpotContract<TRes> {
  _CopyWithStubImpl$Mutation$ModifySpotContract$modifySpotContract(this._res);

  TRes _res;

  call({
    String? contractRef,
    String? $__typename,
  }) =>
      _res;
}
