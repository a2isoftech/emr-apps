import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAssetTemplate {
  factory Variables$Mutation$UpdateAssetTemplate(
          {required Input$UpdateAssetTemplateInput input}) =>
      Variables$Mutation$UpdateAssetTemplate._({
        r'input': input,
      });

  Variables$Mutation$UpdateAssetTemplate._(this._$data);

  factory Variables$Mutation$UpdateAssetTemplate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAssetTemplateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateAssetTemplate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAssetTemplateInput get input =>
      (_$data['input'] as Input$UpdateAssetTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAssetTemplate<
          Variables$Mutation$UpdateAssetTemplate>
      get copyWith => CopyWith$Variables$Mutation$UpdateAssetTemplate(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAssetTemplate) ||
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

abstract class CopyWith$Variables$Mutation$UpdateAssetTemplate<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAssetTemplate(
    Variables$Mutation$UpdateAssetTemplate instance,
    TRes Function(Variables$Mutation$UpdateAssetTemplate) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAssetTemplate;

  factory CopyWith$Variables$Mutation$UpdateAssetTemplate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAssetTemplate;

  TRes call({Input$UpdateAssetTemplateInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAssetTemplate<TRes>
    implements CopyWith$Variables$Mutation$UpdateAssetTemplate<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAssetTemplate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAssetTemplate _instance;

  final TRes Function(Variables$Mutation$UpdateAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateAssetTemplate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateAssetTemplateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAssetTemplate<TRes>
    implements CopyWith$Variables$Mutation$UpdateAssetTemplate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAssetTemplate(this._res);

  TRes _res;

  call({Input$UpdateAssetTemplateInput? input}) => _res;
}

class Mutation$UpdateAssetTemplate {
  Mutation$UpdateAssetTemplate({
    this.updateAssetTemplate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAssetTemplate.fromJson(Map<String, dynamic> json) {
    final l$updateAssetTemplate = json['updateAssetTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAssetTemplate(
      updateAssetTemplate: l$updateAssetTemplate == null
          ? null
          : Mutation$UpdateAssetTemplate$updateAssetTemplate.fromJson(
              (l$updateAssetTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAssetTemplate$updateAssetTemplate? updateAssetTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAssetTemplate = updateAssetTemplate;
    _resultData['updateAssetTemplate'] = l$updateAssetTemplate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAssetTemplate = updateAssetTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAssetTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAssetTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAssetTemplate = updateAssetTemplate;
    final lOther$updateAssetTemplate = other.updateAssetTemplate;
    if (l$updateAssetTemplate != lOther$updateAssetTemplate) {
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

extension UtilityExtension$Mutation$UpdateAssetTemplate
    on Mutation$UpdateAssetTemplate {
  CopyWith$Mutation$UpdateAssetTemplate<Mutation$UpdateAssetTemplate>
      get copyWith => CopyWith$Mutation$UpdateAssetTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAssetTemplate<TRes> {
  factory CopyWith$Mutation$UpdateAssetTemplate(
    Mutation$UpdateAssetTemplate instance,
    TRes Function(Mutation$UpdateAssetTemplate) then,
  ) = _CopyWithImpl$Mutation$UpdateAssetTemplate;

  factory CopyWith$Mutation$UpdateAssetTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAssetTemplate;

  TRes call({
    Mutation$UpdateAssetTemplate$updateAssetTemplate? updateAssetTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes>
      get updateAssetTemplate;
}

class _CopyWithImpl$Mutation$UpdateAssetTemplate<TRes>
    implements CopyWith$Mutation$UpdateAssetTemplate<TRes> {
  _CopyWithImpl$Mutation$UpdateAssetTemplate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAssetTemplate _instance;

  final TRes Function(Mutation$UpdateAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAssetTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAssetTemplate(
        updateAssetTemplate: updateAssetTemplate == _undefined
            ? _instance.updateAssetTemplate
            : (updateAssetTemplate
                as Mutation$UpdateAssetTemplate$updateAssetTemplate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes>
      get updateAssetTemplate {
    final local$updateAssetTemplate = _instance.updateAssetTemplate;
    return local$updateAssetTemplate == null
        ? CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate(
            local$updateAssetTemplate, (e) => call(updateAssetTemplate: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAssetTemplate<TRes>
    implements CopyWith$Mutation$UpdateAssetTemplate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAssetTemplate(this._res);

  TRes _res;

  call({
    Mutation$UpdateAssetTemplate$updateAssetTemplate? updateAssetTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes>
      get updateAssetTemplate =>
          CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate.stub(_res);
}

const documentNodeMutationUpdateAssetTemplate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAssetTemplate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateAssetTemplateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAssetTemplate'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'codeFormat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'syncTargets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
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
            name: NameNode(value: 'assetTemplateCounters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'groupId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'key'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dataType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'incrementType'),
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
            name: NameNode(value: 'templateProperties'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dataType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMandatory'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sequence'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'viewerGroupIds'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updaterGroupIds'),
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

class Mutation$UpdateAssetTemplate$updateAssetTemplate {
  Mutation$UpdateAssetTemplate$updateAssetTemplate({
    this.id,
    this.name,
    this.codeFormat,
    this.syncTargets,
    this.assetTemplateCounters,
    this.templateProperties,
    this.$__typename = 'AssetTemplate',
  });

  factory Mutation$UpdateAssetTemplate$updateAssetTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$codeFormat = json['codeFormat'];
    final l$syncTargets = json['syncTargets'];
    final l$assetTemplateCounters = json['assetTemplateCounters'];
    final l$templateProperties = json['templateProperties'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAssetTemplate$updateAssetTemplate(
      id: (l$id as String?),
      name: (l$name as String?),
      codeFormat: (l$codeFormat as String?),
      syncTargets: (l$syncTargets as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      assetTemplateCounters: (l$assetTemplateCounters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      templateProperties: (l$templateProperties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? codeFormat;

  final List<Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>?
      syncTargets;

  final List<
          Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>?
      assetTemplateCounters;

  final List<
          Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>?
      templateProperties;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$codeFormat = codeFormat;
    _resultData['codeFormat'] = l$codeFormat;
    final l$syncTargets = syncTargets;
    _resultData['syncTargets'] =
        l$syncTargets?.map((e) => e?.toJson()).toList();
    final l$assetTemplateCounters = assetTemplateCounters;
    _resultData['assetTemplateCounters'] =
        l$assetTemplateCounters?.map((e) => e?.toJson()).toList();
    final l$templateProperties = templateProperties;
    _resultData['templateProperties'] =
        l$templateProperties?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$codeFormat = codeFormat;
    final l$syncTargets = syncTargets;
    final l$assetTemplateCounters = assetTemplateCounters;
    final l$templateProperties = templateProperties;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$codeFormat,
      l$syncTargets == null
          ? null
          : Object.hashAll(l$syncTargets.map((v) => v)),
      l$assetTemplateCounters == null
          ? null
          : Object.hashAll(l$assetTemplateCounters.map((v) => v)),
      l$templateProperties == null
          ? null
          : Object.hashAll(l$templateProperties.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAssetTemplate$updateAssetTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$codeFormat = codeFormat;
    final lOther$codeFormat = other.codeFormat;
    if (l$codeFormat != lOther$codeFormat) {
      return false;
    }
    final l$syncTargets = syncTargets;
    final lOther$syncTargets = other.syncTargets;
    if (l$syncTargets != null && lOther$syncTargets != null) {
      if (l$syncTargets.length != lOther$syncTargets.length) {
        return false;
      }
      for (int i = 0; i < l$syncTargets.length; i++) {
        final l$syncTargets$entry = l$syncTargets[i];
        final lOther$syncTargets$entry = lOther$syncTargets[i];
        if (l$syncTargets$entry != lOther$syncTargets$entry) {
          return false;
        }
      }
    } else if (l$syncTargets != lOther$syncTargets) {
      return false;
    }
    final l$assetTemplateCounters = assetTemplateCounters;
    final lOther$assetTemplateCounters = other.assetTemplateCounters;
    if (l$assetTemplateCounters != null &&
        lOther$assetTemplateCounters != null) {
      if (l$assetTemplateCounters.length !=
          lOther$assetTemplateCounters.length) {
        return false;
      }
      for (int i = 0; i < l$assetTemplateCounters.length; i++) {
        final l$assetTemplateCounters$entry = l$assetTemplateCounters[i];
        final lOther$assetTemplateCounters$entry =
            lOther$assetTemplateCounters[i];
        if (l$assetTemplateCounters$entry !=
            lOther$assetTemplateCounters$entry) {
          return false;
        }
      }
    } else if (l$assetTemplateCounters != lOther$assetTemplateCounters) {
      return false;
    }
    final l$templateProperties = templateProperties;
    final lOther$templateProperties = other.templateProperties;
    if (l$templateProperties != null && lOther$templateProperties != null) {
      if (l$templateProperties.length != lOther$templateProperties.length) {
        return false;
      }
      for (int i = 0; i < l$templateProperties.length; i++) {
        final l$templateProperties$entry = l$templateProperties[i];
        final lOther$templateProperties$entry = lOther$templateProperties[i];
        if (l$templateProperties$entry != lOther$templateProperties$entry) {
          return false;
        }
      }
    } else if (l$templateProperties != lOther$templateProperties) {
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

extension UtilityExtension$Mutation$UpdateAssetTemplate$updateAssetTemplate
    on Mutation$UpdateAssetTemplate$updateAssetTemplate {
  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<
          Mutation$UpdateAssetTemplate$updateAssetTemplate>
      get copyWith => CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes> {
  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate(
    Mutation$UpdateAssetTemplate$updateAssetTemplate instance,
    TRes Function(Mutation$UpdateAssetTemplate$updateAssetTemplate) then,
  ) = _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate;

  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate;

  TRes call({
    String? id,
    String? name,
    String? codeFormat,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>?
        syncTargets,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>?
        assetTemplateCounters,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>?
        templateProperties,
    String? $__typename,
  });
  TRes syncTargets(
      Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
                      Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets>?>?)
          _fn);
  TRes assetTemplateCounters(
      Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
                      Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters>?>?)
          _fn);
  TRes templateProperties(
      Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
                      Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes>
    implements CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes> {
  _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAssetTemplate$updateAssetTemplate _instance;

  final TRes Function(Mutation$UpdateAssetTemplate$updateAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? codeFormat = _undefined,
    Object? syncTargets = _undefined,
    Object? assetTemplateCounters = _undefined,
    Object? templateProperties = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAssetTemplate$updateAssetTemplate(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        codeFormat: codeFormat == _undefined
            ? _instance.codeFormat
            : (codeFormat as String?),
        syncTargets: syncTargets == _undefined
            ? _instance.syncTargets
            : (syncTargets as List<
                Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>?),
        assetTemplateCounters: assetTemplateCounters == _undefined
            ? _instance.assetTemplateCounters
            : (assetTemplateCounters as List<
                Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>?),
        templateProperties: templateProperties == _undefined
            ? _instance.templateProperties
            : (templateProperties as List<
                Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes syncTargets(
          Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
                          Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets>?>?)
              _fn) =>
      call(
          syncTargets: _fn(_instance.syncTargets?.map((e) => e == null
              ? null
              : CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
                  e,
                  (i) => i,
                )))?.toList());

  TRes assetTemplateCounters(
          Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
                          Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters>?>?)
              _fn) =>
      call(
          assetTemplateCounters:
              _fn(_instance.assetTemplateCounters?.map((e) => e == null
                  ? null
                  : CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
                      e,
                      (i) => i,
                    )))?.toList());

  TRes templateProperties(
          Iterable<Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
                          Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties>?>?)
              _fn) =>
      call(
          templateProperties: _fn(_instance.templateProperties?.map((e) => e ==
                  null
              ? null
              : CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes>
    implements CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? codeFormat,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets?>?
        syncTargets,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters?>?
        assetTemplateCounters,
    List<Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties?>?
        templateProperties,
    String? $__typename,
  }) =>
      _res;

  syncTargets(_fn) => _res;

  assetTemplateCounters(_fn) => _res;

  templateProperties(_fn) => _res;
}

class Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets {
  Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets({
    this.name,
    this.$__typename = 'AssetTemplateSyncTarget',
  });

  factory Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets
    on Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets {
  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
          Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets>
      get copyWith =>
          CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
    TRes> {
  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
    Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets instance,
    TRes Function(Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets)
        then,
  ) = _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets;

  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
            TRes> {
  _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets _instance;

  final TRes Function(
      Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$syncTargets(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters {
  Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters({
    this.id,
    this.groupId,
    this.key,
    this.name,
    this.dataType,
    this.incrementType,
    this.$__typename = 'AssetTemplateCounterOfAssetTemplateCounterTrigger',
  });

  factory Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$groupId = json['groupId'];
    final l$key = json['key'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$incrementType = json['incrementType'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
      id: (l$id as String?),
      groupId: (l$groupId as String?),
      key: (l$key as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      incrementType: (l$incrementType as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? groupId;

  final String? key;

  final String? name;

  final String? dataType;

  final String? incrementType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groupId = groupId;
    _resultData['groupId'] = l$groupId;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$incrementType = incrementType;
    _resultData['incrementType'] = l$incrementType;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$groupId = groupId;
    final l$key = key;
    final l$name = name;
    final l$dataType = dataType;
    final l$incrementType = incrementType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$groupId,
      l$key,
      l$name,
      l$dataType,
      l$incrementType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$incrementType = incrementType;
    final lOther$incrementType = other.incrementType;
    if (l$incrementType != lOther$incrementType) {
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

extension UtilityExtension$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters
    on Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters {
  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
          Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters>
      get copyWith =>
          CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
    TRes> {
  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
    Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters
        instance,
    TRes Function(
            Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters)
        then,
  ) = _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters;

  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters;

  TRes call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
            TRes> {
  _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters
      _instance;

  final TRes Function(
          Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? groupId = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? incrementType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
        id: id == _undefined ? _instance.id : (id as String?),
        groupId:
            groupId == _undefined ? _instance.groupId : (groupId as String?),
        key: key == _undefined ? _instance.key : (key as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        incrementType: incrementType == _undefined
            ? _instance.incrementType
            : (incrementType as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$assetTemplateCounters(
      this._res);

  TRes _res;

  call({
    String? id,
    String? groupId,
    String? key,
    String? name,
    String? dataType,
    String? incrementType,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties {
  Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties({
    this.id,
    this.name,
    this.dataType,
    required this.isMandatory,
    required this.active,
    required this.sequence,
    this.viewerGroupIds,
    this.updaterGroupIds,
    this.$__typename = 'AssetTemplatePropertyQuery',
  });

  factory Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$isMandatory = json['isMandatory'];
    final l$active = json['active'];
    final l$sequence = json['sequence'];
    final l$viewerGroupIds = json['viewerGroupIds'];
    final l$updaterGroupIds = json['updaterGroupIds'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
      id: (l$id as String?),
      name: (l$name as String?),
      dataType: (l$dataType as String?),
      isMandatory: (l$isMandatory as bool),
      active: (l$active as bool),
      sequence: (l$sequence as int),
      viewerGroupIds: (l$viewerGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      updaterGroupIds: (l$updaterGroupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? dataType;

  final bool isMandatory;

  final bool active;

  final int sequence;

  final List<String>? viewerGroupIds;

  final List<String>? updaterGroupIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$isMandatory = isMandatory;
    _resultData['isMandatory'] = l$isMandatory;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$viewerGroupIds = viewerGroupIds;
    _resultData['viewerGroupIds'] = l$viewerGroupIds?.map((e) => e).toList();
    final l$updaterGroupIds = updaterGroupIds;
    _resultData['updaterGroupIds'] = l$updaterGroupIds?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$dataType = dataType;
    final l$isMandatory = isMandatory;
    final l$active = active;
    final l$sequence = sequence;
    final l$viewerGroupIds = viewerGroupIds;
    final l$updaterGroupIds = updaterGroupIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$dataType,
      l$isMandatory,
      l$active,
      l$sequence,
      l$viewerGroupIds == null
          ? null
          : Object.hashAll(l$viewerGroupIds.map((v) => v)),
      l$updaterGroupIds == null
          ? null
          : Object.hashAll(l$updaterGroupIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$dataType = dataType;
    final lOther$dataType = other.dataType;
    if (l$dataType != lOther$dataType) {
      return false;
    }
    final l$isMandatory = isMandatory;
    final lOther$isMandatory = other.isMandatory;
    if (l$isMandatory != lOther$isMandatory) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$viewerGroupIds = viewerGroupIds;
    final lOther$viewerGroupIds = other.viewerGroupIds;
    if (l$viewerGroupIds != null && lOther$viewerGroupIds != null) {
      if (l$viewerGroupIds.length != lOther$viewerGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$viewerGroupIds.length; i++) {
        final l$viewerGroupIds$entry = l$viewerGroupIds[i];
        final lOther$viewerGroupIds$entry = lOther$viewerGroupIds[i];
        if (l$viewerGroupIds$entry != lOther$viewerGroupIds$entry) {
          return false;
        }
      }
    } else if (l$viewerGroupIds != lOther$viewerGroupIds) {
      return false;
    }
    final l$updaterGroupIds = updaterGroupIds;
    final lOther$updaterGroupIds = other.updaterGroupIds;
    if (l$updaterGroupIds != null && lOther$updaterGroupIds != null) {
      if (l$updaterGroupIds.length != lOther$updaterGroupIds.length) {
        return false;
      }
      for (int i = 0; i < l$updaterGroupIds.length; i++) {
        final l$updaterGroupIds$entry = l$updaterGroupIds[i];
        final lOther$updaterGroupIds$entry = lOther$updaterGroupIds[i];
        if (l$updaterGroupIds$entry != lOther$updaterGroupIds$entry) {
          return false;
        }
      }
    } else if (l$updaterGroupIds != lOther$updaterGroupIds) {
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

extension UtilityExtension$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties
    on Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties {
  CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
          Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties>
      get copyWith =>
          CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
    TRes> {
  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
    Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties
        instance,
    TRes Function(
            Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties)
        then,
  ) = _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties;

  factory CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties;

  TRes call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
            TRes> {
  _CopyWithImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties
      _instance;

  final TRes Function(
          Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? isMandatory = _undefined,
    Object? active = _undefined,
    Object? sequence = _undefined,
    Object? viewerGroupIds = _undefined,
    Object? updaterGroupIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        dataType:
            dataType == _undefined ? _instance.dataType : (dataType as String?),
        isMandatory: isMandatory == _undefined || isMandatory == null
            ? _instance.isMandatory
            : (isMandatory as bool),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        viewerGroupIds: viewerGroupIds == _undefined
            ? _instance.viewerGroupIds
            : (viewerGroupIds as List<String>?),
        updaterGroupIds: updaterGroupIds == _undefined
            ? _instance.updaterGroupIds
            : (updaterGroupIds as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
        TRes>
    implements
        CopyWith$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateAssetTemplate$updateAssetTemplate$templateProperties(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? dataType,
    bool? isMandatory,
    bool? active,
    int? sequence,
    List<String>? viewerGroupIds,
    List<String>? updaterGroupIds,
    String? $__typename,
  }) =>
      _res;
}
