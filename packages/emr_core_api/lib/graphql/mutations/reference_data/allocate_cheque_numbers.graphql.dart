import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AllocateChequeNumbers {
  factory Variables$Mutation$AllocateChequeNumbers({
    required Input$AllocateChequeNumbersInput input,
  }) => Variables$Mutation$AllocateChequeNumbers._({r'input': input});

  Variables$Mutation$AllocateChequeNumbers._(this._$data);

  factory Variables$Mutation$AllocateChequeNumbers.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AllocateChequeNumbersInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AllocateChequeNumbers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AllocateChequeNumbersInput get input =>
      (_$data['input'] as Input$AllocateChequeNumbersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AllocateChequeNumbers<
    Variables$Mutation$AllocateChequeNumbers
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AllocateChequeNumbers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AllocateChequeNumbers ||
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

abstract class CopyWith$Variables$Mutation$AllocateChequeNumbers<TRes> {
  factory CopyWith$Variables$Mutation$AllocateChequeNumbers(
    Variables$Mutation$AllocateChequeNumbers instance,
    TRes Function(Variables$Mutation$AllocateChequeNumbers) then,
  ) = _CopyWithImpl$Variables$Mutation$AllocateChequeNumbers;

  factory CopyWith$Variables$Mutation$AllocateChequeNumbers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AllocateChequeNumbers;

  TRes call({Input$AllocateChequeNumbersInput? input});
}

class _CopyWithImpl$Variables$Mutation$AllocateChequeNumbers<TRes>
    implements CopyWith$Variables$Mutation$AllocateChequeNumbers<TRes> {
  _CopyWithImpl$Variables$Mutation$AllocateChequeNumbers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AllocateChequeNumbers _instance;

  final TRes Function(Variables$Mutation$AllocateChequeNumbers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AllocateChequeNumbers._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AllocateChequeNumbersInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AllocateChequeNumbers<TRes>
    implements CopyWith$Variables$Mutation$AllocateChequeNumbers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AllocateChequeNumbers(this._res);

  TRes _res;

  call({Input$AllocateChequeNumbersInput? input}) => _res;
}

class Mutation$AllocateChequeNumbers {
  Mutation$AllocateChequeNumbers({
    required this.allocateChequeNumbers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AllocateChequeNumbers.fromJson(Map<String, dynamic> json) {
    final l$allocateChequeNumbers = json['allocateChequeNumbers'];
    final l$$__typename = json['__typename'];
    return Mutation$AllocateChequeNumbers(
      allocateChequeNumbers: (l$allocateChequeNumbers as List<dynamic>)
          .map(
            (e) =>
                Mutation$AllocateChequeNumbers$allocateChequeNumbers.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$AllocateChequeNumbers$allocateChequeNumbers>
  allocateChequeNumbers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allocateChequeNumbers = allocateChequeNumbers;
    _resultData['allocateChequeNumbers'] = l$allocateChequeNumbers
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allocateChequeNumbers = allocateChequeNumbers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allocateChequeNumbers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AllocateChequeNumbers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allocateChequeNumbers = allocateChequeNumbers;
    final lOther$allocateChequeNumbers = other.allocateChequeNumbers;
    if (l$allocateChequeNumbers.length != lOther$allocateChequeNumbers.length) {
      return false;
    }
    for (int i = 0; i < l$allocateChequeNumbers.length; i++) {
      final l$allocateChequeNumbers$entry = l$allocateChequeNumbers[i];
      final lOther$allocateChequeNumbers$entry =
          lOther$allocateChequeNumbers[i];
      if (l$allocateChequeNumbers$entry != lOther$allocateChequeNumbers$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AllocateChequeNumbers
    on Mutation$AllocateChequeNumbers {
  CopyWith$Mutation$AllocateChequeNumbers<Mutation$AllocateChequeNumbers>
  get copyWith => CopyWith$Mutation$AllocateChequeNumbers(this, (i) => i);
}

abstract class CopyWith$Mutation$AllocateChequeNumbers<TRes> {
  factory CopyWith$Mutation$AllocateChequeNumbers(
    Mutation$AllocateChequeNumbers instance,
    TRes Function(Mutation$AllocateChequeNumbers) then,
  ) = _CopyWithImpl$Mutation$AllocateChequeNumbers;

  factory CopyWith$Mutation$AllocateChequeNumbers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AllocateChequeNumbers;

  TRes call({
    List<Mutation$AllocateChequeNumbers$allocateChequeNumbers>?
    allocateChequeNumbers,
    String? $__typename,
  });
  TRes allocateChequeNumbers(
    Iterable<Mutation$AllocateChequeNumbers$allocateChequeNumbers> Function(
      Iterable<
        CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<
          Mutation$AllocateChequeNumbers$allocateChequeNumbers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AllocateChequeNumbers<TRes>
    implements CopyWith$Mutation$AllocateChequeNumbers<TRes> {
  _CopyWithImpl$Mutation$AllocateChequeNumbers(this._instance, this._then);

  final Mutation$AllocateChequeNumbers _instance;

  final TRes Function(Mutation$AllocateChequeNumbers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allocateChequeNumbers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AllocateChequeNumbers(
      allocateChequeNumbers:
          allocateChequeNumbers == _undefined || allocateChequeNumbers == null
          ? _instance.allocateChequeNumbers
          : (allocateChequeNumbers
                as List<Mutation$AllocateChequeNumbers$allocateChequeNumbers>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allocateChequeNumbers(
    Iterable<Mutation$AllocateChequeNumbers$allocateChequeNumbers> Function(
      Iterable<
        CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<
          Mutation$AllocateChequeNumbers$allocateChequeNumbers
        >
      >,
    )
    _fn,
  ) => call(
    allocateChequeNumbers: _fn(
      _instance.allocateChequeNumbers.map(
        (e) => CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$AllocateChequeNumbers<TRes>
    implements CopyWith$Mutation$AllocateChequeNumbers<TRes> {
  _CopyWithStubImpl$Mutation$AllocateChequeNumbers(this._res);

  TRes _res;

  call({
    List<Mutation$AllocateChequeNumbers$allocateChequeNumbers>?
    allocateChequeNumbers,
    String? $__typename,
  }) => _res;

  allocateChequeNumbers(_fn) => _res;
}

const documentNodeMutationAllocateChequeNumbers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AllocateChequeNumbers'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AllocateChequeNumbersInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allocateChequeNumbers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'yardId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'yardCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'bankAccountCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'startNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'count'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'remaining'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'numberOfDigits'),
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
              ],
            ),
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

class Mutation$AllocateChequeNumbers$allocateChequeNumbers {
  Mutation$AllocateChequeNumbers$allocateChequeNumbers({
    required this.id,
    this.parentId,
    required this.yardId,
    required this.yardCode,
    required this.bankAccountCode,
    required this.startNumber,
    required this.count,
    required this.remaining,
    required this.numberOfDigits,
    this.$__typename = 'ChequeNumbers',
  });

  factory Mutation$AllocateChequeNumbers$allocateChequeNumbers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$parentId = json['parentId'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$bankAccountCode = json['bankAccountCode'];
    final l$startNumber = json['startNumber'];
    final l$count = json['count'];
    final l$remaining = json['remaining'];
    final l$numberOfDigits = json['numberOfDigits'];
    final l$$__typename = json['__typename'];
    return Mutation$AllocateChequeNumbers$allocateChequeNumbers(
      id: (l$id as String),
      parentId: (l$parentId as String?),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      bankAccountCode: (l$bankAccountCode as String),
      startNumber: (l$startNumber as int),
      count: (l$count as int),
      remaining: (l$remaining as int),
      numberOfDigits: (l$numberOfDigits as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? parentId;

  final String yardId;

  final String yardCode;

  final String bankAccountCode;

  final int startNumber;

  final int count;

  final int remaining;

  final int numberOfDigits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$parentId = parentId;
    _resultData['parentId'] = l$parentId;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$bankAccountCode = bankAccountCode;
    _resultData['bankAccountCode'] = l$bankAccountCode;
    final l$startNumber = startNumber;
    _resultData['startNumber'] = l$startNumber;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$remaining = remaining;
    _resultData['remaining'] = l$remaining;
    final l$numberOfDigits = numberOfDigits;
    _resultData['numberOfDigits'] = l$numberOfDigits;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$parentId = parentId;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$bankAccountCode = bankAccountCode;
    final l$startNumber = startNumber;
    final l$count = count;
    final l$remaining = remaining;
    final l$numberOfDigits = numberOfDigits;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$parentId,
      l$yardId,
      l$yardCode,
      l$bankAccountCode,
      l$startNumber,
      l$count,
      l$remaining,
      l$numberOfDigits,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AllocateChequeNumbers$allocateChequeNumbers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$bankAccountCode = bankAccountCode;
    final lOther$bankAccountCode = other.bankAccountCode;
    if (l$bankAccountCode != lOther$bankAccountCode) {
      return false;
    }
    final l$startNumber = startNumber;
    final lOther$startNumber = other.startNumber;
    if (l$startNumber != lOther$startNumber) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$remaining = remaining;
    final lOther$remaining = other.remaining;
    if (l$remaining != lOther$remaining) {
      return false;
    }
    final l$numberOfDigits = numberOfDigits;
    final lOther$numberOfDigits = other.numberOfDigits;
    if (l$numberOfDigits != lOther$numberOfDigits) {
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

extension UtilityExtension$Mutation$AllocateChequeNumbers$allocateChequeNumbers
    on Mutation$AllocateChequeNumbers$allocateChequeNumbers {
  CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<
    Mutation$AllocateChequeNumbers$allocateChequeNumbers
  >
  get copyWith => CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<
  TRes
> {
  factory CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers(
    Mutation$AllocateChequeNumbers$allocateChequeNumbers instance,
    TRes Function(Mutation$AllocateChequeNumbers$allocateChequeNumbers) then,
  ) = _CopyWithImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers;

  factory CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers;

  TRes call({
    String? id,
    String? parentId,
    String? yardId,
    String? yardCode,
    String? bankAccountCode,
    int? startNumber,
    int? count,
    int? remaining,
    int? numberOfDigits,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers<TRes>
    implements
        CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<TRes> {
  _CopyWithImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers(
    this._instance,
    this._then,
  );

  final Mutation$AllocateChequeNumbers$allocateChequeNumbers _instance;

  final TRes Function(Mutation$AllocateChequeNumbers$allocateChequeNumbers)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? parentId = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? bankAccountCode = _undefined,
    Object? startNumber = _undefined,
    Object? count = _undefined,
    Object? remaining = _undefined,
    Object? numberOfDigits = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AllocateChequeNumbers$allocateChequeNumbers(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      parentId: parentId == _undefined
          ? _instance.parentId
          : (parentId as String?),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      bankAccountCode: bankAccountCode == _undefined || bankAccountCode == null
          ? _instance.bankAccountCode
          : (bankAccountCode as String),
      startNumber: startNumber == _undefined || startNumber == null
          ? _instance.startNumber
          : (startNumber as int),
      count: count == _undefined || count == null
          ? _instance.count
          : (count as int),
      remaining: remaining == _undefined || remaining == null
          ? _instance.remaining
          : (remaining as int),
      numberOfDigits: numberOfDigits == _undefined || numberOfDigits == null
          ? _instance.numberOfDigits
          : (numberOfDigits as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers<
  TRes
>
    implements
        CopyWith$Mutation$AllocateChequeNumbers$allocateChequeNumbers<TRes> {
  _CopyWithStubImpl$Mutation$AllocateChequeNumbers$allocateChequeNumbers(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? parentId,
    String? yardId,
    String? yardCode,
    String? bankAccountCode,
    int? startNumber,
    int? count,
    int? remaining,
    int? numberOfDigits,
    String? $__typename,
  }) => _res;
}
