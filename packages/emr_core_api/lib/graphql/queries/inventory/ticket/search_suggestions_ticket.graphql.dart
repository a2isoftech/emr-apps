import 'package:gql/ast.dart';

class Variables$Query$searchTicketSuggestions {
  factory Variables$Query$searchTicketSuggestions({
    required String searchText,
  }) => Variables$Query$searchTicketSuggestions._({r'searchText': searchText});

  Variables$Query$searchTicketSuggestions._(this._$data);

  factory Variables$Query$searchTicketSuggestions.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    return Variables$Query$searchTicketSuggestions._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchText => (_$data['searchText'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    return result$data;
  }

  CopyWith$Variables$Query$searchTicketSuggestions<
    Variables$Query$searchTicketSuggestions
  >
  get copyWith =>
      CopyWith$Variables$Query$searchTicketSuggestions(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchTicketSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchText = searchText;
    return Object.hashAll([l$searchText]);
  }
}

abstract class CopyWith$Variables$Query$searchTicketSuggestions<TRes> {
  factory CopyWith$Variables$Query$searchTicketSuggestions(
    Variables$Query$searchTicketSuggestions instance,
    TRes Function(Variables$Query$searchTicketSuggestions) then,
  ) = _CopyWithImpl$Variables$Query$searchTicketSuggestions;

  factory CopyWith$Variables$Query$searchTicketSuggestions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchTicketSuggestions;

