import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAssetTemplates {
  factory Variables$Query$GetAssetTemplates(
          {Input$AssetTemplateFilterInput? where}) =>
      Variables$Query$GetAssetTemplates._({
        if (where != null) r'where': where,
      });

  Variables$Query$GetAssetTemplates._(this._$data);

  factory Variables$Query$GetAssetTemplates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$AssetTemplateFilterInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$GetAssetTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AssetTemplateFilterInput? get where =>
      (_$data['where'] as Input$AssetTemplateFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAssetTemplates<Variables$Query$GetAssetTemplates>
      get copyWith => CopyWith$Variables$Query$GetAssetTemplates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAssetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetAssetTemplates<TRes> {
  factory CopyWith$Variables$Query$GetAssetTemplates(
    Variables$Query$GetAssetTemplates instance,
    TRes Function(Variables$Query$GetAssetTemplates) then,
  ) = _CopyWithImpl$Variables$Query$GetAssetTemplates;

  factory CopyWith$Variables$Query$GetAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAssetTemplates;

  TRes call({Input$AssetTemplateFilterInput? where});
}

class _CopyWithImpl$Variables$Query$GetAssetTemplates<TRes>
    implements CopyWith$Variables$Query$GetAssetTemplates<TRes> {
  _CopyWithImpl$Variables$Query$GetAssetTemplates(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAssetTemplates _instance;

  final TRes Function(Variables$Query$GetAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$GetAssetTemplates._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$AssetTemplateFilterInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAssetTemplates<TRes>
    implements CopyWith$Variables$Query$GetAssetTemplates<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAssetTemplates(this._res);

  TRes _res;

  call({Input$AssetTemplateFilterInput? where}) => _res;
}

class Query$GetAssetTemplates {
  Query$GetAssetTemplates({
    required this.allAssetTemplates,
    this.$__typename = 'Query',
  });

  factory Query$GetAssetTemplates.fromJson(Map<String, dynamic> json) {
    final l$allAssetTemplates = json['allAssetTemplates'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplates(
      allAssetTemplates: (l$allAssetTemplates as List<dynamic>)
          .map((e) => Query$GetAssetTemplates$allAssetTemplates.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAssetTemplates$allAssetTemplates> allAssetTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allAssetTemplates = allAssetTemplates;
    _resultData['allAssetTemplates'] =
        l$allAssetTemplates.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allAssetTemplates = allAssetTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allAssetTemplates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allAssetTemplates = allAssetTemplates;
    final lOther$allAssetTemplates = other.allAssetTemplates;
    if (l$allAssetTemplates.length != lOther$allAssetTemplates.length) {
      return false;
    }
    for (int i = 0; i < l$allAssetTemplates.length; i++) {
      final l$allAssetTemplates$entry = l$allAssetTemplates[i];
      final lOther$allAssetTemplates$entry = lOther$allAssetTemplates[i];
      if (l$allAssetTemplates$entry != lOther$allAssetTemplates$entry) {
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

extension UtilityExtension$Query$GetAssetTemplates on Query$GetAssetTemplates {
  CopyWith$Query$GetAssetTemplates<Query$GetAssetTemplates> get copyWith =>
      CopyWith$Query$GetAssetTemplates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAssetTemplates<TRes> {
  factory CopyWith$Query$GetAssetTemplates(
    Query$GetAssetTemplates instance,
    TRes Function(Query$GetAssetTemplates) then,
  ) = _CopyWithImpl$Query$GetAssetTemplates;

  factory CopyWith$Query$GetAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplates;

  TRes call({
    List<Query$GetAssetTemplates$allAssetTemplates>? allAssetTemplates,
    String? $__typename,
  });
  TRes allAssetTemplates(
      Iterable<Query$GetAssetTemplates$allAssetTemplates> Function(
              Iterable<
                  CopyWith$Query$GetAssetTemplates$allAssetTemplates<
                      Query$GetAssetTemplates$allAssetTemplates>>)
          _fn);
}

class _CopyWithImpl$Query$GetAssetTemplates<TRes>
    implements CopyWith$Query$GetAssetTemplates<TRes> {
  _CopyWithImpl$Query$GetAssetTemplates(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplates _instance;

  final TRes Function(Query$GetAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allAssetTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplates(
        allAssetTemplates:
            allAssetTemplates == _undefined || allAssetTemplates == null
                ? _instance.allAssetTemplates
                : (allAssetTemplates
                    as List<Query$GetAssetTemplates$allAssetTemplates>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes allAssetTemplates(
          Iterable<Query$GetAssetTemplates$allAssetTemplates> Function(
                  Iterable<
                      CopyWith$Query$GetAssetTemplates$allAssetTemplates<
                          Query$GetAssetTemplates$allAssetTemplates>>)
              _fn) =>
      call(
          allAssetTemplates: _fn(_instance.allAssetTemplates
              .map((e) => CopyWith$Query$GetAssetTemplates$allAssetTemplates(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAssetTemplates<TRes>
    implements CopyWith$Query$GetAssetTemplates<TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplates(this._res);

  TRes _res;

  call({
    List<Query$GetAssetTemplates$allAssetTemplates>? allAssetTemplates,
    String? $__typename,
  }) =>
      _res;

  allAssetTemplates(_fn) => _res;
}

const documentNodeQueryGetAssetTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAssetTemplates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'AssetTemplateFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allAssetTemplates'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'codeFormat'),
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

class Query$GetAssetTemplates$allAssetTemplates {
  Query$GetAssetTemplates$allAssetTemplates({
    this.id,
    this.codeFormat,
    this.name,
    this.$__typename = 'AssetTemplate',
  });

  factory Query$GetAssetTemplates$allAssetTemplates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$codeFormat = json['codeFormat'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplates$allAssetTemplates(
      id: (l$id as String?),
      codeFormat: (l$codeFormat as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? codeFormat;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$codeFormat = codeFormat;
    _resultData['codeFormat'] = l$codeFormat;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$codeFormat = codeFormat;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$codeFormat,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetTemplates$allAssetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAssetTemplates$allAssetTemplates
    on Query$GetAssetTemplates$allAssetTemplates {
  CopyWith$Query$GetAssetTemplates$allAssetTemplates<
          Query$GetAssetTemplates$allAssetTemplates>
      get copyWith => CopyWith$Query$GetAssetTemplates$allAssetTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetTemplates$allAssetTemplates<TRes> {
  factory CopyWith$Query$GetAssetTemplates$allAssetTemplates(
    Query$GetAssetTemplates$allAssetTemplates instance,
    TRes Function(Query$GetAssetTemplates$allAssetTemplates) then,
  ) = _CopyWithImpl$Query$GetAssetTemplates$allAssetTemplates;

  factory CopyWith$Query$GetAssetTemplates$allAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplates$allAssetTemplates;

  TRes call({
    String? id,
    String? codeFormat,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssetTemplates$allAssetTemplates<TRes>
    implements CopyWith$Query$GetAssetTemplates$allAssetTemplates<TRes> {
  _CopyWithImpl$Query$GetAssetTemplates$allAssetTemplates(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplates$allAssetTemplates _instance;

  final TRes Function(Query$GetAssetTemplates$allAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? codeFormat = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplates$allAssetTemplates(
        id: id == _undefined ? _instance.id : (id as String?),
        codeFormat: codeFormat == _undefined
            ? _instance.codeFormat
            : (codeFormat as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAssetTemplates$allAssetTemplates<TRes>
    implements CopyWith$Query$GetAssetTemplates$allAssetTemplates<TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplates$allAssetTemplates(this._res);

  TRes _res;

  call({
    String? id,
    String? codeFormat,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPaginatedAssetTemplates {
  factory Variables$Query$GetPaginatedAssetTemplates({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
    List<Input$AssetTemplateSortInput>? order,
  }) =>
      Variables$Query$GetPaginatedAssetTemplates._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (where != null) r'where': where,
        if (order != null) r'order': order,
      });

  Variables$Query$GetPaginatedAssetTemplates._(this._$data);

  factory Variables$Query$GetPaginatedAssetTemplates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$AssetTemplateFilterInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$AssetTemplateSortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetPaginatedAssetTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Input$AssetTemplateFilterInput? get where =>
      (_$data['where'] as Input$AssetTemplateFilterInput?);

  List<Input$AssetTemplateSortInput>? get order =>
      (_$data['order'] as List<Input$AssetTemplateSortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetPaginatedAssetTemplates<
          Variables$Query$GetPaginatedAssetTemplates>
      get copyWith => CopyWith$Variables$Query$GetPaginatedAssetTemplates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPaginatedAssetTemplates) ||
        runtimeType != other.runtimeType) {
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
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
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
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$where = where;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetPaginatedAssetTemplates<TRes> {
  factory CopyWith$Variables$Query$GetPaginatedAssetTemplates(
    Variables$Query$GetPaginatedAssetTemplates instance,
    TRes Function(Variables$Query$GetPaginatedAssetTemplates) then,
  ) = _CopyWithImpl$Variables$Query$GetPaginatedAssetTemplates;

  factory CopyWith$Variables$Query$GetPaginatedAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPaginatedAssetTemplates;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
    List<Input$AssetTemplateSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetPaginatedAssetTemplates<TRes>
    implements CopyWith$Variables$Query$GetPaginatedAssetTemplates<TRes> {
  _CopyWithImpl$Variables$Query$GetPaginatedAssetTemplates(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPaginatedAssetTemplates _instance;

  final TRes Function(Variables$Query$GetPaginatedAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? where = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$GetPaginatedAssetTemplates._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (where != _undefined)
          'where': (where as Input$AssetTemplateFilterInput?),
        if (order != _undefined)
          'order': (order as List<Input$AssetTemplateSortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPaginatedAssetTemplates<TRes>
    implements CopyWith$Variables$Query$GetPaginatedAssetTemplates<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPaginatedAssetTemplates(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetTemplateFilterInput? where,
    List<Input$AssetTemplateSortInput>? order,
  }) =>
      _res;
}

class Query$GetPaginatedAssetTemplates {
  Query$GetPaginatedAssetTemplates({
    this.assetTemplates,
    this.$__typename = 'Query',
  });

  factory Query$GetPaginatedAssetTemplates.fromJson(Map<String, dynamic> json) {
    final l$assetTemplates = json['assetTemplates'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates(
      assetTemplates: l$assetTemplates == null
          ? null
          : Query$GetPaginatedAssetTemplates$assetTemplates.fromJson(
              (l$assetTemplates as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPaginatedAssetTemplates$assetTemplates? assetTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetTemplates = assetTemplates;
    _resultData['assetTemplates'] = l$assetTemplates?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetTemplates = assetTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetTemplates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPaginatedAssetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplates = assetTemplates;
    final lOther$assetTemplates = other.assetTemplates;
    if (l$assetTemplates != lOther$assetTemplates) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates
    on Query$GetPaginatedAssetTemplates {
  CopyWith$Query$GetPaginatedAssetTemplates<Query$GetPaginatedAssetTemplates>
      get copyWith => CopyWith$Query$GetPaginatedAssetTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates<TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates(
    Query$GetPaginatedAssetTemplates instance,
    TRes Function(Query$GetPaginatedAssetTemplates) then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates;

  factory CopyWith$Query$GetPaginatedAssetTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates;

  TRes call({
    Query$GetPaginatedAssetTemplates$assetTemplates? assetTemplates,
    String? $__typename,
  });
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes>
      get assetTemplates;
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates<TRes>
    implements CopyWith$Query$GetPaginatedAssetTemplates<TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates _instance;

  final TRes Function(Query$GetPaginatedAssetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPaginatedAssetTemplates(
        assetTemplates: assetTemplates == _undefined
            ? _instance.assetTemplates
            : (assetTemplates
                as Query$GetPaginatedAssetTemplates$assetTemplates?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes>
      get assetTemplates {
    final local$assetTemplates = _instance.assetTemplates;
    return local$assetTemplates == null
        ? CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates.stub(
            _then(_instance))
        : CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates(
            local$assetTemplates, (e) => call(assetTemplates: e));
  }
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates<TRes>
    implements CopyWith$Query$GetPaginatedAssetTemplates<TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates(this._res);

  TRes _res;

  call({
    Query$GetPaginatedAssetTemplates$assetTemplates? assetTemplates,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes>
      get assetTemplates =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates.stub(_res);
}

const documentNodeQueryGetPaginatedAssetTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPaginatedAssetTemplates'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'AssetTemplateFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AssetTemplateSortInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assetTemplates'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'codeFormat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'syncTargets'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
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
                name: NameNode(value: 'assetTemplateCounters'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'groupId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'key'),
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
                    name: NameNode(value: 'dataType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'incrementType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
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
                name: NameNode(value: 'templateProperties'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'dataType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isMandatory'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sequence'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'viewerGroupIds'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'updaterGroupIds'),
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
                name: NameNode(value: 'category'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hierarchy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'notifyChanges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'parentAssetRequired'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'permittedHours'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'reviewAttributes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'shiftHours'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'syncAssetToCMMS'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'syncProjectToCMMS'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'syncResouceToCMMS'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'telematics'),
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

class Query$GetPaginatedAssetTemplates$assetTemplates {
  Query$GetPaginatedAssetTemplates$assetTemplates({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'AssetTemplatesConnection',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates(
      pageInfo:
          Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$GetPaginatedAssetTemplates$assetTemplates$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo pageInfo;

  final int totalCount;

  final List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPaginatedAssetTemplates$assetTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates
    on Query$GetPaginatedAssetTemplates$assetTemplates {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<
          Query$GetPaginatedAssetTemplates$assetTemplates>
      get copyWith => CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates(
    Query$GetPaginatedAssetTemplates$assetTemplates instance,
    TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates) then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates;

  TRes call({
    Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<
                      Query$GetPaginatedAssetTemplates$assetTemplates$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates<TRes>
    implements CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates _instance;

  final TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPaginatedAssetTemplates$assetTemplates(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetPaginatedAssetTemplates$assetTemplates$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<
                          Query$GetPaginatedAssetTemplates$assetTemplates$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates<TRes>
    implements CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates<TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates(this._res);

  TRes _res;

  call({
    Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo? pageInfo,
    int? totalCount,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo {
  Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
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
    if (!(other is Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo) ||
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo
    on Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
          Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo>
      get copyWith =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
    TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
    Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo instance,
    TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo _instance;

  final TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
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
      ));
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPaginatedAssetTemplates$assetTemplates$nodes {
  Query$GetPaginatedAssetTemplates$assetTemplates$nodes({
    this.id,
    this.name,
    this.codeFormat,
    this.syncTargets,
    this.assetTemplateCounters,
    this.templateProperties,
    this.category,
    required this.hierarchy,
    required this.location,
    required this.notifyChanges,
    required this.parentAssetRequired,
    required this.permittedHours,
    this.reviewAttributes,
    required this.shiftHours,
    required this.syncAssetToCMMS,
    required this.syncProjectToCMMS,
    required this.syncResouceToCMMS,
    required this.telematics,
    this.$__typename = 'AssetTemplate',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$codeFormat = json['codeFormat'];
    final l$syncTargets = json['syncTargets'];
    final l$assetTemplateCounters = json['assetTemplateCounters'];
    final l$templateProperties = json['templateProperties'];
    final l$category = json['category'];
    final l$hierarchy = json['hierarchy'];
    final l$location = json['location'];
    final l$notifyChanges = json['notifyChanges'];
    final l$parentAssetRequired = json['parentAssetRequired'];
    final l$permittedHours = json['permittedHours'];
    final l$reviewAttributes = json['reviewAttributes'];
    final l$shiftHours = json['shiftHours'];
    final l$syncAssetToCMMS = json['syncAssetToCMMS'];
    final l$syncProjectToCMMS = json['syncProjectToCMMS'];
    final l$syncResouceToCMMS = json['syncResouceToCMMS'];
    final l$telematics = json['telematics'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
      id: (l$id as String?),
      name: (l$name as String?),
      codeFormat: (l$codeFormat as String?),
      syncTargets: (l$syncTargets as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      assetTemplateCounters: (l$assetTemplateCounters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      templateProperties: (l$templateProperties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      category: (l$category as String?),
      hierarchy: (l$hierarchy as bool),
      location: (l$location as bool),
      notifyChanges: (l$notifyChanges as bool),
      parentAssetRequired: (l$parentAssetRequired as bool),
      permittedHours: (l$permittedHours as bool),
      reviewAttributes: (l$reviewAttributes as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      shiftHours: (l$shiftHours as bool),
      syncAssetToCMMS: (l$syncAssetToCMMS as bool),
      syncProjectToCMMS: (l$syncProjectToCMMS as bool),
      syncResouceToCMMS: (l$syncResouceToCMMS as bool),
      telematics: (l$telematics as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? codeFormat;

  final List<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>?
      syncTargets;

  final List<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>?
      assetTemplateCounters;

  final List<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>?
      templateProperties;

  final String? category;

  final bool hierarchy;

  final bool location;

  final bool notifyChanges;

  final bool parentAssetRequired;

  final bool permittedHours;

  final List<String?>? reviewAttributes;

  final bool shiftHours;

  final bool syncAssetToCMMS;

  final bool syncProjectToCMMS;

  final bool syncResouceToCMMS;

  final bool telematics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$codeFormat = codeFormat;
    _resultData['codeFormat'] = l$codeFormat;
    final l$syncTargets = syncTargets;
    _resultData['syncTargets'] =
        l$syncTargets?.map((e) => e?.toJson()).toList();
    final l$assetTemplateCounters = assetTemplateCounters;
    _resultData['assetTemplateCounters'] =
        l$assetTemplateCounters?.map((e) => e?.toJson()).toList();
    final l$templateProperties = templateProperties;
    _resultData['templateProperties'] =
        l$templateProperties?.map((e) => e?.toJson()).toList();
    final l$category = category;
    _resultData['category'] = l$category;
    final l$hierarchy = hierarchy;
    _resultData['hierarchy'] = l$hierarchy;
    final l$location = location;
    _resultData['location'] = l$location;
    final l$notifyChanges = notifyChanges;
    _resultData['notifyChanges'] = l$notifyChanges;
    final l$parentAssetRequired = parentAssetRequired;
    _resultData['parentAssetRequired'] = l$parentAssetRequired;
    final l$permittedHours = permittedHours;
    _resultData['permittedHours'] = l$permittedHours;
    final l$reviewAttributes = reviewAttributes;
    _resultData['reviewAttributes'] =
        l$reviewAttributes?.map((e) => e).toList();
    final l$shiftHours = shiftHours;
    _resultData['shiftHours'] = l$shiftHours;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    _resultData['syncAssetToCMMS'] = l$syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    _resultData['syncProjectToCMMS'] = l$syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    _resultData['syncResouceToCMMS'] = l$syncResouceToCMMS;
    final l$telematics = telematics;
    _resultData['telematics'] = l$telematics;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$codeFormat = codeFormat;
    final l$syncTargets = syncTargets;
    final l$assetTemplateCounters = assetTemplateCounters;
    final l$templateProperties = templateProperties;
    final l$category = category;
    final l$hierarchy = hierarchy;
    final l$location = location;
    final l$notifyChanges = notifyChanges;
    final l$parentAssetRequired = parentAssetRequired;
    final l$permittedHours = permittedHours;
    final l$reviewAttributes = reviewAttributes;
    final l$shiftHours = shiftHours;
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final l$telematics = telematics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$codeFormat,
      l$syncTargets == null
          ? null
          : Object.hashAll(l$syncTargets.map((v) => v)),
      l$assetTemplateCounters == null
          ? null
          : Object.hashAll(l$assetTemplateCounters.map((v) => v)),
      l$templateProperties == null
          ? null
          : Object.hashAll(l$templateProperties.map((v) => v)),
      l$category,
      l$hierarchy,
      l$location,
      l$notifyChanges,
      l$parentAssetRequired,
      l$permittedHours,
      l$reviewAttributes == null
          ? null
          : Object.hashAll(l$reviewAttributes.map((v) => v)),
      l$shiftHours,
      l$syncAssetToCMMS,
      l$syncProjectToCMMS,
      l$syncResouceToCMMS,
      l$telematics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPaginatedAssetTemplates$assetTemplates$nodes) ||
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
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$syncTargets = syncTargets;
    final lOther$syncTargets = other.syncTargets;
    if (l$syncTargets != null && lOther$syncTargets != null) {
      if (l$syncTargets.length != lOther$syncTargets.length) {
        return false;
      }
      for (int i = 0; i < l$syncTargets.length; i++) {
        final l$syncTargets$entry = l$syncTargets[i];
        final lOther$syncTargets$entry = lOther$syncTargets[i];
        if (l$syncTargets$entry != lOther$syncTargets$entry) {
          return false;
        }
      }
    } else if (l$syncTargets != lOther$syncTargets) {
      return false;
    }
    final l$assetTemplateCounters = assetTemplateCounters;
    final lOther$assetTemplateCounters = other.assetTemplateCounters;
    if (l$assetTemplateCounters != null &&
        lOther$assetTemplateCounters != null) {
      if (l$assetTemplateCounters.length !=
          lOther$assetTemplateCounters.length) {
        return false;
      }
      for (int i = 0; i < l$assetTemplateCounters.length; i++) {
        final l$assetTemplateCounters$entry = l$assetTemplateCounters[i];
        final lOther$assetTemplateCounters$entry =
            lOther$assetTemplateCounters[i];
        if (l$assetTemplateCounters$entry !=
            lOther$assetTemplateCounters$entry) {
          return false;
        }
      }
    } else if (l$assetTemplateCounters != lOther$assetTemplateCounters) {
      return false;
    }
    final l$templateProperties = templateProperties;
    final lOther$templateProperties = other.templateProperties;
    if (l$templateProperties != null && lOther$templateProperties != null) {
      if (l$templateProperties.length != lOther$templateProperties.length) {
        return false;
      }
      for (int i = 0; i < l$templateProperties.length; i++) {
        final l$templateProperties$entry = l$templateProperties[i];
        final lOther$templateProperties$entry = lOther$templateProperties[i];
        if (l$templateProperties$entry != lOther$templateProperties$entry) {
          return false;
        }
      }
    } else if (l$templateProperties != lOther$templateProperties) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$hierarchy = hierarchy;
    final lOther$hierarchy = other.hierarchy;
    if (l$hierarchy != lOther$hierarchy) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$notifyChanges = notifyChanges;
    final lOther$notifyChanges = other.notifyChanges;
    if (l$notifyChanges != lOther$notifyChanges) {
      return false;
    }
    final l$parentAssetRequired = parentAssetRequired;
    final lOther$parentAssetRequired = other.parentAssetRequired;
    if (l$parentAssetRequired != lOther$parentAssetRequired) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$reviewAttributes = reviewAttributes;
    final lOther$reviewAttributes = other.reviewAttributes;
    if (l$reviewAttributes != null && lOther$reviewAttributes != null) {
      if (l$reviewAttributes.length != lOther$reviewAttributes.length) {
        return false;
      }
      for (int i = 0; i < l$reviewAttributes.length; i++) {
        final l$reviewAttributes$entry = l$reviewAttributes[i];
        final lOther$reviewAttributes$entry = lOther$reviewAttributes[i];
        if (l$reviewAttributes$entry != lOther$reviewAttributes$entry) {
          return false;
        }
      }
    } else if (l$reviewAttributes != lOther$reviewAttributes) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$syncAssetToCMMS = syncAssetToCMMS;
    final lOther$syncAssetToCMMS = other.syncAssetToCMMS;
    if (l$syncAssetToCMMS != lOther$syncAssetToCMMS) {
      return false;
    }
    final l$syncProjectToCMMS = syncProjectToCMMS;
    final lOther$syncProjectToCMMS = other.syncProjectToCMMS;
    if (l$syncProjectToCMMS != lOther$syncProjectToCMMS) {
      return false;
    }
    final l$syncResouceToCMMS = syncResouceToCMMS;
    final lOther$syncResouceToCMMS = other.syncResouceToCMMS;
    if (l$syncResouceToCMMS != lOther$syncResouceToCMMS) {
      return false;
    }
    final l$telematics = telematics;
    final lOther$telematics = other.telematics;
    if (l$telematics != lOther$telematics) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates$nodes
    on Query$GetPaginatedAssetTemplates$assetTemplates$nodes {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes>
      get copyWith =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<
    TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes instance,
    TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates$nodes) then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes;

  TRes call({
    String? id,
    String? name,
    String? codeFormat,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>?
        syncTargets,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>?
        assetTemplateCounters,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>?
        templateProperties,
    String? category,
    bool? hierarchy,
    bool? location,
    bool? notifyChanges,
    bool? parentAssetRequired,
    bool? permittedHours,
    List<String?>? reviewAttributes,
    bool? shiftHours,
    bool? syncAssetToCMMS,
    bool? syncProjectToCMMS,
    bool? syncResouceToCMMS,
    bool? telematics,
    String? $__typename,
  });
  TRes syncTargets(
      Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>? Function(
              Iterable<
                  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
                      Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets>?>?)
          _fn);
  TRes assetTemplateCounters(
      Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>? Function(
              Iterable<
                  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
                      Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters>?>?)
          _fn);
  TRes templateProperties(
      Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>? Function(
              Iterable<
                  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
                      Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates$nodes _instance;

  final TRes Function(Query$GetPaginatedAssetTemplates$assetTemplates$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? codeFormat = _undefined,
    Object? syncTargets = _undefined,
    Object? assetTemplateCounters = _undefined,
    Object? templateProperties = _undefined,
    Object? category = _undefined,
    Object? hierarchy = _undefined,
    Object? location = _undefined,
    Object? notifyChanges = _undefined,
    Object? parentAssetRequired = _undefined,
    Object? permittedHours = _undefined,
    Object? reviewAttributes = _undefined,
    Object? shiftHours = _undefined,
    Object? syncAssetToCMMS = _undefined,
    Object? syncProjectToCMMS = _undefined,
    Object? syncResouceToCMMS = _undefined,
    Object? telematics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        codeFormat: codeFormat == _undefined
            ? _instance.codeFormat
            : (codeFormat as String?),
        syncTargets: syncTargets == _undefined
            ? _instance.syncTargets
            : (syncTargets as List<
                Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>?),
        assetTemplateCounters: assetTemplateCounters == _undefined
            ? _instance.assetTemplateCounters
            : (assetTemplateCounters as List<
                Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>?),
        templateProperties: templateProperties == _undefined
            ? _instance.templateProperties
            : (templateProperties as List<
                Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        hierarchy: hierarchy == _undefined || hierarchy == null
            ? _instance.hierarchy
            : (hierarchy as bool),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as bool),
        notifyChanges: notifyChanges == _undefined || notifyChanges == null
            ? _instance.notifyChanges
            : (notifyChanges as bool),
        parentAssetRequired:
            parentAssetRequired == _undefined || parentAssetRequired == null
                ? _instance.parentAssetRequired
                : (parentAssetRequired as bool),
        permittedHours: permittedHours == _undefined || permittedHours == null
            ? _instance.permittedHours
            : (permittedHours as bool),
        reviewAttributes: reviewAttributes == _undefined
            ? _instance.reviewAttributes
            : (reviewAttributes as List<String?>?),
        shiftHours: shiftHours == _undefined || shiftHours == null
            ? _instance.shiftHours
            : (shiftHours as bool),
        syncAssetToCMMS:
            syncAssetToCMMS == _undefined || syncAssetToCMMS == null
                ? _instance.syncAssetToCMMS
                : (syncAssetToCMMS as bool),
        syncProjectToCMMS:
            syncProjectToCMMS == _undefined || syncProjectToCMMS == null
                ? _instance.syncProjectToCMMS
                : (syncProjectToCMMS as bool),
        syncResouceToCMMS:
            syncResouceToCMMS == _undefined || syncResouceToCMMS == null
                ? _instance.syncResouceToCMMS
                : (syncResouceToCMMS as bool),
        telematics: telematics == _undefined || telematics == null
            ? _instance.telematics
            : (telematics as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes syncTargets(
          Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>? Function(
                  Iterable<
                      CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
                          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets>?>?)
              _fn) =>
      call(
          syncTargets: _fn(_instance.syncTargets?.map((e) => e == null
              ? null
              : CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
                  e,
                  (i) => i,
                )))?.toList());

  TRes assetTemplateCounters(
          Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>? Function(
                  Iterable<
                      CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
                          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters>?>?)
              _fn) =>
      call(
          assetTemplateCounters:
              _fn(_instance.assetTemplateCounters?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
                      e,
                      (i) => i,
                    )))?.toList());

  TRes templateProperties(
          Iterable<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>? Function(
                  Iterable<
                      CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
                          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties>?>?)
              _fn) =>
      call(
          templateProperties: _fn(_instance.templateProperties?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes<TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? codeFormat,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets?>?
        syncTargets,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters?>?
        assetTemplateCounters,
    List<Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties?>?
        templateProperties,
    String? category,
    bool? hierarchy,
    bool? location,
    bool? notifyChanges,
    bool? parentAssetRequired,
    bool? permittedHours,
    List<String?>? reviewAttributes,
    bool? shiftHours,
    bool? syncAssetToCMMS,
    bool? syncProjectToCMMS,
    bool? syncResouceToCMMS,
    bool? telematics,
    String? $__typename,
  }) =>
      _res;

  syncTargets(_fn) => _res;

  assetTemplateCounters(_fn) => _res;

  templateProperties(_fn) => _res;
}

class Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets {
  Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets({
    this.name,
    this.$__typename = 'AssetTemplateSyncTarget',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets
    on Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets>
      get copyWith =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
    TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets instance,
    TRes Function(
            Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets)
        then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
            TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets
      _instance;

  final TRes Function(
      Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets<
            TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$syncTargets(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters {
  Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters({
    this.id,
    this.groupId,
    this.key,
    this.name,
    this.dataType,
    this.incrementType,
    required this.active,
    this.$__typename = 'AssetTemplateCounterOfAssetTemplateCounterTrigger',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupId = json['groupId'];
    final l$key = json['key'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$incrementType = json['incrementType'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
      id: (l$id as String?),
      groupId: (l$groupId as String?),
      key: (l$key as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      incrementType: (l$incrementType as String?),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? groupId;

  final String? key;

  final String? name;

  final String? dataType;

  final String? incrementType;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$incrementType = incrementType;
    _resultData['incrementType'] = l$incrementType;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupId = groupId;
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$incrementType = incrementType;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$groupId,
      l$key,
      l$name,
      l$dataType,
      l$incrementType,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$incrementType = incrementType;
    final lOther$incrementType = other.incrementType;
    if (l$incrementType != lOther$incrementType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters
    on Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters>
      get copyWith =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
    TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters
        instance,
    TRes Function(
            Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters)
        then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters;

  TRes call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
            TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters
      _instance;

  final TRes Function(
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupId = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? incrementType = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
        id: id == _undefined ? _instance.id : (id as String?),
        groupId:
            groupId == _undefined ? _instance.groupId : (groupId as String?),
        key: key == _undefined ? _instance.key : (key as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        incrementType: incrementType == _undefined
            ? _instance.incrementType
            : (incrementType as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters<
            TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$assetTemplateCounters(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties {
  Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties({
    this.id,
    this.name,
    this.dataType,
    required this.isMandatory,
    required this.active,
    required this.sequence,
    this.viewerGroupIds,
    this.updaterGroupIds,
    this.$__typename = 'AssetTemplatePropertyQuery',
  });

  factory Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$isMandatory = json['isMandatory'];
    final l$active = json['active'];
    final l$sequence = json['sequence'];
    final l$viewerGroupIds = json['viewerGroupIds'];
    final l$updaterGroupIds = json['updaterGroupIds'];
    final l$$__typename = json['__typename'];
    return Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
      id: (l$id as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      isMandatory: (l$isMandatory as bool),
      active: (l$active as bool),
      sequence: (l$sequence as int),
      viewerGroupIds: (l$viewerGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      updaterGroupIds: (l$updaterGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? dataType;

  final bool isMandatory;

  final bool active;

  final int sequence;

  final List<String>? viewerGroupIds;

  final List<String>? updaterGroupIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    _resultData['isMandatory'] = l$isMandatory;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$viewerGroupIds = viewerGroupIds;
    _resultData['viewerGroupIds'] = l$viewerGroupIds?.map((e) => e).toList();
    final l$updaterGroupIds = updaterGroupIds;
    _resultData['updaterGroupIds'] = l$updaterGroupIds?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$sequence,
      l$viewerGroupIds == null
          ? null
          : Object.hashAll(l$viewerGroupIds.map((v) => v)),
      l$updaterGroupIds == null
          ? null
          : Object.hashAll(l$updaterGroupIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties) ||
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
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (l$viewerGroupIds != null && lOther$viewerGroupIds != null) {
      if (l$viewerGroupIds.length != lOther$viewerGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$viewerGroupIds.length; i++) {
        final l$viewerGroupIds$entry = l$viewerGroupIds[i];
        final lOther$viewerGroupIds$entry = lOther$viewerGroupIds[i];
        if (l$viewerGroupIds$entry != lOther$viewerGroupIds$entry) {
          return false;
        }
      }
    } else if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (l$updaterGroupIds != null && lOther$updaterGroupIds != null) {
      if (l$updaterGroupIds.length != lOther$updaterGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$updaterGroupIds.length; i++) {
        final l$updaterGroupIds$entry = l$updaterGroupIds[i];
        final lOther$updaterGroupIds$entry = lOther$updaterGroupIds[i];
        if (l$updaterGroupIds$entry != lOther$updaterGroupIds$entry) {
          return false;
        }
      }
    } else if (l$updaterGroupIds != lOther$updaterGroupIds) {
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

extension UtilityExtension$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties
    on Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties {
  CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties>
      get copyWith =>
          CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
    TRes> {
  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
    Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties
        instance,
    TRes Function(
            Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties)
        then,
  ) = _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties;

  factory CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties;

  TRes call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
            TRes> {
  _CopyWithImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
    this._instance,
    this._then,
  );

  final Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties
      _instance;

  final TRes Function(
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        isMandatory: isMandatory == _undefined || isMandatory == null
            ? _instance.isMandatory
            : (isMandatory as bool),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        viewerGroupIds: viewerGroupIds == _undefined
            ? _instance.viewerGroupIds
            : (viewerGroupIds as List<String>?),
        updaterGroupIds: updaterGroupIds == _undefined
            ? _instance.updaterGroupIds
            : (updaterGroupIds as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
        TRes>
    implements
        CopyWith$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties<
            TRes> {
  _CopyWithStubImpl$Query$GetPaginatedAssetTemplates$assetTemplates$nodes$templateProperties(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetAssetTemplateById {
  factory Variables$Query$GetAssetTemplateById({required String id}) =>
      Variables$Query$GetAssetTemplateById._({
        r'id': id,
      });

  Variables$Query$GetAssetTemplateById._(this._$data);

  factory Variables$Query$GetAssetTemplateById.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetAssetTemplateById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetAssetTemplateById<
          Variables$Query$GetAssetTemplateById>
      get copyWith => CopyWith$Variables$Query$GetAssetTemplateById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAssetTemplateById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetAssetTemplateById<TRes> {
  factory CopyWith$Variables$Query$GetAssetTemplateById(
    Variables$Query$GetAssetTemplateById instance,
    TRes Function(Variables$Query$GetAssetTemplateById) then,
  ) = _CopyWithImpl$Variables$Query$GetAssetTemplateById;

  factory CopyWith$Variables$Query$GetAssetTemplateById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAssetTemplateById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetAssetTemplateById<TRes>
    implements CopyWith$Variables$Query$GetAssetTemplateById<TRes> {
  _CopyWithImpl$Variables$Query$GetAssetTemplateById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAssetTemplateById _instance;

  final TRes Function(Variables$Query$GetAssetTemplateById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetAssetTemplateById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAssetTemplateById<TRes>
    implements CopyWith$Variables$Query$GetAssetTemplateById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAssetTemplateById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetAssetTemplateById {
  Query$GetAssetTemplateById({
    required this.assetTemplateById,
    this.$__typename = 'Query',
  });

  factory Query$GetAssetTemplateById.fromJson(Map<String, dynamic> json) {
    final l$assetTemplateById = json['assetTemplateById'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplateById(
      assetTemplateById: Query$GetAssetTemplateById$assetTemplateById.fromJson(
          (l$assetTemplateById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssetTemplateById$assetTemplateById assetTemplateById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetTemplateById = assetTemplateById;
    _resultData['assetTemplateById'] = l$assetTemplateById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetTemplateById = assetTemplateById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetTemplateById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetTemplateById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplateById = assetTemplateById;
    final lOther$assetTemplateById = other.assetTemplateById;
    if (l$assetTemplateById != lOther$assetTemplateById) {
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

extension UtilityExtension$Query$GetAssetTemplateById
    on Query$GetAssetTemplateById {
  CopyWith$Query$GetAssetTemplateById<Query$GetAssetTemplateById>
      get copyWith => CopyWith$Query$GetAssetTemplateById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetTemplateById<TRes> {
  factory CopyWith$Query$GetAssetTemplateById(
    Query$GetAssetTemplateById instance,
    TRes Function(Query$GetAssetTemplateById) then,
  ) = _CopyWithImpl$Query$GetAssetTemplateById;

  factory CopyWith$Query$GetAssetTemplateById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplateById;

  TRes call({
    Query$GetAssetTemplateById$assetTemplateById? assetTemplateById,
    String? $__typename,
  });
  CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes>
      get assetTemplateById;
}

class _CopyWithImpl$Query$GetAssetTemplateById<TRes>
    implements CopyWith$Query$GetAssetTemplateById<TRes> {
  _CopyWithImpl$Query$GetAssetTemplateById(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplateById _instance;

  final TRes Function(Query$GetAssetTemplateById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplateById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplateById(
        assetTemplateById:
            assetTemplateById == _undefined || assetTemplateById == null
                ? _instance.assetTemplateById
                : (assetTemplateById
                    as Query$GetAssetTemplateById$assetTemplateById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes>
      get assetTemplateById {
    final local$assetTemplateById = _instance.assetTemplateById;
    return CopyWith$Query$GetAssetTemplateById$assetTemplateById(
        local$assetTemplateById, (e) => call(assetTemplateById: e));
  }
}

class _CopyWithStubImpl$Query$GetAssetTemplateById<TRes>
    implements CopyWith$Query$GetAssetTemplateById<TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplateById(this._res);

  TRes _res;

  call({
    Query$GetAssetTemplateById$assetTemplateById? assetTemplateById,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes>
      get assetTemplateById =>
          CopyWith$Query$GetAssetTemplateById$assetTemplateById.stub(_res);
}

const documentNodeQueryGetAssetTemplateById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAssetTemplateById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assetTemplateById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'shiftHours'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'permittedHours'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'templateProperties'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'dataType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMandatory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sequence'),
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
            name: NameNode(value: 'syncTargets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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

class Query$GetAssetTemplateById$assetTemplateById {
  Query$GetAssetTemplateById$assetTemplateById({
    this.id,
    this.name,
    this.category,
    required this.shiftHours,
    required this.permittedHours,
    this.templateProperties,
    this.syncTargets,
    this.$__typename = 'AssetTemplate',
  });

  factory Query$GetAssetTemplateById$assetTemplateById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$shiftHours = json['shiftHours'];
    final l$permittedHours = json['permittedHours'];
    final l$templateProperties = json['templateProperties'];
    final l$syncTargets = json['syncTargets'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplateById$assetTemplateById(
      id: (l$id as String?),
      name: (l$name as String?),
      category: (l$category as String?),
      shiftHours: (l$shiftHours as bool),
      permittedHours: (l$permittedHours as bool),
      templateProperties: (l$templateProperties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAssetTemplateById$assetTemplateById$templateProperties
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      syncTargets: (l$syncTargets as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAssetTemplateById$assetTemplateById$syncTargets
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? category;

  final bool shiftHours;

  final bool permittedHours;

  final List<Query$GetAssetTemplateById$assetTemplateById$templateProperties?>?
      templateProperties;

  final List<Query$GetAssetTemplateById$assetTemplateById$syncTargets?>?
      syncTargets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$shiftHours = shiftHours;
    _resultData['shiftHours'] = l$shiftHours;
    final l$permittedHours = permittedHours;
    _resultData['permittedHours'] = l$permittedHours;
    final l$templateProperties = templateProperties;
    _resultData['templateProperties'] =
        l$templateProperties?.map((e) => e?.toJson()).toList();
    final l$syncTargets = syncTargets;
    _resultData['syncTargets'] =
        l$syncTargets?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$category = category;
    final l$shiftHours = shiftHours;
    final l$permittedHours = permittedHours;
    final l$templateProperties = templateProperties;
    final l$syncTargets = syncTargets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$category,
      l$shiftHours,
      l$permittedHours,
      l$templateProperties == null
          ? null
          : Object.hashAll(l$templateProperties.map((v) => v)),
      l$syncTargets == null
          ? null
          : Object.hashAll(l$syncTargets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetTemplateById$assetTemplateById) ||
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$shiftHours = shiftHours;
    final lOther$shiftHours = other.shiftHours;
    if (l$shiftHours != lOther$shiftHours) {
      return false;
    }
    final l$permittedHours = permittedHours;
    final lOther$permittedHours = other.permittedHours;
    if (l$permittedHours != lOther$permittedHours) {
      return false;
    }
    final l$templateProperties = templateProperties;
    final lOther$templateProperties = other.templateProperties;
    if (l$templateProperties != null && lOther$templateProperties != null) {
      if (l$templateProperties.length != lOther$templateProperties.length) {
        return false;
      }
      for (int i = 0; i < l$templateProperties.length; i++) {
        final l$templateProperties$entry = l$templateProperties[i];
        final lOther$templateProperties$entry = lOther$templateProperties[i];
        if (l$templateProperties$entry != lOther$templateProperties$entry) {
          return false;
        }
      }
    } else if (l$templateProperties != lOther$templateProperties) {
      return false;
    }
    final l$syncTargets = syncTargets;
    final lOther$syncTargets = other.syncTargets;
    if (l$syncTargets != null && lOther$syncTargets != null) {
      if (l$syncTargets.length != lOther$syncTargets.length) {
        return false;
      }
      for (int i = 0; i < l$syncTargets.length; i++) {
        final l$syncTargets$entry = l$syncTargets[i];
        final lOther$syncTargets$entry = lOther$syncTargets[i];
        if (l$syncTargets$entry != lOther$syncTargets$entry) {
          return false;
        }
      }
    } else if (l$syncTargets != lOther$syncTargets) {
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

extension UtilityExtension$Query$GetAssetTemplateById$assetTemplateById
    on Query$GetAssetTemplateById$assetTemplateById {
  CopyWith$Query$GetAssetTemplateById$assetTemplateById<
          Query$GetAssetTemplateById$assetTemplateById>
      get copyWith => CopyWith$Query$GetAssetTemplateById$assetTemplateById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes> {
  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById(
    Query$GetAssetTemplateById$assetTemplateById instance,
    TRes Function(Query$GetAssetTemplateById$assetTemplateById) then,
  ) = _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById;

  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById;

  TRes call({
    String? id,
    String? name,
    String? category,
    bool? shiftHours,
    bool? permittedHours,
    List<Query$GetAssetTemplateById$assetTemplateById$templateProperties?>?
        templateProperties,
    List<Query$GetAssetTemplateById$assetTemplateById$syncTargets?>?
        syncTargets,
    String? $__typename,
  });
  TRes templateProperties(
      Iterable<Query$GetAssetTemplateById$assetTemplateById$templateProperties?>? Function(
              Iterable<
                  CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
                      Query$GetAssetTemplateById$assetTemplateById$templateProperties>?>?)
          _fn);
  TRes syncTargets(
      Iterable<Query$GetAssetTemplateById$assetTemplateById$syncTargets?>? Function(
              Iterable<
                  CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
                      Query$GetAssetTemplateById$assetTemplateById$syncTargets>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById<TRes>
    implements CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes> {
  _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplateById$assetTemplateById _instance;

  final TRes Function(Query$GetAssetTemplateById$assetTemplateById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? shiftHours = _undefined,
    Object? permittedHours = _undefined,
    Object? templateProperties = _undefined,
    Object? syncTargets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplateById$assetTemplateById(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        shiftHours: shiftHours == _undefined || shiftHours == null
            ? _instance.shiftHours
            : (shiftHours as bool),
        permittedHours: permittedHours == _undefined || permittedHours == null
            ? _instance.permittedHours
            : (permittedHours as bool),
        templateProperties: templateProperties == _undefined
            ? _instance.templateProperties
            : (templateProperties as List<
                Query$GetAssetTemplateById$assetTemplateById$templateProperties?>?),
        syncTargets: syncTargets == _undefined
            ? _instance.syncTargets
            : (syncTargets as List<
                Query$GetAssetTemplateById$assetTemplateById$syncTargets?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes templateProperties(
          Iterable<Query$GetAssetTemplateById$assetTemplateById$templateProperties?>? Function(
                  Iterable<
                      CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
                          Query$GetAssetTemplateById$assetTemplateById$templateProperties>?>?)
              _fn) =>
      call(
          templateProperties: _fn(_instance.templateProperties?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties(
                  e,
                  (i) => i,
                )))?.toList());

  TRes syncTargets(
          Iterable<Query$GetAssetTemplateById$assetTemplateById$syncTargets?>? Function(
                  Iterable<
                      CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
                          Query$GetAssetTemplateById$assetTemplateById$syncTargets>?>?)
              _fn) =>
      call(
          syncTargets: _fn(_instance.syncTargets?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById<TRes>
    implements CopyWith$Query$GetAssetTemplateById$assetTemplateById<TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? category,
    bool? shiftHours,
    bool? permittedHours,
    List<Query$GetAssetTemplateById$assetTemplateById$templateProperties?>?
        templateProperties,
    List<Query$GetAssetTemplateById$assetTemplateById$syncTargets?>?
        syncTargets,
    String? $__typename,
  }) =>
      _res;

  templateProperties(_fn) => _res;

  syncTargets(_fn) => _res;
}

class Query$GetAssetTemplateById$assetTemplateById$templateProperties {
  Query$GetAssetTemplateById$assetTemplateById$templateProperties({
    this.id,
    this.name,
    this.dataType,
    required this.isMandatory,
    required this.active,
    required this.sequence,
    this.$__typename = 'AssetTemplatePropertyQuery',
  });

  factory Query$GetAssetTemplateById$assetTemplateById$templateProperties.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$isMandatory = json['isMandatory'];
    final l$active = json['active'];
    final l$sequence = json['sequence'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplateById$assetTemplateById$templateProperties(
      id: (l$id as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      isMandatory: (l$isMandatory as bool),
      active: (l$active as bool),
      sequence: (l$sequence as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? dataType;

  final bool isMandatory;

  final bool active;

  final int sequence;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    _resultData['isMandatory'] = l$isMandatory;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$sequence,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAssetTemplateById$assetTemplateById$templateProperties) ||
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
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
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

extension UtilityExtension$Query$GetAssetTemplateById$assetTemplateById$templateProperties
    on Query$GetAssetTemplateById$assetTemplateById$templateProperties {
  CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
          Query$GetAssetTemplateById$assetTemplateById$templateProperties>
      get copyWith =>
          CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
    TRes> {
  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties(
    Query$GetAssetTemplateById$assetTemplateById$templateProperties instance,
    TRes Function(
            Query$GetAssetTemplateById$assetTemplateById$templateProperties)
        then,
  ) = _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties;

  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties;

  TRes call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
        TRes>
    implements
        CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
            TRes> {
  _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplateById$assetTemplateById$templateProperties
      _instance;

  final TRes Function(
      Query$GetAssetTemplateById$assetTemplateById$templateProperties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplateById$assetTemplateById$templateProperties(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        isMandatory: isMandatory == _undefined || isMandatory == null
            ? _instance.isMandatory
            : (isMandatory as bool),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
        TRes>
    implements
        CopyWith$Query$GetAssetTemplateById$assetTemplateById$templateProperties<
            TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$templateProperties(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAssetTemplateById$assetTemplateById$syncTargets {
  Query$GetAssetTemplateById$assetTemplateById$syncTargets({
    this.name,
    this.$__typename = 'AssetTemplateSyncTarget',
  });

  factory Query$GetAssetTemplateById$assetTemplateById$syncTargets.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAssetTemplateById$assetTemplateById$syncTargets(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssetTemplateById$assetTemplateById$syncTargets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAssetTemplateById$assetTemplateById$syncTargets
    on Query$GetAssetTemplateById$assetTemplateById$syncTargets {
  CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
          Query$GetAssetTemplateById$assetTemplateById$syncTargets>
      get copyWith =>
          CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
    TRes> {
  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets(
    Query$GetAssetTemplateById$assetTemplateById$syncTargets instance,
    TRes Function(Query$GetAssetTemplateById$assetTemplateById$syncTargets)
        then,
  ) = _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets;

  factory CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
        TRes>
    implements
        CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
            TRes> {
  _CopyWithImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets(
    this._instance,
    this._then,
  );

  final Query$GetAssetTemplateById$assetTemplateById$syncTargets _instance;

  final TRes Function(Query$GetAssetTemplateById$assetTemplateById$syncTargets)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssetTemplateById$assetTemplateById$syncTargets(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
        TRes>
    implements
        CopyWith$Query$GetAssetTemplateById$assetTemplateById$syncTargets<
            TRes> {
  _CopyWithStubImpl$Query$GetAssetTemplateById$assetTemplateById$syncTargets(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
