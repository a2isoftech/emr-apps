import 'package:gql/ast.dart';

class Variables$Query$heaps {
  factory Variables$Query$heaps({
    required List<String> depotNos,
    required String searchTerm,
  }) =>
      Variables$Query$heaps._({
        r'depotNos': depotNos,
        r'searchTerm': searchTerm,
      });

  Variables$Query$heaps._(this._$data);

  factory Variables$Query$heaps.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$depotNos = data['depotNos'];
    result$data['depotNos'] =
        (l$depotNos as List<dynamic>).map((e) => (e as String)).toList();
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$heaps._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get depotNos => (_$data['depotNos'] as List<String>);

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$depotNos = depotNos;
    result$data['depotNos'] = l$depotNos.map((e) => e).toList();
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$heaps<Variables$Query$heaps> get copyWith =>
      CopyWith$Variables$Query$heaps(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$heaps) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNos = depotNos;
    final lOther$depotNos = other.depotNos;
    if (l$depotNos.length != lOther$depotNos.length) {
      return false;
    }
    for (int i = 0; i < l$depotNos.length; i++) {
      final l$depotNos$entry = l$depotNos[i];
      final lOther$depotNos$entry = lOther$depotNos[i];
      if (l$depotNos$entry != lOther$depotNos$entry) {
        return false;
      }
    }
    final l$searchTerm = searchTerm;
    final lOther$searchTerm = other.searchTerm;
    if (l$searchTerm != lOther$searchTerm) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$depotNos = depotNos;
    final l$searchTerm = searchTerm;
    return Object.hashAll([
      Object.hashAll(l$depotNos.map((v) => v)),
      l$searchTerm,
    ]);
  }
}

abstract class CopyWith$Variables$Query$heaps<TRes> {
  factory CopyWith$Variables$Query$heaps(
    Variables$Query$heaps instance,
    TRes Function(Variables$Query$heaps) then,
  ) = _CopyWithImpl$Variables$Query$heaps;

  factory CopyWith$Variables$Query$heaps.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$heaps;

  TRes call({
    List<String>? depotNos,
    String? searchTerm,
  });
}

