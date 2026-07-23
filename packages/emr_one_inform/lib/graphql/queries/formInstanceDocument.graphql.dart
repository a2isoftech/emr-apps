import 'package:gql/ast.dart';

class Variables$Query$FormInstanceDocument {
  factory Variables$Query$FormInstanceDocument({required String id}) =>
      Variables$Query$FormInstanceDocument._({
        r'id': id,
      });

  Variables$Query$FormInstanceDocument._(this._$data);

  factory Variables$Query$FormInstanceDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FormInstanceDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FormInstanceDocument<
          Variables$Query$FormInstanceDocument>
      get copyWith => CopyWith$Variables$Query$FormInstanceDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FormInstanceDocument) ||
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

abstract class CopyWith$Variables$Query$FormInstanceDocument<TRes> {
  factory CopyWith$Variables$Query$FormInstanceDocument(
    Variables$Query$FormInstanceDocument instance,
    TRes Function(Variables$Query$FormInstanceDocument) then,
  ) = _CopyWithImpl$Variables$Query$FormInstanceDocument;

  factory CopyWith$Variables$Query$FormInstanceDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FormInstanceDocument;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FormInstanceDocument<TRes>
    implements CopyWith$Variables$Query$FormInstanceDocument<TRes> {
  _CopyWithImpl$Variables$Query$FormInstanceDocument(
    this._instance,
    this._then,
  );

  final Variables$Query$FormInstanceDocument _instance;

  final TRes Function(Variables$Query$FormInstanceDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$FormInstanceDocument._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FormInstanceDocument<TRes>
    implements CopyWith$Variables$Query$FormInstanceDocument<TRes> {
  _CopyWithStubImpl$Variables$Query$FormInstanceDocument(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FormInstanceDocument {
  Query$FormInstanceDocument({
    this.formInstance,
    this.$__typename = 'FormsQuery',
  });

  factory Query$FormInstanceDocument.fromJson(Map<String, dynamic> json) {
    final l$formInstance = json['formInstance'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceDocument(
      formInstance: l$formInstance == null
          ? null
          : Query$FormInstanceDocument$formInstance.fromJson(
              (l$formInstance as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FormInstanceDocument$formInstance? formInstance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formInstance = formInstance;
    _resultData['formInstance'] = l$formInstance?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formInstance = formInstance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formInstance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormInstanceDocument) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formInstance = formInstance;
    final lOther$formInstance = other.formInstance;
    if (l$formInstance != lOther$formInstance) {
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

extension UtilityExtension$Query$FormInstanceDocument
    on Query$FormInstanceDocument {
  CopyWith$Query$FormInstanceDocument<Query$FormInstanceDocument>
      get copyWith => CopyWith$Query$FormInstanceDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceDocument<TRes> {
  factory CopyWith$Query$FormInstanceDocument(
    Query$FormInstanceDocument instance,
    TRes Function(Query$FormInstanceDocument) then,
  ) = _CopyWithImpl$Query$FormInstanceDocument;

  factory CopyWith$Query$FormInstanceDocument.stub(TRes res) =
      _CopyWithStubImpl$Query$FormInstanceDocument;

  TRes call({
    Query$FormInstanceDocument$formInstance? formInstance,
    String? $__typename,
  });
  CopyWith$Query$FormInstanceDocument$formInstance<TRes> get formInstance;
}

class _CopyWithImpl$Query$FormInstanceDocument<TRes>
    implements CopyWith$Query$FormInstanceDocument<TRes> {
  _CopyWithImpl$Query$FormInstanceDocument(
    this._instance,
    this._then,
  );

  final Query$FormInstanceDocument _instance;

  final TRes Function(Query$FormInstanceDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formInstance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceDocument(
        formInstance: formInstance == _undefined
            ? _instance.formInstance
            : (formInstance as Query$FormInstanceDocument$formInstance?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FormInstanceDocument$formInstance<TRes> get formInstance {
    final local$formInstance = _instance.formInstance;
    return local$formInstance == null
        ? CopyWith$Query$FormInstanceDocument$formInstance.stub(
            _then(_instance))
        : CopyWith$Query$FormInstanceDocument$formInstance(
            local$formInstance, (e) => call(formInstance: e));
  }
}

class _CopyWithStubImpl$Query$FormInstanceDocument<TRes>
    implements CopyWith$Query$FormInstanceDocument<TRes> {
  _CopyWithStubImpl$Query$FormInstanceDocument(this._res);

  TRes _res;

  call({
    Query$FormInstanceDocument$formInstance? formInstance,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FormInstanceDocument$formInstance<TRes> get formInstance =>
      CopyWith$Query$FormInstanceDocument$formInstance.stub(_res);
}

const documentNodeQueryFormInstanceDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FormInstanceDocument'),
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
        name: NameNode(value: 'formInstance'),
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
            name: NameNode(value: 'template'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'workOrderId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'jobType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assetCode'),
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

class Query$FormInstanceDocument$formInstance {
  Query$FormInstanceDocument$formInstance({
    this.document,
    this.template,
    this.workOrderId,
    this.jobType,
    this.assetCode,
    this.$__typename = 'FormInstance',
  });

  factory Query$FormInstanceDocument$formInstance.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$template = json['template'];
    final l$workOrderId = json['workOrderId'];
    final l$jobType = json['jobType'];
    final l$assetCode = json['assetCode'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceDocument$formInstance(
      document: (l$document as String?),
      template: l$template == null
          ? null
          : Query$FormInstanceDocument$formInstance$template.fromJson(
              (l$template as Map<String, dynamic>)),
      workOrderId: (l$workOrderId as String?),
      jobType: (l$jobType as String?),
      assetCode: (l$assetCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? document;

  final Query$FormInstanceDocument$formInstance$template? template;

  final String? workOrderId;

  final String? jobType;

  final String? assetCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$document = document;
    _resultData['document'] = l$document;
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$document = document;
    final l$template = template;
    final l$workOrderId = workOrderId;
    final l$jobType = jobType;
    final l$assetCode = assetCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$document,
      l$template,
      l$workOrderId,
      l$jobType,
      l$assetCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormInstanceDocument$formInstance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (l$jobType != lOther$jobType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
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

extension UtilityExtension$Query$FormInstanceDocument$formInstance
    on Query$FormInstanceDocument$formInstance {
  CopyWith$Query$FormInstanceDocument$formInstance<
          Query$FormInstanceDocument$formInstance>
      get copyWith => CopyWith$Query$FormInstanceDocument$formInstance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceDocument$formInstance<TRes> {
  factory CopyWith$Query$FormInstanceDocument$formInstance(
    Query$FormInstanceDocument$formInstance instance,
    TRes Function(Query$FormInstanceDocument$formInstance) then,
  ) = _CopyWithImpl$Query$FormInstanceDocument$formInstance;

  factory CopyWith$Query$FormInstanceDocument$formInstance.stub(TRes res) =
      _CopyWithStubImpl$Query$FormInstanceDocument$formInstance;

  TRes call({
    String? document,
    Query$FormInstanceDocument$formInstance$template? template,
    String? workOrderId,
    String? jobType,
    String? assetCode,
    String? $__typename,
  });
  CopyWith$Query$FormInstanceDocument$formInstance$template<TRes> get template;
}

class _CopyWithImpl$Query$FormInstanceDocument$formInstance<TRes>
    implements CopyWith$Query$FormInstanceDocument$formInstance<TRes> {
  _CopyWithImpl$Query$FormInstanceDocument$formInstance(
    this._instance,
    this._then,
  );

  final Query$FormInstanceDocument$formInstance _instance;

  final TRes Function(Query$FormInstanceDocument$formInstance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? template = _undefined,
    Object? workOrderId = _undefined,
    Object? jobType = _undefined,
    Object? assetCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceDocument$formInstance(
        document:
            document == _undefined ? _instance.document : (document as String?),
        template: template == _undefined
            ? _instance.template
            : (template as Query$FormInstanceDocument$formInstance$template?),
        workOrderId: workOrderId == _undefined
            ? _instance.workOrderId
            : (workOrderId as String?),
        jobType:
            jobType == _undefined ? _instance.jobType : (jobType as String?),
        assetCode: assetCode == _undefined
            ? _instance.assetCode
            : (assetCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FormInstanceDocument$formInstance$template<TRes> get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$FormInstanceDocument$formInstance$template.stub(
            _then(_instance))
        : CopyWith$Query$FormInstanceDocument$formInstance$template(
            local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$FormInstanceDocument$formInstance<TRes>
    implements CopyWith$Query$FormInstanceDocument$formInstance<TRes> {
  _CopyWithStubImpl$Query$FormInstanceDocument$formInstance(this._res);

  TRes _res;

  call({
    String? document,
    Query$FormInstanceDocument$formInstance$template? template,
    String? workOrderId,
    String? jobType,
    String? assetCode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FormInstanceDocument$formInstance$template<TRes>
      get template =>
          CopyWith$Query$FormInstanceDocument$formInstance$template.stub(_res);
}

class Query$FormInstanceDocument$formInstance$template {
  Query$FormInstanceDocument$formInstance$template({
    this.document,
    this.$__typename = 'FormTemplate',
  });

  factory Query$FormInstanceDocument$formInstance$template.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$$__typename = json['__typename'];
    return Query$FormInstanceDocument$formInstance$template(
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
    if (!(other is Query$FormInstanceDocument$formInstance$template) ||
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

extension UtilityExtension$Query$FormInstanceDocument$formInstance$template
    on Query$FormInstanceDocument$formInstance$template {
  CopyWith$Query$FormInstanceDocument$formInstance$template<
          Query$FormInstanceDocument$formInstance$template>
      get copyWith => CopyWith$Query$FormInstanceDocument$formInstance$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormInstanceDocument$formInstance$template<TRes> {
  factory CopyWith$Query$FormInstanceDocument$formInstance$template(
    Query$FormInstanceDocument$formInstance$template instance,
    TRes Function(Query$FormInstanceDocument$formInstance$template) then,
  ) = _CopyWithImpl$Query$FormInstanceDocument$formInstance$template;

  factory CopyWith$Query$FormInstanceDocument$formInstance$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FormInstanceDocument$formInstance$template;

  TRes call({
    String? document,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FormInstanceDocument$formInstance$template<TRes>
    implements CopyWith$Query$FormInstanceDocument$formInstance$template<TRes> {
  _CopyWithImpl$Query$FormInstanceDocument$formInstance$template(
    this._instance,
    this._then,
  );

  final Query$FormInstanceDocument$formInstance$template _instance;

  final TRes Function(Query$FormInstanceDocument$formInstance$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormInstanceDocument$formInstance$template(
        document:
            document == _undefined ? _instance.document : (document as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FormInstanceDocument$formInstance$template<TRes>
    implements CopyWith$Query$FormInstanceDocument$formInstance$template<TRes> {
  _CopyWithStubImpl$Query$FormInstanceDocument$formInstance$template(this._res);

  TRes _res;

  call({
    String? document,
    String? $__typename,
  }) =>
      _res;
}
