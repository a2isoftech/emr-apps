import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateSpotContract {
  factory Variables$Mutation$CreateSpotContract(
          {required Input$CreateSpotContractInput input}) =>
      Variables$Mutation$CreateSpotContract._({
        r'input': input,
      });

  Variables$Mutation$CreateSpotContract._(this._$data);

  factory Variables$Mutation$CreateSpotContract.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateSpotContractInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateSpotContract._(result$data);
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

  CopyWith$Variables$Mutation$CreateSpotContract<
          Variables$Mutation$CreateSpotContract>
      get copyWith => CopyWith$Variables$Mutation$CreateSpotContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateSpotContract ||
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

abstract class CopyWith$Variables$Mutation$CreateSpotContract<TRes> {
  factory CopyWith$Variables$Mutation$CreateSpotContract(
    Variables$Mutation$CreateSpotContract instance,
    TRes Function(Variables$Mutation$CreateSpotContract) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateSpotContract;

  factory CopyWith$Variables$Mutation$CreateSpotContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateSpotContract;

  TRes call({Input$CreateSpotContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateSpotContract<TRes>
    implements CopyWith$Variables$Mutation$CreateSpotContract<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateSpotContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateSpotContract _instance;

  final TRes Function(Variables$Mutation$CreateSpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateSpotContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateSpotContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateSpotContract<TRes>
    implements CopyWith$Variables$Mutation$CreateSpotContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateSpotContract(this._res);

  TRes _res;

  call({Input$CreateSpotContractInput? input}) => _res;
}

class Mutation$CreateSpotContract {
  Mutation$CreateSpotContract({
    this.createSpotContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateSpotContract.fromJson(Map<String, dynamic> json) {
    final l$createSpotContract = json['createSpotContract'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSpotContract(
      createSpotContract: l$createSpotContract == null
          ? null
          : Mutation$CreateSpotContract$createSpotContract.fromJson(
              (l$createSpotContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateSpotContract$createSpotContract? createSpotContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSpotContract = createSpotContract;
    _resultData['createSpotContract'] = l$createSpotContract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSpotContract = createSpotContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createSpotContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateSpotContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSpotContract = createSpotContract;
    final lOther$createSpotContract = other.createSpotContract;
    if (l$createSpotContract != lOther$createSpotContract) {
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

extension UtilityExtension$Mutation$CreateSpotContract
    on Mutation$CreateSpotContract {
  CopyWith$Mutation$CreateSpotContract<Mutation$CreateSpotContract>
      get copyWith => CopyWith$Mutation$CreateSpotContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSpotContract<TRes> {
  factory CopyWith$Mutation$CreateSpotContract(
    Mutation$CreateSpotContract instance,
    TRes Function(Mutation$CreateSpotContract) then,
  ) = _CopyWithImpl$Mutation$CreateSpotContract;

  factory CopyWith$Mutation$CreateSpotContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSpotContract;

  TRes call({
    Mutation$CreateSpotContract$createSpotContract? createSpotContract,
    String? $__typename,
  });
  CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes>
      get createSpotContract;
}

class _CopyWithImpl$Mutation$CreateSpotContract<TRes>
    implements CopyWith$Mutation$CreateSpotContract<TRes> {
  _CopyWithImpl$Mutation$CreateSpotContract(
    this._instance,
    this._then,
  );

  final Mutation$CreateSpotContract _instance;

  final TRes Function(Mutation$CreateSpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createSpotContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSpotContract(
        createSpotContract: createSpotContract == _undefined
            ? _instance.createSpotContract
            : (createSpotContract
                as Mutation$CreateSpotContract$createSpotContract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes>
      get createSpotContract {
    final local$createSpotContract = _instance.createSpotContract;
    return local$createSpotContract == null
        ? CopyWith$Mutation$CreateSpotContract$createSpotContract.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateSpotContract$createSpotContract(
            local$createSpotContract, (e) => call(createSpotContract: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateSpotContract<TRes>
    implements CopyWith$Mutation$CreateSpotContract<TRes> {
  _CopyWithStubImpl$Mutation$CreateSpotContract(this._res);

  TRes _res;

  call({
    Mutation$CreateSpotContract$createSpotContract? createSpotContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes>
      get createSpotContract =>
          CopyWith$Mutation$CreateSpotContract$createSpotContract.stub(_res);
}

const documentNodeMutationCreateSpotContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateSpotContract'),
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
        name: NameNode(value: 'createSpotContract'),
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

class Mutation$CreateSpotContract$createSpotContract {
  Mutation$CreateSpotContract$createSpotContract({
    this.contractRef,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$CreateSpotContract$createSpotContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractRef = json['contractRef'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSpotContract$createSpotContract(
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
    if (other is! Mutation$CreateSpotContract$createSpotContract ||
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

extension UtilityExtension$Mutation$CreateSpotContract$createSpotContract
    on Mutation$CreateSpotContract$createSpotContract {
  CopyWith$Mutation$CreateSpotContract$createSpotContract<
          Mutation$CreateSpotContract$createSpotContract>
      get copyWith => CopyWith$Mutation$CreateSpotContract$createSpotContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes> {
  factory CopyWith$Mutation$CreateSpotContract$createSpotContract(
    Mutation$CreateSpotContract$createSpotContract instance,
    TRes Function(Mutation$CreateSpotContract$createSpotContract) then,
  ) = _CopyWithImpl$Mutation$CreateSpotContract$createSpotContract;

  factory CopyWith$Mutation$CreateSpotContract$createSpotContract.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateSpotContract$createSpotContract;

  TRes call({
    String? contractRef,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateSpotContract$createSpotContract<TRes>
    implements CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes> {
  _CopyWithImpl$Mutation$CreateSpotContract$createSpotContract(
    this._instance,
    this._then,
  );

  final Mutation$CreateSpotContract$createSpotContract _instance;

  final TRes Function(Mutation$CreateSpotContract$createSpotContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateSpotContract$createSpotContract(
        contractRef: contractRef == _undefined
            ? _instance.contractRef
            : (contractRef as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateSpotContract$createSpotContract<TRes>
    implements CopyWith$Mutation$CreateSpotContract$createSpotContract<TRes> {
  _CopyWithStubImpl$Mutation$CreateSpotContract$createSpotContract(this._res);

  TRes _res;

  call({
    String? contractRef,
    String? $__typename,
  }) =>
      _res;
}
