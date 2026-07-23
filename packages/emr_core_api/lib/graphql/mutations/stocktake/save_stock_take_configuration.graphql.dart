import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveStockTakeConfiguration {
  factory Variables$Mutation$SaveStockTakeConfiguration({
    required Input$SaveStockTakeConfigurationInput input,
  }) => Variables$Mutation$SaveStockTakeConfiguration._({r'input': input});

  Variables$Mutation$SaveStockTakeConfiguration._(this._$data);

  factory Variables$Mutation$SaveStockTakeConfiguration.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveStockTakeConfigurationInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SaveStockTakeConfiguration._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaveStockTakeConfigurationInput get input =>
      (_$data['input'] as Input$SaveStockTakeConfigurationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveStockTakeConfiguration<
    Variables$Mutation$SaveStockTakeConfiguration
  >
  get copyWith =>
      CopyWith$Variables$Mutation$SaveStockTakeConfiguration(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveStockTakeConfiguration ||
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

abstract class CopyWith$Variables$Mutation$SaveStockTakeConfiguration<TRes> {
  factory CopyWith$Variables$Mutation$SaveStockTakeConfiguration(
    Variables$Mutation$SaveStockTakeConfiguration instance,
    TRes Function(Variables$Mutation$SaveStockTakeConfiguration) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveStockTakeConfiguration;

  factory CopyWith$Variables$Mutation$SaveStockTakeConfiguration.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$SaveStockTakeConfiguration;

  TRes call({Input$SaveStockTakeConfigurationInput? input});
}

class _CopyWithImpl$Variables$Mutation$SaveStockTakeConfiguration<TRes>
    implements CopyWith$Variables$Mutation$SaveStockTakeConfiguration<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveStockTakeConfiguration(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveStockTakeConfiguration _instance;

  final TRes Function(Variables$Mutation$SaveStockTakeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SaveStockTakeConfiguration._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SaveStockTakeConfigurationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SaveStockTakeConfiguration<TRes>
    implements CopyWith$Variables$Mutation$SaveStockTakeConfiguration<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveStockTakeConfiguration(this._res);

  TRes _res;

  call({Input$SaveStockTakeConfigurationInput? input}) => _res;
}

class Mutation$SaveStockTakeConfiguration {
  Mutation$SaveStockTakeConfiguration({
    required this.saveStockTakeConfigurations,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveStockTakeConfiguration.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$saveStockTakeConfigurations = json['saveStockTakeConfigurations'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveStockTakeConfiguration(
      saveStockTakeConfigurations:
          Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations.fromJson(
            (l$saveStockTakeConfigurations as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations
  saveStockTakeConfigurations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveStockTakeConfigurations = saveStockTakeConfigurations;
    _resultData['saveStockTakeConfigurations'] = l$saveStockTakeConfigurations
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveStockTakeConfigurations = saveStockTakeConfigurations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$saveStockTakeConfigurations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveStockTakeConfiguration ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveStockTakeConfigurations = saveStockTakeConfigurations;
    final lOther$saveStockTakeConfigurations =
        other.saveStockTakeConfigurations;
    if (l$saveStockTakeConfigurations != lOther$saveStockTakeConfigurations) {
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

extension UtilityExtension$Mutation$SaveStockTakeConfiguration
    on Mutation$SaveStockTakeConfiguration {
  CopyWith$Mutation$SaveStockTakeConfiguration<
    Mutation$SaveStockTakeConfiguration
  >
  get copyWith => CopyWith$Mutation$SaveStockTakeConfiguration(this, (i) => i);
}

abstract class CopyWith$Mutation$SaveStockTakeConfiguration<TRes> {
  factory CopyWith$Mutation$SaveStockTakeConfiguration(
    Mutation$SaveStockTakeConfiguration instance,
    TRes Function(Mutation$SaveStockTakeConfiguration) then,
  ) = _CopyWithImpl$Mutation$SaveStockTakeConfiguration;

  factory CopyWith$Mutation$SaveStockTakeConfiguration.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration;

  TRes call({
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations?
    saveStockTakeConfigurations,
    String? $__typename,
  });
  CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<TRes>
  get saveStockTakeConfigurations;
}

class _CopyWithImpl$Mutation$SaveStockTakeConfiguration<TRes>
    implements CopyWith$Mutation$SaveStockTakeConfiguration<TRes> {
  _CopyWithImpl$Mutation$SaveStockTakeConfiguration(this._instance, this._then);

  final Mutation$SaveStockTakeConfiguration _instance;

  final TRes Function(Mutation$SaveStockTakeConfiguration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveStockTakeConfigurations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveStockTakeConfiguration(
      saveStockTakeConfigurations:
          saveStockTakeConfigurations == _undefined ||
              saveStockTakeConfigurations == null
          ? _instance.saveStockTakeConfigurations
          : (saveStockTakeConfigurations
                as Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<TRes>
  get saveStockTakeConfigurations {
    final local$saveStockTakeConfigurations =
        _instance.saveStockTakeConfigurations;
    return CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
      local$saveStockTakeConfigurations,
      (e) => call(saveStockTakeConfigurations: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration<TRes>
    implements CopyWith$Mutation$SaveStockTakeConfiguration<TRes> {
  _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration(this._res);

  TRes _res;

  call({
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations?
    saveStockTakeConfigurations,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<TRes>
  get saveStockTakeConfigurations =>
      CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations.stub(
        _res,
      );
}

const documentNodeMutationSaveStockTakeConfiguration = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SaveStockTakeConfiguration'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SaveStockTakeConfigurationInput'),
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
            name: NameNode(value: 'saveStockTakeConfigurations'),
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
                  name: NameNode(value: 'success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
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

class Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations {
  Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations({
    required this.success,
    required this.message,
    required this.errorCode,
    required this.data,
    this.$__typename = 'StocktakeResponseOfBoolean',
  });

  factory Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
      success: (l$success as bool),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      data: (l$data as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String message;

  final String errorCode;

  final bool data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$message,
      l$errorCode,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations
    on Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations {
  CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations
  >
  get copyWith =>
      CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
  TRes
> {
  factory CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations instance,
    TRes Function(
      Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations,
    )
    then,
  ) = _CopyWithImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations;

  factory CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations;

  TRes call({
    bool? success,
    String? message,
    String? errorCode,
    bool? data,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
  TRes
>
    implements
        CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
          TRes
        > {
  _CopyWithImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
    this._instance,
    this._then,
  );

  final Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations
  _instance;

  final TRes Function(
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      data: data == _undefined || data == null
          ? _instance.data
          : (data as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
  TRes
>
    implements
        CopyWith$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations<
          TRes
        > {
  _CopyWithStubImpl$Mutation$SaveStockTakeConfiguration$saveStockTakeConfigurations(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    String? message,
    String? errorCode,
    bool? data,
    String? $__typename,
  }) => _res;
}
