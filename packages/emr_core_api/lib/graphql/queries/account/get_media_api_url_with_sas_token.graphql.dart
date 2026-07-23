import 'package:gql/ast.dart';

class Variables$Query$GetMediaApiSasToken {
  factory Variables$Query$GetMediaApiSasToken({required String fname}) =>
      Variables$Query$GetMediaApiSasToken._({r'fname': fname});

  Variables$Query$GetMediaApiSasToken._(this._$data);

  factory Variables$Query$GetMediaApiSasToken.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$fname = data['fname'];
    result$data['fname'] = (l$fname as String);
    return Variables$Query$GetMediaApiSasToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fname => (_$data['fname'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fname = fname;
    result$data['fname'] = l$fname;
    return result$data;
  }

  CopyWith$Variables$Query$GetMediaApiSasToken<
    Variables$Query$GetMediaApiSasToken
  >
  get copyWith => CopyWith$Variables$Query$GetMediaApiSasToken(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMediaApiSasToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fname = fname;
    final lOther$fname = other.fname;
    if (l$fname != lOther$fname) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fname = fname;
    return Object.hashAll([l$fname]);
  }
}

abstract class CopyWith$Variables$Query$GetMediaApiSasToken<TRes> {
  factory CopyWith$Variables$Query$GetMediaApiSasToken(
    Variables$Query$GetMediaApiSasToken instance,
    TRes Function(Variables$Query$GetMediaApiSasToken) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaApiSasToken;

  factory CopyWith$Variables$Query$GetMediaApiSasToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaApiSasToken;

  TRes call({String? fname});
}

class _CopyWithImpl$Variables$Query$GetMediaApiSasToken<TRes>
    implements CopyWith$Variables$Query$GetMediaApiSasToken<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaApiSasToken(this._instance, this._then);

  final Variables$Query$GetMediaApiSasToken _instance;

  final TRes Function(Variables$Query$GetMediaApiSasToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fname = _undefined}) => _then(
    Variables$Query$GetMediaApiSasToken._({
      ..._instance._$data,
      if (fname != _undefined && fname != null) 'fname': (fname as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetMediaApiSasToken<TRes>
    implements CopyWith$Variables$Query$GetMediaApiSasToken<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaApiSasToken(this._res);

  TRes _res;

  call({String? fname}) => _res;
}

class Query$GetMediaApiSasToken {
  Query$GetMediaApiSasToken({
    this.mediaApiUrlWithToken,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaApiSasToken.fromJson(Map<String, dynamic> json) {
    final l$mediaApiUrlWithToken = json['mediaApiUrlWithToken'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaApiSasToken(
      mediaApiUrlWithToken: (l$mediaApiUrlWithToken as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mediaApiUrlWithToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaApiUrlWithToken = mediaApiUrlWithToken;
    _resultData['mediaApiUrlWithToken'] = l$mediaApiUrlWithToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaApiUrlWithToken = mediaApiUrlWithToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mediaApiUrlWithToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMediaApiSasToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaApiUrlWithToken = mediaApiUrlWithToken;
    final lOther$mediaApiUrlWithToken = other.mediaApiUrlWithToken;
    if (l$mediaApiUrlWithToken != lOther$mediaApiUrlWithToken) {
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

extension UtilityExtension$Query$GetMediaApiSasToken
    on Query$GetMediaApiSasToken {
  CopyWith$Query$GetMediaApiSasToken<Query$GetMediaApiSasToken> get copyWith =>
      CopyWith$Query$GetMediaApiSasToken(this, (i) => i);
}

abstract class CopyWith$Query$GetMediaApiSasToken<TRes> {
  factory CopyWith$Query$GetMediaApiSasToken(
    Query$GetMediaApiSasToken instance,
    TRes Function(Query$GetMediaApiSasToken) then,
  ) = _CopyWithImpl$Query$GetMediaApiSasToken;

  factory CopyWith$Query$GetMediaApiSasToken.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaApiSasToken;

  TRes call({String? mediaApiUrlWithToken, String? $__typename});
}

class _CopyWithImpl$Query$GetMediaApiSasToken<TRes>
    implements CopyWith$Query$GetMediaApiSasToken<TRes> {
  _CopyWithImpl$Query$GetMediaApiSasToken(this._instance, this._then);

  final Query$GetMediaApiSasToken _instance;

  final TRes Function(Query$GetMediaApiSasToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaApiUrlWithToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetMediaApiSasToken(
      mediaApiUrlWithToken: mediaApiUrlWithToken == _undefined
          ? _instance.mediaApiUrlWithToken
          : (mediaApiUrlWithToken as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetMediaApiSasToken<TRes>
    implements CopyWith$Query$GetMediaApiSasToken<TRes> {
  _CopyWithStubImpl$Query$GetMediaApiSasToken(this._res);

  TRes _res;

  call({String? mediaApiUrlWithToken, String? $__typename}) => _res;
}

const documentNodeQueryGetMediaApiSasToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetMediaApiSasToken'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'fname')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mediaApiUrlWithToken'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'fileName'),
                value: VariableNode(name: NameNode(value: 'fname')),
              ),
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
        ],
      ),
    ),
  ],
);
