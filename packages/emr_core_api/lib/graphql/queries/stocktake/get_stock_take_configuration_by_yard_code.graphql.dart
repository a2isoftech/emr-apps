import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetStockTakeConfigurationByYardCode {
  factory Variables$Query$GetStockTakeConfigurationByYardCode({
    required Input$GetStockTakeConfigurationByYardCodeInput input,
  }) =>
      Variables$Query$GetStockTakeConfigurationByYardCode._({r'input': input});

  Variables$Query$GetStockTakeConfigurationByYardCode._(this._$data);

  factory Variables$Query$GetStockTakeConfigurationByYardCode.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$GetStockTakeConfigurationByYardCodeInput.fromJson(
          (l$input as Map<String, dynamic>),
        );
    return Variables$Query$GetStockTakeConfigurationByYardCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetStockTakeConfigurationByYardCodeInput get input =>
      (_$data['input'] as Input$GetStockTakeConfigurationByYardCodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode<
    Variables$Query$GetStockTakeConfigurationByYardCode
  >
  get copyWith => CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetStockTakeConfigurationByYardCode ||
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

abstract class CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode<
  TRes
> {
  factory CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode(
    Variables$Query$GetStockTakeConfigurationByYardCode instance,
    TRes Function(Variables$Query$GetStockTakeConfigurationByYardCode) then,
  ) = _CopyWithImpl$Variables$Query$GetStockTakeConfigurationByYardCode;

  factory CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$GetStockTakeConfigurationByYardCode;

  TRes call({Input$GetStockTakeConfigurationByYardCodeInput? input});
}

class _CopyWithImpl$Variables$Query$GetStockTakeConfigurationByYardCode<TRes>
    implements
        CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode<TRes> {
  _CopyWithImpl$Variables$Query$GetStockTakeConfigurationByYardCode(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStockTakeConfigurationByYardCode _instance;

  final TRes Function(Variables$Query$GetStockTakeConfigurationByYardCode)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetStockTakeConfigurationByYardCode._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetStockTakeConfigurationByYardCodeInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetStockTakeConfigurationByYardCode<
  TRes
>
    implements
        CopyWith$Variables$Query$GetStockTakeConfigurationByYardCode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStockTakeConfigurationByYardCode(
    this._res,
  );

  TRes _res;

  call({Input$GetStockTakeConfigurationByYardCodeInput? input}) => _res;
}

class Query$GetStockTakeConfigurationByYardCode {
  Query$GetStockTakeConfigurationByYardCode({
    this.stockTakeConfigurationByYardCode,
    this.$__typename = 'Query',
  });

  factory Query$GetStockTakeConfigurationByYardCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stockTakeConfigurationByYardCode =
        json['stockTakeConfigurationByYardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetStockTakeConfigurationByYardCode(
      stockTakeConfigurationByYardCode:
          l$stockTakeConfigurationByYardCode == null
          ? null
          : Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode.fromJson(
              (l$stockTakeConfigurationByYardCode as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode?
  stockTakeConfigurationByYardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stockTakeConfigurationByYardCode = stockTakeConfigurationByYardCode;
    _resultData['stockTakeConfigurationByYardCode'] =
        l$stockTakeConfigurationByYardCode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stockTakeConfigurationByYardCode = stockTakeConfigurationByYardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stockTakeConfigurationByYardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStockTakeConfigurationByYardCode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stockTakeConfigurationByYardCode = stockTakeConfigurationByYardCode;
    final lOther$stockTakeConfigurationByYardCode =
        other.stockTakeConfigurationByYardCode;
    if (l$stockTakeConfigurationByYardCode !=
        lOther$stockTakeConfigurationByYardCode) {
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

extension UtilityExtension$Query$GetStockTakeConfigurationByYardCode
    on Query$GetStockTakeConfigurationByYardCode {
  CopyWith$Query$GetStockTakeConfigurationByYardCode<
    Query$GetStockTakeConfigurationByYardCode
  >
  get copyWith =>
      CopyWith$Query$GetStockTakeConfigurationByYardCode(this, (i) => i);
}

abstract class CopyWith$Query$GetStockTakeConfigurationByYardCode<TRes> {
  factory CopyWith$Query$GetStockTakeConfigurationByYardCode(
    Query$GetStockTakeConfigurationByYardCode instance,
    TRes Function(Query$GetStockTakeConfigurationByYardCode) then,
  ) = _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode;

  factory CopyWith$Query$GetStockTakeConfigurationByYardCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode;

  TRes call({
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode?
    stockTakeConfigurationByYardCode,
    String? $__typename,
  });
  CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
    TRes
  >
  get stockTakeConfigurationByYardCode;
}

class _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode<TRes>
    implements CopyWith$Query$GetStockTakeConfigurationByYardCode<TRes> {
  _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode(
    this._instance,
    this._then,
  );

  final Query$GetStockTakeConfigurationByYardCode _instance;

  final TRes Function(Query$GetStockTakeConfigurationByYardCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stockTakeConfigurationByYardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStockTakeConfigurationByYardCode(
      stockTakeConfigurationByYardCode:
          stockTakeConfigurationByYardCode == _undefined
          ? _instance.stockTakeConfigurationByYardCode
          : (stockTakeConfigurationByYardCode
                as Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
    TRes
  >
  get stockTakeConfigurationByYardCode {
    final local$stockTakeConfigurationByYardCode =
        _instance.stockTakeConfigurationByYardCode;
    return local$stockTakeConfigurationByYardCode == null
        ? CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
            local$stockTakeConfigurationByYardCode,
            (e) => call(stockTakeConfigurationByYardCode: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode<TRes>
    implements CopyWith$Query$GetStockTakeConfigurationByYardCode<TRes> {
  _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode(this._res);

  TRes _res;

  call({
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode?
    stockTakeConfigurationByYardCode,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
    TRes
  >
  get stockTakeConfigurationByYardCode =>
      CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode.stub(
        _res,
      );
}

const documentNodeQueryGetStockTakeConfigurationByYardCode = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetStockTakeConfigurationByYardCode'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetStockTakeConfigurationByYardCodeInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'stockTakeConfigurationByYardCode'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'isDeltaSnapshotEnabled'),
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode {
  Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode({
    required this.isDeltaSnapshotEnabled,
    this.$__typename = 'StockTakeConfiguration',
  });

  factory Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isDeltaSnapshotEnabled = json['isDeltaSnapshotEnabled'];
    final l$$__typename = json['__typename'];
    return Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
      isDeltaSnapshotEnabled: (l$isDeltaSnapshotEnabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isDeltaSnapshotEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    _resultData['isDeltaSnapshotEnabled'] = l$isDeltaSnapshotEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isDeltaSnapshotEnabled, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isDeltaSnapshotEnabled = isDeltaSnapshotEnabled;
    final lOther$isDeltaSnapshotEnabled = other.isDeltaSnapshotEnabled;
    if (l$isDeltaSnapshotEnabled != lOther$isDeltaSnapshotEnabled) {
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

extension UtilityExtension$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode
    on Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode {
  CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode
  >
  get copyWith =>
      CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
  TRes
> {
  factory CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode
    instance,
    TRes Function(
      Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode,
    )
    then,
  ) = _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode;

  factory CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode;

  TRes call({bool? isDeltaSnapshotEnabled, String? $__typename});
}

class _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
  TRes
>
    implements
        CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
          TRes
        > {
  _CopyWithImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
    this._instance,
    this._then,
  );

  final Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode
  _instance;

  final TRes Function(
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isDeltaSnapshotEnabled = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
      isDeltaSnapshotEnabled:
          isDeltaSnapshotEnabled == _undefined || isDeltaSnapshotEnabled == null
          ? _instance.isDeltaSnapshotEnabled
          : (isDeltaSnapshotEnabled as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
  TRes
>
    implements
        CopyWith$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode<
          TRes
        > {
  _CopyWithStubImpl$Query$GetStockTakeConfigurationByYardCode$stockTakeConfigurationByYardCode(
    this._res,
  );

  TRes _res;

  call({bool? isDeltaSnapshotEnabled, String? $__typename}) => _res;
}
