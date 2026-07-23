import 'package:gql/ast.dart';

class Query$templateProperties {
  Query$templateProperties({
    required this.assetTemplateProperty,
    this.$__typename = 'Query',
  });

  factory Query$templateProperties.fromJson(Map<String, dynamic> json) {
    final l$assetTemplateProperty = json['assetTemplateProperty'];
    final l$$__typename = json['__typename'];
    return Query$templateProperties(
      assetTemplateProperty: (l$assetTemplateProperty as List<dynamic>)
          .map((e) => Query$templateProperties$assetTemplateProperty.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$templateProperties$assetTemplateProperty>
      assetTemplateProperty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetTemplateProperty = assetTemplateProperty;
    _resultData['assetTemplateProperty'] =
        l$assetTemplateProperty.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetTemplateProperty = assetTemplateProperty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$assetTemplateProperty.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$templateProperties) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetTemplateProperty = assetTemplateProperty;
    final lOther$assetTemplateProperty = other.assetTemplateProperty;
    if (l$assetTemplateProperty.length != lOther$assetTemplateProperty.length) {
      return false;
    }
    for (int i = 0; i < l$assetTemplateProperty.length; i++) {
      final l$assetTemplateProperty$entry = l$assetTemplateProperty[i];
      final lOther$assetTemplateProperty$entry =
          lOther$assetTemplateProperty[i];
      if (l$assetTemplateProperty$entry != lOther$assetTemplateProperty$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$templateProperties
    on Query$templateProperties {
  CopyWith$Query$templateProperties<Query$templateProperties> get copyWith =>
      CopyWith$Query$templateProperties(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$templateProperties<TRes> {
  factory CopyWith$Query$templateProperties(
    Query$templateProperties instance,
    TRes Function(Query$templateProperties) then,
  ) = _CopyWithImpl$Query$templateProperties;

  factory CopyWith$Query$templateProperties.stub(TRes res) =
      _CopyWithStubImpl$Query$templateProperties;

  TRes call({
    List<Query$templateProperties$assetTemplateProperty>? assetTemplateProperty,
    String? $__typename,
  });
  TRes assetTemplateProperty(
      Iterable<Query$templateProperties$assetTemplateProperty> Function(
              Iterable<
                  CopyWith$Query$templateProperties$assetTemplateProperty<
                      Query$templateProperties$assetTemplateProperty>>)
          _fn);
}

class _CopyWithImpl$Query$templateProperties<TRes>
    implements CopyWith$Query$templateProperties<TRes> {
  _CopyWithImpl$Query$templateProperties(
    this._instance,
    this._then,
  );

  final Query$templateProperties _instance;

  final TRes Function(Query$templateProperties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetTemplateProperty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$templateProperties(
        assetTemplateProperty:
            assetTemplateProperty == _undefined || assetTemplateProperty == null
                ? _instance.assetTemplateProperty
                : (assetTemplateProperty
                    as List<Query$templateProperties$assetTemplateProperty>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes assetTemplateProperty(
          Iterable<Query$templateProperties$assetTemplateProperty> Function(
                  Iterable<
                      CopyWith$Query$templateProperties$assetTemplateProperty<
                          Query$templateProperties$assetTemplateProperty>>)
              _fn) =>
      call(
          assetTemplateProperty: _fn(_instance.assetTemplateProperty.map(
              (e) => CopyWith$Query$templateProperties$assetTemplateProperty(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$templateProperties<TRes>
    implements CopyWith$Query$templateProperties<TRes> {
  _CopyWithStubImpl$Query$templateProperties(this._res);

  TRes _res;

  call({
    List<Query$templateProperties$assetTemplateProperty>? assetTemplateProperty,
    String? $__typename,
  }) =>
      _res;

  assetTemplateProperty(_fn) => _res;
}

const documentNodeQuerytemplateProperties = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'templateProperties'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'assetTemplateProperty'),
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
            name: NameNode(value: 'dataType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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

class Query$templateProperties$assetTemplateProperty {
  Query$templateProperties$assetTemplateProperty({
    required this.name,
    required this.dataType,
    required this.value,
    this.$__typename = 'AssetSearchFilter',
  });

  factory Query$templateProperties$assetTemplateProperty.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$dataType = json['dataType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$templateProperties$assetTemplateProperty(
      name: (l$name as String),
      dataType: (l$dataType as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String dataType;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$dataType = dataType;
    _resultData['dataType'] = l$dataType;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$dataType = dataType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$dataType,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$templateProperties$assetTemplateProperty) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$templateProperties$assetTemplateProperty
    on Query$templateProperties$assetTemplateProperty {
  CopyWith$Query$templateProperties$assetTemplateProperty<
          Query$templateProperties$assetTemplateProperty>
      get copyWith => CopyWith$Query$templateProperties$assetTemplateProperty(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$templateProperties$assetTemplateProperty<TRes> {
  factory CopyWith$Query$templateProperties$assetTemplateProperty(
    Query$templateProperties$assetTemplateProperty instance,
    TRes Function(Query$templateProperties$assetTemplateProperty) then,
  ) = _CopyWithImpl$Query$templateProperties$assetTemplateProperty;

  factory CopyWith$Query$templateProperties$assetTemplateProperty.stub(
          TRes res) =
      _CopyWithStubImpl$Query$templateProperties$assetTemplateProperty;

  TRes call({
    String? name,
    String? dataType,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$templateProperties$assetTemplateProperty<TRes>
    implements CopyWith$Query$templateProperties$assetTemplateProperty<TRes> {
  _CopyWithImpl$Query$templateProperties$assetTemplateProperty(
    this._instance,
    this._then,
  );

  final Query$templateProperties$assetTemplateProperty _instance;

  final TRes Function(Query$templateProperties$assetTemplateProperty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? dataType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$templateProperties$assetTemplateProperty(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        dataType: dataType == _undefined || dataType == null
            ? _instance.dataType
            : (dataType as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$templateProperties$assetTemplateProperty<TRes>
    implements CopyWith$Query$templateProperties$assetTemplateProperty<TRes> {
  _CopyWithStubImpl$Query$templateProperties$assetTemplateProperty(this._res);

  TRes _res;

  call({
    String? name,
    String? dataType,
    String? value,
    String? $__typename,
  }) =>
      _res;
}
