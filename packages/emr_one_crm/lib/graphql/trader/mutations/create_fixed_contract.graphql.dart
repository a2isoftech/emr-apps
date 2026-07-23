import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateFixedContract {
  factory Variables$Mutation$CreateFixedContract(
          {required Input$CreateFixedContractInput input}) =>
      Variables$Mutation$CreateFixedContract._({
        r'input': input,
      });

  Variables$Mutation$CreateFixedContract._(this._$data);

  factory Variables$Mutation$CreateFixedContract.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateFixedContractInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateFixedContract._(result$data);
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

  CopyWith$Variables$Mutation$CreateFixedContract<
          Variables$Mutation$CreateFixedContract>
      get copyWith => CopyWith$Variables$Mutation$CreateFixedContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateFixedContract ||
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

abstract class CopyWith$Variables$Mutation$CreateFixedContract<TRes> {
  factory CopyWith$Variables$Mutation$CreateFixedContract(
    Variables$Mutation$CreateFixedContract instance,
    TRes Function(Variables$Mutation$CreateFixedContract) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateFixedContract;

  factory CopyWith$Variables$Mutation$CreateFixedContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateFixedContract;

  TRes call({Input$CreateFixedContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateFixedContract<TRes>
    implements CopyWith$Variables$Mutation$CreateFixedContract<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateFixedContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateFixedContract _instance;

  final TRes Function(Variables$Mutation$CreateFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateFixedContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateFixedContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateFixedContract<TRes>
    implements CopyWith$Variables$Mutation$CreateFixedContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateFixedContract(this._res);

  TRes _res;

  call({Input$CreateFixedContractInput? input}) => _res;
}

class Mutation$CreateFixedContract {
  Mutation$CreateFixedContract({
    required this.createFixedContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateFixedContract.fromJson(Map<String, dynamic> json) {
    final l$createFixedContract = json['createFixedContract'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateFixedContract(
      createFixedContract:
          Mutation$CreateFixedContract$createFixedContract.fromJson(
              (l$createFixedContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateFixedContract$createFixedContract createFixedContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createFixedContract = createFixedContract;
    _resultData['createFixedContract'] = l$createFixedContract.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createFixedContract = createFixedContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createFixedContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateFixedContract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createFixedContract = createFixedContract;
    final lOther$createFixedContract = other.createFixedContract;
    if (l$createFixedContract != lOther$createFixedContract) {
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

extension UtilityExtension$Mutation$CreateFixedContract
    on Mutation$CreateFixedContract {
  CopyWith$Mutation$CreateFixedContract<Mutation$CreateFixedContract>
      get copyWith => CopyWith$Mutation$CreateFixedContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateFixedContract<TRes> {
  factory CopyWith$Mutation$CreateFixedContract(
    Mutation$CreateFixedContract instance,
    TRes Function(Mutation$CreateFixedContract) then,
  ) = _CopyWithImpl$Mutation$CreateFixedContract;

  factory CopyWith$Mutation$CreateFixedContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateFixedContract;

  TRes call({
    Mutation$CreateFixedContract$createFixedContract? createFixedContract,
    String? $__typename,
  });
  CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes>
      get createFixedContract;
}

class _CopyWithImpl$Mutation$CreateFixedContract<TRes>
    implements CopyWith$Mutation$CreateFixedContract<TRes> {
  _CopyWithImpl$Mutation$CreateFixedContract(
    this._instance,
    this._then,
  );

  final Mutation$CreateFixedContract _instance;

  final TRes Function(Mutation$CreateFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createFixedContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateFixedContract(
        createFixedContract:
            createFixedContract == _undefined || createFixedContract == null
                ? _instance.createFixedContract
                : (createFixedContract
                    as Mutation$CreateFixedContract$createFixedContract),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes>
      get createFixedContract {
    final local$createFixedContract = _instance.createFixedContract;
    return CopyWith$Mutation$CreateFixedContract$createFixedContract(
        local$createFixedContract, (e) => call(createFixedContract: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateFixedContract<TRes>
    implements CopyWith$Mutation$CreateFixedContract<TRes> {
  _CopyWithStubImpl$Mutation$CreateFixedContract(this._res);

  TRes _res;

  call({
    Mutation$CreateFixedContract$createFixedContract? createFixedContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes>
      get createFixedContract =>
          CopyWith$Mutation$CreateFixedContract$createFixedContract.stub(_res);
}

const documentNodeMutationCreateFixedContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateFixedContract'),
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
        name: NameNode(value: 'createFixedContract'),
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

class Mutation$CreateFixedContract$createFixedContract {
  Mutation$CreateFixedContract$createFixedContract({
    this.contractRef,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$CreateFixedContract$createFixedContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractRef = json['contractRef'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateFixedContract$createFixedContract(
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
    if (other is! Mutation$CreateFixedContract$createFixedContract ||
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

extension UtilityExtension$Mutation$CreateFixedContract$createFixedContract
    on Mutation$CreateFixedContract$createFixedContract {
  CopyWith$Mutation$CreateFixedContract$createFixedContract<
          Mutation$CreateFixedContract$createFixedContract>
      get copyWith => CopyWith$Mutation$CreateFixedContract$createFixedContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes> {
  factory CopyWith$Mutation$CreateFixedContract$createFixedContract(
    Mutation$CreateFixedContract$createFixedContract instance,
    TRes Function(Mutation$CreateFixedContract$createFixedContract) then,
  ) = _CopyWithImpl$Mutation$CreateFixedContract$createFixedContract;

  factory CopyWith$Mutation$CreateFixedContract$createFixedContract.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateFixedContract$createFixedContract;

  TRes call({
    String? contractRef,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateFixedContract$createFixedContract<TRes>
    implements CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes> {
  _CopyWithImpl$Mutation$CreateFixedContract$createFixedContract(
    this._instance,
    this._then,
  );

  final Mutation$CreateFixedContract$createFixedContract _instance;

  final TRes Function(Mutation$CreateFixedContract$createFixedContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractRef = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateFixedContract$createFixedContract(
        contractRef: contractRef == _undefined
            ? _instance.contractRef
            : (contractRef as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateFixedContract$createFixedContract<TRes>
    implements CopyWith$Mutation$CreateFixedContract$createFixedContract<TRes> {
  _CopyWithStubImpl$Mutation$CreateFixedContract$createFixedContract(this._res);

  TRes _res;

  call({
    String? contractRef,
    String? $__typename,
  }) =>
      _res;
}
