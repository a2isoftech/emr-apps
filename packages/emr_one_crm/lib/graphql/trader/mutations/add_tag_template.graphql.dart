import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddTagTemplates {
  factory Variables$Mutation$AddTagTemplates(
          {required Input$AddTagTemplateInput input}) =>
      Variables$Mutation$AddTagTemplates._({
        r'input': input,
      });

  Variables$Mutation$AddTagTemplates._(this._$data);

  factory Variables$Mutation$AddTagTemplates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$AddTagTemplateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$AddTagTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddTagTemplateInput get input =>
      (_$data['input'] as Input$AddTagTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddTagTemplates<
          Variables$Mutation$AddTagTemplates>
      get copyWith => CopyWith$Variables$Mutation$AddTagTemplates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddTagTemplates ||
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

abstract class CopyWith$Variables$Mutation$AddTagTemplates<TRes> {
  factory CopyWith$Variables$Mutation$AddTagTemplates(
    Variables$Mutation$AddTagTemplates instance,
    TRes Function(Variables$Mutation$AddTagTemplates) then,
  ) = _CopyWithImpl$Variables$Mutation$AddTagTemplates;

  factory CopyWith$Variables$Mutation$AddTagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddTagTemplates;

  TRes call({Input$AddTagTemplateInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddTagTemplates<TRes>
    implements CopyWith$Variables$Mutation$AddTagTemplates<TRes> {
  _CopyWithImpl$Variables$Mutation$AddTagTemplates(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddTagTemplates _instance;

  final TRes Function(Variables$Mutation$AddTagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$AddTagTemplates._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AddTagTemplateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddTagTemplates<TRes>
    implements CopyWith$Variables$Mutation$AddTagTemplates<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddTagTemplates(this._res);

  TRes _res;

  call({Input$AddTagTemplateInput? input}) => _res;
}

class Mutation$AddTagTemplates {
  Mutation$AddTagTemplates({
    required this.addTagTemplate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddTagTemplates.fromJson(Map<String, dynamic> json) {
    final l$addTagTemplate = json['addTagTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$AddTagTemplates(
      addTagTemplate: Mutation$AddTagTemplates$addTagTemplate.fromJson(
          (l$addTagTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddTagTemplates$addTagTemplate addTagTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addTagTemplate = addTagTemplate;
    _resultData['addTagTemplate'] = l$addTagTemplate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addTagTemplate = addTagTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addTagTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddTagTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addTagTemplate = addTagTemplate;
    final lOther$addTagTemplate = other.addTagTemplate;
    if (l$addTagTemplate != lOther$addTagTemplate) {
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

extension UtilityExtension$Mutation$AddTagTemplates
    on Mutation$AddTagTemplates {
  CopyWith$Mutation$AddTagTemplates<Mutation$AddTagTemplates> get copyWith =>
      CopyWith$Mutation$AddTagTemplates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddTagTemplates<TRes> {
  factory CopyWith$Mutation$AddTagTemplates(
    Mutation$AddTagTemplates instance,
    TRes Function(Mutation$AddTagTemplates) then,
  ) = _CopyWithImpl$Mutation$AddTagTemplates;

  factory CopyWith$Mutation$AddTagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddTagTemplates;

  TRes call({
    Mutation$AddTagTemplates$addTagTemplate? addTagTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> get addTagTemplate;
}

class _CopyWithImpl$Mutation$AddTagTemplates<TRes>
    implements CopyWith$Mutation$AddTagTemplates<TRes> {
  _CopyWithImpl$Mutation$AddTagTemplates(
    this._instance,
    this._then,
  );

  final Mutation$AddTagTemplates _instance;

  final TRes Function(Mutation$AddTagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addTagTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddTagTemplates(
        addTagTemplate: addTagTemplate == _undefined || addTagTemplate == null
            ? _instance.addTagTemplate
            : (addTagTemplate as Mutation$AddTagTemplates$addTagTemplate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> get addTagTemplate {
    final local$addTagTemplate = _instance.addTagTemplate;
    return CopyWith$Mutation$AddTagTemplates$addTagTemplate(
        local$addTagTemplate, (e) => call(addTagTemplate: e));
  }
}

class _CopyWithStubImpl$Mutation$AddTagTemplates<TRes>
    implements CopyWith$Mutation$AddTagTemplates<TRes> {
  _CopyWithStubImpl$Mutation$AddTagTemplates(this._res);

  TRes _res;

  call({
    Mutation$AddTagTemplates$addTagTemplate? addTagTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> get addTagTemplate =>
      CopyWith$Mutation$AddTagTemplates$addTagTemplate.stub(_res);
}

const documentNodeMutationAddTagTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddTagTemplates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddTagTemplateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addTagTemplate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'reason'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'templateId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'territory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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

class Mutation$AddTagTemplates$addTagTemplate {
  Mutation$AddTagTemplates$addTagTemplate({
    required this.active,
    required this.reason,
    required this.category,
    required this.templateId,
    required this.territory,
    required this.id,
    this.$__typename = 'TagTemplate',
  });

  factory Mutation$AddTagTemplates$addTagTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$reason = json['reason'];
    final l$category = json['category'];
    final l$templateId = json['templateId'];
    final l$territory = json['territory'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$AddTagTemplates$addTagTemplate(
      active: (l$active as bool),
      reason: (l$reason as String),
      category: (l$category as String),
      templateId: (l$templateId as int),
      territory: (l$territory as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String reason;

  final String category;

  final int templateId;

  final String territory;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$territory = territory;
    _resultData['territory'] = l$territory;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$reason = reason;
    final l$category = category;
    final l$templateId = templateId;
    final l$territory = territory;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$reason,
      l$category,
      l$templateId,
      l$territory,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddTagTemplates$addTagTemplate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$AddTagTemplates$addTagTemplate
    on Mutation$AddTagTemplates$addTagTemplate {
  CopyWith$Mutation$AddTagTemplates$addTagTemplate<
          Mutation$AddTagTemplates$addTagTemplate>
      get copyWith => CopyWith$Mutation$AddTagTemplates$addTagTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> {
  factory CopyWith$Mutation$AddTagTemplates$addTagTemplate(
    Mutation$AddTagTemplates$addTagTemplate instance,
    TRes Function(Mutation$AddTagTemplates$addTagTemplate) then,
  ) = _CopyWithImpl$Mutation$AddTagTemplates$addTagTemplate;

  factory CopyWith$Mutation$AddTagTemplates$addTagTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddTagTemplates$addTagTemplate;

  TRes call({
    bool? active,
    String? reason,
    String? category,
    int? templateId,
    String? territory,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddTagTemplates$addTagTemplate<TRes>
    implements CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> {
  _CopyWithImpl$Mutation$AddTagTemplates$addTagTemplate(
    this._instance,
    this._then,
  );

  final Mutation$AddTagTemplates$addTagTemplate _instance;

  final TRes Function(Mutation$AddTagTemplates$addTagTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? reason = _undefined,
    Object? category = _undefined,
    Object? templateId = _undefined,
    Object? territory = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddTagTemplates$addTagTemplate(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        reason: reason == _undefined || reason == null
            ? _instance.reason
            : (reason as String),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        templateId: templateId == _undefined || templateId == null
            ? _instance.templateId
            : (templateId as int),
        territory: territory == _undefined || territory == null
            ? _instance.territory
            : (territory as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddTagTemplates$addTagTemplate<TRes>
    implements CopyWith$Mutation$AddTagTemplates$addTagTemplate<TRes> {
  _CopyWithStubImpl$Mutation$AddTagTemplates$addTagTemplate(this._res);

  TRes _res;

  call({
    bool? active,
    String? reason,
    String? category,
    int? templateId,
    String? territory,
    String? id,
    String? $__typename,
  }) =>
      _res;
}