class _CopyWithImpl$Variables$Query$heaps<TRes>
    implements CopyWith$Variables$Query$heaps<TRes> {
  _CopyWithImpl$Variables$Query$heaps(
    this._instance,
    this._then,
  );

  final Variables$Query$heaps _instance;

  final TRes Function(Variables$Query$heaps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNos = _undefined,
    Object? searchTerm = _undefined,
  }) =>
      _then(Variables$Query$heaps._({
        ..._instance._$data,
        if (depotNos != _undefined && depotNos != null)
          'depotNos': (depotNos as List<String>),
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$heaps<TRes>
    implements CopyWith$Variables$Query$heaps<TRes> {
  _CopyWithStubImpl$Variables$Query$heaps(this._res);

  TRes _res;

  call({
    List<String>? depotNos,
    String? searchTerm,
  }) =>
      _res;
}

class Query$heaps {
  Query$heaps({
    this.heaps,
    this.$__typename = 'Query',
  });

  factory Query$heaps.fromJson(Map<String, dynamic> json) {
    final l$heaps = json['heaps'];
    final l$$__typename = json['__typename'];
    return Query$heaps(
      heaps: (l$heaps as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$heaps$heaps.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$heaps$heaps?>? heaps;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$heaps = heaps;
    _resultData['heaps'] = l$heaps?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$heaps = heaps;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$heaps == null ? null : Object.hashAll(l$heaps.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$heaps) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$heaps = heaps;
    final lOther$heaps = other.heaps;
    if (l$heaps != null && lOther$heaps != null) {
      if (l$heaps.length != lOther$heaps.length) {
        return false;
      }
      for (int i = 0; i < l$heaps.length; i++) {
        final l$heaps$entry = l$heaps[i];
        final lOther$heaps$entry = lOther$heaps[i];
        if (l$heaps$entry != lOther$heaps$entry) {
          return false;
        }
      }
    } else if (l$heaps != lOther$heaps) {
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

extension UtilityExtension$Query$heaps on Query$heaps {
  CopyWith$Query$heaps<Query$heaps> get copyWith => CopyWith$Query$heaps(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$heaps<TRes> {
  factory CopyWith$Query$heaps(
    Query$heaps instance,
    TRes Function(Query$heaps) then,
  ) = _CopyWithImpl$Query$heaps;

  factory CopyWith$Query$heaps.stub(TRes res) = _CopyWithStubImpl$Query$heaps;

  TRes call({
    List<Query$heaps$heaps?>? heaps,
    String? $__typename,
  });
  TRes heaps(
      Iterable<Query$heaps$heaps?>? Function(
              Iterable<CopyWith$Query$heaps$heaps<Query$heaps$heaps>?>?)
          _fn);
}

class _CopyWithImpl$Query$heaps<TRes> implements CopyWith$Query$heaps<TRes> {
  _CopyWithImpl$Query$heaps(
    this._instance,
    this._then,
  );

  final Query$heaps _instance;

  final TRes Function(Query$heaps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? heaps = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$heaps(
        heaps: heaps == _undefined
            ? _instance.heaps
            : (heaps as List<Query$heaps$heaps?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes heaps(
          Iterable<Query$heaps$heaps?>? Function(
                  Iterable<CopyWith$Query$heaps$heaps<Query$heaps$heaps>?>?)
              _fn) =>
      call(
          heaps: _fn(_instance.heaps?.map((e) => e == null
              ? null
              : CopyWith$Query$heaps$heaps(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$heaps<TRes>
    implements CopyWith$Query$heaps<TRes> {
  _CopyWithStubImpl$Query$heaps(this._res);

  TRes _res;

  call({
    List<Query$heaps$heaps?>? heaps,
    String? $__typename,
  }) =>
      _res;

  heaps(_fn) => _res;
}

const documentNodeQueryheaps = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'heaps'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'depotNos')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchTerm')),
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
        name: NameNode(value: 'heaps'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'depotNos'),
            value: VariableNode(name: NameNode(value: 'depotNos')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchTerm'),
            value: VariableNode(name: NameNode(value: 'searchTerm')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'heapNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'heapDesc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'heapShortName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gradeCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'heapDisplayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uomId'),
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

class Query$heaps$heaps {
  Query$heaps$heaps({
    required this.heapNo,
    this.depotNo,
    this.heapDesc,
    this.heapShortName,
    this.gradeCode,
    this.heapDisplayName,
    this.uomId,
    this.$__typename = 'HeapVm',
  });

  factory Query$heaps$heaps.fromJson(Map<String, dynamic> json) {
    final l$heapNo = json['heapNo'];
    final l$depotNo = json['depotNo'];
    final l$heapDesc = json['heapDesc'];
    final l$heapShortName = json['heapShortName'];
    final l$gradeCode = json['gradeCode'];
    final l$heapDisplayName = json['heapDisplayName'];
    final l$uomId = json['uomId'];
    final l$$__typename = json['__typename'];
    return Query$heaps$heaps(
      heapNo: (l$heapNo as int),
      depotNo: (l$depotNo as String?),
      heapDesc: (l$heapDesc as String?),
      heapShortName: (l$heapShortName as String?),
      gradeCode: (l$gradeCode as String?),
      heapDisplayName: (l$heapDisplayName as String?),
      uomId: (l$uomId as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int heapNo;

  final String? depotNo;

  final String? heapDesc;

  final String? heapShortName;

  final String? gradeCode;

  final String? heapDisplayName;

  final int? uomId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$heapNo = heapNo;
    _resultData['heapNo'] = l$heapNo;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$heapDesc = heapDesc;
    _resultData['heapDesc'] = l$heapDesc;
    final l$heapShortName = heapShortName;
    _resultData['heapShortName'] = l$heapShortName;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$heapDisplayName = heapDisplayName;
    _resultData['heapDisplayName'] = l$heapDisplayName;
    final l$uomId = uomId;
    _resultData['uomId'] = l$uomId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$heapNo = heapNo;
    final l$depotNo = depotNo;
    final l$heapDesc = heapDesc;
    final l$heapShortName = heapShortName;
    final l$gradeCode = gradeCode;
    final l$heapDisplayName = heapDisplayName;
    final l$uomId = uomId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$heapNo,
      l$depotNo,
      l$heapDesc,
      l$heapShortName,
      l$gradeCode,
      l$heapDisplayName,
      l$uomId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$heaps$heaps) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$heapNo = heapNo;
    final lOther$heapNo = other.heapNo;
    if (l$heapNo != lOther$heapNo) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$heapDesc = heapDesc;
    final lOther$heapDesc = other.heapDesc;
    if (l$heapDesc != lOther$heapDesc) {
      return false;
    }
    final l$heapShortName = heapShortName;
    final lOther$heapShortName = other.heapShortName;
    if (l$heapShortName != lOther$heapShortName) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$heapDisplayName = heapDisplayName;
    final lOther$heapDisplayName = other.heapDisplayName;
    if (l$heapDisplayName != lOther$heapDisplayName) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (l$uomId != lOther$uomId) {
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

extension UtilityExtension$Query$heaps$heaps on Query$heaps$heaps {
  CopyWith$Query$heaps$heaps<Query$heaps$heaps> get copyWith =>
      CopyWith$Query$heaps$heaps(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$heaps$heaps<TRes> {
  factory CopyWith$Query$heaps$heaps(
    Query$heaps$heaps instance,
    TRes Function(Query$heaps$heaps) then,
  ) = _CopyWithImpl$Query$heaps$heaps;

  factory CopyWith$Query$heaps$heaps.stub(TRes res) =
      _CopyWithStubImpl$Query$heaps$heaps;

  TRes call({
    int? heapNo,
    String? depotNo,
    String? heapDesc,
    String? heapShortName,
    String? gradeCode,
    String? heapDisplayName,
    int? uomId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$heaps$heaps<TRes>
    implements CopyWith$Query$heaps$heaps<TRes> {
  _CopyWithImpl$Query$heaps$heaps(
    this._instance,
    this._then,
  );

  final Query$heaps$heaps _instance;

  final TRes Function(Query$heaps$heaps) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? heapNo = _undefined,
    Object? depotNo = _undefined,
    Object? heapDesc = _undefined,
    Object? heapShortName = _undefined,
    Object? gradeCode = _undefined,
    Object? heapDisplayName = _undefined,
    Object? uomId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$heaps$heaps(
        heapNo: heapNo == _undefined || heapNo == null
            ? _instance.heapNo
            : (heapNo as int),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        heapDesc:
            heapDesc == _undefined ? _instance.heapDesc : (heapDesc as String?),
        heapShortName: heapShortName == _undefined
            ? _instance.heapShortName
            : (heapShortName as String?),
        gradeCode: gradeCode == _undefined
            ? _instance.gradeCode
            : (gradeCode as String?),
        heapDisplayName: heapDisplayName == _undefined
            ? _instance.heapDisplayName
            : (heapDisplayName as String?),
        uomId: uomId == _undefined ? _instance.uomId : (uomId as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$heaps$heaps<TRes>
    implements CopyWith$Query$heaps$heaps<TRes> {
  _CopyWithStubImpl$Query$heaps$heaps(this._res);

  TRes _res;

  call({
    int? heapNo,
    String? depotNo,
    String? heapDesc,
    String? heapShortName,
    String? gradeCode,
    String? heapDisplayName,
    int? uomId,
    String? $__typename,
  }) =>
      _res;
}
