import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ImportAssetTemplate {
  factory Variables$Mutation$ImportAssetTemplate(
          {required Input$ImportAssetTemplateInput input}) =>
      Variables$Mutation$ImportAssetTemplate._({
        r'input': input,
      });

  Variables$Mutation$ImportAssetTemplate._(this._$data);

  factory Variables$Mutation$ImportAssetTemplate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ImportAssetTemplateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ImportAssetTemplate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ImportAssetTemplateInput get input =>
      (_$data['input'] as Input$ImportAssetTemplateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ImportAssetTemplate<
          Variables$Mutation$ImportAssetTemplate>
      get copyWith => CopyWith$Variables$Mutation$ImportAssetTemplate(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ImportAssetTemplate) ||
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

abstract class CopyWith$Variables$Mutation$ImportAssetTemplate<TRes> {
  factory CopyWith$Variables$Mutation$ImportAssetTemplate(
    Variables$Mutation$ImportAssetTemplate instance,
    TRes Function(Variables$Mutation$ImportAssetTemplate) then,
  ) = _CopyWithImpl$Variables$Mutation$ImportAssetTemplate;

  factory CopyWith$Variables$Mutation$ImportAssetTemplate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ImportAssetTemplate;

  TRes call({Input$ImportAssetTemplateInput? input});
}

class _CopyWithImpl$Variables$Mutation$ImportAssetTemplate<TRes>
    implements CopyWith$Variables$Mutation$ImportAssetTemplate<TRes> {
  _CopyWithImpl$Variables$Mutation$ImportAssetTemplate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ImportAssetTemplate _instance;

  final TRes Function(Variables$Mutation$ImportAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ImportAssetTemplate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ImportAssetTemplateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ImportAssetTemplate<TRes>
    implements CopyWith$Variables$Mutation$ImportAssetTemplate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ImportAssetTemplate(this._res);

  TRes _res;

  call({Input$ImportAssetTemplateInput? input}) => _res;
}

class Mutation$ImportAssetTemplate {
  Mutation$ImportAssetTemplate({
    required this.importAssetTemplate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ImportAssetTemplate.fromJson(Map<String, dynamic> json) {
    final l$importAssetTemplate = json['importAssetTemplate'];
    final l$$__typename = json['__typename'];
    return Mutation$ImportAssetTemplate(
      importAssetTemplate:
          Mutation$ImportAssetTemplate$importAssetTemplate.fromJson(
              (l$importAssetTemplate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ImportAssetTemplate$importAssetTemplate importAssetTemplate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$importAssetTemplate = importAssetTemplate;
    _resultData['importAssetTemplate'] = l$importAssetTemplate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$importAssetTemplate = importAssetTemplate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$importAssetTemplate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ImportAssetTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$importAssetTemplate = importAssetTemplate;
    final lOther$importAssetTemplate = other.importAssetTemplate;
    if (l$importAssetTemplate != lOther$importAssetTemplate) {
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

extension UtilityExtension$Mutation$ImportAssetTemplate
    on Mutation$ImportAssetTemplate {
  CopyWith$Mutation$ImportAssetTemplate<Mutation$ImportAssetTemplate>
      get copyWith => CopyWith$Mutation$ImportAssetTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ImportAssetTemplate<TRes> {
  factory CopyWith$Mutation$ImportAssetTemplate(
    Mutation$ImportAssetTemplate instance,
    TRes Function(Mutation$ImportAssetTemplate) then,
  ) = _CopyWithImpl$Mutation$ImportAssetTemplate;

  factory CopyWith$Mutation$ImportAssetTemplate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ImportAssetTemplate;

  TRes call({
    Mutation$ImportAssetTemplate$importAssetTemplate? importAssetTemplate,
    String? $__typename,
  });
  CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes>
      get importAssetTemplate;
}

class _CopyWithImpl$Mutation$ImportAssetTemplate<TRes>
    implements CopyWith$Mutation$ImportAssetTemplate<TRes> {
  _CopyWithImpl$Mutation$ImportAssetTemplate(
    this._instance,
    this._then,
  );

  final Mutation$ImportAssetTemplate _instance;

  final TRes Function(Mutation$ImportAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? importAssetTemplate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ImportAssetTemplate(
        importAssetTemplate:
            importAssetTemplate == _undefined || importAssetTemplate == null
                ? _instance.importAssetTemplate
                : (importAssetTemplate
                    as Mutation$ImportAssetTemplate$importAssetTemplate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes>
      get importAssetTemplate {
    final local$importAssetTemplate = _instance.importAssetTemplate;
    return CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate(
        local$importAssetTemplate, (e) => call(importAssetTemplate: e));
  }
}

class _CopyWithStubImpl$Mutation$ImportAssetTemplate<TRes>
    implements CopyWith$Mutation$ImportAssetTemplate<TRes> {
  _CopyWithStubImpl$Mutation$ImportAssetTemplate(this._res);

  TRes _res;

  call({
    Mutation$ImportAssetTemplate$importAssetTemplate? importAssetTemplate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes>
      get importAssetTemplate =>
          CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate.stub(_res);
}

const documentNodeMutationImportAssetTemplate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ImportAssetTemplate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ImportAssetTemplateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'importAssetTemplate'),
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

class Mutation$ImportAssetTemplate$importAssetTemplate {
  Mutation$ImportAssetTemplate$importAssetTemplate({
    required this.errors,
    required this.infos,
    required this.successes,
    required this.warnings,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$ImportAssetTemplate$importAssetTemplate.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$infos = json['infos'];
    final l$successes = json['successes'];
    final l$warnings = json['warnings'];
    final l$$__typename = json['__typename'];
    return Mutation$ImportAssetTemplate$importAssetTemplate(
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
    if (!(other is Mutation$ImportAssetTemplate$importAssetTemplate) ||
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

extension UtilityExtension$Mutation$ImportAssetTemplate$importAssetTemplate
    on Mutation$ImportAssetTemplate$importAssetTemplate {
  CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<
          Mutation$ImportAssetTemplate$importAssetTemplate>
      get copyWith => CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes> {
  factory CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate(
    Mutation$ImportAssetTemplate$importAssetTemplate instance,
    TRes Function(Mutation$ImportAssetTemplate$importAssetTemplate) then,
  ) = _CopyWithImpl$Mutation$ImportAssetTemplate$importAssetTemplate;

  factory CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ImportAssetTemplate$importAssetTemplate;

  TRes call({
    List<String>? errors,
    List<String>? infos,
    List<String>? successes,
    List<String>? warnings,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ImportAssetTemplate$importAssetTemplate<TRes>
    implements CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes> {
  _CopyWithImpl$Mutation$ImportAssetTemplate$importAssetTemplate(
    this._instance,
    this._then,
  );

  final Mutation$ImportAssetTemplate$importAssetTemplate _instance;

  final TRes Function(Mutation$ImportAssetTemplate$importAssetTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errors = _undefined,
    Object? infos = _undefined,
    Object? successes = _undefined,
    Object? warnings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ImportAssetTemplate$importAssetTemplate(
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

class _CopyWithStubImpl$Mutation$ImportAssetTemplate$importAssetTemplate<TRes>
    implements CopyWith$Mutation$ImportAssetTemplate$importAssetTemplate<TRes> {
  _CopyWithStubImpl$Mutation$ImportAssetTemplate$importAssetTemplate(this._res);

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
