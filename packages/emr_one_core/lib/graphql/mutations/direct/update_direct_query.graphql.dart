import '../../fragments/direct_query_fragment.graphql.dart';
import '../../fragments/parameter_definition_fields.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$updateDirectQuery {
  factory Variables$Mutation$updateDirectQuery(
          {required Input$UpdateDirectQueryInput input}) =>
      Variables$Mutation$updateDirectQuery._({
        r'input': input,
      });

  Variables$Mutation$updateDirectQuery._(this._$data);

  factory Variables$Mutation$updateDirectQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateDirectQueryInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$updateDirectQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateDirectQueryInput get input =>
      (_$data['input'] as Input$UpdateDirectQueryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateDirectQuery<
          Variables$Mutation$updateDirectQuery>
      get copyWith => CopyWith$Variables$Mutation$updateDirectQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$updateDirectQuery ||
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

abstract class CopyWith$Variables$Mutation$updateDirectQuery<TRes> {
  factory CopyWith$Variables$Mutation$updateDirectQuery(
    Variables$Mutation$updateDirectQuery instance,
    TRes Function(Variables$Mutation$updateDirectQuery) then,
  ) = _CopyWithImpl$Variables$Mutation$updateDirectQuery;

  factory CopyWith$Variables$Mutation$updateDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateDirectQuery;

  TRes call({Input$UpdateDirectQueryInput? input});
}

class _CopyWithImpl$Variables$Mutation$updateDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$updateDirectQuery<TRes> {
  _CopyWithImpl$Variables$Mutation$updateDirectQuery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateDirectQuery _instance;

  final TRes Function(Variables$Mutation$updateDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$updateDirectQuery._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateDirectQueryInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$updateDirectQuery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateDirectQuery(this._res);

  TRes _res;

  call({Input$UpdateDirectQueryInput? input}) => _res;
}

class Mutation$updateDirectQuery {
  Mutation$updateDirectQuery({
    required this.updateDirectQuery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateDirectQuery.fromJson(Map<String, dynamic> json) {
    final l$updateDirectQuery = json['updateDirectQuery'];
    final l$$__typename = json['__typename'];
    return Mutation$updateDirectQuery(
      updateDirectQuery: Fragment$DirectQueryFields.fromJson(
          (l$updateDirectQuery as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DirectQueryFields updateDirectQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDirectQuery = updateDirectQuery;
    _resultData['updateDirectQuery'] = l$updateDirectQuery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDirectQuery = updateDirectQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateDirectQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$updateDirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDirectQuery = updateDirectQuery;
    final lOther$updateDirectQuery = other.updateDirectQuery;
    if (l$updateDirectQuery != lOther$updateDirectQuery) {
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

extension UtilityExtension$Mutation$updateDirectQuery
    on Mutation$updateDirectQuery {
  CopyWith$Mutation$updateDirectQuery<Mutation$updateDirectQuery>
      get copyWith => CopyWith$Mutation$updateDirectQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateDirectQuery<TRes> {
  factory CopyWith$Mutation$updateDirectQuery(
    Mutation$updateDirectQuery instance,
    TRes Function(Mutation$updateDirectQuery) then,
  ) = _CopyWithImpl$Mutation$updateDirectQuery;

  factory CopyWith$Mutation$updateDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateDirectQuery;

  TRes call({
    Fragment$DirectQueryFields? updateDirectQuery,
    String? $__typename,
  });
  CopyWith$Fragment$DirectQueryFields<TRes> get updateDirectQuery;
}

class _CopyWithImpl$Mutation$updateDirectQuery<TRes>
    implements CopyWith$Mutation$updateDirectQuery<TRes> {
  _CopyWithImpl$Mutation$updateDirectQuery(
    this._instance,
    this._then,
  );

  final Mutation$updateDirectQuery _instance;

  final TRes Function(Mutation$updateDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateDirectQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateDirectQuery(
        updateDirectQuery:
            updateDirectQuery == _undefined || updateDirectQuery == null
                ? _instance.updateDirectQuery
                : (updateDirectQuery as Fragment$DirectQueryFields),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DirectQueryFields<TRes> get updateDirectQuery {
    final local$updateDirectQuery = _instance.updateDirectQuery;
    return CopyWith$Fragment$DirectQueryFields(
        local$updateDirectQuery, (e) => call(updateDirectQuery: e));
  }
}

class _CopyWithStubImpl$Mutation$updateDirectQuery<TRes>
    implements CopyWith$Mutation$updateDirectQuery<TRes> {
  _CopyWithStubImpl$Mutation$updateDirectQuery(this._res);

  TRes _res;

  call({
    Fragment$DirectQueryFields? updateDirectQuery,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DirectQueryFields<TRes> get updateDirectQuery =>
      CopyWith$Fragment$DirectQueryFields.stub(_res);
}

const documentNodeMutationupdateDirectQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateDirectQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateDirectQueryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDirectQuery'),
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
