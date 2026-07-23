import 'package:gql/ast.dart';

class Variables$Query$GetFormTemplateJson {
  factory Variables$Query$GetFormTemplateJson({required String id}) =>
      Variables$Query$GetFormTemplateJson._({
        r'id': id,
      });

  Variables$Query$GetFormTemplateJson._(this._$data);

  factory Variables$Query$GetFormTemplateJson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetFormTemplateJson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetFormTemplateJson<
          Variables$Query$GetFormTemplateJson>
      get copyWith => CopyWith$Variables$Query$GetFormTemplateJson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFormTemplateJson) ||
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

abstract class CopyWith$Variables$Query$GetFormTemplateJson<TRes> {
  factory CopyWith$Variables$Query$GetFormTemplateJson(
    Variables$Query$GetFormTemplateJson instance,
    TRes Function(Variables$Query$GetFormTemplateJson) then,
  ) = _CopyWithImpl$Variables$Query$GetFormTemplateJson;

  factory CopyWith$Variables$Query$GetFormTemplateJson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFormTemplateJson;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetFormTemplateJson<TRes>
    implements CopyWith$Variables$Query$GetFormTemplateJson<TRes> {
  _CopyWithImpl$Variables$Query$GetFormTemplateJson(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFormTemplateJson _instance;

  final TRes Function(Variables$Query$GetFormTemplateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetFormTemplateJson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFormTemplateJson<TRes>
    implements CopyWith$Variables$Query$GetFormTemplateJson<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFormTemplateJson(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetFormTemplateJson {
  Query$GetFormTemplateJson({
    this.formTemplateJson,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetFormTemplateJson.fromJson(Map<String, dynamic> json) {
    final l$formTemplateJson = json['formTemplateJson'];
    final l$$__typename = json['__typename'];
    return Query$GetFormTemplateJson(
      formTemplateJson: l$formTemplateJson == null
          ? null
          : Query$GetFormTemplateJson$formTemplateJson.fromJson(
              (l$formTemplateJson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFormTemplateJson$formTemplateJson? formTemplateJson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formTemplateJson = formTemplateJson;
    _resultData['formTemplateJson'] = l$formTemplateJson?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formTemplateJson = formTemplateJson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formTemplateJson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormTemplateJson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formTemplateJson = formTemplateJson;
    final lOther$formTemplateJson = other.formTemplateJson;
    if (l$formTemplateJson != lOther$formTemplateJson) {
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

extension UtilityExtension$Query$GetFormTemplateJson
    on Query$GetFormTemplateJson {
  CopyWith$Query$GetFormTemplateJson<Query$GetFormTemplateJson> get copyWith =>
      CopyWith$Query$GetFormTemplateJson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFormTemplateJson<TRes> {
  factory CopyWith$Query$GetFormTemplateJson(
    Query$GetFormTemplateJson instance,
    TRes Function(Query$GetFormTemplateJson) then,
  ) = _CopyWithImpl$Query$GetFormTemplateJson;

  factory CopyWith$Query$GetFormTemplateJson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormTemplateJson;

  TRes call({
    Query$GetFormTemplateJson$formTemplateJson? formTemplateJson,
    String? $__typename,
  });
  CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes>
      get formTemplateJson;
}

class _CopyWithImpl$Query$GetFormTemplateJson<TRes>
    implements CopyWith$Query$GetFormTemplateJson<TRes> {
  _CopyWithImpl$Query$GetFormTemplateJson(
    this._instance,
    this._then,
  );

  final Query$GetFormTemplateJson _instance;

  final TRes Function(Query$GetFormTemplateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formTemplateJson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormTemplateJson(
        formTemplateJson: formTemplateJson == _undefined
            ? _instance.formTemplateJson
            : (formTemplateJson as Query$GetFormTemplateJson$formTemplateJson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes>
      get formTemplateJson {
    final local$formTemplateJson = _instance.formTemplateJson;
    return local$formTemplateJson == null
        ? CopyWith$Query$GetFormTemplateJson$formTemplateJson.stub(
            _then(_instance))
        : CopyWith$Query$GetFormTemplateJson$formTemplateJson(
            local$formTemplateJson, (e) => call(formTemplateJson: e));
  }
}

class _CopyWithStubImpl$Query$GetFormTemplateJson<TRes>
    implements CopyWith$Query$GetFormTemplateJson<TRes> {
  _CopyWithStubImpl$Query$GetFormTemplateJson(this._res);

  TRes _res;

  call({
    Query$GetFormTemplateJson$formTemplateJson? formTemplateJson,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes>
      get formTemplateJson =>
          CopyWith$Query$GetFormTemplateJson$formTemplateJson.stub(_res);
}

const documentNodeQueryGetFormTemplateJson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFormTemplateJson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'formTemplateJson'),
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
            name: NameNode(value: 'document'),
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

class Query$GetFormTemplateJson$formTemplateJson {
  Query$GetFormTemplateJson$formTemplateJson({
    this.document,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetFormTemplateJson$formTemplateJson.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$$__typename = json['__typename'];
    return Query$GetFormTemplateJson$formTemplateJson(
      document: (l$document as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? document;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$document = document;
    _resultData['document'] = l$document;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$document = document;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$document,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormTemplateJson$formTemplateJson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
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

extension UtilityExtension$Query$GetFormTemplateJson$formTemplateJson
    on Query$GetFormTemplateJson$formTemplateJson {
  CopyWith$Query$GetFormTemplateJson$formTemplateJson<
          Query$GetFormTemplateJson$formTemplateJson>
      get copyWith => CopyWith$Query$GetFormTemplateJson$formTemplateJson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes> {
  factory CopyWith$Query$GetFormTemplateJson$formTemplateJson(
    Query$GetFormTemplateJson$formTemplateJson instance,
    TRes Function(Query$GetFormTemplateJson$formTemplateJson) then,
  ) = _CopyWithImpl$Query$GetFormTemplateJson$formTemplateJson;

  factory CopyWith$Query$GetFormTemplateJson$formTemplateJson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormTemplateJson$formTemplateJson;

  TRes call({
    String? document,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFormTemplateJson$formTemplateJson<TRes>
    implements CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes> {
  _CopyWithImpl$Query$GetFormTemplateJson$formTemplateJson(
    this._instance,
    this._then,
  );

  final Query$GetFormTemplateJson$formTemplateJson _instance;

  final TRes Function(Query$GetFormTemplateJson$formTemplateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormTemplateJson$formTemplateJson(
        document:
            document == _undefined ? _instance.document : (document as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFormTemplateJson$formTemplateJson<TRes>
    implements CopyWith$Query$GetFormTemplateJson$formTemplateJson<TRes> {
  _CopyWithStubImpl$Query$GetFormTemplateJson$formTemplateJson(this._res);

  TRes _res;

  call({
    String? document,
    String? $__typename,
  }) =>
      _res;
}
