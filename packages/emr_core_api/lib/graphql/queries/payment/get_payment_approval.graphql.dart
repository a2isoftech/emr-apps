import '../../fragments/payment/payment_approval.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getPaymentApproval {
  factory Variables$Query$getPaymentApproval({required String id}) =>
      Variables$Query$getPaymentApproval._({r'id': id});

  Variables$Query$getPaymentApproval._(this._$data);

  factory Variables$Query$getPaymentApproval.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$getPaymentApproval._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$getPaymentApproval<
    Variables$Query$getPaymentApproval
  >
  get copyWith => CopyWith$Variables$Query$getPaymentApproval(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getPaymentApproval ||
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

abstract class CopyWith$Variables$Query$getPaymentApproval<TRes> {
  factory CopyWith$Variables$Query$getPaymentApproval(
    Variables$Query$getPaymentApproval instance,
    TRes Function(Variables$Query$getPaymentApproval) then,
  ) = _CopyWithImpl$Variables$Query$getPaymentApproval;

  factory CopyWith$Variables$Query$getPaymentApproval.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPaymentApproval;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$getPaymentApproval<TRes>
    implements CopyWith$Variables$Query$getPaymentApproval<TRes> {
  _CopyWithImpl$Variables$Query$getPaymentApproval(this._instance, this._then);

  final Variables$Query$getPaymentApproval _instance;

  final TRes Function(Variables$Query$getPaymentApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$getPaymentApproval._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getPaymentApproval<TRes>
    implements CopyWith$Variables$Query$getPaymentApproval<TRes> {
  _CopyWithStubImpl$Variables$Query$getPaymentApproval(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$getPaymentApproval {
  Query$getPaymentApproval({
    required this.loadPaymentApproval,
    this.$__typename = 'Query',
  });

  factory Query$getPaymentApproval.fromJson(Map<String, dynamic> json) {
    final l$loadPaymentApproval = json['loadPaymentApproval'];
    final l$$__typename = json['__typename'];
    return Query$getPaymentApproval(
      loadPaymentApproval:
          Query$getPaymentApproval$loadPaymentApproval.fromJson(
            (l$loadPaymentApproval as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPaymentApproval$loadPaymentApproval loadPaymentApproval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadPaymentApproval = loadPaymentApproval;
    _resultData['loadPaymentApproval'] = l$loadPaymentApproval.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadPaymentApproval = loadPaymentApproval;
    final l$$__typename = $__typename;
    return Object.hashAll([l$loadPaymentApproval, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getPaymentApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadPaymentApproval = loadPaymentApproval;
    final lOther$loadPaymentApproval = other.loadPaymentApproval;
    if (l$loadPaymentApproval != lOther$loadPaymentApproval) {
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

extension UtilityExtension$Query$getPaymentApproval
    on Query$getPaymentApproval {
  CopyWith$Query$getPaymentApproval<Query$getPaymentApproval> get copyWith =>
      CopyWith$Query$getPaymentApproval(this, (i) => i);
}

abstract class CopyWith$Query$getPaymentApproval<TRes> {
  factory CopyWith$Query$getPaymentApproval(
    Query$getPaymentApproval instance,
    TRes Function(Query$getPaymentApproval) then,
  ) = _CopyWithImpl$Query$getPaymentApproval;

  factory CopyWith$Query$getPaymentApproval.stub(TRes res) =
      _CopyWithStubImpl$Query$getPaymentApproval;

  TRes call({
    Query$getPaymentApproval$loadPaymentApproval? loadPaymentApproval,
    String? $__typename,
  });
  CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes>
  get loadPaymentApproval;
}

class _CopyWithImpl$Query$getPaymentApproval<TRes>
    implements CopyWith$Query$getPaymentApproval<TRes> {
  _CopyWithImpl$Query$getPaymentApproval(this._instance, this._then);

  final Query$getPaymentApproval _instance;

  final TRes Function(Query$getPaymentApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loadPaymentApproval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getPaymentApproval(
      loadPaymentApproval:
          loadPaymentApproval == _undefined || loadPaymentApproval == null
          ? _instance.loadPaymentApproval
          : (loadPaymentApproval
                as Query$getPaymentApproval$loadPaymentApproval),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes>
  get loadPaymentApproval {
    final local$loadPaymentApproval = _instance.loadPaymentApproval;
    return CopyWith$Query$getPaymentApproval$loadPaymentApproval(
      local$loadPaymentApproval,
      (e) => call(loadPaymentApproval: e),
    );
  }
}

class _CopyWithStubImpl$Query$getPaymentApproval<TRes>
    implements CopyWith$Query$getPaymentApproval<TRes> {
  _CopyWithStubImpl$Query$getPaymentApproval(this._res);

  TRes _res;

  call({
    Query$getPaymentApproval$loadPaymentApproval? loadPaymentApproval,
    String? $__typename,
  }) => _res;

  CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes>
  get loadPaymentApproval =>
      CopyWith$Query$getPaymentApproval$loadPaymentApproval.stub(_res);
}

const documentNodeQuerygetPaymentApproval = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPaymentApproval'),
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
            name: NameNode(value: 'loadPaymentApproval'),
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
                FieldNode(
                  name: NameNode(value: 'changeVector'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PaymentApproval'),
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
    fragmentDefinitionPaymentApproval,
  ],
);

class Query$getPaymentApproval$loadPaymentApproval {
  Query$getPaymentApproval$loadPaymentApproval({
    required this.changeVector,
    required this.entity,
    this.$__typename = 'DocumentOfPaymentApproval',
  });

  factory Query$getPaymentApproval$loadPaymentApproval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$changeVector = json['changeVector'];
    final l$entity = json['entity'];
    final l$$__typename = json['__typename'];
    return Query$getPaymentApproval$loadPaymentApproval(
      changeVector: (l$changeVector as String),
      entity: Fragment$PaymentApproval.fromJson(
        (l$entity as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String changeVector;

  final Fragment$PaymentApproval entity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeVector = changeVector;
    _resultData['changeVector'] = l$changeVector;
    final l$entity = entity;
    _resultData['entity'] = l$entity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeVector = changeVector;
    final l$entity = entity;
    final l$$__typename = $__typename;
    return Object.hashAll([l$changeVector, l$entity, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getPaymentApproval$loadPaymentApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeVector = changeVector;
    final lOther$changeVector = other.changeVector;
    if (l$changeVector != lOther$changeVector) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
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

extension UtilityExtension$Query$getPaymentApproval$loadPaymentApproval
    on Query$getPaymentApproval$loadPaymentApproval {
  CopyWith$Query$getPaymentApproval$loadPaymentApproval<
    Query$getPaymentApproval$loadPaymentApproval
  >
  get copyWith =>
      CopyWith$Query$getPaymentApproval$loadPaymentApproval(this, (i) => i);
}

abstract class CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes> {
  factory CopyWith$Query$getPaymentApproval$loadPaymentApproval(
    Query$getPaymentApproval$loadPaymentApproval instance,
    TRes Function(Query$getPaymentApproval$loadPaymentApproval) then,
  ) = _CopyWithImpl$Query$getPaymentApproval$loadPaymentApproval;

  factory CopyWith$Query$getPaymentApproval$loadPaymentApproval.stub(TRes res) =
      _CopyWithStubImpl$Query$getPaymentApproval$loadPaymentApproval;

  TRes call({
    String? changeVector,
    Fragment$PaymentApproval? entity,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentApproval<TRes> get entity;
}

class _CopyWithImpl$Query$getPaymentApproval$loadPaymentApproval<TRes>
    implements CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes> {
  _CopyWithImpl$Query$getPaymentApproval$loadPaymentApproval(
    this._instance,
    this._then,
  );

  final Query$getPaymentApproval$loadPaymentApproval _instance;

  final TRes Function(Query$getPaymentApproval$loadPaymentApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? changeVector = _undefined,
    Object? entity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getPaymentApproval$loadPaymentApproval(
      changeVector: changeVector == _undefined || changeVector == null
          ? _instance.changeVector
          : (changeVector as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as Fragment$PaymentApproval),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentApproval<TRes> get entity {
    final local$entity = _instance.entity;
    return CopyWith$Fragment$PaymentApproval(
      local$entity,
      (e) => call(entity: e),
    );
  }
}

class _CopyWithStubImpl$Query$getPaymentApproval$loadPaymentApproval<TRes>
    implements CopyWith$Query$getPaymentApproval$loadPaymentApproval<TRes> {
  _CopyWithStubImpl$Query$getPaymentApproval$loadPaymentApproval(this._res);

  TRes _res;

  call({
    String? changeVector,
    Fragment$PaymentApproval? entity,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentApproval<TRes> get entity =>
      CopyWith$Fragment$PaymentApproval.stub(_res);
}
