import '../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAccountDetails {
  factory Variables$Query$GetAccountDetails({required String accountId}) =>
      Variables$Query$GetAccountDetails._({r'accountId': accountId});

  Variables$Query$GetAccountDetails._(this._$data);

  factory Variables$Query$GetAccountDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    return Variables$Query$GetAccountDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountDetails<Variables$Query$GetAccountDetails>
  get copyWith => CopyWith$Variables$Query$GetAccountDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccountDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    return Object.hashAll([l$accountId]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountDetails<TRes> {
  factory CopyWith$Variables$Query$GetAccountDetails(
    Variables$Query$GetAccountDetails instance,
    TRes Function(Variables$Query$GetAccountDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountDetails;

  factory CopyWith$Variables$Query$GetAccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountDetails;

  TRes call({String? accountId});
}

class _CopyWithImpl$Variables$Query$GetAccountDetails<TRes>
    implements CopyWith$Variables$Query$GetAccountDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountDetails(this._instance, this._then);

  final Variables$Query$GetAccountDetails _instance;

  final TRes Function(Variables$Query$GetAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined}) => _then(
    Variables$Query$GetAccountDetails._({
      ..._instance._$data,
      if (accountId != _undefined && accountId != null)
        'accountId': (accountId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccountDetails<TRes>
    implements CopyWith$Variables$Query$GetAccountDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountDetails(this._res);

  TRes _res;

  call({String? accountId}) => _res;
}

class Query$GetAccountDetails {
  Query$GetAccountDetails({
    required this.accountById,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountDetails.fromJson(Map<String, dynamic> json) {
    final l$accountById = json['accountById'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails(
      accountById: Fragment$AccountDetails.fromJson(
        (l$accountById as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated(
    'This usage is obsolete. Consumers must send AccountId instead of AccountCode.',
  )
  final Fragment$AccountDetails accountById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountById = accountById;
    _resultData['accountById'] = l$accountById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountById = accountById;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountById, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccountDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountById = accountById;
    final lOther$accountById = other.accountById;
    if (l$accountById != lOther$accountById) {
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

extension UtilityExtension$Query$GetAccountDetails on Query$GetAccountDetails {
  CopyWith$Query$GetAccountDetails<Query$GetAccountDetails> get copyWith =>
      CopyWith$Query$GetAccountDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetAccountDetails<TRes> {
  factory CopyWith$Query$GetAccountDetails(
    Query$GetAccountDetails instance,
    TRes Function(Query$GetAccountDetails) then,
  ) = _CopyWithImpl$Query$GetAccountDetails;

  factory CopyWith$Query$GetAccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails;

  TRes call({Fragment$AccountDetails? accountById, String? $__typename});
  CopyWith$Fragment$AccountDetails<TRes> get accountById;
}

class _CopyWithImpl$Query$GetAccountDetails<TRes>
    implements CopyWith$Query$GetAccountDetails<TRes> {
  _CopyWithImpl$Query$GetAccountDetails(this._instance, this._then);

  final Query$GetAccountDetails _instance;

  final TRes Function(Query$GetAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccountDetails(
      accountById: accountById == _undefined || accountById == null
          ? _instance.accountById
          : (accountById as Fragment$AccountDetails),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails<TRes> get accountById {
    final local$accountById = _instance.accountById;
    return CopyWith$Fragment$AccountDetails(
      local$accountById,
      (e) => call(accountById: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails<TRes>
    implements CopyWith$Query$GetAccountDetails<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails(this._res);

  TRes _res;

  call({Fragment$AccountDetails? accountById, String? $__typename}) => _res;

  CopyWith$Fragment$AccountDetails<TRes> get accountById =>
      CopyWith$Fragment$AccountDetails.stub(_res);
}

const documentNodeQueryGetAccountDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccountDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'accountById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountId'),
                value: VariableNode(name: NameNode(value: 'accountId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'AccountDetails'),
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
    fragmentDefinitionAccountDetails,
  ],
);
