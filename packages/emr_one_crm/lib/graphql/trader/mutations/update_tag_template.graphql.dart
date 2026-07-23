import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateTagTemplates {
  factory Variables$Mutation$UpdateTagTemplates(
          {required Input$UpdateTagTemplateInput input}) =>
      Variables$Mutation$UpdateTagTemplates._({
        r'input': input,
      });

  Variables$Mutation$UpdateTagTemplates._(this._$data);

  factory Variables$Mutation$UpdateTagTemplates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateTagTemplateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateTagTemplates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateTagTemplateInput get input =>
      (_$data['input'] as Input$UpdateTagTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateTagTemplates<
          Variables$Mutation$UpdateTagTemplates>
      get copyWith => CopyWith$Variables$Mutation$UpdateTagTemplates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateTagTemplates ||
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

abstract class CopyWith$Variables$Mutation$UpdateTagTemplates<TRes> {
  factory CopyWith$Variables$Mutation$UpdateTagTemplates(
    Variables$Mutation$UpdateTagTemplates instance,
    TRes Function(Variables$Mutation$UpdateTagTemplates) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateTagTemplates;

  factory CopyWith$Variables$Mutation$UpdateTagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateTagTemplates;

  TRes call({Input$UpdateTagTemplateInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateTagTemplates<TRes>
    implements CopyWith$Variables$Mutation$UpdateTagTemplates<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateTagTemplates(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateTagTemplates _instance;

  final TRes Function(Variables$Mutation$UpdateTagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateTagTemplates._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateTagTemplateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateTagTemplates<TRes>
    implements CopyWith$Variables$Mutation$UpdateTagTemplates<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateTagTemplates(this._res);

  TRes _res;

  call({Input$UpdateTagTemplateInput? input}) => _res;
}

class Mutation$UpdateTagTemplates {
  Mutation$UpdateTagTemplates({
    required this.updateTagTemplate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateTagTemplates.fromJson(Map<String, dynamic> json) {
    final l$updateTagTemplate = json['updateTagTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTagTemplates(
      updateTagTemplate: Mutation$UpdateTagTemplates$updateTagTemplate.fromJson(
          (l$updateTagTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateTagTemplates$updateTagTemplate updateTagTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTagTemplate = updateTagTemplate;
    _resultData['updateTagTemplate'] = l$updateTagTemplate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTagTemplate = updateTagTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTagTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTagTemplates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTagTemplate = updateTagTemplate;
    final lOther$updateTagTemplate = other.updateTagTemplate;
    if (l$updateTagTemplate != lOther$updateTagTemplate) {
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

extension UtilityExtension$Mutation$UpdateTagTemplates
    on Mutation$UpdateTagTemplates {
  CopyWith$Mutation$UpdateTagTemplates<Mutation$UpdateTagTemplates>
      get copyWith => CopyWith$Mutation$UpdateTagTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTagTemplates<TRes> {
  factory CopyWith$Mutation$UpdateTagTemplates(
    Mutation$UpdateTagTemplates instance,
    TRes Function(Mutation$UpdateTagTemplates) then,
  ) = _CopyWithImpl$Mutation$UpdateTagTemplates;

  factory CopyWith$Mutation$UpdateTagTemplates.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTagTemplates;

  TRes call({
    Mutation$UpdateTagTemplates$updateTagTemplate? updateTagTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes>
      get updateTagTemplate;
}

class _CopyWithImpl$Mutation$UpdateTagTemplates<TRes>
    implements CopyWith$Mutation$UpdateTagTemplates<TRes> {
  _CopyWithImpl$Mutation$UpdateTagTemplates(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTagTemplates _instance;

  final TRes Function(Mutation$UpdateTagTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTagTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTagTemplates(
        updateTagTemplate:
            updateTagTemplate == _undefined || updateTagTemplate == null
                ? _instance.updateTagTemplate
                : (updateTagTemplate
                    as Mutation$UpdateTagTemplates$updateTagTemplate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes>
      get updateTagTemplate {
    final local$updateTagTemplate = _instance.updateTagTemplate;
    return CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate(
        local$updateTagTemplate, (e) => call(updateTagTemplate: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateTagTemplates<TRes>
    implements CopyWith$Mutation$UpdateTagTemplates<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTagTemplates(this._res);

  TRes _res;

  call({
    Mutation$UpdateTagTemplates$updateTagTemplate? updateTagTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes>
      get updateTagTemplate =>
          CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate.stub(_res);
}

const documentNodeMutationUpdateTagTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateTagTemplates'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateTagTemplateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateTagTemplate'),
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

class Mutation$UpdateTagTemplates$updateTagTemplate {
  Mutation$UpdateTagTemplates$updateTagTemplate({
    required this.active,
    required this.reason,
    required this.category,
    required this.templateId,
    required this.territory,
    required this.id,
    this.$__typename = 'TagTemplate',
  });

  factory Mutation$UpdateTagTemplates$updateTagTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$reason = json['reason'];
    final l$category = json['category'];
    final l$templateId = json['templateId'];
    final l$territory = json['territory'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTagTemplates$updateTagTemplate(
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
    if (other is! Mutation$UpdateTagTemplates$updateTagTemplate ||
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

extension UtilityExtension$Mutation$UpdateTagTemplates$updateTagTemplate
    on Mutation$UpdateTagTemplates$updateTagTemplate {
  CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<
          Mutation$UpdateTagTemplates$updateTagTemplate>
      get copyWith => CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes> {
  factory CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate(
    Mutation$UpdateTagTemplates$updateTagTemplate instance,
    TRes Function(Mutation$UpdateTagTemplates$updateTagTemplate) then,
  ) = _CopyWithImpl$Mutation$UpdateTagTemplates$updateTagTemplate;

  factory CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTagTemplates$updateTagTemplate;

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

class _CopyWithImpl$Mutation$UpdateTagTemplates$updateTagTemplate<TRes>
    implements CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes> {
  _CopyWithImpl$Mutation$UpdateTagTemplates$updateTagTemplate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTagTemplates$updateTagTemplate _instance;

  final TRes Function(Mutation$UpdateTagTemplates$updateTagTemplate) _then;

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
      _then(Mutation$UpdateTagTemplates$updateTagTemplate(
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

class _CopyWithStubImpl$Mutation$UpdateTagTemplates$updateTagTemplate<TRes>
    implements CopyWith$Mutation$UpdateTagTemplates$updateTagTemplate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTagTemplates$updateTagTemplate(this._res);

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
