import 'package:gql/ast.dart';

class Variables$Query$CheckReferenceId {
  factory Variables$Query$CheckReferenceId({required String referenceId}) =>
      Variables$Query$CheckReferenceId._({
        r'referenceId': referenceId,
      });

  Variables$Query$CheckReferenceId._(this._$data);

  factory Variables$Query$CheckReferenceId.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$referenceId = data['referenceId'];
    result$data['referenceId'] = (l$referenceId as String);
    return Variables$Query$CheckReferenceId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get referenceId => (_$data['referenceId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$referenceId = referenceId;
    result$data['referenceId'] = l$referenceId;
    return result$data;
  }

  CopyWith$Variables$Query$CheckReferenceId<Variables$Query$CheckReferenceId>
      get copyWith => CopyWith$Variables$Query$CheckReferenceId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CheckReferenceId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$referenceId = referenceId;
    return Object.hashAll([l$referenceId]);
  }
}

abstract class CopyWith$Variables$Query$CheckReferenceId<TRes> {
  factory CopyWith$Variables$Query$CheckReferenceId(
    Variables$Query$CheckReferenceId instance,
    TRes Function(Variables$Query$CheckReferenceId) then,
  ) = _CopyWithImpl$Variables$Query$CheckReferenceId;

  factory CopyWith$Variables$Query$CheckReferenceId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CheckReferenceId;

  TRes call({String? referenceId});
}

class _CopyWithImpl$Variables$Query$CheckReferenceId<TRes>
    implements CopyWith$Variables$Query$CheckReferenceId<TRes> {
  _CopyWithImpl$Variables$Query$CheckReferenceId(
    this._instance,
    this._then,
  );

  final Variables$Query$CheckReferenceId _instance;

  final TRes Function(Variables$Query$CheckReferenceId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? referenceId = _undefined}) =>
      _then(Variables$Query$CheckReferenceId._({
        ..._instance._$data,
        if (referenceId != _undefined && referenceId != null)
          'referenceId': (referenceId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$CheckReferenceId<TRes>
    implements CopyWith$Variables$Query$CheckReferenceId<TRes> {
  _CopyWithStubImpl$Variables$Query$CheckReferenceId(this._res);

  TRes _res;

  call({String? referenceId}) => _res;
}

class Query$CheckReferenceId {
  Query$CheckReferenceId({
    required this.formTemplateReferenceId,
    this.$__typename = 'FormsQuery',
  });

  factory Query$CheckReferenceId.fromJson(Map<String, dynamic> json) {
    final l$formTemplateReferenceId = json['formTemplateReferenceId'];
    final l$$__typename = json['__typename'];
    return Query$CheckReferenceId(
      formTemplateReferenceId: (l$formTemplateReferenceId as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool formTemplateReferenceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formTemplateReferenceId = formTemplateReferenceId;
    _resultData['formTemplateReferenceId'] = l$formTemplateReferenceId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formTemplateReferenceId = formTemplateReferenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formTemplateReferenceId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CheckReferenceId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formTemplateReferenceId = formTemplateReferenceId;
    final lOther$formTemplateReferenceId = other.formTemplateReferenceId;
    if (l$formTemplateReferenceId != lOther$formTemplateReferenceId) {
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

extension UtilityExtension$Query$CheckReferenceId on Query$CheckReferenceId {
  CopyWith$Query$CheckReferenceId<Query$CheckReferenceId> get copyWith =>
      CopyWith$Query$CheckReferenceId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CheckReferenceId<TRes> {
  factory CopyWith$Query$CheckReferenceId(
    Query$CheckReferenceId instance,
    TRes Function(Query$CheckReferenceId) then,
  ) = _CopyWithImpl$Query$CheckReferenceId;

  factory CopyWith$Query$CheckReferenceId.stub(TRes res) =
      _CopyWithStubImpl$Query$CheckReferenceId;

  TRes call({
    bool? formTemplateReferenceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CheckReferenceId<TRes>
    implements CopyWith$Query$CheckReferenceId<TRes> {
  _CopyWithImpl$Query$CheckReferenceId(
    this._instance,
    this._then,
  );

  final Query$CheckReferenceId _instance;

  final TRes Function(Query$CheckReferenceId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formTemplateReferenceId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CheckReferenceId(
        formTemplateReferenceId: formTemplateReferenceId == _undefined ||
                formTemplateReferenceId == null
            ? _instance.formTemplateReferenceId
            : (formTemplateReferenceId as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CheckReferenceId<TRes>
    implements CopyWith$Query$CheckReferenceId<TRes> {
  _CopyWithStubImpl$Query$CheckReferenceId(this._res);

  TRes _res;

  call({
    bool? formTemplateReferenceId,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryCheckReferenceId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CheckReferenceId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'referenceId')),
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
        name: NameNode(value: 'formTemplateReferenceId'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'referenceId'),
            value: VariableNode(name: NameNode(value: 'referenceId')),
          )
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
    ]),
  ),
]);
