import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getMyEdgeTicketGalleries {
  factory Variables$Query$getMyEdgeTicketGalleries({
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$EdgeTicketGallerySortInput>? order,
    String? searchString,
  }) => Variables$Query$getMyEdgeTicketGalleries._({
    if (first != null) r'first': first,
    if (last != null) r'last': last,
    if (before != null) r'before': before,
    if (after != null) r'after': after,
    if (order != null) r'order': order,
    if (searchString != null) r'searchString': searchString,
  });

  Variables$Query$getMyEdgeTicketGalleries._(this._$data);

  factory Variables$Query$getMyEdgeTicketGalleries.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map(
            (e) => Input$EdgeTicketGallerySortInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('searchString')) {
      final l$searchString = data['searchString'];
      result$data['searchString'] = (l$searchString as String?);
    }
    return Variables$Query$getMyEdgeTicketGalleries._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  List<Input$EdgeTicketGallerySortInput>? get order =>
      (_$data['order'] as List<Input$EdgeTicketGallerySortInput>?);

  String? get searchString => (_$data['searchString'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('searchString')) {
      final l$searchString = searchString;
      result$data['searchString'] = l$searchString;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getMyEdgeTicketGalleries<
    Variables$Query$getMyEdgeTicketGalleries
  >
  get copyWith =>
      CopyWith$Variables$Query$getMyEdgeTicketGalleries(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getMyEdgeTicketGalleries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    final l$searchString = searchString;
    final lOther$searchString = other.searchString;
    if (_$data.containsKey('searchString') !=
        other._$data.containsKey('searchString')) {
      return false;
    }
    if (l$searchString != lOther$searchString) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$order = order;
    final l$searchString = searchString;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
                ? null
                : Object.hashAll(l$order.map((v) => v))
          : const {},
      _$data.containsKey('searchString') ? l$searchString : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMyEdgeTicketGalleries<TRes> {
  factory CopyWith$Variables$Query$getMyEdgeTicketGalleries(
    Variables$Query$getMyEdgeTicketGalleries instance,
    TRes Function(Variables$Query$getMyEdgeTicketGalleries) then,
  ) = _CopyWithImpl$Variables$Query$getMyEdgeTicketGalleries;

  factory CopyWith$Variables$Query$getMyEdgeTicketGalleries.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getMyEdgeTicketGalleries;

  TRes call({
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$EdgeTicketGallerySortInput>? order,
    String? searchString,
  });
}

class _CopyWithImpl$Variables$Query$getMyEdgeTicketGalleries<TRes>
    implements CopyWith$Variables$Query$getMyEdgeTicketGalleries<TRes> {
  _CopyWithImpl$Variables$Query$getMyEdgeTicketGalleries(
    this._instance,
    this._then,
  );

  final Variables$Query$getMyEdgeTicketGalleries _instance;

  final TRes Function(Variables$Query$getMyEdgeTicketGalleries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
    Object? searchString = _undefined,
  }) => _then(
    Variables$Query$getMyEdgeTicketGalleries._({
      ..._instance._$data,
      if (first != _undefined) 'first': (first as int?),
      if (last != _undefined) 'last': (last as int?),
      if (before != _undefined) 'before': (before as String?),
      if (after != _undefined) 'after': (after as String?),
      if (order != _undefined)
        'order': (order as List<Input$EdgeTicketGallerySortInput>?),
      if (searchString != _undefined) 'searchString': (searchString as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getMyEdgeTicketGalleries<TRes>
    implements CopyWith$Variables$Query$getMyEdgeTicketGalleries<TRes> {
  _CopyWithStubImpl$Variables$Query$getMyEdgeTicketGalleries(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    String? before,
    String? after,
    List<Input$EdgeTicketGallerySortInput>? order,
    String? searchString,
  }) => _res;
}

class Query$getMyEdgeTicketGalleries {
  Query$getMyEdgeTicketGalleries({
    this.myEdgeTicketGalleries,
    this.$__typename = 'Query',
  });

  factory Query$getMyEdgeTicketGalleries.fromJson(Map<String, dynamic> json) {
    final l$myEdgeTicketGalleries = json['myEdgeTicketGalleries'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries(
      myEdgeTicketGalleries: l$myEdgeTicketGalleries == null
          ? null
          : Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries.fromJson(
              (l$myEdgeTicketGalleries as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries?
  myEdgeTicketGalleries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myEdgeTicketGalleries = myEdgeTicketGalleries;
    _resultData['myEdgeTicketGalleries'] = l$myEdgeTicketGalleries?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myEdgeTicketGalleries = myEdgeTicketGalleries;
    final l$$__typename = $__typename;
    return Object.hashAll([l$myEdgeTicketGalleries, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getMyEdgeTicketGalleries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$myEdgeTicketGalleries = myEdgeTicketGalleries;
    final lOther$myEdgeTicketGalleries = other.myEdgeTicketGalleries;
    if (l$myEdgeTicketGalleries != lOther$myEdgeTicketGalleries) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries
    on Query$getMyEdgeTicketGalleries {
  CopyWith$Query$getMyEdgeTicketGalleries<Query$getMyEdgeTicketGalleries>
  get copyWith => CopyWith$Query$getMyEdgeTicketGalleries(this, (i) => i);
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries<TRes> {
  factory CopyWith$Query$getMyEdgeTicketGalleries(
    Query$getMyEdgeTicketGalleries instance,
    TRes Function(Query$getMyEdgeTicketGalleries) then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries;

  factory CopyWith$Query$getMyEdgeTicketGalleries.stub(TRes res) =
      _CopyWithStubImpl$Query$getMyEdgeTicketGalleries;

  TRes call({
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries? myEdgeTicketGalleries,
    String? $__typename,
  });
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes>
  get myEdgeTicketGalleries;
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries<TRes>
    implements CopyWith$Query$getMyEdgeTicketGalleries<TRes> {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries(this._instance, this._then);

  final Query$getMyEdgeTicketGalleries _instance;

  final TRes Function(Query$getMyEdgeTicketGalleries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? myEdgeTicketGalleries = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries(
      myEdgeTicketGalleries: myEdgeTicketGalleries == _undefined
          ? _instance.myEdgeTicketGalleries
          : (myEdgeTicketGalleries
                as Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes>
  get myEdgeTicketGalleries {
    final local$myEdgeTicketGalleries = _instance.myEdgeTicketGalleries;
    return local$myEdgeTicketGalleries == null
        ? CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries.stub(
            _then(_instance),
          )
        : CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
            local$myEdgeTicketGalleries,
            (e) => call(myEdgeTicketGalleries: e),
          );
  }
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries<TRes>
    implements CopyWith$Query$getMyEdgeTicketGalleries<TRes> {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries(this._res);

  TRes _res;

  call({
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries? myEdgeTicketGalleries,
    String? $__typename,
  }) => _res;

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes>
  get myEdgeTicketGalleries =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries.stub(_res);
}

const documentNodeQuerygetMyEdgeTicketGalleries = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getMyEdgeTicketGalleries'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'last')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'before')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'after')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'EdgeTicketGallerySortInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchString')),
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
            name: NameNode(value: 'myEdgeTicketGalleries'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
              ArgumentNode(
                name: NameNode(value: 'searchString'),
                value: VariableNode(name: NameNode(value: 'searchString')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'hasPreviousPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'endCursor'),
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
                  name: NameNode(value: 'nodes'),
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
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'tickets'),
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
                              name: NameNode(value: 'ticketNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mediaAssets'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'inspectionMedia'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'url'),
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
                              name: NameNode(value: 'lines'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'mediaAssets'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'url'),
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
                                    name: NameNode(value: 'deductions'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'mediaAssets'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'url'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                  FieldNode(
                                    name: NameNode(value: 'inspectionDetails'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'inspectionMedia',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'url'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'MyEdgeTicketGalleriesConnection',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo pageInfo;

  final List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries
  >
  get copyWith => CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries instance,
    TRes Function(Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries) then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries;

  TRes call({
    int? totalCount,
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo? pageInfo,
    List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>?
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes> {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries _instance;

  final TRes Function(Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo),
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>?
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries<TRes> {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo? pageInfo,
    List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo instance,
    TRes Function(Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo)
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
          ? _instance.hasPreviousPage
          : (hasPreviousPage as bool),
      startCursor: startCursor == _undefined
          ? _instance.startCursor
          : (startCursor as String?),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes({
    required this.id,
    required this.title,
    required this.tickets,
    this.$__typename = 'EdgeTicketGallery',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$tickets = json['tickets'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
      id: (l$id as String),
      title: (l$title as String),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets>
  tickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$tickets = tickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$tickets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets.length != lOther$tickets.length) {
      return false;
    }
    for (int i = 0; i < l$tickets.length; i++) {
      final l$tickets$entry = l$tickets[i];
      final lOther$tickets$entry = lOther$tickets[i];
      if (l$tickets$entry != lOther$tickets$entry) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes instance,
    TRes Function(Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes)
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes;

  TRes call({
    String? id,
    String? title,
    List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets>?
    tickets,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets>
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? tickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tickets(
    Iterable<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets>
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
        >
      >,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? title,
    List<Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets>?
    tickets,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets({
    required this.id,
    required this.ticketNumber,
    required this.mediaAssets,
    required this.inspectionMedia,
    required this.lines,
    this.$__typename = 'Ticket',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$ticketNumber = json['ticketNumber'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$lines = json['lines'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
      id: (l$id as String),
      ticketNumber: (l$ticketNumber as int),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int ticketNumber;

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
  >
  mediaAssets;

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
  >
  inspectionMedia;

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
  >
  lines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketNumber = ticketNumber;
    final l$mediaAssets = mediaAssets;
    final l$inspectionMedia = inspectionMedia;
    final l$lines = lines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$ticketNumber,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      Object.hashAll(l$lines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets ||
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
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
        return false;
      }
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets;

  TRes call({
    String? id,
    int? ticketNumber,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    >?
    mediaAssets,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    >?
    inspectionMedia,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    >?
    lines,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
        >
      >,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
        >
      >,
    )
    _fn,
  );
  TRes lines(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? ticketNumber = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionMedia = _undefined,
    Object? lines = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
                >),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
                >),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes inspectionMedia(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes lines(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    int? ticketNumber,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    >?
    mediaAssets,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    >?
    inspectionMedia,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    >?
    lines,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;

  inspectionMedia(_fn) => _res;

  lines(_fn) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines({
    required this.mediaAssets,
    required this.deductions,
    this.inspectionDetails,
    this.$__typename = 'TicketLine',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaAssets = json['mediaAssets'];
    final l$deductions = json['deductions'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
  >
  mediaAssets;

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
  >
  deductions;

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails?
  inspectionDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaAssets = mediaAssets;
    final l$deductions = deductions;
    final l$inspectionDetails = inspectionDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$deductions.map((v) => v)),
      l$inspectionDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$deductions = deductions;
    final lOther$deductions = other.deductions;
    if (l$deductions.length != lOther$deductions.length) {
      return false;
    }
    for (int i = 0; i < l$deductions.length; i++) {
      final l$deductions$entry = l$deductions[i];
      final lOther$deductions$entry = lOther$deductions[i];
      if (l$deductions$entry != lOther$deductions$entry) {
        return false;
      }
    }
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    on Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines;

  TRes call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    >?
    mediaAssets,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    >?
    deductions,
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails?
    inspectionDetails,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
        >
      >,
    )
    _fn,
  );
  TRes deductions(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails;
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaAssets = _undefined,
    Object? deductions = _undefined,
    Object? inspectionDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
                >),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
                >),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails
                as Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes deductions(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    >?
    mediaAssets,
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    >?
    deductions,
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails?
    inspectionDetails,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;

  deductions(_fn) => _res;

  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
    TRes
  >
  get inspectionDetails =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails.stub(
        _res,
      );
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions({
    required this.mediaAssets,
    this.$__typename = 'LineDeduction',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaAssets = json['mediaAssets'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
  >
  mediaAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaAssets = mediaAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions;

  TRes call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    >?
    mediaAssets,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaAssets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    >?
    mediaAssets,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$deductions$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails({
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
  >
  inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails;

  TRes call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  });
  TRes inspectionMedia(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inspectionMedia(
    Iterable<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    >
    Function(
      Iterable<
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
          Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    >?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  inspectionMedia(_fn) => _res;
}

class Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia {
  Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia({
    required this.url,
    this.$__typename = 'InspectionMedia',
  });

  factory Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    on
        Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia {
  CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
    instance,
    TRes Function(
      Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia,
    )
    then,
  ) = _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia;

  factory CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia
  _instance;

  final TRes Function(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes$tickets$lines$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}
