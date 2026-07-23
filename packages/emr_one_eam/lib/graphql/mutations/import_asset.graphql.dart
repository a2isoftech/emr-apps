import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ImportAsset {
  factory Variables$Mutation$ImportAsset(
          {required Input$ImportAssetInput input}) =>
      Variables$Mutation$ImportAsset._({
        r'input': input,
      });

  Variables$Mutation$ImportAsset._(this._$data);

  factory Variables$Mutation$ImportAsset.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ImportAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$ImportAsset._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ImportAssetInput get input =>
      (_$data['input'] as Input$ImportAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ImportAsset<Variables$Mutation$ImportAsset>
      get copyWith => CopyWith$Variables$Mutation$ImportAsset(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ImportAsset) ||
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

abstract class CopyWith$Variables$Mutation$ImportAsset<TRes> {
  factory CopyWith$Variables$Mutation$ImportAsset(
    Variables$Mutation$ImportAsset instance,
    TRes Function(Variables$Mutation$ImportAsset) then,
  ) = _CopyWithImpl$Variables$Mutation$ImportAsset;

  factory CopyWith$Variables$Mutation$ImportAsset.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ImportAsset;

  TRes call({Input$ImportAssetInput? input});
}

class _CopyWithImpl$Variables$Mutation$ImportAsset<TRes>
    implements CopyWith$Variables$Mutation$ImportAsset<TRes> {
  _CopyWithImpl$Variables$Mutation$ImportAsset(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ImportAsset _instance;

  final TRes Function(Variables$Mutation$ImportAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$ImportAsset._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ImportAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ImportAsset<TRes>
    implements CopyWith$Variables$Mutation$ImportAsset<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ImportAsset(this._res);

  TRes _res;

  call({Input$ImportAssetInput? input}) => _res;
}

class Mutation$ImportAsset {
  Mutation$ImportAsset({
    required this.importAsset,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ImportAsset.fromJson(Map<String, dynamic> json) {
    final l$importAsset = json['importAsset'];
    final l$$__typename = json['__typename'];
    return Mutation$ImportAsset(
      importAsset: Mutation$ImportAsset$importAsset.fromJson(
          (l$importAsset as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ImportAsset$importAsset importAsset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$importAsset = importAsset;
    _resultData['importAsset'] = l$importAsset.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$importAsset = importAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$importAsset,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ImportAsset) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$importAsset = importAsset;
    final lOther$importAsset = other.importAsset;
    if (l$importAsset != lOther$importAsset) {
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

extension UtilityExtension$Mutation$ImportAsset on Mutation$ImportAsset {
  CopyWith$Mutation$ImportAsset<Mutation$ImportAsset> get copyWith =>
      CopyWith$Mutation$ImportAsset(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ImportAsset<TRes> {
  factory CopyWith$Mutation$ImportAsset(
    Mutation$ImportAsset instance,
    TRes Function(Mutation$ImportAsset) then,
  ) = _CopyWithImpl$Mutation$ImportAsset;

  factory CopyWith$Mutation$ImportAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ImportAsset;

  TRes call({
    Mutation$ImportAsset$importAsset? importAsset,
    String? $__typename,
  });
  CopyWith$Mutation$ImportAsset$importAsset<TRes> get importAsset;
}

class _CopyWithImpl$Mutation$ImportAsset<TRes>
    implements CopyWith$Mutation$ImportAsset<TRes> {
  _CopyWithImpl$Mutation$ImportAsset(
    this._instance,
    this._then,
  );

  final Mutation$ImportAsset _instance;

  final TRes Function(Mutation$ImportAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? importAsset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ImportAsset(
        importAsset: importAsset == _undefined || importAsset == null
            ? _instance.importAsset
            : (importAsset as Mutation$ImportAsset$importAsset),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ImportAsset$importAsset<TRes> get importAsset {
    final local$importAsset = _instance.importAsset;
    return CopyWith$Mutation$ImportAsset$importAsset(
        local$importAsset, (e) => call(importAsset: e));
  }
}

class _CopyWithStubImpl$Mutation$ImportAsset<TRes>
    implements CopyWith$Mutation$ImportAsset<TRes> {
  _CopyWithStubImpl$Mutation$ImportAsset(this._res);

  TRes _res;

  call({
    Mutation$ImportAsset$importAsset? importAsset,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ImportAsset$importAsset<TRes> get importAsset =>
      CopyWith$Mutation$ImportAsset$importAsset.stub(_res);
}

const documentNodeMutationImportAsset = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ImportAsset'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ImportAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'importAsset'),
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

class Mutation$ImportAsset$importAsset {
  Mutation$ImportAsset$importAsset({
    required this.errors,
    required this.infos,
    required this.successes,
    required this.warnings,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$ImportAsset$importAsset.fromJson(Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$infos = json['infos'];
    final l$successes = json['successes'];
    final l$warnings = json['warnings'];
    final l$$__typename = json['__typename'];
    return Mutation$ImportAsset$importAsset(
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
    if (!(other is Mutation$ImportAsset$importAsset) ||
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

extension UtilityExtension$Mutation$ImportAsset$importAsset
    on Mutation$ImportAsset$importAsset {
  CopyWith$Mutation$ImportAsset$importAsset<Mutation$ImportAsset$importAsset>
      get copyWith => CopyWith$Mutation$ImportAsset$importAsset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ImportAsset$importAsset<TRes> {
  factory CopyWith$Mutation$ImportAsset$importAsset(
    Mutation$ImportAsset$importAsset instance,
    TRes Function(Mutation$ImportAsset$importAsset) then,
  ) = _CopyWithImpl$Mutation$ImportAsset$importAsset;

  factory CopyWith$Mutation$ImportAsset$importAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ImportAsset$importAsset;

  TRes call({
    List<String>? errors,
    List<String>? infos,
    List<String>? successes,
    List<String>? warnings,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ImportAsset$importAsset<TRes>
    implements CopyWith$Mutation$ImportAsset$importAsset<TRes> {
  _CopyWithImpl$Mutation$ImportAsset$importAsset(
    this._instance,
    this._then,
  );

  final Mutation$ImportAsset$importAsset _instance;

  final TRes Function(Mutation$ImportAsset$importAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errors = _undefined,
    Object? infos = _undefined,
    Object? successes = _undefined,
    Object? warnings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ImportAsset$importAsset(
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

class _CopyWithStubImpl$Mutation$ImportAsset$importAsset<TRes>
    implements CopyWith$Mutation$ImportAsset$importAsset<TRes> {
  _CopyWithStubImpl$Mutation$ImportAsset$importAsset(this._res);

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
