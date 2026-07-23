import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$BulkUpdateAssets {
  factory Variables$Mutation$BulkUpdateAssets(
          {required Input$BulkUpdateAssetInput input}) =>
      Variables$Mutation$BulkUpdateAssets._({
        r'input': input,
      });

  Variables$Mutation$BulkUpdateAssets._(this._$data);

  factory Variables$Mutation$BulkUpdateAssets.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$BulkUpdateAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$BulkUpdateAssets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BulkUpdateAssetInput get input =>
      (_$data['input'] as Input$BulkUpdateAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$BulkUpdateAssets<
          Variables$Mutation$BulkUpdateAssets>
      get copyWith => CopyWith$Variables$Mutation$BulkUpdateAssets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$BulkUpdateAssets) ||
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

abstract class CopyWith$Variables$Mutation$BulkUpdateAssets<TRes> {
  factory CopyWith$Variables$Mutation$BulkUpdateAssets(
    Variables$Mutation$BulkUpdateAssets instance,
    TRes Function(Variables$Mutation$BulkUpdateAssets) then,
  ) = _CopyWithImpl$Variables$Mutation$BulkUpdateAssets;

  factory CopyWith$Variables$Mutation$BulkUpdateAssets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$BulkUpdateAssets;

  TRes call({Input$BulkUpdateAssetInput? input});
}

class _CopyWithImpl$Variables$Mutation$BulkUpdateAssets<TRes>
    implements CopyWith$Variables$Mutation$BulkUpdateAssets<TRes> {
  _CopyWithImpl$Variables$Mutation$BulkUpdateAssets(
    this._instance,
    this._then,
  );

  final Variables$Mutation$BulkUpdateAssets _instance;

  final TRes Function(Variables$Mutation$BulkUpdateAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$BulkUpdateAssets._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$BulkUpdateAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$BulkUpdateAssets<TRes>
    implements CopyWith$Variables$Mutation$BulkUpdateAssets<TRes> {
  _CopyWithStubImpl$Variables$Mutation$BulkUpdateAssets(this._res);

  TRes _res;

  call({Input$BulkUpdateAssetInput? input}) => _res;
}

class Mutation$BulkUpdateAssets {
  Mutation$BulkUpdateAssets({
    required this.bulkUpdateAsset,
    this.$__typename = 'Mutation',
  });

  factory Mutation$BulkUpdateAssets.fromJson(Map<String, dynamic> json) {
    final l$bulkUpdateAsset = json['bulkUpdateAsset'];
    final l$$__typename = json['__typename'];
    return Mutation$BulkUpdateAssets(
      bulkUpdateAsset: Mutation$BulkUpdateAssets$bulkUpdateAsset.fromJson(
          (l$bulkUpdateAsset as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$BulkUpdateAssets$bulkUpdateAsset bulkUpdateAsset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bulkUpdateAsset = bulkUpdateAsset;
    _resultData['bulkUpdateAsset'] = l$bulkUpdateAsset.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bulkUpdateAsset = bulkUpdateAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bulkUpdateAsset,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$BulkUpdateAssets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bulkUpdateAsset = bulkUpdateAsset;
    final lOther$bulkUpdateAsset = other.bulkUpdateAsset;
    if (l$bulkUpdateAsset != lOther$bulkUpdateAsset) {
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

extension UtilityExtension$Mutation$BulkUpdateAssets
    on Mutation$BulkUpdateAssets {
  CopyWith$Mutation$BulkUpdateAssets<Mutation$BulkUpdateAssets> get copyWith =>
      CopyWith$Mutation$BulkUpdateAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$BulkUpdateAssets<TRes> {
  factory CopyWith$Mutation$BulkUpdateAssets(
    Mutation$BulkUpdateAssets instance,
    TRes Function(Mutation$BulkUpdateAssets) then,
  ) = _CopyWithImpl$Mutation$BulkUpdateAssets;

  factory CopyWith$Mutation$BulkUpdateAssets.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BulkUpdateAssets;

  TRes call({
    Mutation$BulkUpdateAssets$bulkUpdateAsset? bulkUpdateAsset,
    String? $__typename,
  });
  CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes> get bulkUpdateAsset;
}

class _CopyWithImpl$Mutation$BulkUpdateAssets<TRes>
    implements CopyWith$Mutation$BulkUpdateAssets<TRes> {
  _CopyWithImpl$Mutation$BulkUpdateAssets(
    this._instance,
    this._then,
  );

  final Mutation$BulkUpdateAssets _instance;

  final TRes Function(Mutation$BulkUpdateAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bulkUpdateAsset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BulkUpdateAssets(
        bulkUpdateAsset: bulkUpdateAsset == _undefined ||
                bulkUpdateAsset == null
            ? _instance.bulkUpdateAsset
            : (bulkUpdateAsset as Mutation$BulkUpdateAssets$bulkUpdateAsset),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes> get bulkUpdateAsset {
    final local$bulkUpdateAsset = _instance.bulkUpdateAsset;
    return CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset(
        local$bulkUpdateAsset, (e) => call(bulkUpdateAsset: e));
  }
}

class _CopyWithStubImpl$Mutation$BulkUpdateAssets<TRes>
    implements CopyWith$Mutation$BulkUpdateAssets<TRes> {
  _CopyWithStubImpl$Mutation$BulkUpdateAssets(this._res);

  TRes _res;

  call({
    Mutation$BulkUpdateAssets$bulkUpdateAsset? bulkUpdateAsset,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes>
      get bulkUpdateAsset =>
          CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset.stub(_res);
}

const documentNodeMutationBulkUpdateAssets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'BulkUpdateAssets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'BulkUpdateAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bulkUpdateAsset'),
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

class Mutation$BulkUpdateAssets$bulkUpdateAsset {
  Mutation$BulkUpdateAssets$bulkUpdateAsset({
    required this.errors,
    required this.infos,
    required this.successes,
    required this.warnings,
    this.$__typename = 'ApiResponse',
  });

  factory Mutation$BulkUpdateAssets$bulkUpdateAsset.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$infos = json['infos'];
    final l$successes = json['successes'];
    final l$warnings = json['warnings'];
    final l$$__typename = json['__typename'];
    return Mutation$BulkUpdateAssets$bulkUpdateAsset(
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
    if (!(other is Mutation$BulkUpdateAssets$bulkUpdateAsset) ||
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

extension UtilityExtension$Mutation$BulkUpdateAssets$bulkUpdateAsset
    on Mutation$BulkUpdateAssets$bulkUpdateAsset {
  CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<
          Mutation$BulkUpdateAssets$bulkUpdateAsset>
      get copyWith => CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes> {
  factory CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset(
    Mutation$BulkUpdateAssets$bulkUpdateAsset instance,
    TRes Function(Mutation$BulkUpdateAssets$bulkUpdateAsset) then,
  ) = _CopyWithImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset;

  factory CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset;

  TRes call({
    List<String>? errors,
    List<String>? infos,
    List<String>? successes,
    List<String>? warnings,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes>
    implements CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes> {
  _CopyWithImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset(
    this._instance,
    this._then,
  );

  final Mutation$BulkUpdateAssets$bulkUpdateAsset _instance;

  final TRes Function(Mutation$BulkUpdateAssets$bulkUpdateAsset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? errors = _undefined,
    Object? infos = _undefined,
    Object? successes = _undefined,
    Object? warnings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$BulkUpdateAssets$bulkUpdateAsset(
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

class _CopyWithStubImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes>
    implements CopyWith$Mutation$BulkUpdateAssets$bulkUpdateAsset<TRes> {
  _CopyWithStubImpl$Mutation$BulkUpdateAssets$bulkUpdateAsset(this._res);

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
