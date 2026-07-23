import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteStockTakeLocationMedia {
  factory Variables$Mutation$DeleteStockTakeLocationMedia({
    required Input$StockLocationMediaInput input,
  }) => Variables$Mutation$DeleteStockTakeLocationMedia._({r'input': input});

  Variables$Mutation$DeleteStockTakeLocationMedia._(this._$data);

  factory Variables$Mutation$DeleteStockTakeLocationMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StockLocationMediaInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteStockTakeLocationMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StockLocationMediaInput get input =>
      (_$data['input'] as Input$StockLocationMediaInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia<
    Variables$Mutation$DeleteStockTakeLocationMedia
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteStockTakeLocationMedia ||
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

abstract class CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia<TRes> {
  factory CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia(
    Variables$Mutation$DeleteStockTakeLocationMedia instance,
    TRes Function(Variables$Mutation$DeleteStockTakeLocationMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteStockTakeLocationMedia;

  factory CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$DeleteStockTakeLocationMedia;

  TRes call({Input$StockLocationMediaInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteStockTakeLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteStockTakeLocationMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteStockTakeLocationMedia _instance;

  final TRes Function(Variables$Mutation$DeleteStockTakeLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeleteStockTakeLocationMedia._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StockLocationMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteStockTakeLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$DeleteStockTakeLocationMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteStockTakeLocationMedia(this._res);

  TRes _res;

  call({Input$StockLocationMediaInput? input}) => _res;
}

class Mutation$DeleteStockTakeLocationMedia {
  Mutation$DeleteStockTakeLocationMedia({
    required this.deleteStockTakeLocationMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteStockTakeLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deleteStockTakeLocationMedia = json['deleteStockTakeLocationMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStockTakeLocationMedia(
      deleteStockTakeLocationMedia:
          Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia.fromJson(
            (l$deleteStockTakeLocationMedia as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia
  deleteStockTakeLocationMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteStockTakeLocationMedia = deleteStockTakeLocationMedia;
    _resultData['deleteStockTakeLocationMedia'] = l$deleteStockTakeLocationMedia
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteStockTakeLocationMedia = deleteStockTakeLocationMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteStockTakeLocationMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteStockTakeLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteStockTakeLocationMedia = deleteStockTakeLocationMedia;
    final lOther$deleteStockTakeLocationMedia =
        other.deleteStockTakeLocationMedia;
    if (l$deleteStockTakeLocationMedia != lOther$deleteStockTakeLocationMedia) {
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

extension UtilityExtension$Mutation$DeleteStockTakeLocationMedia
    on Mutation$DeleteStockTakeLocationMedia {
  CopyWith$Mutation$DeleteStockTakeLocationMedia<
    Mutation$DeleteStockTakeLocationMedia
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteStockTakeLocationMedia<TRes> {
  factory CopyWith$Mutation$DeleteStockTakeLocationMedia(
    Mutation$DeleteStockTakeLocationMedia instance,
    TRes Function(Mutation$DeleteStockTakeLocationMedia) then,
  ) = _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia;

  factory CopyWith$Mutation$DeleteStockTakeLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia;

  TRes call({
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia?
    deleteStockTakeLocationMedia,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
    TRes
  >
  get deleteStockTakeLocationMedia;
}

class _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteStockTakeLocationMedia<TRes> {
  _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStockTakeLocationMedia _instance;

  final TRes Function(Mutation$DeleteStockTakeLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteStockTakeLocationMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStockTakeLocationMedia(
      deleteStockTakeLocationMedia:
          deleteStockTakeLocationMedia == _undefined ||
              deleteStockTakeLocationMedia == null
          ? _instance.deleteStockTakeLocationMedia
          : (deleteStockTakeLocationMedia
                as Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
    TRes
  >
  get deleteStockTakeLocationMedia {
    final local$deleteStockTakeLocationMedia =
        _instance.deleteStockTakeLocationMedia;
    return CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
      local$deleteStockTakeLocationMedia,
      (e) => call(deleteStockTakeLocationMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia<TRes>
    implements CopyWith$Mutation$DeleteStockTakeLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia(this._res);

  TRes _res;

  call({
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia?
    deleteStockTakeLocationMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
    TRes
  >
  get deleteStockTakeLocationMedia =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia.stub(
        _res,
      );
}

const documentNodeMutationDeleteStockTakeLocationMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteStockTakeLocationMedia'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'StockLocationMediaInput'),
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
            name: NameNode(value: 'deleteStockTakeLocationMedia'),
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
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'created'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
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
                        name: NameNode(value: 'modified'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'at'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'userInfoId'),
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

class Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia {
  Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia({
    required this.success,
    this.data,
    required this.message,
    required this.errorCode,
    this.$__typename = 'StocktakeResponseOfListOfMediaAsset',
  });

  factory Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$data = json['data'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
      success: (l$success as bool),
      data: (l$data as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      message: (l$message as String),
      errorCode: (l$errorCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final List<
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
  >?
  data;

  final String message;

  final String errorCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$data = data;
    final l$message = message;
    final l$errorCode = errorCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$message,
      l$errorCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia
    on Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia {
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
  TRes
> {
  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia instance,
    TRes Function(
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia;

  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia;

  TRes call({
    bool? success,
    List<
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
    >?
    data,
    String? message,
    String? errorCode,
    String? $__typename,
  });
  TRes data(
    Iterable<
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
          Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia
  _instance;

  final TRes Function(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? data = _undefined,
    Object? message = _undefined,
    Object? errorCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      data: data == _undefined
          ? _instance.data
          : (data
                as List<
                  Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
                >?),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      errorCode: errorCode == _undefined || errorCode == null
          ? _instance.errorCode
          : (errorCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
          Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
        >?
      >?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    List<
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data?
    >?
    data,
    String? message,
    String? errorCode,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data {
  Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data({
    required this.url,
    required this.created,
    required this.modified,
    this.$__typename = 'MediaAsset',
  });

  factory Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
      url: (l$url as String),
      created:
          Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created
  created;

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified
  modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$created, l$modified, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
    on Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data {
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
  TRes
> {
  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
    instance,
    TRes Function(
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data;

  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data;

  TRes call({
    String? url,
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created?
    created,
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
    TRes
  >
  get created;
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data
  _instance;

  final TRes Function(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created?
    created,
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created.stub(
        _res,
      );

  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified.stub(
        _res,
      );
}

class Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created {
  Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created
    on
        Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created {
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
  TRes
> {
  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created
    instance,
    TRes Function(
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created;

  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created
  _instance;

  final TRes Function(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified {
  Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified
    on
        Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified {
  CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified
  >
  get copyWith =>
      CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
  TRes
> {
  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified
    instance,
    TRes Function(
      Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified;

  factory CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified
  _instance;

  final TRes Function(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
  TRes
>
    implements
        CopyWith$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteStockTakeLocationMedia$deleteStockTakeLocationMedia$data$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}
