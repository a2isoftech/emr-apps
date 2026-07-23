import 'package:gql/ast.dart';

class Variables$Query$getTicketPrintTemplates {
  factory Variables$Query$getTicketPrintTemplates({String? query}) =>
      Variables$Query$getTicketPrintTemplates._({
        if (query != null) r'query': query,
      });

  Variables$Query$getTicketPrintTemplates._(this._$data);

  factory Variables$Query$getTicketPrintTemplates.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$getTicketPrintTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getTicketPrintTemplates<
    Variables$Query$getTicketPrintTemplates
  >
  get copyWith =>
      CopyWith$Variables$Query$getTicketPrintTemplates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getTicketPrintTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([_$data.containsKey('query') ? l$query : const {}]);
  }
}

abstract class CopyWith$Variables$Query$getTicketPrintTemplates<TRes> {
  factory CopyWith$Variables$Query$getTicketPrintTemplates(
    Variables$Query$getTicketPrintTemplates instance,
    TRes Function(Variables$Query$getTicketPrintTemplates) then,
  ) = _CopyWithImpl$Variables$Query$getTicketPrintTemplates;

  factory CopyWith$Variables$Query$getTicketPrintTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getTicketPrintTemplates;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$getTicketPrintTemplates<TRes>
    implements CopyWith$Variables$Query$getTicketPrintTemplates<TRes> {
  _CopyWithImpl$Variables$Query$getTicketPrintTemplates(
    this._instance,
    this._then,
  );

  final Variables$Query$getTicketPrintTemplates _instance;

  final TRes Function(Variables$Query$getTicketPrintTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$getTicketPrintTemplates._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getTicketPrintTemplates<TRes>
    implements CopyWith$Variables$Query$getTicketPrintTemplates<TRes> {
  _CopyWithStubImpl$Variables$Query$getTicketPrintTemplates(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$getTicketPrintTemplates {
  Query$getTicketPrintTemplates({
    required this.ticketPrintTemplates,
    this.$__typename = 'Query',
  });

  factory Query$getTicketPrintTemplates.fromJson(Map<String, dynamic> json) {
    final l$ticketPrintTemplates = json['ticketPrintTemplates'];
    final l$$__typename = json['__typename'];
    return Query$getTicketPrintTemplates(
      ticketPrintTemplates: (l$ticketPrintTemplates as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> ticketPrintTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ticketPrintTemplates = ticketPrintTemplates;
    _resultData['ticketPrintTemplates'] = l$ticketPrintTemplates
        .map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ticketPrintTemplates = ticketPrintTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$ticketPrintTemplates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getTicketPrintTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketPrintTemplates = ticketPrintTemplates;
    final lOther$ticketPrintTemplates = other.ticketPrintTemplates;
    if (l$ticketPrintTemplates.length != lOther$ticketPrintTemplates.length) {
      return false;
    }
    for (int i = 0; i < l$ticketPrintTemplates.length; i++) {
      final l$ticketPrintTemplates$entry = l$ticketPrintTemplates[i];
      final lOther$ticketPrintTemplates$entry = lOther$ticketPrintTemplates[i];
      if (l$ticketPrintTemplates$entry != lOther$ticketPrintTemplates$entry) {
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

extension UtilityExtension$Query$getTicketPrintTemplates
    on Query$getTicketPrintTemplates {
  CopyWith$Query$getTicketPrintTemplates<Query$getTicketPrintTemplates>
  get copyWith => CopyWith$Query$getTicketPrintTemplates(this, (i) => i);
}

abstract class CopyWith$Query$getTicketPrintTemplates<TRes> {
  factory CopyWith$Query$getTicketPrintTemplates(
    Query$getTicketPrintTemplates instance,
    TRes Function(Query$getTicketPrintTemplates) then,
  ) = _CopyWithImpl$Query$getTicketPrintTemplates;

  factory CopyWith$Query$getTicketPrintTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$getTicketPrintTemplates;

  TRes call({List<String>? ticketPrintTemplates, String? $__typename});
}

class _CopyWithImpl$Query$getTicketPrintTemplates<TRes>
    implements CopyWith$Query$getTicketPrintTemplates<TRes> {
  _CopyWithImpl$Query$getTicketPrintTemplates(this._instance, this._then);

  final Query$getTicketPrintTemplates _instance;

  final TRes Function(Query$getTicketPrintTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticketPrintTemplates = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getTicketPrintTemplates(
      ticketPrintTemplates:
          ticketPrintTemplates == _undefined || ticketPrintTemplates == null
          ? _instance.ticketPrintTemplates
          : (ticketPrintTemplates as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getTicketPrintTemplates<TRes>
    implements CopyWith$Query$getTicketPrintTemplates<TRes> {
  _CopyWithStubImpl$Query$getTicketPrintTemplates(this._res);

  TRes _res;

  call({List<String>? ticketPrintTemplates, String? $__typename}) => _res;
}

const documentNodeQuerygetTicketPrintTemplates = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getTicketPrintTemplates'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
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
            name: NameNode(value: 'ticketPrintTemplates'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'query')),
                    ),
                  ],
                ),
              ),
            ],
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
  ],
);
