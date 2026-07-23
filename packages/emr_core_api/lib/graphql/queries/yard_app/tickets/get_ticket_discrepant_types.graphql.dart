import 'package:gql/ast.dart';

class Query$GetTicketDiscrepantTypes {
  Query$GetTicketDiscrepantTypes({
    required this.ticketDiscrepantTypes,
    this.$__typename = 'Query',
  });

  factory Query$GetTicketDiscrepantTypes.fromJson(Map<String, dynamic> json) {
    final l$ticketDiscrepantTypes = json['ticketDiscrepantTypes'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDiscrepantTypes(
      ticketDiscrepantTypes: (l$ticketDiscrepantTypes as List<dynamic>)
          .map(
            (e) =>
                Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>
  ticketDiscrepantTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticketDiscrepantTypes = ticketDiscrepantTypes;
    _resultData['ticketDiscrepantTypes'] = l$ticketDiscrepantTypes
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticketDiscrepantTypes = ticketDiscrepantTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$ticketDiscrepantTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDiscrepantTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketDiscrepantTypes = ticketDiscrepantTypes;
    final lOther$ticketDiscrepantTypes = other.ticketDiscrepantTypes;
    if (l$ticketDiscrepantTypes.length != lOther$ticketDiscrepantTypes.length) {
      return false;
    }
    for (int i = 0; i < l$ticketDiscrepantTypes.length; i++) {
      final l$ticketDiscrepantTypes$entry = l$ticketDiscrepantTypes[i];
      final lOther$ticketDiscrepantTypes$entry =
          lOther$ticketDiscrepantTypes[i];
      if (l$ticketDiscrepantTypes$entry != lOther$ticketDiscrepantTypes$entry) {
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

extension UtilityExtension$Query$GetTicketDiscrepantTypes
    on Query$GetTicketDiscrepantTypes {
  CopyWith$Query$GetTicketDiscrepantTypes<Query$GetTicketDiscrepantTypes>
  get copyWith => CopyWith$Query$GetTicketDiscrepantTypes(this, (i) => i);
}

abstract class CopyWith$Query$GetTicketDiscrepantTypes<TRes> {
  factory CopyWith$Query$GetTicketDiscrepantTypes(
    Query$GetTicketDiscrepantTypes instance,
    TRes Function(Query$GetTicketDiscrepantTypes) then,
  ) = _CopyWithImpl$Query$GetTicketDiscrepantTypes;

  factory CopyWith$Query$GetTicketDiscrepantTypes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTicketDiscrepantTypes;

  TRes call({
    List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>?
    ticketDiscrepantTypes,
    String? $__typename,
  });
  TRes ticketDiscrepantTypes(
    Iterable<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes> Function(
      Iterable<
        CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<
          Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTicketDiscrepantTypes<TRes>
    implements CopyWith$Query$GetTicketDiscrepantTypes<TRes> {
  _CopyWithImpl$Query$GetTicketDiscrepantTypes(this._instance, this._then);

  final Query$GetTicketDiscrepantTypes _instance;

  final TRes Function(Query$GetTicketDiscrepantTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticketDiscrepantTypes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDiscrepantTypes(
      ticketDiscrepantTypes:
          ticketDiscrepantTypes == _undefined || ticketDiscrepantTypes == null
          ? _instance.ticketDiscrepantTypes
          : (ticketDiscrepantTypes
                as List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes ticketDiscrepantTypes(
    Iterable<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes> Function(
      Iterable<
        CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<
          Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes
        >
      >,
    )
    _fn,
  ) => call(
    ticketDiscrepantTypes: _fn(
      _instance.ticketDiscrepantTypes.map(
        (e) => CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTicketDiscrepantTypes<TRes>
    implements CopyWith$Query$GetTicketDiscrepantTypes<TRes> {
  _CopyWithStubImpl$Query$GetTicketDiscrepantTypes(this._res);

  TRes _res;

  call({
    List<Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes>?
    ticketDiscrepantTypes,
    String? $__typename,
  }) => _res;

  ticketDiscrepantTypes(_fn) => _res;
}

const documentNodeQueryGetTicketDiscrepantTypes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTicketDiscrepantTypes'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'ticketDiscrepantTypes'),
            alias: null,
            arguments: [],
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mediaRequired'),
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

class Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes {
  Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes({
    required this.id,
    required this.name,
    required this.description,
    required this.mediaRequired,
    this.$__typename = 'TicketDiscrepantTypes',
  });

  factory Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$mediaRequired = json['mediaRequired'];
    final l$$__typename = json['__typename'];
    return Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      mediaRequired: (l$mediaRequired as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final bool mediaRequired;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mediaRequired = mediaRequired;
    _resultData['mediaRequired'] = l$mediaRequired;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$mediaRequired = mediaRequired;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$mediaRequired,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$mediaRequired = mediaRequired;
    final lOther$mediaRequired = other.mediaRequired;
    if (l$mediaRequired != lOther$mediaRequired) {
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

extension UtilityExtension$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes
    on Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes {
  CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<
    Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes
  >
  get copyWith => CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<
  TRes
> {
  factory CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
    Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes instance,
    TRes Function(Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes) then,
  ) = _CopyWithImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes;

  factory CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes;

  TRes call({
    String? id,
    String? name,
    String? description,
    bool? mediaRequired,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<TRes>
    implements
        CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<TRes> {
  _CopyWithImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
    this._instance,
    this._then,
  );

  final Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes _instance;

  final TRes Function(Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? mediaRequired = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      mediaRequired: mediaRequired == _undefined || mediaRequired == null
          ? _instance.mediaRequired
          : (mediaRequired as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<
  TRes
>
    implements
        CopyWith$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes<TRes> {
  _CopyWithStubImpl$Query$GetTicketDiscrepantTypes$ticketDiscrepantTypes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    bool? mediaRequired,
    String? $__typename,
  }) => _res;
}
