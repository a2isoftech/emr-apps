import 'package:gql/ast.dart';

class Query$loadAndSaveAssetsOnAllTemplates {
  Query$loadAndSaveAssetsOnAllTemplates({
    required this.loadAndSaveAssetsOnAllTemplates,
    this.$__typename = 'Query',
  });

  factory Query$loadAndSaveAssetsOnAllTemplates.fromJson(
      Map<String, dynamic> json) {
    final l$loadAndSaveAssetsOnAllTemplates =
        json['loadAndSaveAssetsOnAllTemplates'];
    final l$$__typename = json['__typename'];
    return Query$loadAndSaveAssetsOnAllTemplates(
      loadAndSaveAssetsOnAllTemplates:
          Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
              .fromJson(
                  (l$loadAndSaveAssetsOnAllTemplates as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
      loadAndSaveAssetsOnAllTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadAndSaveAssetsOnAllTemplates = loadAndSaveAssetsOnAllTemplates;
    _resultData['loadAndSaveAssetsOnAllTemplates'] =
        l$loadAndSaveAssetsOnAllTemplates.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadAndSaveAssetsOnAllTemplates = loadAndSaveAssetsOnAllTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loadAndSaveAssetsOnAllTemplates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$loadAndSaveAssetsOnAllTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadAndSaveAssetsOnAllTemplates = loadAndSaveAssetsOnAllTemplates;
    final lOther$loadAndSaveAssetsOnAllTemplates =
        other.loadAndSaveAssetsOnAllTemplates;
    if (l$loadAndSaveAssetsOnAllTemplates !=
        lOther$loadAndSaveAssetsOnAllTemplates) {
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

extension UtilityExtension$Query$loadAndSaveAssetsOnAllTemplates
    on Query$loadAndSaveAssetsOnAllTemplates {
  CopyWith$Query$loadAndSaveAssetsOnAllTemplates<
          Query$loadAndSaveAssetsOnAllTemplates>
      get copyWith => CopyWith$Query$loadAndSaveAssetsOnAllTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$loadAndSaveAssetsOnAllTemplates<TRes> {
  factory CopyWith$Query$loadAndSaveAssetsOnAllTemplates(
    Query$loadAndSaveAssetsOnAllTemplates instance,
    TRes Function(Query$loadAndSaveAssetsOnAllTemplates) then,
  ) = _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates;

  factory CopyWith$Query$loadAndSaveAssetsOnAllTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates;

  TRes call({
    Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates?
        loadAndSaveAssetsOnAllTemplates,
    String? $__typename,
  });
  CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
      TRes> get loadAndSaveAssetsOnAllTemplates;
}

class _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates<TRes>
    implements CopyWith$Query$loadAndSaveAssetsOnAllTemplates<TRes> {
  _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates(
    this._instance,
    this._then,
  );

  final Query$loadAndSaveAssetsOnAllTemplates _instance;

  final TRes Function(Query$loadAndSaveAssetsOnAllTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loadAndSaveAssetsOnAllTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$loadAndSaveAssetsOnAllTemplates(
        loadAndSaveAssetsOnAllTemplates: loadAndSaveAssetsOnAllTemplates ==
                    _undefined ||
                loadAndSaveAssetsOnAllTemplates == null
            ? _instance.loadAndSaveAssetsOnAllTemplates
            : (loadAndSaveAssetsOnAllTemplates
                as Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
      TRes> get loadAndSaveAssetsOnAllTemplates {
    final local$loadAndSaveAssetsOnAllTemplates =
        _instance.loadAndSaveAssetsOnAllTemplates;
    return CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
        local$loadAndSaveAssetsOnAllTemplates,
        (e) => call(loadAndSaveAssetsOnAllTemplates: e));
  }
}

class _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates<TRes>
    implements CopyWith$Query$loadAndSaveAssetsOnAllTemplates<TRes> {
  _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates(this._res);

  TRes _res;

  call({
    Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates?
        loadAndSaveAssetsOnAllTemplates,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
          TRes>
      get loadAndSaveAssetsOnAllTemplates =>
          CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
              .stub(_res);
}

const documentNodeQueryloadAndSaveAssetsOnAllTemplates =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'loadAndSaveAssetsOnAllTemplates'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loadAndSaveAssetsOnAllTemplates'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'infos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'successes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'warnings'),
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

class Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates {
  Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates({
    required this.errors,
    required this.infos,
    required this.successes,
    required this.warnings,
    this.$__typename = 'ApiResponse',
  });

  factory Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$infos = json['infos'];
    final l$successes = json['successes'];
    final l$warnings = json['warnings'];
    final l$$__typename = json['__typename'];
    return Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
      errors: (l$errors as List<dynamic>).map((e) => (e as String)).toList(),
      infos: (l$infos as List<dynamic>).map((e) => (e as String)).toList(),
      successes:
          (l$successes as List<dynamic>).map((e) => (e as String)).toList(),
      warnings:
          (l$warnings as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> errors;

  final List<String> infos;

  final List<String> successes;

  final List<String> warnings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e).toList();
    final l$infos = infos;
    _resultData['infos'] = l$infos.map((e) => e).toList();
    final l$successes = successes;
    _resultData['successes'] = l$successes.map((e) => e).toList();
    final l$warnings = warnings;
    _resultData['warnings'] = l$warnings.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errors = errors;
    final l$infos = infos;
    final l$successes = successes;
    final l$warnings = warnings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$errors.map((v) => v)),
      Object.hashAll(l$infos.map((v) => v)),
      Object.hashAll(l$successes.map((v) => v)),
      Object.hashAll(l$warnings.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$infos = infos;
    final lOther$infos = other.infos;
    if (l$infos.length != lOther$infos.length) {
      return false;
    }
    for (int i = 0; i < l$infos.length; i++) {
      final l$infos$entry = l$infos[i];
      final lOther$infos$entry = lOther$infos[i];
      if (l$infos$entry != lOther$infos$entry) {
        return false;
      }
    }
    final l$successes = successes;
    final lOther$successes = other.successes;
    if (l$successes.length != lOther$successes.length) {
      return false;
    }
    for (int i = 0; i < l$successes.length; i++) {
      final l$successes$entry = l$successes[i];
      final lOther$successes$entry = lOther$successes[i];
      if (l$successes$entry != lOther$successes$entry) {
        return false;
      }
    }
    final l$warnings = warnings;
    final lOther$warnings = other.warnings;
    if (l$warnings.length != lOther$warnings.length) {
      return false;
    }
    for (int i = 0; i < l$warnings.length; i++) {
      final l$warnings$entry = l$warnings[i];
      final lOther$warnings$entry = lOther$warnings[i];
      if (l$warnings$entry != lOther$warnings$entry) {
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

extension UtilityExtension$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
    on Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates {
  CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
          Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates>
      get copyWith =>
          CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
    TRes> {
  factory CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
    Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
        instance,
    TRes Function(
            Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates)
        then,
  ) = _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates;

  factory CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates.stub(
          TRes res) =
      _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates;

  TRes call({
    List<String>? errors,
    List<String>? infos,
    List<String>? successes,
    List<String>? warnings,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
        TRes>
    implements
        CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
            TRes> {
  _CopyWithImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
    this._instance,
    this._then,
  );

  final Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates
      _instance;

  final TRes Function(
          Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errors = _undefined,
    Object? infos = _undefined,
    Object? successes = _undefined,
    Object? warnings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<String>),
        infos: infos == _undefined || infos == null
            ? _instance.infos
            : (infos as List<String>),
        successes: successes == _undefined || successes == null
            ? _instance.successes
            : (successes as List<String>),
        warnings: warnings == _undefined || warnings == null
            ? _instance.warnings
            : (warnings as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
        TRes>
    implements
        CopyWith$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates<
            TRes> {
  _CopyWithStubImpl$Query$loadAndSaveAssetsOnAllTemplates$loadAndSaveAssetsOnAllTemplates(
      this._res);

  TRes _res;

  call({
    List<String>? errors,
    List<String>? infos,
    List<String>? successes,
    List<String>? warnings,
    String? $__typename,
  }) =>
      _res;
}
