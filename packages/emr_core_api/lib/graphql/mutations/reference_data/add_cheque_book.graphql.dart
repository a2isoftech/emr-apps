import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddChequeBook {
  factory Variables$Mutation$AddChequeBook({
    required Input$AddChequeBookInput input,
  }) => Variables$Mutation$AddChequeBook._({r'input': input});

  Variables$Mutation$AddChequeBook._(this._$data);

  factory Variables$Mutation$AddChequeBook.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddChequeBookInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddChequeBook._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddChequeBookInput get input =>
      (_$data['input'] as Input$AddChequeBookInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddChequeBook<Variables$Mutation$AddChequeBook>
  get copyWith => CopyWith$Variables$Mutation$AddChequeBook(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddChequeBook ||
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

abstract class CopyWith$Variables$Mutation$AddChequeBook<TRes> {
  factory CopyWith$Variables$Mutation$AddChequeBook(
    Variables$Mutation$AddChequeBook instance,
    TRes Function(Variables$Mutation$AddChequeBook) then,
  ) = _CopyWithImpl$Variables$Mutation$AddChequeBook;

  factory CopyWith$Variables$Mutation$AddChequeBook.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddChequeBook;

  TRes call({Input$AddChequeBookInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddChequeBook<TRes>
    implements CopyWith$Variables$Mutation$AddChequeBook<TRes> {
  _CopyWithImpl$Variables$Mutation$AddChequeBook(this._instance, this._then);

  final Variables$Mutation$AddChequeBook _instance;

  final TRes Function(Variables$Mutation$AddChequeBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddChequeBook._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AddChequeBookInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddChequeBook<TRes>
    implements CopyWith$Variables$Mutation$AddChequeBook<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddChequeBook(this._res);

  TRes _res;

  call({Input$AddChequeBookInput? input}) => _res;
}

class Mutation$AddChequeBook {
  Mutation$AddChequeBook({
    required this.addChequeBook,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddChequeBook.fromJson(Map<String, dynamic> json) {
    final l$addChequeBook = json['addChequeBook'];
    final l$$__typename = json['__typename'];
    return Mutation$AddChequeBook(
      addChequeBook: Mutation$AddChequeBook$addChequeBook.fromJson(
        (l$addChequeBook as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddChequeBook$addChequeBook addChequeBook;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addChequeBook = addChequeBook;
    _resultData['addChequeBook'] = l$addChequeBook.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addChequeBook = addChequeBook;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addChequeBook, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddChequeBook || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addChequeBook = addChequeBook;
    final lOther$addChequeBook = other.addChequeBook;
    if (l$addChequeBook != lOther$addChequeBook) {
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

extension UtilityExtension$Mutation$AddChequeBook on Mutation$AddChequeBook {
  CopyWith$Mutation$AddChequeBook<Mutation$AddChequeBook> get copyWith =>
      CopyWith$Mutation$AddChequeBook(this, (i) => i);
}

abstract class CopyWith$Mutation$AddChequeBook<TRes> {
  factory CopyWith$Mutation$AddChequeBook(
    Mutation$AddChequeBook instance,
    TRes Function(Mutation$AddChequeBook) then,
  ) = _CopyWithImpl$Mutation$AddChequeBook;

  factory CopyWith$Mutation$AddChequeBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddChequeBook;

  TRes call({
    Mutation$AddChequeBook$addChequeBook? addChequeBook,
    String? $__typename,
  });
  CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> get addChequeBook;
}

class _CopyWithImpl$Mutation$AddChequeBook<TRes>
    implements CopyWith$Mutation$AddChequeBook<TRes> {
  _CopyWithImpl$Mutation$AddChequeBook(this._instance, this._then);

  final Mutation$AddChequeBook _instance;

  final TRes Function(Mutation$AddChequeBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addChequeBook = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddChequeBook(
      addChequeBook: addChequeBook == _undefined || addChequeBook == null
          ? _instance.addChequeBook
          : (addChequeBook as Mutation$AddChequeBook$addChequeBook),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> get addChequeBook {
    final local$addChequeBook = _instance.addChequeBook;
    return CopyWith$Mutation$AddChequeBook$addChequeBook(
      local$addChequeBook,
      (e) => call(addChequeBook: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddChequeBook<TRes>
    implements CopyWith$Mutation$AddChequeBook<TRes> {
  _CopyWithStubImpl$Mutation$AddChequeBook(this._res);

  TRes _res;

  call({
    Mutation$AddChequeBook$addChequeBook? addChequeBook,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> get addChequeBook =>
      CopyWith$Mutation$AddChequeBook$addChequeBook.stub(_res);
}

const documentNodeMutationAddChequeBook = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddChequeBook'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AddChequeBookInput'),
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
            name: NameNode(value: 'addChequeBook'),
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

class Mutation$AddChequeBook$addChequeBook {
  Mutation$AddChequeBook$addChequeBook({
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

  factory Mutation$AddChequeBook$addChequeBook.fromJson(
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
    return Mutation$AddChequeBook$addChequeBook(
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
    if (other is! Mutation$AddChequeBook$addChequeBook ||
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

extension UtilityExtension$Mutation$AddChequeBook$addChequeBook
    on Mutation$AddChequeBook$addChequeBook {
  CopyWith$Mutation$AddChequeBook$addChequeBook<
    Mutation$AddChequeBook$addChequeBook
  >
  get copyWith => CopyWith$Mutation$AddChequeBook$addChequeBook(this, (i) => i);
}

abstract class CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> {
  factory CopyWith$Mutation$AddChequeBook$addChequeBook(
    Mutation$AddChequeBook$addChequeBook instance,
    TRes Function(Mutation$AddChequeBook$addChequeBook) then,
  ) = _CopyWithImpl$Mutation$AddChequeBook$addChequeBook;

  factory CopyWith$Mutation$AddChequeBook$addChequeBook.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddChequeBook$addChequeBook;

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

class _CopyWithImpl$Mutation$AddChequeBook$addChequeBook<TRes>
    implements CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> {
  _CopyWithImpl$Mutation$AddChequeBook$addChequeBook(
    this._instance,
    this._then,
  );

  final Mutation$AddChequeBook$addChequeBook _instance;

  final TRes Function(Mutation$AddChequeBook$addChequeBook) _then;

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
    Mutation$AddChequeBook$addChequeBook(
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

class _CopyWithStubImpl$Mutation$AddChequeBook$addChequeBook<TRes>
    implements CopyWith$Mutation$AddChequeBook$addChequeBook<TRes> {
  _CopyWithStubImpl$Mutation$AddChequeBook$addChequeBook(this._res);

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
