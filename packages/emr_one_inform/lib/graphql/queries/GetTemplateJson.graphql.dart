import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetTemplateJson {
  factory Variables$Query$GetTemplateJson(
          {required Input$CreateEditFormTemplateInput template}) =>
      Variables$Query$GetTemplateJson._({
        r'template': template,
      });

  Variables$Query$GetTemplateJson._(this._$data);

  factory Variables$Query$GetTemplateJson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$template = data['template'];
    result$data['template'] = Input$CreateEditFormTemplateInput.fromJson(
        (l$template as Map<String, dynamic>));
    return Variables$Query$GetTemplateJson._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEditFormTemplateInput get template =>
      (_$data['template'] as Input$CreateEditFormTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$template = template;
    result$data['template'] = l$template.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetTemplateJson<Variables$Query$GetTemplateJson>
      get copyWith => CopyWith$Variables$Query$GetTemplateJson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTemplateJson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$template = template;
    return Object.hashAll([l$template]);
  }
}

abstract class CopyWith$Variables$Query$GetTemplateJson<TRes> {
  factory CopyWith$Variables$Query$GetTemplateJson(
    Variables$Query$GetTemplateJson instance,
    TRes Function(Variables$Query$GetTemplateJson) then,
  ) = _CopyWithImpl$Variables$Query$GetTemplateJson;

  factory CopyWith$Variables$Query$GetTemplateJson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTemplateJson;

  TRes call({Input$CreateEditFormTemplateInput? template});
}

class _CopyWithImpl$Variables$Query$GetTemplateJson<TRes>
    implements CopyWith$Variables$Query$GetTemplateJson<TRes> {
  _CopyWithImpl$Variables$Query$GetTemplateJson(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTemplateJson _instance;

  final TRes Function(Variables$Query$GetTemplateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? template = _undefined}) =>
      _then(Variables$Query$GetTemplateJson._({
        ..._instance._$data,
        if (template != _undefined && template != null)
          'template': (template as Input$CreateEditFormTemplateInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTemplateJson<TRes>
    implements CopyWith$Variables$Query$GetTemplateJson<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTemplateJson(this._res);

  TRes _res;

  call({Input$CreateEditFormTemplateInput? template}) => _res;
}

class Query$GetTemplateJson {
  Query$GetTemplateJson({
    required this.templateJson,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetTemplateJson.fromJson(Map<String, dynamic> json) {
    final l$templateJson = json['templateJson'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateJson(
      templateJson: Query$GetTemplateJson$templateJson.fromJson(
          (l$templateJson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTemplateJson$templateJson templateJson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$templateJson = templateJson;
    _resultData['templateJson'] = l$templateJson.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$templateJson = templateJson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$templateJson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateJson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$templateJson = templateJson;
    final lOther$templateJson = other.templateJson;
    if (l$templateJson != lOther$templateJson) {
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

extension UtilityExtension$Query$GetTemplateJson on Query$GetTemplateJson {
  CopyWith$Query$GetTemplateJson<Query$GetTemplateJson> get copyWith =>
      CopyWith$Query$GetTemplateJson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTemplateJson<TRes> {
  factory CopyWith$Query$GetTemplateJson(
    Query$GetTemplateJson instance,
    TRes Function(Query$GetTemplateJson) then,
  ) = _CopyWithImpl$Query$GetTemplateJson;

  factory CopyWith$Query$GetTemplateJson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTemplateJson;

  TRes call({
    Query$GetTemplateJson$templateJson? templateJson,
    String? $__typename,
  });
  CopyWith$Query$GetTemplateJson$templateJson<TRes> get templateJson;
}

class _CopyWithImpl$Query$GetTemplateJson<TRes>
    implements CopyWith$Query$GetTemplateJson<TRes> {
  _CopyWithImpl$Query$GetTemplateJson(
    this._instance,
    this._then,
  );

  final Query$GetTemplateJson _instance;

  final TRes Function(Query$GetTemplateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? templateJson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateJson(
        templateJson: templateJson == _undefined || templateJson == null
            ? _instance.templateJson
            : (templateJson as Query$GetTemplateJson$templateJson),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTemplateJson$templateJson<TRes> get templateJson {
    final local$templateJson = _instance.templateJson;
    return CopyWith$Query$GetTemplateJson$templateJson(
        local$templateJson, (e) => call(templateJson: e));
  }
}

class _CopyWithStubImpl$Query$GetTemplateJson<TRes>
    implements CopyWith$Query$GetTemplateJson<TRes> {
  _CopyWithStubImpl$Query$GetTemplateJson(this._res);

  TRes _res;

  call({
    Query$GetTemplateJson$templateJson? templateJson,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTemplateJson$templateJson<TRes> get templateJson =>
      CopyWith$Query$GetTemplateJson$templateJson.stub(_res);
}

const documentNodeQueryGetTemplateJson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTemplateJson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'template')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateEditFormTemplateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'templateJson'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'template'),
            value: VariableNode(name: NameNode(value: 'template')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'value'),
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

class Query$GetTemplateJson$templateJson {
  Query$GetTemplateJson$templateJson({
    required this.value,
    this.$__typename = 'QuickReponseOfString',
  });

  factory Query$GetTemplateJson$templateJson.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetTemplateJson$templateJson(
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTemplateJson$templateJson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetTemplateJson$templateJson
    on Query$GetTemplateJson$templateJson {
  CopyWith$Query$GetTemplateJson$templateJson<
          Query$GetTemplateJson$templateJson>
      get copyWith => CopyWith$Query$GetTemplateJson$templateJson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTemplateJson$templateJson<TRes> {
  factory CopyWith$Query$GetTemplateJson$templateJson(
    Query$GetTemplateJson$templateJson instance,
    TRes Function(Query$GetTemplateJson$templateJson) then,
  ) = _CopyWithImpl$Query$GetTemplateJson$templateJson;

  factory CopyWith$Query$GetTemplateJson$templateJson.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTemplateJson$templateJson;

  TRes call({
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTemplateJson$templateJson<TRes>
    implements CopyWith$Query$GetTemplateJson$templateJson<TRes> {
  _CopyWithImpl$Query$GetTemplateJson$templateJson(
    this._instance,
    this._then,
  );

  final Query$GetTemplateJson$templateJson _instance;

  final TRes Function(Query$GetTemplateJson$templateJson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTemplateJson$templateJson(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTemplateJson$templateJson<TRes>
    implements CopyWith$Query$GetTemplateJson$templateJson<TRes> {
  _CopyWithStubImpl$Query$GetTemplateJson$templateJson(this._res);

  TRes _res;

  call({
    String? value,
    String? $__typename,
  }) =>
      _res;
}
