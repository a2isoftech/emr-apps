import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ExtendContract {
  factory Variables$Mutation$ExtendContract(
          {required Input$ExtendContractInput input}) =>
      Variables$Mutation$ExtendContract._({
        r'input': input,
      });

  Variables$Mutation$ExtendContract._(this._$data);

  factory Variables$Mutation$ExtendContract.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ExtendContractInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$ExtendContract._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ExtendContractInput get input =>
      (_$data['input'] as Input$ExtendContractInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ExtendContract<Variables$Mutation$ExtendContract>
      get copyWith => CopyWith$Variables$Mutation$ExtendContract(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ExtendContract ||
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

abstract class CopyWith$Variables$Mutation$ExtendContract<TRes> {
  factory CopyWith$Variables$Mutation$ExtendContract(
    Variables$Mutation$ExtendContract instance,
    TRes Function(Variables$Mutation$ExtendContract) then,
  ) = _CopyWithImpl$Variables$Mutation$ExtendContract;

  factory CopyWith$Variables$Mutation$ExtendContract.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ExtendContract;

  TRes call({Input$ExtendContractInput? input});
}

class _CopyWithImpl$Variables$Mutation$ExtendContract<TRes>
    implements CopyWith$Variables$Mutation$ExtendContract<TRes> {
  _CopyWithImpl$Variables$Mutation$ExtendContract(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ExtendContract _instance;

  final TRes Function(Variables$Mutation$ExtendContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ExtendContract._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ExtendContractInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ExtendContract<TRes>
    implements CopyWith$Variables$Mutation$ExtendContract<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ExtendContract(this._res);

  TRes _res;

  call({Input$ExtendContractInput? input}) => _res;
}

class Mutation$ExtendContract {
  Mutation$ExtendContract({
    this.extendContract,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ExtendContract.fromJson(Map<String, dynamic> json) {
    final l$extendContract = json['extendContract'];
    final l$$__typename = json['__typename'];
    return Mutation$ExtendContract(
      extendContract: l$extendContract == null
          ? null
          : Mutation$ExtendContract$extendContract.fromJson(
              (l$extendContract as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ExtendContract$extendContract? extendContract;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extendContract = extendContract;
    _resultData['extendContract'] = l$extendContract?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extendContract = extendContract;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extendContract,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ExtendContract || runtimeType != other.runtimeType) {
      return false;
    }
    final l$extendContract = extendContract;
    final lOther$extendContract = other.extendContract;
    if (l$extendContract != lOther$extendContract) {
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

extension UtilityExtension$Mutation$ExtendContract on Mutation$ExtendContract {
  CopyWith$Mutation$ExtendContract<Mutation$ExtendContract> get copyWith =>
      CopyWith$Mutation$ExtendContract(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ExtendContract<TRes> {
  factory CopyWith$Mutation$ExtendContract(
    Mutation$ExtendContract instance,
    TRes Function(Mutation$ExtendContract) then,
  ) = _CopyWithImpl$Mutation$ExtendContract;

  factory CopyWith$Mutation$ExtendContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ExtendContract;

  TRes call({
    Mutation$ExtendContract$extendContract? extendContract,
    String? $__typename,
  });
  CopyWith$Mutation$ExtendContract$extendContract<TRes> get extendContract;
}

class _CopyWithImpl$Mutation$ExtendContract<TRes>
    implements CopyWith$Mutation$ExtendContract<TRes> {
  _CopyWithImpl$Mutation$ExtendContract(
    this._instance,
    this._then,
  );

  final Mutation$ExtendContract _instance;

  final TRes Function(Mutation$ExtendContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extendContract = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ExtendContract(
        extendContract: extendContract == _undefined
            ? _instance.extendContract
            : (extendContract as Mutation$ExtendContract$extendContract?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ExtendContract$extendContract<TRes> get extendContract {
    final local$extendContract = _instance.extendContract;
    return local$extendContract == null
        ? CopyWith$Mutation$ExtendContract$extendContract.stub(_then(_instance))
        : CopyWith$Mutation$ExtendContract$extendContract(
            local$extendContract, (e) => call(extendContract: e));
  }
}

class _CopyWithStubImpl$Mutation$ExtendContract<TRes>
    implements CopyWith$Mutation$ExtendContract<TRes> {
  _CopyWithStubImpl$Mutation$ExtendContract(this._res);

  TRes _res;

  call({
    Mutation$ExtendContract$extendContract? extendContract,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ExtendContract$extendContract<TRes> get extendContract =>
      CopyWith$Mutation$ExtendContract$extendContract.stub(_res);
}

const documentNodeMutationExtendContract = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ExtendContract'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ExtendContractInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'extendContract'),
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

class Mutation$ExtendContract$extendContract {
  Mutation$ExtendContract$extendContract({
    required this.contractHeaderId,
    this.$__typename = 'T2ContractHeader',
  });

  factory Mutation$ExtendContract$extendContract.fromJson(
      Map<String, dynamic> json) {
    final l$contractHeaderId = json['contractHeaderId'];
    final l$$__typename = json['__typename'];
    return Mutation$ExtendContract$extendContract(
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
    if (other is! Mutation$ExtendContract$extendContract ||
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

extension UtilityExtension$Mutation$ExtendContract$extendContract
    on Mutation$ExtendContract$extendContract {
  CopyWith$Mutation$ExtendContract$extendContract<
          Mutation$ExtendContract$extendContract>
      get copyWith => CopyWith$Mutation$ExtendContract$extendContract(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ExtendContract$extendContract<TRes> {
  factory CopyWith$Mutation$ExtendContract$extendContract(
    Mutation$ExtendContract$extendContract instance,
    TRes Function(Mutation$ExtendContract$extendContract) then,
  ) = _CopyWithImpl$Mutation$ExtendContract$extendContract;

  factory CopyWith$Mutation$ExtendContract$extendContract.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ExtendContract$extendContract;

  TRes call({
    int? contractHeaderId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ExtendContract$extendContract<TRes>
    implements CopyWith$Mutation$ExtendContract$extendContract<TRes> {
  _CopyWithImpl$Mutation$ExtendContract$extendContract(
    this._instance,
    this._then,
  );

  final Mutation$ExtendContract$extendContract _instance;

  final TRes Function(Mutation$ExtendContract$extendContract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractHeaderId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ExtendContract$extendContract(
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ExtendContract$extendContract<TRes>
    implements CopyWith$Mutation$ExtendContract$extendContract<TRes> {
  _CopyWithStubImpl$Mutation$ExtendContract$extendContract(this._res);

  TRes _res;

  call({
    int? contractHeaderId,
    String? $__typename,
  }) =>
      _res;
}
