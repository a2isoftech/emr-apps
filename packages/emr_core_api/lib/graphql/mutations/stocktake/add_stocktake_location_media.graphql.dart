import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddStockTakeLocationMedia {
  factory Variables$Mutation$AddStockTakeLocationMedia({
    required Input$StockLocationMediaInput input,
  }) => Variables$Mutation$AddStockTakeLocationMedia._({r'input': input});

  Variables$Mutation$AddStockTakeLocationMedia._(this._$data);

  factory Variables$Mutation$AddStockTakeLocationMedia.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$StockLocationMediaInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddStockTakeLocationMedia._(result$data);
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

  CopyWith$Variables$Mutation$AddStockTakeLocationMedia<
    Variables$Mutation$AddStockTakeLocationMedia
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddStockTakeLocationMedia(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddStockTakeLocationMedia ||
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

abstract class CopyWith$Variables$Mutation$AddStockTakeLocationMedia<TRes> {
  factory CopyWith$Variables$Mutation$AddStockTakeLocationMedia(
    Variables$Mutation$AddStockTakeLocationMedia instance,
    TRes Function(Variables$Mutation$AddStockTakeLocationMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$AddStockTakeLocationMedia;

  factory CopyWith$Variables$Mutation$AddStockTakeLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddStockTakeLocationMedia;

  TRes call({Input$StockLocationMediaInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddStockTakeLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$AddStockTakeLocationMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$AddStockTakeLocationMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddStockTakeLocationMedia _instance;

  final TRes Function(Variables$Mutation$AddStockTakeLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddStockTakeLocationMedia._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$StockLocationMediaInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddStockTakeLocationMedia<TRes>
    implements CopyWith$Variables$Mutation$AddStockTakeLocationMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddStockTakeLocationMedia(this._res);

  TRes _res;

  call({Input$StockLocationMediaInput? input}) => _res;
}

class Mutation$AddStockTakeLocationMedia {
  Mutation$AddStockTakeLocationMedia({
    required this.addStockTakeLocationMedia,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddStockTakeLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addStockTakeLocationMedia = json['addStockTakeLocationMedia'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStockTakeLocationMedia(
      addStockTakeLocationMedia:
          Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia.fromJson(
            (l$addStockTakeLocationMedia as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia
  addStockTakeLocationMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addStockTakeLocationMedia = addStockTakeLocationMedia;
    _resultData['addStockTakeLocationMedia'] = l$addStockTakeLocationMedia
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addStockTakeLocationMedia = addStockTakeLocationMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addStockTakeLocationMedia, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddStockTakeLocationMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addStockTakeLocationMedia = addStockTakeLocationMedia;
    final lOther$addStockTakeLocationMedia = other.addStockTakeLocationMedia;
    if (l$addStockTakeLocationMedia != lOther$addStockTakeLocationMedia) {
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

extension UtilityExtension$Mutation$AddStockTakeLocationMedia
    on Mutation$AddStockTakeLocationMedia {
  CopyWith$Mutation$AddStockTakeLocationMedia<
    Mutation$AddStockTakeLocationMedia
  >
  get copyWith => CopyWith$Mutation$AddStockTakeLocationMedia(this, (i) => i);
}

abstract class CopyWith$Mutation$AddStockTakeLocationMedia<TRes> {
  factory CopyWith$Mutation$AddStockTakeLocationMedia(
    Mutation$AddStockTakeLocationMedia instance,
    TRes Function(Mutation$AddStockTakeLocationMedia) then,
  ) = _CopyWithImpl$Mutation$AddStockTakeLocationMedia;

  factory CopyWith$Mutation$AddStockTakeLocationMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia;

  TRes call({
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia?
    addStockTakeLocationMedia,
    String? $__typename,
  });
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<TRes>
  get addStockTakeLocationMedia;
}

class _CopyWithImpl$Mutation$AddStockTakeLocationMedia<TRes>
    implements CopyWith$Mutation$AddStockTakeLocationMedia<TRes> {
  _CopyWithImpl$Mutation$AddStockTakeLocationMedia(this._instance, this._then);

  final Mutation$AddStockTakeLocationMedia _instance;

  final TRes Function(Mutation$AddStockTakeLocationMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addStockTakeLocationMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStockTakeLocationMedia(
      addStockTakeLocationMedia:
          addStockTakeLocationMedia == _undefined ||
              addStockTakeLocationMedia == null
          ? _instance.addStockTakeLocationMedia
          : (addStockTakeLocationMedia
                as Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<TRes>
  get addStockTakeLocationMedia {
    final local$addStockTakeLocationMedia = _instance.addStockTakeLocationMedia;
    return CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
      local$addStockTakeLocationMedia,
      (e) => call(addStockTakeLocationMedia: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia<TRes>
    implements CopyWith$Mutation$AddStockTakeLocationMedia<TRes> {
  _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia(this._res);

  TRes _res;

  call({
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia?
    addStockTakeLocationMedia,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<TRes>
  get addStockTakeLocationMedia =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia.stub(
        _res,
      );
}

const documentNodeMutationAddStockTakeLocationMedia = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddStockTakeLocationMedia'),
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
            name: NameNode(value: 'addStockTakeLocationMedia'),
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

class Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia {
  Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia({
    required this.success,
    this.data,
    required this.message,
    required this.errorCode,
    this.$__typename = 'StocktakeResponseOfListOfMediaAsset',
  });

  factory Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$success = json['success'];
    final l$data = json['data'];
    final l$message = json['message'];
    final l$errorCode = json['errorCode'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
      success: (l$success as bool),
      data: (l$data as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data.fromJson(
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
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?
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
            is! Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia ||
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

extension UtilityExtension$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia
    on Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia {
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia
  >
  get copyWith =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
  TRes
> {
  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia instance,
    TRes Function(Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia)
    then,
  ) = _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia;

  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia;

  TRes call({
    bool? success,
    List<Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?>?
    data,
    String? message,
    String? errorCode,
    String? $__typename,
  });
  TRes data(
    Iterable<
      Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
          Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
    this._instance,
    this._then,
  );

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia _instance;

  final TRes Function(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia,
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
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
      success: success == _undefined || success == null
          ? _instance.success
          : (success as bool),
      data: data == _undefined
          ? _instance.data
          : (data
                as List<
                  Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?
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
      Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
          Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data
        >?
      >?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia(
    this._res,
  );

  TRes _res;

  call({
    bool? success,
    List<Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data?>?
    data,
    String? message,
    String? errorCode,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;
}

class Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data {
  Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data({
    required this.url,
    required this.created,
    required this.modified,
    this.$__typename = 'MediaAsset',
  });

  factory Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
      url: (l$url as String),
      created:
          Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created
  created;

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified
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
            is! Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data ||
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

extension UtilityExtension$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data
    on Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data {
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data
  >
  get copyWith =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
  TRes
> {
  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data instance,
    TRes Function(
      Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data;

  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data;

  TRes call({
    String? url,
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created?
    created,
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified?
    modified,
    String? $__typename,
  });
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
    TRes
  >
  get created;
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
    this._instance,
    this._then,
  );

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data
  _instance;

  final TRes Function(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created?
    created,
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified?
    modified,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created.stub(
        _res,
      );

  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
    TRes
  >
  get modified =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified.stub(
        _res,
      );
}

class Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created {
  Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
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
            is! Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created ||
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

extension UtilityExtension$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created
    on Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created {
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created
  >
  get copyWith =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
  TRes
> {
  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created
    instance,
    TRes Function(
      Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created;

  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
    this._instance,
    this._then,
  );

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created
  _instance;

  final TRes Function(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
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

class _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$created(
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

class Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified {
  Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
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
            is! Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified ||
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

extension UtilityExtension$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified
    on Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified {
  CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified
  >
  get copyWith =>
      CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
  TRes
> {
  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified
    instance,
    TRes Function(
      Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified;

  factory CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
          TRes
        > {
  _CopyWithImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
    this._instance,
    this._then,
  );

  final Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified
  _instance;

  final TRes Function(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
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

class _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
  TRes
>
    implements
        CopyWith$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddStockTakeLocationMedia$addStockTakeLocationMedia$data$modified(
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
