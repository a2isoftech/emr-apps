import 'package:gql/ast.dart';

class Variables$Query$invoiceFileDownload {
  factory Variables$Query$invoiceFileDownload({
    required String invoiceNumber,
    required String purchaseOrderNumber,
  }) =>
      Variables$Query$invoiceFileDownload._({
        r'invoiceNumber': invoiceNumber,
        r'purchaseOrderNumber': purchaseOrderNumber,
      });

  Variables$Query$invoiceFileDownload._(this._$data);

  factory Variables$Query$invoiceFileDownload.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$invoiceNumber = data['invoiceNumber'];
    result$data['invoiceNumber'] = (l$invoiceNumber as String);
    final l$purchaseOrderNumber = data['purchaseOrderNumber'];
    result$data['purchaseOrderNumber'] = (l$purchaseOrderNumber as String);
    return Variables$Query$invoiceFileDownload._(result$data);
  }

  Map<String, dynamic> _$data;

  String get invoiceNumber => (_$data['invoiceNumber'] as String);

  String get purchaseOrderNumber => (_$data['purchaseOrderNumber'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$invoiceNumber = invoiceNumber;
    result$data['invoiceNumber'] = l$invoiceNumber;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    result$data['purchaseOrderNumber'] = l$purchaseOrderNumber;
    return result$data;
  }

  CopyWith$Variables$Query$invoiceFileDownload<
          Variables$Query$invoiceFileDownload>
      get copyWith => CopyWith$Variables$Query$invoiceFileDownload(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$invoiceFileDownload ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$invoiceNumber = invoiceNumber;
    final lOther$invoiceNumber = other.invoiceNumber;
    if (l$invoiceNumber != lOther$invoiceNumber) {
      return false;
    }
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final lOther$purchaseOrderNumber = other.purchaseOrderNumber;
    if (l$purchaseOrderNumber != lOther$purchaseOrderNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$invoiceNumber = invoiceNumber;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    return Object.hashAll([
      l$invoiceNumber,
      l$purchaseOrderNumber,
    ]);
  }
}

abstract class CopyWith$Variables$Query$invoiceFileDownload<TRes> {
  factory CopyWith$Variables$Query$invoiceFileDownload(
    Variables$Query$invoiceFileDownload instance,
    TRes Function(Variables$Query$invoiceFileDownload) then,
  ) = _CopyWithImpl$Variables$Query$invoiceFileDownload;

  factory CopyWith$Variables$Query$invoiceFileDownload.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$invoiceFileDownload;

  TRes call({
    String? invoiceNumber,
    String? purchaseOrderNumber,
  });
}

class _CopyWithImpl$Variables$Query$invoiceFileDownload<TRes>
    implements CopyWith$Variables$Query$invoiceFileDownload<TRes> {
  _CopyWithImpl$Variables$Query$invoiceFileDownload(
    this._instance,
    this._then,
  );

  final Variables$Query$invoiceFileDownload _instance;

  final TRes Function(Variables$Query$invoiceFileDownload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invoiceNumber = _undefined,
    Object? purchaseOrderNumber = _undefined,
  }) =>
      _then(Variables$Query$invoiceFileDownload._({
        ..._instance._$data,
        if (invoiceNumber != _undefined && invoiceNumber != null)
          'invoiceNumber': (invoiceNumber as String),
        if (purchaseOrderNumber != _undefined && purchaseOrderNumber != null)
          'purchaseOrderNumber': (purchaseOrderNumber as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$invoiceFileDownload<TRes>
    implements CopyWith$Variables$Query$invoiceFileDownload<TRes> {
  _CopyWithStubImpl$Variables$Query$invoiceFileDownload(this._res);

  TRes _res;

  call({
    String? invoiceNumber,
    String? purchaseOrderNumber,
  }) =>
      _res;
}

class Query$invoiceFileDownload {
  Query$invoiceFileDownload({
    this.invoiceFileSASToken,
    this.$__typename = 'Query',
  });

  factory Query$invoiceFileDownload.fromJson(Map<String, dynamic> json) {
    final l$invoiceFileSASToken = json['invoiceFileSASToken'];
    final l$$__typename = json['__typename'];
    return Query$invoiceFileDownload(
      invoiceFileSASToken: (l$invoiceFileSASToken as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? invoiceFileSASToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invoiceFileSASToken = invoiceFileSASToken;
    _resultData['invoiceFileSASToken'] = l$invoiceFileSASToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invoiceFileSASToken = invoiceFileSASToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$invoiceFileSASToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$invoiceFileDownload ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$invoiceFileSASToken = invoiceFileSASToken;
    final lOther$invoiceFileSASToken = other.invoiceFileSASToken;
    if (l$invoiceFileSASToken != lOther$invoiceFileSASToken) {
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

extension UtilityExtension$Query$invoiceFileDownload
    on Query$invoiceFileDownload {
  CopyWith$Query$invoiceFileDownload<Query$invoiceFileDownload> get copyWith =>
      CopyWith$Query$invoiceFileDownload(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$invoiceFileDownload<TRes> {
  factory CopyWith$Query$invoiceFileDownload(
    Query$invoiceFileDownload instance,
    TRes Function(Query$invoiceFileDownload) then,
  ) = _CopyWithImpl$Query$invoiceFileDownload;

  factory CopyWith$Query$invoiceFileDownload.stub(TRes res) =
      _CopyWithStubImpl$Query$invoiceFileDownload;

  TRes call({
    String? invoiceFileSASToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$invoiceFileDownload<TRes>
    implements CopyWith$Query$invoiceFileDownload<TRes> {
  _CopyWithImpl$Query$invoiceFileDownload(
    this._instance,
    this._then,
  );

  final Query$invoiceFileDownload _instance;

  final TRes Function(Query$invoiceFileDownload) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invoiceFileSASToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$invoiceFileDownload(
        invoiceFileSASToken: invoiceFileSASToken == _undefined
            ? _instance.invoiceFileSASToken
            : (invoiceFileSASToken as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$invoiceFileDownload<TRes>
    implements CopyWith$Query$invoiceFileDownload<TRes> {
  _CopyWithStubImpl$Query$invoiceFileDownload(this._res);

  TRes _res;

  call({
    String? invoiceFileSASToken,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryinvoiceFileDownload = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'invoiceFileDownload'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'invoiceNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'purchaseOrderNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'invoiceFileSASToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'invoiceNo'),
            value: VariableNode(name: NameNode(value: 'invoiceNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'purchaseOrderNo'),
            value: VariableNode(name: NameNode(value: 'purchaseOrderNumber')),
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
    ]),
  ),
]);
