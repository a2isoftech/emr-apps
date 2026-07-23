import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ModifyFixedContract {
  factory Variables$Mutation$ModifyFixedContract(
          {required Input$CreateFixedContractInput input}) =>
      Variables$Mutation$ModifyFixedContract._({
        r'input': input,
      });

  Variables$Mutation$ModifyFixedContract._(this._$data);

  factory Variables$Mutation$ModifyFixedContract.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateFixedContractInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ModifyFixedContract._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateFixedContractInput get input =>
      (_$data['input'] as Input$CreateFixedContractInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ModifyFixedContract<
          Variables$Mutation$ModifyFixedContract>
      get copyWith => CopyWith$Variables$Mutation$ModifyFixedContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ModifyFixedContract ||
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

abstract class CopyWith$Variables$Mutation$ModifyFixedContract<TRes> {
  factory CopyWith$Variables$Mutation$ModifyFixedContract(
    Variables$Mutation$ModifyFixedContract instance,
    TRes Function(Variables$Mutation$ModifyFixedContract) then,
  ) = _CopyWithImpl$Variables$Mutation$ModifyFixedContract;

  factory CopyWith$Variables$Mutation$ModifyFixedContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ModifyFixedContract;

  TRes call({Input$CreateFixedContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$ModifyFixedContract<TRes>
    implements CopyWith$Variables$Mutation$ModifyFixedContract<TRes> {
  _CopyWithImpl$Variables$Mutation$ModifyFixedContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ModifyFixedContract _instance;

  final TRes Function(Variables$Mutation$ModifyFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ModifyFixedContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateFixedContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ModifyFixedContract<TRes>
    implements CopyWith$Variables$Mutation$ModifyFixedContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ModifyFixedContract(this._res);

  TRes _res;

  call({Input$CreateFixedContractInput? input}) => _res;
}

class Mutation$ModifyFixedContract {
  Mutation$ModifyFixedContract({
    this.modifyFixedContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ModifyFixedContract.fromJson(Map<String, dynamic> json) {
    final l$modifyFixedContract = json['modifyFixedContract'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifyFixedContract(
      modifyFixedContract: l$modifyFixedContract == null
          ? null
          : Mutation$ModifyFixedContract$modifyFixedContract.fromJson(
              (l$modifyFixedContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ModifyFixedContract$modifyFixedContract? modifyFixedContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$modifyFixedContract = modifyFixedContract;
    _resultData['modifyFixedContract'] = l$modifyFixedContract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$modifyFixedContract = modifyFixedContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$modifyFixedContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ModifyFixedContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$modifyFixedContract = modifyFixedContract;
    final lOther$modifyFixedContract = other.modifyFixedContract;
    if (l$modifyFixedContract != lOther$modifyFixedContract) {
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

extension UtilityExtension$Mutation$ModifyFixedContract
    on Mutation$ModifyFixedContract {
  CopyWith$Mutation$ModifyFixedContract<Mutation$ModifyFixedContract>
      get copyWith => CopyWith$Mutation$ModifyFixedContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ModifyFixedContract<TRes> {
  factory CopyWith$Mutation$ModifyFixedContract(
    Mutation$ModifyFixedContract instance,
    TRes Function(Mutation$ModifyFixedContract) then,
  ) = _CopyWithImpl$Mutation$ModifyFixedContract;

  factory CopyWith$Mutation$ModifyFixedContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ModifyFixedContract;

  TRes call({
    Mutation$ModifyFixedContract$modifyFixedContract? modifyFixedContract,
    String? $__typename,
  });
  CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes>
      get modifyFixedContract;
}

class _CopyWithImpl$Mutation$ModifyFixedContract<TRes>
    implements CopyWith$Mutation$ModifyFixedContract<TRes> {
  _CopyWithImpl$Mutation$ModifyFixedContract(
    this._instance,
    this._then,
  );

  final Mutation$ModifyFixedContract _instance;

  final TRes Function(Mutation$ModifyFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? modifyFixedContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ModifyFixedContract(
        modifyFixedContract: modifyFixedContract == _undefined
            ? _instance.modifyFixedContract
            : (modifyFixedContract
                as Mutation$ModifyFixedContract$modifyFixedContract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes>
      get modifyFixedContract {
    final local$modifyFixedContract = _instance.modifyFixedContract;
    return local$modifyFixedContract == null
        ? CopyWith$Mutation$ModifyFixedContract$modifyFixedContract.stub(
            _then(_instance))
        : CopyWith$Mutation$ModifyFixedContract$modifyFixedContract(
            local$modifyFixedContract, (e) => call(modifyFixedContract: e));
  }
}

class _CopyWithStubImpl$Mutation$ModifyFixedContract<TRes>
    implements CopyWith$Mutation$ModifyFixedContract<TRes> {
  _CopyWithStubImpl$Mutation$ModifyFixedContract(this._res);

  TRes _res;

  call({
    Mutation$ModifyFixedContract$modifyFixedContract? modifyFixedContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes>
      get modifyFixedContract =>
          CopyWith$Mutation$ModifyFixedContract$modifyFixedContract.stub(_res);
}

const documentNodeMutationModifyFixedContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ModifyFixedContract'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateFixedContractInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'modifyFixedContract'),
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

class Mutation$ModifyFixedContract$modifyFixedContract {
  Mutation$ModifyFixedContract$modifyFixedContract({
    this.contractRef,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$ModifyFixedContract$modifyFixedContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractRef = json['contractRef'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifyFixedContract$modifyFixedContract(
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
    if (other is! Mutation$ModifyFixedContract$modifyFixedContract ||
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

extension UtilityExtension$Mutation$ModifyFixedContract$modifyFixedContract
    on Mutation$ModifyFixedContract$modifyFixedContract {
  CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<
          Mutation$ModifyFixedContract$modifyFixedContract>
      get copyWith => CopyWith$Mutation$ModifyFixedContract$modifyFixedContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes> {
  factory CopyWith$Mutation$ModifyFixedContract$modifyFixedContract(
    Mutation$ModifyFixedContract$modifyFixedContract instance,
    TRes Function(Mutation$ModifyFixedContract$modifyFixedContract) then,
  ) = _CopyWithImpl$Mutation$ModifyFixedContract$modifyFixedContract;

  factory CopyWith$Mutation$ModifyFixedContract$modifyFixedContract.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ModifyFixedContract$modifyFixedContract;

  TRes call({
    String? contractRef,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ModifyFixedContract$modifyFixedContract<TRes>
    implements CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes> {
  _CopyWithImpl$Mutation$ModifyFixedContract$modifyFixedContract(
    this._instance,
    this._then,
  );

  final Mutation$ModifyFixedContract$modifyFixedContract _instance;

  final TRes Function(Mutation$ModifyFixedContract$modifyFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ModifyFixedContract$modifyFixedContract(
        contractRef: contractRef == _undefined
            ? _instance.contractRef
            : (contractRef as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ModifyFixedContract$modifyFixedContract<TRes>
    implements CopyWith$Mutation$ModifyFixedContract$modifyFixedContract<TRes> {
  _CopyWithStubImpl$Mutation$ModifyFixedContract$modifyFixedContract(this._res);

  TRes _res;

  call({
    String? contractRef,
    String? $__typename,
  }) =>
      _res;
}
