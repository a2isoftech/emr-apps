import 'package:gql/ast.dart';

class Variables$Query$FormTemplateDocument {
  factory Variables$Query$FormTemplateDocument({required String id}) =>
      Variables$Query$FormTemplateDocument._({
        r'id': id,
      });

  Variables$Query$FormTemplateDocument._(this._$data);

  factory Variables$Query$FormTemplateDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FormTemplateDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FormTemplateDocument<
          Variables$Query$FormTemplateDocument>
      get copyWith => CopyWith$Variables$Query$FormTemplateDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FormTemplateDocument) ||
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

abstract class CopyWith$Variables$Query$FormTemplateDocument<TRes> {
  factory CopyWith$Variables$Query$FormTemplateDocument(
    Variables$Query$FormTemplateDocument instance,
    TRes Function(Variables$Query$FormTemplateDocument) then,
  ) = _CopyWithImpl$Variables$Query$FormTemplateDocument;

  factory CopyWith$Variables$Query$FormTemplateDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FormTemplateDocument;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FormTemplateDocument<TRes>
    implements CopyWith$Variables$Query$FormTemplateDocument<TRes> {
  _CopyWithImpl$Variables$Query$FormTemplateDocument(
    this._instance,
    this._then,
  );

  final Variables$Query$FormTemplateDocument _instance;

  final TRes Function(Variables$Query$FormTemplateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$FormTemplateDocument._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FormTemplateDocument<TRes>
    implements CopyWith$Variables$Query$FormTemplateDocument<TRes> {
  _CopyWithStubImpl$Variables$Query$FormTemplateDocument(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FormTemplateDocument {
  Query$FormTemplateDocument({
    this.formTemplate,
    this.$__typename = 'FormsQuery',
  });

  factory Query$FormTemplateDocument.fromJson(Map<String, dynamic> json) {
    final l$formTemplate = json['formTemplate'];
    final l$$__typename = json['__typename'];
    return Query$FormTemplateDocument(
      formTemplate: l$formTemplate == null
          ? null
          : Query$FormTemplateDocument$formTemplate.fromJson(
              (l$formTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FormTemplateDocument$formTemplate? formTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formTemplate = formTemplate;
    _resultData['formTemplate'] = l$formTemplate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formTemplate = formTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormTemplateDocument) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formTemplate = formTemplate;
    final lOther$formTemplate = other.formTemplate;
    if (l$formTemplate != lOther$formTemplate) {
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

extension UtilityExtension$Query$FormTemplateDocument
    on Query$FormTemplateDocument {
  CopyWith$Query$FormTemplateDocument<Query$FormTemplateDocument>
      get copyWith => CopyWith$Query$FormTemplateDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormTemplateDocument<TRes> {
  factory CopyWith$Query$FormTemplateDocument(
    Query$FormTemplateDocument instance,
    TRes Function(Query$FormTemplateDocument) then,
  ) = _CopyWithImpl$Query$FormTemplateDocument;

  factory CopyWith$Query$FormTemplateDocument.stub(TRes res) =
      _CopyWithStubImpl$Query$FormTemplateDocument;

  TRes call({
    Query$FormTemplateDocument$formTemplate? formTemplate,
    String? $__typename,
  });
  CopyWith$Query$FormTemplateDocument$formTemplate<TRes> get formTemplate;
}

class _CopyWithImpl$Query$FormTemplateDocument<TRes>
    implements CopyWith$Query$FormTemplateDocument<TRes> {
  _CopyWithImpl$Query$FormTemplateDocument(
    this._instance,
    this._then,
  );

  final Query$FormTemplateDocument _instance;

  final TRes Function(Query$FormTemplateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormTemplateDocument(
        formTemplate: formTemplate == _undefined
            ? _instance.formTemplate
            : (formTemplate as Query$FormTemplateDocument$formTemplate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FormTemplateDocument$formTemplate<TRes> get formTemplate {
    final local$formTemplate = _instance.formTemplate;
    return local$formTemplate == null
        ? CopyWith$Query$FormTemplateDocument$formTemplate.stub(
            _then(_instance))
        : CopyWith$Query$FormTemplateDocument$formTemplate(
            local$formTemplate, (e) => call(formTemplate: e));
  }
}

class _CopyWithStubImpl$Query$FormTemplateDocument<TRes>
    implements CopyWith$Query$FormTemplateDocument<TRes> {
  _CopyWithStubImpl$Query$FormTemplateDocument(this._res);

  TRes _res;

  call({
    Query$FormTemplateDocument$formTemplate? formTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FormTemplateDocument$formTemplate<TRes> get formTemplate =>
      CopyWith$Query$FormTemplateDocument$formTemplate.stub(_res);
}

const documentNodeQueryFormTemplateDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FormTemplateDocument'),
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
        name: NameNode(value: 'formTemplate'),
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

class Query$FormTemplateDocument$formTemplate {
  Query$FormTemplateDocument$formTemplate({
    this.document,
    this.$__typename = 'FormTemplate',
  });

  factory Query$FormTemplateDocument$formTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$$__typename = json['__typename'];
    return Query$FormTemplateDocument$formTemplate(
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
    if (!(other is Query$FormTemplateDocument$formTemplate) ||
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

extension UtilityExtension$Query$FormTemplateDocument$formTemplate
    on Query$FormTemplateDocument$formTemplate {
  CopyWith$Query$FormTemplateDocument$formTemplate<
          Query$FormTemplateDocument$formTemplate>
      get copyWith => CopyWith$Query$FormTemplateDocument$formTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormTemplateDocument$formTemplate<TRes> {
  factory CopyWith$Query$FormTemplateDocument$formTemplate(
    Query$FormTemplateDocument$formTemplate instance,
    TRes Function(Query$FormTemplateDocument$formTemplate) then,
  ) = _CopyWithImpl$Query$FormTemplateDocument$formTemplate;

  factory CopyWith$Query$FormTemplateDocument$formTemplate.stub(TRes res) =
      _CopyWithStubImpl$Query$FormTemplateDocument$formTemplate;

  TRes call({
    String? document,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FormTemplateDocument$formTemplate<TRes>
    implements CopyWith$Query$FormTemplateDocument$formTemplate<TRes> {
  _CopyWithImpl$Query$FormTemplateDocument$formTemplate(
    this._instance,
    this._then,
  );

  final Query$FormTemplateDocument$formTemplate _instance;

  final TRes Function(Query$FormTemplateDocument$formTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormTemplateDocument$formTemplate(
        document:
            document == _undefined ? _instance.document : (document as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FormTemplateDocument$formTemplate<TRes>
    implements CopyWith$Query$FormTemplateDocument$formTemplate<TRes> {
  _CopyWithStubImpl$Query$FormTemplateDocument$formTemplate(this._res);

  TRes _res;

  call({
    String? document,
    String? $__typename,
  }) =>
      _res;
}
