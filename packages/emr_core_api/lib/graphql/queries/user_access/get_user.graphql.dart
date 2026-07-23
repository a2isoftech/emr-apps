import '../../fragments/user_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetUserById {
  factory Variables$Query$GetUserById({required String id}) =>
      Variables$Query$GetUserById._({r'id': id});

  Variables$Query$GetUserById._(this._$data);

  factory Variables$Query$GetUserById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetUserById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetUserById<Variables$Query$GetUserById>
  get copyWith => CopyWith$Variables$Query$GetUserById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserById ||
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

abstract class CopyWith$Variables$Query$GetUserById<TRes> {
  factory CopyWith$Variables$Query$GetUserById(
    Variables$Query$GetUserById instance,
    TRes Function(Variables$Query$GetUserById) then,
  ) = _CopyWithImpl$Variables$Query$GetUserById;

  factory CopyWith$Variables$Query$GetUserById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetUserById<TRes>
    implements CopyWith$Variables$Query$GetUserById<TRes> {
  _CopyWithImpl$Variables$Query$GetUserById(this._instance, this._then);

  final Variables$Query$GetUserById _instance;

  final TRes Function(Variables$Query$GetUserById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetUserById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetUserById<TRes>
    implements CopyWith$Variables$Query$GetUserById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetUserById {
  Query$GetUserById({this.user, this.$__typename = 'Query'});

  factory Query$GetUserById.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetUserById(
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetUserById on Query$GetUserById {
  CopyWith$Query$GetUserById<Query$GetUserById> get copyWith =>
      CopyWith$Query$GetUserById(this, (i) => i);
}

abstract class CopyWith$Query$GetUserById<TRes> {
  factory CopyWith$Query$GetUserById(
    Query$GetUserById instance,
    TRes Function(Query$GetUserById) then,
  ) = _CopyWithImpl$Query$GetUserById;

  factory CopyWith$Query$GetUserById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserById;

  TRes call({Fragment$UserFragment? user, String? $__typename});
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$GetUserById<TRes>
    implements CopyWith$Query$GetUserById<TRes> {
  _CopyWithImpl$Query$GetUserById(this._instance, this._then);

  final Query$GetUserById _instance;

  final TRes Function(Query$GetUserById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetUserById(
          user: user == _undefined
              ? _instance.user
              : (user as Fragment$UserFragment?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetUserById<TRes>
    implements CopyWith$Query$GetUserById<TRes> {
  _CopyWithStubImpl$Query$GetUserById(this._res);

  TRes _res;

  call({Fragment$UserFragment? user, String? $__typename}) => _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const documentNodeQueryGetUserById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'UserFragment'),
                  directives: [],
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
    fragmentDefinitionUserFragment,
  ],
);
