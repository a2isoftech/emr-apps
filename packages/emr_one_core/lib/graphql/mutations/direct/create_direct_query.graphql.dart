import '../../fragments/direct_query_fragment.graphql.dart';
import '../../fragments/parameter_definition_fields.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$createDirectQuery {
  factory Variables$Mutation$createDirectQuery(
          {required Input$CreateDirectQueryInput input}) =>
      Variables$Mutation$createDirectQuery._({
        r'input': input,
      });

  Variables$Mutation$createDirectQuery._(this._$data);

  factory Variables$Mutation$createDirectQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateDirectQueryInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$createDirectQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateDirectQueryInput get input =>
      (_$data['input'] as Input$CreateDirectQueryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createDirectQuery<
          Variables$Mutation$createDirectQuery>
      get copyWith => CopyWith$Variables$Mutation$createDirectQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createDirectQuery ||
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

abstract class CopyWith$Variables$Mutation$createDirectQuery<TRes> {
  factory CopyWith$Variables$Mutation$createDirectQuery(
    Variables$Mutation$createDirectQuery instance,
    TRes Function(Variables$Mutation$createDirectQuery) then,
  ) = _CopyWithImpl$Variables$Mutation$createDirectQuery;

  factory CopyWith$Variables$Mutation$createDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createDirectQuery;

  TRes call({Input$CreateDirectQueryInput? input});
}

class _CopyWithImpl$Variables$Mutation$createDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$createDirectQuery<TRes> {
  _CopyWithImpl$Variables$Mutation$createDirectQuery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createDirectQuery _instance;

  final TRes Function(Variables$Mutation$createDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createDirectQuery._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateDirectQueryInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$createDirectQuery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createDirectQuery(this._res);

  TRes _res;

  call({Input$CreateDirectQueryInput? input}) => _res;
}

class Mutation$createDirectQuery {
  Mutation$createDirectQuery({
    required this.createDirectQuery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createDirectQuery.fromJson(Map<String, dynamic> json) {
    final l$createDirectQuery = json['createDirectQuery'];
    final l$$__typename = json['__typename'];
    return Mutation$createDirectQuery(
      createDirectQuery: Fragment$DirectQueryFields.fromJson(
          (l$createDirectQuery as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DirectQueryFields createDirectQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDirectQuery = createDirectQuery;
    _resultData['createDirectQuery'] = l$createDirectQuery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDirectQuery = createDirectQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createDirectQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createDirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDirectQuery = createDirectQuery;
    final lOther$createDirectQuery = other.createDirectQuery;
    if (l$createDirectQuery != lOther$createDirectQuery) {
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

extension UtilityExtension$Mutation$createDirectQuery
    on Mutation$createDirectQuery {
  CopyWith$Mutation$createDirectQuery<Mutation$createDirectQuery>
      get copyWith => CopyWith$Mutation$createDirectQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createDirectQuery<TRes> {
  factory CopyWith$Mutation$createDirectQuery(
    Mutation$createDirectQuery instance,
    TRes Function(Mutation$createDirectQuery) then,
  ) = _CopyWithImpl$Mutation$createDirectQuery;

  factory CopyWith$Mutation$createDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createDirectQuery;

  TRes call({
    Fragment$DirectQueryFields? createDirectQuery,
    String? $__typename,
  });
  CopyWith$Fragment$DirectQueryFields<TRes> get createDirectQuery;
}

class _CopyWithImpl$Mutation$createDirectQuery<TRes>
    implements CopyWith$Mutation$createDirectQuery<TRes> {
  _CopyWithImpl$Mutation$createDirectQuery(
    this._instance,
    this._then,
  );

  final Mutation$createDirectQuery _instance;

  final TRes Function(Mutation$createDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDirectQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createDirectQuery(
        createDirectQuery:
            createDirectQuery == _undefined || createDirectQuery == null
                ? _instance.createDirectQuery
                : (createDirectQuery as Fragment$DirectQueryFields),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DirectQueryFields<TRes> get createDirectQuery {
    final local$createDirectQuery = _instance.createDirectQuery;
    return CopyWith$Fragment$DirectQueryFields(
        local$createDirectQuery, (e) => call(createDirectQuery: e));
  }
}

class _CopyWithStubImpl$Mutation$createDirectQuery<TRes>
    implements CopyWith$Mutation$createDirectQuery<TRes> {
  _CopyWithStubImpl$Mutation$createDirectQuery(this._res);

  TRes _res;

  call({
    Fragment$DirectQueryFields? createDirectQuery,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DirectQueryFields<TRes> get createDirectQuery =>
      CopyWith$Fragment$DirectQueryFields.stub(_res);
}

const documentNodeMutationcreateDirectQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createDirectQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateDirectQueryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDirectQuery'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'DirectQueryFields'),
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
  ),
  fragmentDefinitionDirectQueryFields,
  fragmentDefinitionDirectQueryParameterFields,
]);
