import 'package:gql/ast.dart';

class Query$GetNextTemplateNumber {
  Query$GetNextTemplateNumber({
    required this.nextTemplateNumber,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetNextTemplateNumber.fromJson(Map<String, dynamic> json) {
    final l$nextTemplateNumber = json['nextTemplateNumber'];
    final l$$__typename = json['__typename'];
    return Query$GetNextTemplateNumber(
      nextTemplateNumber:
          Query$GetNextTemplateNumber$nextTemplateNumber.fromJson(
              (l$nextTemplateNumber as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetNextTemplateNumber$nextTemplateNumber nextTemplateNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nextTemplateNumber = nextTemplateNumber;
    _resultData['nextTemplateNumber'] = l$nextTemplateNumber.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nextTemplateNumber = nextTemplateNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nextTemplateNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetNextTemplateNumber) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nextTemplateNumber = nextTemplateNumber;
    final lOther$nextTemplateNumber = other.nextTemplateNumber;
    if (l$nextTemplateNumber != lOther$nextTemplateNumber) {
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

extension UtilityExtension$Query$GetNextTemplateNumber
    on Query$GetNextTemplateNumber {
  CopyWith$Query$GetNextTemplateNumber<Query$GetNextTemplateNumber>
      get copyWith => CopyWith$Query$GetNextTemplateNumber(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNextTemplateNumber<TRes> {
  factory CopyWith$Query$GetNextTemplateNumber(
    Query$GetNextTemplateNumber instance,
    TRes Function(Query$GetNextTemplateNumber) then,
  ) = _CopyWithImpl$Query$GetNextTemplateNumber;

  factory CopyWith$Query$GetNextTemplateNumber.stub(TRes res) =
      _CopyWithStubImpl$Query$GetNextTemplateNumber;

  TRes call({
    Query$GetNextTemplateNumber$nextTemplateNumber? nextTemplateNumber,
    String? $__typename,
  });
  CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes>
      get nextTemplateNumber;
}

class _CopyWithImpl$Query$GetNextTemplateNumber<TRes>
    implements CopyWith$Query$GetNextTemplateNumber<TRes> {
  _CopyWithImpl$Query$GetNextTemplateNumber(
    this._instance,
    this._then,
  );

  final Query$GetNextTemplateNumber _instance;

  final TRes Function(Query$GetNextTemplateNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nextTemplateNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNextTemplateNumber(
        nextTemplateNumber:
            nextTemplateNumber == _undefined || nextTemplateNumber == null
                ? _instance.nextTemplateNumber
                : (nextTemplateNumber
                    as Query$GetNextTemplateNumber$nextTemplateNumber),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes>
      get nextTemplateNumber {
    final local$nextTemplateNumber = _instance.nextTemplateNumber;
    return CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber(
        local$nextTemplateNumber, (e) => call(nextTemplateNumber: e));
  }
}

class _CopyWithStubImpl$Query$GetNextTemplateNumber<TRes>
    implements CopyWith$Query$GetNextTemplateNumber<TRes> {
  _CopyWithStubImpl$Query$GetNextTemplateNumber(this._res);

  TRes _res;

  call({
    Query$GetNextTemplateNumber$nextTemplateNumber? nextTemplateNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes>
      get nextTemplateNumber =>
          CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber.stub(_res);
}

const documentNodeQueryGetNextTemplateNumber = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetNextTemplateNumber'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'nextTemplateNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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

class Query$GetNextTemplateNumber$nextTemplateNumber {
  Query$GetNextTemplateNumber$nextTemplateNumber({
    required this.data,
    this.$__typename = 'NextTemplateNumber',
  });

  factory Query$GetNextTemplateNumber$nextTemplateNumber.fromJson(
      Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Query$GetNextTemplateNumber$nextTemplateNumber(
      data: (l$data as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetNextTemplateNumber$nextTemplateNumber) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetNextTemplateNumber$nextTemplateNumber
    on Query$GetNextTemplateNumber$nextTemplateNumber {
  CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<
          Query$GetNextTemplateNumber$nextTemplateNumber>
      get copyWith => CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes> {
  factory CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber(
    Query$GetNextTemplateNumber$nextTemplateNumber instance,
    TRes Function(Query$GetNextTemplateNumber$nextTemplateNumber) then,
  ) = _CopyWithImpl$Query$GetNextTemplateNumber$nextTemplateNumber;

  factory CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetNextTemplateNumber$nextTemplateNumber;

  TRes call({
    String? data,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetNextTemplateNumber$nextTemplateNumber<TRes>
    implements CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes> {
  _CopyWithImpl$Query$GetNextTemplateNumber$nextTemplateNumber(
    this._instance,
    this._then,
  );

  final Query$GetNextTemplateNumber$nextTemplateNumber _instance;

  final TRes Function(Query$GetNextTemplateNumber$nextTemplateNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetNextTemplateNumber$nextTemplateNumber(
        data: data == _undefined || data == null
            ? _instance.data
            : (data as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetNextTemplateNumber$nextTemplateNumber<TRes>
    implements CopyWith$Query$GetNextTemplateNumber$nextTemplateNumber<TRes> {
  _CopyWithStubImpl$Query$GetNextTemplateNumber$nextTemplateNumber(this._res);

  TRes _res;

  call({
    String? data,
    String? $__typename,
  }) =>
      _res;
}
