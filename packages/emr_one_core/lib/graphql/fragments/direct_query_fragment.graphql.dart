import '../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'parameter_definition_fields.graphql.dart';

class Fragment$DirectQueryFields {
  Fragment$DirectQueryFields({
    required this.id,
    required this.title,
    required this.permissions,
    required this.rql,
    required this.kind,
    required this.parameters,
    this.$__typename = 'DirectQuery',
  });

  factory Fragment$DirectQueryFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$permissions = json['permissions'];
    final l$rql = json['rql'];
    final l$kind = json['kind'];
    final l$parameters = json['parameters'];
    final l$$__typename = json['__typename'];
    return Fragment$DirectQueryFields(
      id: (l$id as String),
      title: (l$title as String),
      permissions:
          (l$permissions as List<dynamic>).map((e) => (e as String)).toList(),
      rql: (l$rql as String),
      kind: fromJson$Enum$DirectQueryKind((l$kind as String)),
      parameters: (l$parameters as List<dynamic>)
          .map((e) => Fragment$DirectQueryParameterFields.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<String> permissions;

  final String rql;

  final Enum$DirectQueryKind kind;

  final List<Fragment$DirectQueryParameterFields> parameters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$permissions = permissions;
    _resultData['permissions'] = l$permissions.map((e) => e).toList();
    final l$rql = rql;
    _resultData['rql'] = l$rql;
    final l$kind = kind;
    _resultData['kind'] = toJson$Enum$DirectQueryKind(l$kind);
    final l$parameters = parameters;
    _resultData['parameters'] = l$parameters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$permissions = permissions;
    final l$rql = rql;
    final l$kind = kind;
    final l$parameters = parameters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$permissions.map((v) => v)),
      l$rql,
      l$kind,
      Object.hashAll(l$parameters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DirectQueryFields ||
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
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) {
      return false;
    }
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) {
        return false;
      }
    }
    final l$rql = rql;
    final lOther$rql = other.rql;
    if (l$rql != lOther$rql) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    final l$parameters = parameters;
    final lOther$parameters = other.parameters;
    if (l$parameters.length != lOther$parameters.length) {
      return false;
    }
    for (int i = 0; i < l$parameters.length; i++) {
      final l$parameters$entry = l$parameters[i];
      final lOther$parameters$entry = lOther$parameters[i];
      if (l$parameters$entry != lOther$parameters$entry) {
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

extension UtilityExtension$Fragment$DirectQueryFields
    on Fragment$DirectQueryFields {
  CopyWith$Fragment$DirectQueryFields<Fragment$DirectQueryFields>
      get copyWith => CopyWith$Fragment$DirectQueryFields(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DirectQueryFields<TRes> {
  factory CopyWith$Fragment$DirectQueryFields(
    Fragment$DirectQueryFields instance,
    TRes Function(Fragment$DirectQueryFields) then,
  ) = _CopyWithImpl$Fragment$DirectQueryFields;

  factory CopyWith$Fragment$DirectQueryFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DirectQueryFields;

  TRes call({
    String? id,
    String? title,
    List<String>? permissions,
    String? rql,
    Enum$DirectQueryKind? kind,
    List<Fragment$DirectQueryParameterFields>? parameters,
    String? $__typename,
  });
  TRes parameters(
      Iterable<Fragment$DirectQueryParameterFields> Function(
              Iterable<
                  CopyWith$Fragment$DirectQueryParameterFields<
                      Fragment$DirectQueryParameterFields>>)
          _fn);
}

class _CopyWithImpl$Fragment$DirectQueryFields<TRes>
    implements CopyWith$Fragment$DirectQueryFields<TRes> {
  _CopyWithImpl$Fragment$DirectQueryFields(
    this._instance,
    this._then,
  );

  final Fragment$DirectQueryFields _instance;

  final TRes Function(Fragment$DirectQueryFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? permissions = _undefined,
    Object? rql = _undefined,
    Object? kind = _undefined,
    Object? parameters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DirectQueryFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        permissions: permissions == _undefined || permissions == null
            ? _instance.permissions
            : (permissions as List<String>),
        rql: rql == _undefined || rql == null ? _instance.rql : (rql as String),
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$DirectQueryKind),
        parameters: parameters == _undefined || parameters == null
            ? _instance.parameters
            : (parameters as List<Fragment$DirectQueryParameterFields>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes parameters(
          Iterable<Fragment$DirectQueryParameterFields> Function(
                  Iterable<
                      CopyWith$Fragment$DirectQueryParameterFields<
                          Fragment$DirectQueryParameterFields>>)
              _fn) =>
      call(
          parameters: _fn(_instance.parameters
              .map((e) => CopyWith$Fragment$DirectQueryParameterFields(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$DirectQueryFields<TRes>
    implements CopyWith$Fragment$DirectQueryFields<TRes> {
  _CopyWithStubImpl$Fragment$DirectQueryFields(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? permissions,
    String? rql,
    Enum$DirectQueryKind? kind,
    List<Fragment$DirectQueryParameterFields>? parameters,
    String? $__typename,
  }) =>
      _res;

  parameters(_fn) => _res;
}

const fragmentDefinitionDirectQueryFields = FragmentDefinitionNode(
  name: NameNode(value: 'DirectQueryFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DirectQuery'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'permissions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rql'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'kind'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'parameters'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'DirectQueryParameterFields'),
          directives: [],
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
);
const documentNodeFragmentDirectQueryFields = DocumentNode(definitions: [
  fragmentDefinitionDirectQueryFields,
  fragmentDefinitionDirectQueryParameterFields,
]);
