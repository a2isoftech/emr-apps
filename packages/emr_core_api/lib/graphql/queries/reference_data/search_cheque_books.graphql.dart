import 'package:gql/ast.dart';

class Variables$Query$SearchChequeBooks {
  factory Variables$Query$SearchChequeBooks({
    required String bankAccountCode,
    String? yardCode,
  }) => Variables$Query$SearchChequeBooks._({
    r'bankAccountCode': bankAccountCode,
    if (yardCode != null) r'yardCode': yardCode,
  });

  Variables$Query$SearchChequeBooks._(this._$data);

  factory Variables$Query$SearchChequeBooks.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$bankAccountCode = data['bankAccountCode'];
    result$data['bankAccountCode'] = (l$bankAccountCode as String);
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    return Variables$Query$SearchChequeBooks._(result$data);
  }

  Map<String, dynamic> _$data;

  String get bankAccountCode => (_$data['bankAccountCode'] as String);

  String? get yardCode => (_$data['yardCode'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bankAccountCode = bankAccountCode;
    result$data['bankAccountCode'] = l$bankAccountCode;
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchChequeBooks<Variables$Query$SearchChequeBooks>
  get copyWith => CopyWith$Variables$Query$SearchChequeBooks(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchChequeBooks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccountCode = bankAccountCode;
    final lOther$bankAccountCode = other.bankAccountCode;
    if (l$bankAccountCode != lOther$bankAccountCode) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bankAccountCode = bankAccountCode;
    final l$yardCode = yardCode;
    return Object.hashAll([
      l$bankAccountCode,
      _$data.containsKey('yardCode') ? l$yardCode : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchChequeBooks<TRes> {
  factory CopyWith$Variables$Query$SearchChequeBooks(
    Variables$Query$SearchChequeBooks instance,
    TRes Function(Variables$Query$SearchChequeBooks) then,
  ) = _CopyWithImpl$Variables$Query$SearchChequeBooks;

  factory CopyWith$Variables$Query$SearchChequeBooks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchChequeBooks;

  TRes call({String? bankAccountCode, String? yardCode});
}

class _CopyWithImpl$Variables$Query$SearchChequeBooks<TRes>
    implements CopyWith$Variables$Query$SearchChequeBooks<TRes> {
  _CopyWithImpl$Variables$Query$SearchChequeBooks(this._instance, this._then);

  final Variables$Query$SearchChequeBooks _instance;

  final TRes Function(Variables$Query$SearchChequeBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankAccountCode = _undefined,
    Object? yardCode = _undefined,
  }) => _then(
    Variables$Query$SearchChequeBooks._({
      ..._instance._$data,
      if (bankAccountCode != _undefined && bankAccountCode != null)
        'bankAccountCode': (bankAccountCode as String),
      if (yardCode != _undefined) 'yardCode': (yardCode as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchChequeBooks<TRes>
    implements CopyWith$Variables$Query$SearchChequeBooks<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchChequeBooks(this._res);

  TRes _res;

  call({String? bankAccountCode, String? yardCode}) => _res;
}

class Query$SearchChequeBooks {
  Query$SearchChequeBooks({
    required this.searchChequeBooks,
    this.$__typename = 'Query',
  });

  factory Query$SearchChequeBooks.fromJson(Map<String, dynamic> json) {
    final l$searchChequeBooks = json['searchChequeBooks'];
    final l$$__typename = json['__typename'];
    return Query$SearchChequeBooks(
      searchChequeBooks: (l$searchChequeBooks as List<dynamic>)
          .map(
            (e) => Query$SearchChequeBooks$searchChequeBooks.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchChequeBooks$searchChequeBooks> searchChequeBooks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchChequeBooks = searchChequeBooks;
    _resultData['searchChequeBooks'] = l$searchChequeBooks
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchChequeBooks = searchChequeBooks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchChequeBooks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchChequeBooks || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchChequeBooks = searchChequeBooks;
    final lOther$searchChequeBooks = other.searchChequeBooks;
    if (l$searchChequeBooks.length != lOther$searchChequeBooks.length) {
      return false;
    }
    for (int i = 0; i < l$searchChequeBooks.length; i++) {
      final l$searchChequeBooks$entry = l$searchChequeBooks[i];
      final lOther$searchChequeBooks$entry = lOther$searchChequeBooks[i];
      if (l$searchChequeBooks$entry != lOther$searchChequeBooks$entry) {
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

extension UtilityExtension$Query$SearchChequeBooks on Query$SearchChequeBooks {
  CopyWith$Query$SearchChequeBooks<Query$SearchChequeBooks> get copyWith =>
      CopyWith$Query$SearchChequeBooks(this, (i) => i);
}

abstract class CopyWith$Query$SearchChequeBooks<TRes> {
  factory CopyWith$Query$SearchChequeBooks(
    Query$SearchChequeBooks instance,
    TRes Function(Query$SearchChequeBooks) then,
  ) = _CopyWithImpl$Query$SearchChequeBooks;

  factory CopyWith$Query$SearchChequeBooks.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchChequeBooks;

  TRes call({
    List<Query$SearchChequeBooks$searchChequeBooks>? searchChequeBooks,
    String? $__typename,
  });
  TRes searchChequeBooks(
    Iterable<Query$SearchChequeBooks$searchChequeBooks> Function(
      Iterable<
        CopyWith$Query$SearchChequeBooks$searchChequeBooks<
          Query$SearchChequeBooks$searchChequeBooks
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchChequeBooks<TRes>
    implements CopyWith$Query$SearchChequeBooks<TRes> {
  _CopyWithImpl$Query$SearchChequeBooks(this._instance, this._then);

  final Query$SearchChequeBooks _instance;

  final TRes Function(Query$SearchChequeBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchChequeBooks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchChequeBooks(
      searchChequeBooks:
          searchChequeBooks == _undefined || searchChequeBooks == null
          ? _instance.searchChequeBooks
          : (searchChequeBooks
                as List<Query$SearchChequeBooks$searchChequeBooks>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchChequeBooks(
    Iterable<Query$SearchChequeBooks$searchChequeBooks> Function(
      Iterable<
        CopyWith$Query$SearchChequeBooks$searchChequeBooks<
          Query$SearchChequeBooks$searchChequeBooks
        >
      >,
    )
    _fn,
  ) => call(
    searchChequeBooks: _fn(
      _instance.searchChequeBooks.map(
        (e) => CopyWith$Query$SearchChequeBooks$searchChequeBooks(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchChequeBooks<TRes>
    implements CopyWith$Query$SearchChequeBooks<TRes> {
  _CopyWithStubImpl$Query$SearchChequeBooks(this._res);

  TRes _res;

  call({
    List<Query$SearchChequeBooks$searchChequeBooks>? searchChequeBooks,
    String? $__typename,
  }) => _res;

  searchChequeBooks(_fn) => _res;
}

const documentNodeQuerySearchChequeBooks = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchChequeBooks'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'bankAccountCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchChequeBooks'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'bankAccountCode'),
                      value: VariableNode(
                        name: NameNode(value: 'bankAccountCode'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'yardCode'),
                      value: VariableNode(name: NameNode(value: 'yardCode')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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

class Query$SearchChequeBooks$searchChequeBooks {
  Query$SearchChequeBooks$searchChequeBooks({
    required this.yardCode,
    required this.bankAccountCode,
    required this.startNumber,
    required this.count,
    required this.remaining,
    this.$__typename = 'ChequeBookResult',
  });

  factory Query$SearchChequeBooks$searchChequeBooks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$yardCode = json['yardCode'];
    final l$bankAccountCode = json['bankAccountCode'];
    final l$startNumber = json['startNumber'];
    final l$count = json['count'];
    final l$remaining = json['remaining'];
    final l$$__typename = json['__typename'];
    return Query$SearchChequeBooks$searchChequeBooks(
      yardCode: (l$yardCode as String),
      bankAccountCode: (l$bankAccountCode as String),
      startNumber: (l$startNumber as int),
      count: (l$count as int),
      remaining: (l$remaining as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String bankAccountCode;

  final int startNumber;

  final int count;

  final int remaining;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$bankAccountCode = bankAccountCode;
    final l$startNumber = startNumber;
    final l$count = count;
    final l$remaining = remaining;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$bankAccountCode,
      l$startNumber,
      l$count,
      l$remaining,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchChequeBooks$searchChequeBooks ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SearchChequeBooks$searchChequeBooks
    on Query$SearchChequeBooks$searchChequeBooks {
  CopyWith$Query$SearchChequeBooks$searchChequeBooks<
    Query$SearchChequeBooks$searchChequeBooks
  >
  get copyWith =>
      CopyWith$Query$SearchChequeBooks$searchChequeBooks(this, (i) => i);
}

abstract class CopyWith$Query$SearchChequeBooks$searchChequeBooks<TRes> {
  factory CopyWith$Query$SearchChequeBooks$searchChequeBooks(
    Query$SearchChequeBooks$searchChequeBooks instance,
    TRes Function(Query$SearchChequeBooks$searchChequeBooks) then,
  ) = _CopyWithImpl$Query$SearchChequeBooks$searchChequeBooks;

  factory CopyWith$Query$SearchChequeBooks$searchChequeBooks.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchChequeBooks$searchChequeBooks;

  TRes call({
    String? yardCode,
    String? bankAccountCode,
    int? startNumber,
    int? count,
    int? remaining,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchChequeBooks$searchChequeBooks<TRes>
    implements CopyWith$Query$SearchChequeBooks$searchChequeBooks<TRes> {
  _CopyWithImpl$Query$SearchChequeBooks$searchChequeBooks(
    this._instance,
    this._then,
  );

  final Query$SearchChequeBooks$searchChequeBooks _instance;

  final TRes Function(Query$SearchChequeBooks$searchChequeBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? bankAccountCode = _undefined,
    Object? startNumber = _undefined,
    Object? count = _undefined,
    Object? remaining = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchChequeBooks$searchChequeBooks(
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchChequeBooks$searchChequeBooks<TRes>
    implements CopyWith$Query$SearchChequeBooks$searchChequeBooks<TRes> {
  _CopyWithStubImpl$Query$SearchChequeBooks$searchChequeBooks(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? bankAccountCode,
    int? startNumber,
    int? count,
    int? remaining,
    String? $__typename,
  }) => _res;
}
