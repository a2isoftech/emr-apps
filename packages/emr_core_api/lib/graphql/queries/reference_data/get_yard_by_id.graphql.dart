import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../fragments/yard_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetYardById {
  factory Variables$Query$GetYardById({required String yardId}) =>
      Variables$Query$GetYardById._({r'yardId': yardId});

  Variables$Query$GetYardById._(this._$data);

  factory Variables$Query$GetYardById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardId = data['yardId'];
    result$data['yardId'] = (l$yardId as String);
    return Variables$Query$GetYardById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardId => (_$data['yardId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardId = yardId;
    result$data['yardId'] = l$yardId;
    return result$data;
  }

  CopyWith$Variables$Query$GetYardById<Variables$Query$GetYardById>
  get copyWith => CopyWith$Variables$Query$GetYardById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetYardById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardId = yardId;
    return Object.hashAll([l$yardId]);
  }
}

abstract class CopyWith$Variables$Query$GetYardById<TRes> {
  factory CopyWith$Variables$Query$GetYardById(
    Variables$Query$GetYardById instance,
    TRes Function(Variables$Query$GetYardById) then,
  ) = _CopyWithImpl$Variables$Query$GetYardById;

  factory CopyWith$Variables$Query$GetYardById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYardById;

  TRes call({String? yardId});
}

class _CopyWithImpl$Variables$Query$GetYardById<TRes>
    implements CopyWith$Variables$Query$GetYardById<TRes> {
  _CopyWithImpl$Variables$Query$GetYardById(this._instance, this._then);

  final Variables$Query$GetYardById _instance;

  final TRes Function(Variables$Query$GetYardById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yardId = _undefined}) => _then(
    Variables$Query$GetYardById._({
      ..._instance._$data,
      if (yardId != _undefined && yardId != null) 'yardId': (yardId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetYardById<TRes>
    implements CopyWith$Variables$Query$GetYardById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYardById(this._res);

  TRes _res;

  call({String? yardId}) => _res;
}

class Query$GetYardById {
  Query$GetYardById({required this.yard, this.$__typename = 'Query'});

  factory Query$GetYardById.fromJson(Map<String, dynamic> json) {
    final l$yard = json['yard'];
    final l$$__typename = json['__typename'];
    return Query$GetYardById(
      yard: Fragment$YardFragment.fromJson((l$yard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$YardFragment yard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yard = yard;
    _resultData['yard'] = l$yard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yard = yard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$yard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
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

extension UtilityExtension$Query$GetYardById on Query$GetYardById {
  CopyWith$Query$GetYardById<Query$GetYardById> get copyWith =>
      CopyWith$Query$GetYardById(this, (i) => i);
}

abstract class CopyWith$Query$GetYardById<TRes> {
  factory CopyWith$Query$GetYardById(
    Query$GetYardById instance,
    TRes Function(Query$GetYardById) then,
  ) = _CopyWithImpl$Query$GetYardById;

  factory CopyWith$Query$GetYardById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardById;

  TRes call({Fragment$YardFragment? yard, String? $__typename});
  CopyWith$Fragment$YardFragment<TRes> get yard;
}

class _CopyWithImpl$Query$GetYardById<TRes>
    implements CopyWith$Query$GetYardById<TRes> {
  _CopyWithImpl$Query$GetYardById(this._instance, this._then);

  final Query$GetYardById _instance;

  final TRes Function(Query$GetYardById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? yard = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetYardById(
          yard: yard == _undefined || yard == null
              ? _instance.yard
              : (yard as Fragment$YardFragment),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$YardFragment<TRes> get yard {
    final local$yard = _instance.yard;
    return CopyWith$Fragment$YardFragment(local$yard, (e) => call(yard: e));
  }
}

class _CopyWithStubImpl$Query$GetYardById<TRes>
    implements CopyWith$Query$GetYardById<TRes> {
  _CopyWithStubImpl$Query$GetYardById(this._res);

  TRes _res;

  call({Fragment$YardFragment? yard, String? $__typename}) => _res;

  CopyWith$Fragment$YardFragment<TRes> get yard =>
      CopyWith$Fragment$YardFragment.stub(_res);
}

const documentNodeQueryGetYardById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetYardById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'yard'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'yardId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'YardFragment'),
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
    fragmentDefinitionYardFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);
