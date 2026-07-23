import 'package:gql/ast.dart';

class Variables$Query$GetMediaApiSasTokenInternal {
  factory Variables$Query$GetMediaApiSasTokenInternal({
    required String fname,
    required String partyAccountNo,
  }) => Variables$Query$GetMediaApiSasTokenInternal._({
    r'fname': fname,
    r'partyAccountNo': partyAccountNo,
  });

  Variables$Query$GetMediaApiSasTokenInternal._(this._$data);

  factory Variables$Query$GetMediaApiSasTokenInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$fname = data['fname'];
    result$data['fname'] = (l$fname as String);
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    return Variables$Query$GetMediaApiSasTokenInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fname => (_$data['fname'] as String);

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fname = fname;
    result$data['fname'] = l$fname;
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    return result$data;
  }

  CopyWith$Variables$Query$GetMediaApiSasTokenInternal<
    Variables$Query$GetMediaApiSasTokenInternal
  >
  get copyWith =>
      CopyWith$Variables$Query$GetMediaApiSasTokenInternal(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMediaApiSasTokenInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fname = fname;
    final lOther$fname = other.fname;
    if (l$fname != lOther$fname) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fname = fname;
    final l$partyAccountNo = partyAccountNo;
    return Object.hashAll([l$fname, l$partyAccountNo]);
  }
}

abstract class CopyWith$Variables$Query$GetMediaApiSasTokenInternal<TRes> {
  factory CopyWith$Variables$Query$GetMediaApiSasTokenInternal(
    Variables$Query$GetMediaApiSasTokenInternal instance,
    TRes Function(Variables$Query$GetMediaApiSasTokenInternal) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaApiSasTokenInternal;

  factory CopyWith$Variables$Query$GetMediaApiSasTokenInternal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaApiSasTokenInternal;

  TRes call({String? fname, String? partyAccountNo});
}

class _CopyWithImpl$Variables$Query$GetMediaApiSasTokenInternal<TRes>
    implements CopyWith$Variables$Query$GetMediaApiSasTokenInternal<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaApiSasTokenInternal(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMediaApiSasTokenInternal _instance;

  final TRes Function(Variables$Query$GetMediaApiSasTokenInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fname = _undefined,
    Object? partyAccountNo = _undefined,
  }) => _then(
    Variables$Query$GetMediaApiSasTokenInternal._({
      ..._instance._$data,
      if (fname != _undefined && fname != null) 'fname': (fname as String),
      if (partyAccountNo != _undefined && partyAccountNo != null)
        'partyAccountNo': (partyAccountNo as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetMediaApiSasTokenInternal<TRes>
    implements CopyWith$Variables$Query$GetMediaApiSasTokenInternal<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaApiSasTokenInternal(this._res);

  TRes _res;

  call({String? fname, String? partyAccountNo}) => _res;
}

class Query$GetMediaApiSasTokenInternal {
  Query$GetMediaApiSasTokenInternal({
    this.mediaApiUrlWithTokenInternal,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaApiSasTokenInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaApiUrlWithTokenInternal = json['mediaApiUrlWithTokenInternal'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaApiSasTokenInternal(
      mediaApiUrlWithTokenInternal: (l$mediaApiUrlWithTokenInternal as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mediaApiUrlWithTokenInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaApiUrlWithTokenInternal = mediaApiUrlWithTokenInternal;
    _resultData['mediaApiUrlWithTokenInternal'] =
        l$mediaApiUrlWithTokenInternal;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaApiUrlWithTokenInternal = mediaApiUrlWithTokenInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mediaApiUrlWithTokenInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMediaApiSasTokenInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaApiUrlWithTokenInternal = mediaApiUrlWithTokenInternal;
    final lOther$mediaApiUrlWithTokenInternal =
        other.mediaApiUrlWithTokenInternal;
    if (l$mediaApiUrlWithTokenInternal != lOther$mediaApiUrlWithTokenInternal) {
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

extension UtilityExtension$Query$GetMediaApiSasTokenInternal
    on Query$GetMediaApiSasTokenInternal {
  CopyWith$Query$GetMediaApiSasTokenInternal<Query$GetMediaApiSasTokenInternal>
  get copyWith => CopyWith$Query$GetMediaApiSasTokenInternal(this, (i) => i);
}

abstract class CopyWith$Query$GetMediaApiSasTokenInternal<TRes> {
  factory CopyWith$Query$GetMediaApiSasTokenInternal(
    Query$GetMediaApiSasTokenInternal instance,
    TRes Function(Query$GetMediaApiSasTokenInternal) then,
  ) = _CopyWithImpl$Query$GetMediaApiSasTokenInternal;

  factory CopyWith$Query$GetMediaApiSasTokenInternal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaApiSasTokenInternal;

  TRes call({String? mediaApiUrlWithTokenInternal, String? $__typename});
}

class _CopyWithImpl$Query$GetMediaApiSasTokenInternal<TRes>
    implements CopyWith$Query$GetMediaApiSasTokenInternal<TRes> {
  _CopyWithImpl$Query$GetMediaApiSasTokenInternal(this._instance, this._then);

  final Query$GetMediaApiSasTokenInternal _instance;

  final TRes Function(Query$GetMediaApiSasTokenInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaApiUrlWithTokenInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetMediaApiSasTokenInternal(
      mediaApiUrlWithTokenInternal: mediaApiUrlWithTokenInternal == _undefined
          ? _instance.mediaApiUrlWithTokenInternal
          : (mediaApiUrlWithTokenInternal as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetMediaApiSasTokenInternal<TRes>
    implements CopyWith$Query$GetMediaApiSasTokenInternal<TRes> {
  _CopyWithStubImpl$Query$GetMediaApiSasTokenInternal(this._res);

  TRes _res;

  call({String? mediaApiUrlWithTokenInternal, String? $__typename}) => _res;
}

const documentNodeQueryGetMediaApiSasTokenInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetMediaApiSasTokenInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'fname')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partyAccountNo')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mediaApiUrlWithTokenInternal'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'fileName'),
                value: VariableNode(name: NameNode(value: 'fname')),
              ),
              ArgumentNode(
                name: NameNode(value: 'partyAccountNumber'),
                value: VariableNode(name: NameNode(value: 'partyAccountNo')),
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
