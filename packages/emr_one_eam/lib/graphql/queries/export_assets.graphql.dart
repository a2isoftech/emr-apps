import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ExportAssets {
  factory Variables$Query$ExportAssets(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$ExportAssets._({
        r'input': input,
      });

  Variables$Query$ExportAssets._(this._$data);

  factory Variables$Query$ExportAssets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$ExportAssets._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportAssets<Variables$Query$ExportAssets>
      get copyWith => CopyWith$Variables$Query$ExportAssets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportAssets) ||
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

abstract class CopyWith$Variables$Query$ExportAssets<TRes> {
  factory CopyWith$Variables$Query$ExportAssets(
    Variables$Query$ExportAssets instance,
    TRes Function(Variables$Query$ExportAssets) then,
  ) = _CopyWithImpl$Variables$Query$ExportAssets;

  factory CopyWith$Variables$Query$ExportAssets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportAssets;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$ExportAssets<TRes>
    implements CopyWith$Variables$Query$ExportAssets<TRes> {
  _CopyWithImpl$Variables$Query$ExportAssets(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportAssets _instance;

  final TRes Function(Variables$Query$ExportAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ExportAssets._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportAssets<TRes>
    implements CopyWith$Variables$Query$ExportAssets<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportAssets(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$ExportAssets {
  Query$ExportAssets({
    required this.exportAssets,
    this.$__typename = 'Query',
  });

  factory Query$ExportAssets.fromJson(Map<String, dynamic> json) {
    final l$exportAssets = json['exportAssets'];
    final l$$__typename = json['__typename'];
    return Query$ExportAssets(
      exportAssets: (l$exportAssets as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssets = exportAssets;
    _resultData['exportAssets'] = l$exportAssets;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssets = exportAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssets,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportAssets) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssets = exportAssets;
    final lOther$exportAssets = other.exportAssets;
    if (l$exportAssets != lOther$exportAssets) {
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

extension UtilityExtension$Query$ExportAssets on Query$ExportAssets {
  CopyWith$Query$ExportAssets<Query$ExportAssets> get copyWith =>
      CopyWith$Query$ExportAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExportAssets<TRes> {
  factory CopyWith$Query$ExportAssets(
    Query$ExportAssets instance,
    TRes Function(Query$ExportAssets) then,
  ) = _CopyWithImpl$Query$ExportAssets;

  factory CopyWith$Query$ExportAssets.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportAssets;

  TRes call({
    String? exportAssets,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportAssets<TRes>
    implements CopyWith$Query$ExportAssets<TRes> {
  _CopyWithImpl$Query$ExportAssets(
    this._instance,
    this._then,
  );

  final Query$ExportAssets _instance;

  final TRes Function(Query$ExportAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportAssets(
        exportAssets: exportAssets == _undefined || exportAssets == null
            ? _instance.exportAssets
            : (exportAssets as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportAssets<TRes>
    implements CopyWith$Query$ExportAssets<TRes> {
  _CopyWithStubImpl$Query$ExportAssets(this._res);

  TRes _res;

  call({
    String? exportAssets,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportAssets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportAssets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssets'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);

class Variables$Query$ExportAssetMainAttributes {
  factory Variables$Query$ExportAssetMainAttributes(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$ExportAssetMainAttributes._({
        r'input': input,
      });

  Variables$Query$ExportAssetMainAttributes._(this._$data);

  factory Variables$Query$ExportAssetMainAttributes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$ExportAssetMainAttributes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportAssetMainAttributes<
          Variables$Query$ExportAssetMainAttributes>
      get copyWith => CopyWith$Variables$Query$ExportAssetMainAttributes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportAssetMainAttributes) ||
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

abstract class CopyWith$Variables$Query$ExportAssetMainAttributes<TRes> {
  factory CopyWith$Variables$Query$ExportAssetMainAttributes(
    Variables$Query$ExportAssetMainAttributes instance,
    TRes Function(Variables$Query$ExportAssetMainAttributes) then,
  ) = _CopyWithImpl$Variables$Query$ExportAssetMainAttributes;

  factory CopyWith$Variables$Query$ExportAssetMainAttributes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportAssetMainAttributes;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$ExportAssetMainAttributes<TRes>
    implements CopyWith$Variables$Query$ExportAssetMainAttributes<TRes> {
  _CopyWithImpl$Variables$Query$ExportAssetMainAttributes(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportAssetMainAttributes _instance;

  final TRes Function(Variables$Query$ExportAssetMainAttributes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ExportAssetMainAttributes._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportAssetMainAttributes<TRes>
    implements CopyWith$Variables$Query$ExportAssetMainAttributes<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportAssetMainAttributes(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$ExportAssetMainAttributes {
  Query$ExportAssetMainAttributes({
    required this.exportAssetMainAttributes,
    this.$__typename = 'Query',
  });

  factory Query$ExportAssetMainAttributes.fromJson(Map<String, dynamic> json) {
    final l$exportAssetMainAttributes = json['exportAssetMainAttributes'];
    final l$$__typename = json['__typename'];
    return Query$ExportAssetMainAttributes(
      exportAssetMainAttributes: (l$exportAssetMainAttributes as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssetMainAttributes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssetMainAttributes = exportAssetMainAttributes;
    _resultData['exportAssetMainAttributes'] = l$exportAssetMainAttributes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssetMainAttributes = exportAssetMainAttributes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssetMainAttributes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportAssetMainAttributes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssetMainAttributes = exportAssetMainAttributes;
    final lOther$exportAssetMainAttributes = other.exportAssetMainAttributes;
    if (l$exportAssetMainAttributes != lOther$exportAssetMainAttributes) {
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

extension UtilityExtension$Query$ExportAssetMainAttributes
    on Query$ExportAssetMainAttributes {
  CopyWith$Query$ExportAssetMainAttributes<Query$ExportAssetMainAttributes>
      get copyWith => CopyWith$Query$ExportAssetMainAttributes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ExportAssetMainAttributes<TRes> {
  factory CopyWith$Query$ExportAssetMainAttributes(
    Query$ExportAssetMainAttributes instance,
    TRes Function(Query$ExportAssetMainAttributes) then,
  ) = _CopyWithImpl$Query$ExportAssetMainAttributes;

  factory CopyWith$Query$ExportAssetMainAttributes.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportAssetMainAttributes;

  TRes call({
    String? exportAssetMainAttributes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportAssetMainAttributes<TRes>
    implements CopyWith$Query$ExportAssetMainAttributes<TRes> {
  _CopyWithImpl$Query$ExportAssetMainAttributes(
    this._instance,
    this._then,
  );

  final Query$ExportAssetMainAttributes _instance;

  final TRes Function(Query$ExportAssetMainAttributes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssetMainAttributes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportAssetMainAttributes(
        exportAssetMainAttributes: exportAssetMainAttributes == _undefined ||
                exportAssetMainAttributes == null
            ? _instance.exportAssetMainAttributes
            : (exportAssetMainAttributes as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportAssetMainAttributes<TRes>
    implements CopyWith$Query$ExportAssetMainAttributes<TRes> {
  _CopyWithStubImpl$Query$ExportAssetMainAttributes(this._res);

  TRes _res;

  call({
    String? exportAssetMainAttributes,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportAssetMainAttributes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportAssetMainAttributes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssetMainAttributes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);

class Variables$Query$ExportAssetCounters {
  factory Variables$Query$ExportAssetCounters(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$ExportAssetCounters._({
        r'input': input,
      });

  Variables$Query$ExportAssetCounters._(this._$data);

  factory Variables$Query$ExportAssetCounters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$ExportAssetCounters._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportAssetCounters<
          Variables$Query$ExportAssetCounters>
      get copyWith => CopyWith$Variables$Query$ExportAssetCounters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportAssetCounters) ||
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

abstract class CopyWith$Variables$Query$ExportAssetCounters<TRes> {
  factory CopyWith$Variables$Query$ExportAssetCounters(
    Variables$Query$ExportAssetCounters instance,
    TRes Function(Variables$Query$ExportAssetCounters) then,
  ) = _CopyWithImpl$Variables$Query$ExportAssetCounters;

  factory CopyWith$Variables$Query$ExportAssetCounters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportAssetCounters;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$ExportAssetCounters<TRes>
    implements CopyWith$Variables$Query$ExportAssetCounters<TRes> {
  _CopyWithImpl$Variables$Query$ExportAssetCounters(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportAssetCounters _instance;

  final TRes Function(Variables$Query$ExportAssetCounters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ExportAssetCounters._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportAssetCounters<TRes>
    implements CopyWith$Variables$Query$ExportAssetCounters<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportAssetCounters(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$ExportAssetCounters {
  Query$ExportAssetCounters({
    required this.exportAssetCounters,
    this.$__typename = 'Query',
  });

  factory Query$ExportAssetCounters.fromJson(Map<String, dynamic> json) {
    final l$exportAssetCounters = json['exportAssetCounters'];
    final l$$__typename = json['__typename'];
    return Query$ExportAssetCounters(
      exportAssetCounters: (l$exportAssetCounters as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssetCounters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssetCounters = exportAssetCounters;
    _resultData['exportAssetCounters'] = l$exportAssetCounters;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssetCounters = exportAssetCounters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssetCounters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportAssetCounters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssetCounters = exportAssetCounters;
    final lOther$exportAssetCounters = other.exportAssetCounters;
    if (l$exportAssetCounters != lOther$exportAssetCounters) {
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

extension UtilityExtension$Query$ExportAssetCounters
    on Query$ExportAssetCounters {
  CopyWith$Query$ExportAssetCounters<Query$ExportAssetCounters> get copyWith =>
      CopyWith$Query$ExportAssetCounters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExportAssetCounters<TRes> {
  factory CopyWith$Query$ExportAssetCounters(
    Query$ExportAssetCounters instance,
    TRes Function(Query$ExportAssetCounters) then,
  ) = _CopyWithImpl$Query$ExportAssetCounters;

  factory CopyWith$Query$ExportAssetCounters.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportAssetCounters;

  TRes call({
    String? exportAssetCounters,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportAssetCounters<TRes>
    implements CopyWith$Query$ExportAssetCounters<TRes> {
  _CopyWithImpl$Query$ExportAssetCounters(
    this._instance,
    this._then,
  );

  final Query$ExportAssetCounters _instance;

  final TRes Function(Query$ExportAssetCounters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssetCounters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportAssetCounters(
        exportAssetCounters:
            exportAssetCounters == _undefined || exportAssetCounters == null
                ? _instance.exportAssetCounters
                : (exportAssetCounters as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportAssetCounters<TRes>
    implements CopyWith$Query$ExportAssetCounters<TRes> {
  _CopyWithStubImpl$Query$ExportAssetCounters(this._res);

  TRes _res;

  call({
    String? exportAssetCounters,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportAssetCounters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportAssetCounters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssetCounters'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);

class Variables$Query$ExportAssetEvents {
  factory Variables$Query$ExportAssetEvents(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$ExportAssetEvents._({
        r'input': input,
      });

  Variables$Query$ExportAssetEvents._(this._$data);

  factory Variables$Query$ExportAssetEvents.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$ExportAssetEvents._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportAssetEvents<Variables$Query$ExportAssetEvents>
      get copyWith => CopyWith$Variables$Query$ExportAssetEvents(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportAssetEvents) ||
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

abstract class CopyWith$Variables$Query$ExportAssetEvents<TRes> {
  factory CopyWith$Variables$Query$ExportAssetEvents(
    Variables$Query$ExportAssetEvents instance,
    TRes Function(Variables$Query$ExportAssetEvents) then,
  ) = _CopyWithImpl$Variables$Query$ExportAssetEvents;

  factory CopyWith$Variables$Query$ExportAssetEvents.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportAssetEvents;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$ExportAssetEvents<TRes>
    implements CopyWith$Variables$Query$ExportAssetEvents<TRes> {
  _CopyWithImpl$Variables$Query$ExportAssetEvents(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportAssetEvents _instance;

  final TRes Function(Variables$Query$ExportAssetEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ExportAssetEvents._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportAssetEvents<TRes>
    implements CopyWith$Variables$Query$ExportAssetEvents<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportAssetEvents(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$ExportAssetEvents {
  Query$ExportAssetEvents({
    required this.exportAssetEvents,
    this.$__typename = 'Query',
  });

  factory Query$ExportAssetEvents.fromJson(Map<String, dynamic> json) {
    final l$exportAssetEvents = json['exportAssetEvents'];
    final l$$__typename = json['__typename'];
    return Query$ExportAssetEvents(
      exportAssetEvents: (l$exportAssetEvents as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssetEvents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssetEvents = exportAssetEvents;
    _resultData['exportAssetEvents'] = l$exportAssetEvents;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssetEvents = exportAssetEvents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssetEvents,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportAssetEvents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssetEvents = exportAssetEvents;
    final lOther$exportAssetEvents = other.exportAssetEvents;
    if (l$exportAssetEvents != lOther$exportAssetEvents) {
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

extension UtilityExtension$Query$ExportAssetEvents on Query$ExportAssetEvents {
  CopyWith$Query$ExportAssetEvents<Query$ExportAssetEvents> get copyWith =>
      CopyWith$Query$ExportAssetEvents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExportAssetEvents<TRes> {
  factory CopyWith$Query$ExportAssetEvents(
    Query$ExportAssetEvents instance,
    TRes Function(Query$ExportAssetEvents) then,
  ) = _CopyWithImpl$Query$ExportAssetEvents;

  factory CopyWith$Query$ExportAssetEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportAssetEvents;

  TRes call({
    String? exportAssetEvents,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportAssetEvents<TRes>
    implements CopyWith$Query$ExportAssetEvents<TRes> {
  _CopyWithImpl$Query$ExportAssetEvents(
    this._instance,
    this._then,
  );

  final Query$ExportAssetEvents _instance;

  final TRes Function(Query$ExportAssetEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssetEvents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportAssetEvents(
        exportAssetEvents:
            exportAssetEvents == _undefined || exportAssetEvents == null
                ? _instance.exportAssetEvents
                : (exportAssetEvents as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportAssetEvents<TRes>
    implements CopyWith$Query$ExportAssetEvents<TRes> {
  _CopyWithStubImpl$Query$ExportAssetEvents(this._res);

  TRes _res;

  call({
    String? exportAssetEvents,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportAssetEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportAssetEvents'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssetEvents'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);

class Variables$Query$ExportQrCodes {
  factory Variables$Query$ExportQrCodes(
          {required Input$SearchAssetInput input}) =>
      Variables$Query$ExportQrCodes._({
        r'input': input,
      });

  Variables$Query$ExportQrCodes._(this._$data);

  factory Variables$Query$ExportQrCodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SearchAssetInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$ExportQrCodes._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SearchAssetInput get input =>
      (_$data['input'] as Input$SearchAssetInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ExportQrCodes<Variables$Query$ExportQrCodes>
      get copyWith => CopyWith$Variables$Query$ExportQrCodes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ExportQrCodes) ||
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

abstract class CopyWith$Variables$Query$ExportQrCodes<TRes> {
  factory CopyWith$Variables$Query$ExportQrCodes(
    Variables$Query$ExportQrCodes instance,
    TRes Function(Variables$Query$ExportQrCodes) then,
  ) = _CopyWithImpl$Variables$Query$ExportQrCodes;

  factory CopyWith$Variables$Query$ExportQrCodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ExportQrCodes;

  TRes call({Input$SearchAssetInput? input});
}

class _CopyWithImpl$Variables$Query$ExportQrCodes<TRes>
    implements CopyWith$Variables$Query$ExportQrCodes<TRes> {
  _CopyWithImpl$Variables$Query$ExportQrCodes(
    this._instance,
    this._then,
  );

  final Variables$Query$ExportQrCodes _instance;

  final TRes Function(Variables$Query$ExportQrCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$ExportQrCodes._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SearchAssetInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$ExportQrCodes<TRes>
    implements CopyWith$Variables$Query$ExportQrCodes<TRes> {
  _CopyWithStubImpl$Variables$Query$ExportQrCodes(this._res);

  TRes _res;

  call({Input$SearchAssetInput? input}) => _res;
}

class Query$ExportQrCodes {
  Query$ExportQrCodes({
    required this.exportAssetQrCodes,
    this.$__typename = 'Query',
  });

  factory Query$ExportQrCodes.fromJson(Map<String, dynamic> json) {
    final l$exportAssetQrCodes = json['exportAssetQrCodes'];
    final l$$__typename = json['__typename'];
    return Query$ExportQrCodes(
      exportAssetQrCodes: (l$exportAssetQrCodes as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String exportAssetQrCodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$exportAssetQrCodes = exportAssetQrCodes;
    _resultData['exportAssetQrCodes'] = l$exportAssetQrCodes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$exportAssetQrCodes = exportAssetQrCodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$exportAssetQrCodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExportQrCodes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$exportAssetQrCodes = exportAssetQrCodes;
    final lOther$exportAssetQrCodes = other.exportAssetQrCodes;
    if (l$exportAssetQrCodes != lOther$exportAssetQrCodes) {
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

extension UtilityExtension$Query$ExportQrCodes on Query$ExportQrCodes {
  CopyWith$Query$ExportQrCodes<Query$ExportQrCodes> get copyWith =>
      CopyWith$Query$ExportQrCodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExportQrCodes<TRes> {
  factory CopyWith$Query$ExportQrCodes(
    Query$ExportQrCodes instance,
    TRes Function(Query$ExportQrCodes) then,
  ) = _CopyWithImpl$Query$ExportQrCodes;

  factory CopyWith$Query$ExportQrCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$ExportQrCodes;

  TRes call({
    String? exportAssetQrCodes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExportQrCodes<TRes>
    implements CopyWith$Query$ExportQrCodes<TRes> {
  _CopyWithImpl$Query$ExportQrCodes(
    this._instance,
    this._then,
  );

  final Query$ExportQrCodes _instance;

  final TRes Function(Query$ExportQrCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? exportAssetQrCodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExportQrCodes(
        exportAssetQrCodes:
            exportAssetQrCodes == _undefined || exportAssetQrCodes == null
                ? _instance.exportAssetQrCodes
                : (exportAssetQrCodes as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExportQrCodes<TRes>
    implements CopyWith$Query$ExportQrCodes<TRes> {
  _CopyWithStubImpl$Query$ExportQrCodes(this._res);

  TRes _res;

  call({
    String? exportAssetQrCodes,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryExportQrCodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExportQrCodes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SearchAssetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'exportAssetQrCodes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
]);