  TRes call({String? searchText});
}

class _CopyWithImpl$Variables$Query$searchTicketSuggestions<TRes>
    implements CopyWith$Variables$Query$searchTicketSuggestions<TRes> {
  _CopyWithImpl$Variables$Query$searchTicketSuggestions(
    this._instance,
    this._then,
  );

  final Variables$Query$searchTicketSuggestions _instance;

  final TRes Function(Variables$Query$searchTicketSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchText = _undefined}) => _then(
    Variables$Query$searchTicketSuggestions._({
      ..._instance._$data,
      if (searchText != _undefined && searchText != null)
        'searchText': (searchText as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchTicketSuggestions<TRes>
    implements CopyWith$Variables$Query$searchTicketSuggestions<TRes> {
  _CopyWithStubImpl$Variables$Query$searchTicketSuggestions(this._res);

  TRes _res;

  call({String? searchText}) => _res;
}

class Query$searchTicketSuggestions {
  Query$searchTicketSuggestions({
    required this.searchTicketSuggestions,
    this.$__typename = 'Query',
  });

  factory Query$searchTicketSuggestions.fromJson(Map<String, dynamic> json) {
    final l$searchTicketSuggestions = json['searchTicketSuggestions'];
    final l$$__typename = json['__typename'];
    return Query$searchTicketSuggestions(
      searchTicketSuggestions: (l$searchTicketSuggestions as List<dynamic>)
          .map(
            (e) =>
                Query$searchTicketSuggestions$searchTicketSuggestions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$searchTicketSuggestions$searchTicketSuggestions>
  searchTicketSuggestions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchTicketSuggestions = searchTicketSuggestions;
    _resultData['searchTicketSuggestions'] = l$searchTicketSuggestions
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchTicketSuggestions = searchTicketSuggestions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchTicketSuggestions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchTicketSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTicketSuggestions = searchTicketSuggestions;
    final lOther$searchTicketSuggestions = other.searchTicketSuggestions;
    if (l$searchTicketSuggestions.length !=
        lOther$searchTicketSuggestions.length) {
      return false;
    }
    for (int i = 0; i < l$searchTicketSuggestions.length; i++) {
      final l$searchTicketSuggestions$entry = l$searchTicketSuggestions[i];
      final lOther$searchTicketSuggestions$entry =
          lOther$searchTicketSuggestions[i];
      if (l$searchTicketSuggestions$entry !=
          lOther$searchTicketSuggestions$entry) {
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

extension UtilityExtension$Query$searchTicketSuggestions
    on Query$searchTicketSuggestions {
  CopyWith$Query$searchTicketSuggestions<Query$searchTicketSuggestions>
  get copyWith => CopyWith$Query$searchTicketSuggestions(this, (i) => i);
}

abstract class CopyWith$Query$searchTicketSuggestions<TRes> {
  factory CopyWith$Query$searchTicketSuggestions(
    Query$searchTicketSuggestions instance,
    TRes Function(Query$searchTicketSuggestions) then,
  ) = _CopyWithImpl$Query$searchTicketSuggestions;

  factory CopyWith$Query$searchTicketSuggestions.stub(TRes res) =
      _CopyWithStubImpl$Query$searchTicketSuggestions;

  TRes call({
    List<Query$searchTicketSuggestions$searchTicketSuggestions>?
    searchTicketSuggestions,
    String? $__typename,
  });
  TRes searchTicketSuggestions(
    Iterable<Query$searchTicketSuggestions$searchTicketSuggestions> Function(
      Iterable<
        CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<
          Query$searchTicketSuggestions$searchTicketSuggestions
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$searchTicketSuggestions<TRes>
    implements CopyWith$Query$searchTicketSuggestions<TRes> {
  _CopyWithImpl$Query$searchTicketSuggestions(this._instance, this._then);

  final Query$searchTicketSuggestions _instance;

  final TRes Function(Query$searchTicketSuggestions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchTicketSuggestions = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchTicketSuggestions(
      searchTicketSuggestions:
          searchTicketSuggestions == _undefined ||
              searchTicketSuggestions == null
          ? _instance.searchTicketSuggestions
          : (searchTicketSuggestions
                as List<Query$searchTicketSuggestions$searchTicketSuggestions>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchTicketSuggestions(
    Iterable<Query$searchTicketSuggestions$searchTicketSuggestions> Function(
      Iterable<
        CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<
          Query$searchTicketSuggestions$searchTicketSuggestions
        >
      >,
    )
    _fn,
  ) => call(
    searchTicketSuggestions: _fn(
      _instance.searchTicketSuggestions.map(
        (e) => CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$searchTicketSuggestions<TRes>
    implements CopyWith$Query$searchTicketSuggestions<TRes> {
  _CopyWithStubImpl$Query$searchTicketSuggestions(this._res);

  TRes _res;

  call({
    List<Query$searchTicketSuggestions$searchTicketSuggestions>?
    searchTicketSuggestions,
    String? $__typename,
  }) => _res;

  searchTicketSuggestions(_fn) => _res;
}

const documentNodeQuerysearchTicketSuggestions = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchTicketSuggestions'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchText')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchTicketSuggestions'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'searchText'),
                value: VariableNode(name: NameNode(value: 'searchText')),
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
                  name: NameNode(value: 'ticketNumber'),
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

class Query$searchTicketSuggestions$searchTicketSuggestions {
  Query$searchTicketSuggestions$searchTicketSuggestions({
    required this.id,
    required this.ticketNumber,
    this.$__typename = 'SearchTicketSuggestionOutput',
  });

  factory Query$searchTicketSuggestions$searchTicketSuggestions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$ticketNumber = json['ticketNumber'];
    final l$$__typename = json['__typename'];
    return Query$searchTicketSuggestions$searchTicketSuggestions(
      id: (l$id as String),
      ticketNumber: (l$ticketNumber as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int ticketNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketNumber = ticketNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$ticketNumber, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchTicketSuggestions$searchTicketSuggestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
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

extension UtilityExtension$Query$searchTicketSuggestions$searchTicketSuggestions
    on Query$searchTicketSuggestions$searchTicketSuggestions {
  CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<
    Query$searchTicketSuggestions$searchTicketSuggestions
  >
  get copyWith =>
      CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<
  TRes
> {
  factory CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions(
    Query$searchTicketSuggestions$searchTicketSuggestions instance,
    TRes Function(Query$searchTicketSuggestions$searchTicketSuggestions) then,
  ) = _CopyWithImpl$Query$searchTicketSuggestions$searchTicketSuggestions;

  factory CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchTicketSuggestions$searchTicketSuggestions;

  TRes call({String? id, int? ticketNumber, String? $__typename});
}

class _CopyWithImpl$Query$searchTicketSuggestions$searchTicketSuggestions<TRes>
    implements
        CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<TRes> {
  _CopyWithImpl$Query$searchTicketSuggestions$searchTicketSuggestions(
    this._instance,
    this._then,
  );

  final Query$searchTicketSuggestions$searchTicketSuggestions _instance;

  final TRes Function(Query$searchTicketSuggestions$searchTicketSuggestions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? ticketNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchTicketSuggestions$searchTicketSuggestions(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchTicketSuggestions$searchTicketSuggestions<
  TRes
>
    implements
        CopyWith$Query$searchTicketSuggestions$searchTicketSuggestions<TRes> {
  _CopyWithStubImpl$Query$searchTicketSuggestions$searchTicketSuggestions(
    this._res,
  );

  TRes _res;

  call({String? id, int? ticketNumber, String? $__typename}) => _res;
}
