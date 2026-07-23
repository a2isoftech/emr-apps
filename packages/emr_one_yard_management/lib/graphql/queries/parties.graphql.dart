import 'package:gql/ast.dart';

class Variables$Query$parties {
  factory Variables$Query$parties({required String searchTerm}) =>
      Variables$Query$parties._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$parties._(this._$data);

  factory Variables$Query$parties.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$parties._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$parties<Variables$Query$parties> get copyWith =>
      CopyWith$Variables$Query$parties(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$parties) ||
        runtimeType != other.runtimeType) {
      return false;
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
    final l$searchTerm = searchTerm;
    return Object.hashAll([l$searchTerm]);
  }
}

abstract class CopyWith$Variables$Query$parties<TRes> {
  factory CopyWith$Variables$Query$parties(
    Variables$Query$parties instance,
    TRes Function(Variables$Query$parties) then,
  ) = _CopyWithImpl$Variables$Query$parties;

  factory CopyWith$Variables$Query$parties.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$parties;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$parties<TRes>
    implements CopyWith$Variables$Query$parties<TRes> {
  _CopyWithImpl$Variables$Query$parties(
    this._instance,
    this._then,
  );

  final Variables$Query$parties _instance;

  final TRes Function(Variables$Query$parties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$parties._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$parties<TRes>
    implements CopyWith$Variables$Query$parties<TRes> {
  _CopyWithStubImpl$Variables$Query$parties(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$parties {
  Query$parties({
    this.parties,
    this.$__typename = 'Query',
  });

  factory Query$parties.fromJson(Map<String, dynamic> json) {
    final l$parties = json['parties'];
    final l$$__typename = json['__typename'];
    return Query$parties(
      parties: (l$parties as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$parties$parties.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$parties$parties?>? parties;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$parties = parties;
    _resultData['parties'] = l$parties?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$parties = parties;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$parties == null ? null : Object.hashAll(l$parties.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$parties) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$parties = parties;
    final lOther$parties = other.parties;
    if (l$parties != null && lOther$parties != null) {
      if (l$parties.length != lOther$parties.length) {
        return false;
      }
      for (int i = 0; i < l$parties.length; i++) {
        final l$parties$entry = l$parties[i];
        final lOther$parties$entry = lOther$parties[i];
        if (l$parties$entry != lOther$parties$entry) {
          return false;
        }
      }
    } else if (l$parties != lOther$parties) {
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

extension UtilityExtension$Query$parties on Query$parties {
  CopyWith$Query$parties<Query$parties> get copyWith => CopyWith$Query$parties(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$parties<TRes> {
  factory CopyWith$Query$parties(
    Query$parties instance,
    TRes Function(Query$parties) then,
  ) = _CopyWithImpl$Query$parties;

  factory CopyWith$Query$parties.stub(TRes res) =
      _CopyWithStubImpl$Query$parties;

  TRes call({
    List<Query$parties$parties?>? parties,
    String? $__typename,
  });
  TRes parties(
      Iterable<Query$parties$parties?>? Function(
              Iterable<CopyWith$Query$parties$parties<Query$parties$parties>?>?)
          _fn);
}

class _CopyWithImpl$Query$parties<TRes>
    implements CopyWith$Query$parties<TRes> {
  _CopyWithImpl$Query$parties(
    this._instance,
    this._then,
  );

  final Query$parties _instance;

  final TRes Function(Query$parties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? parties = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$parties(
        parties: parties == _undefined
            ? _instance.parties
            : (parties as List<Query$parties$parties?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes parties(
          Iterable<Query$parties$parties?>? Function(
                  Iterable<
                      CopyWith$Query$parties$parties<Query$parties$parties>?>?)
              _fn) =>
      call(
          parties: _fn(_instance.parties?.map((e) => e == null
              ? null
              : CopyWith$Query$parties$parties(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$parties<TRes>
    implements CopyWith$Query$parties<TRes> {
  _CopyWithStubImpl$Query$parties(this._res);

  TRes _res;

  call({
    List<Query$parties$parties?>? parties,
    String? $__typename,
  }) =>
      _res;

  parties(_fn) => _res;
}

const documentNodeQueryparties = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'parties'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchTerm')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'parties'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchTerm'),
            value: VariableNode(name: NameNode(value: 'searchTerm')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'partyAccountNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'partyName'),
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

class Query$parties$parties {
  Query$parties$parties({
    this.partyAccountNo,
    this.partyName,
    this.$__typename = 'PartiesVm',
  });

  factory Query$parties$parties.fromJson(Map<String, dynamic> json) {
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$$__typename = json['__typename'];
    return Query$parties$parties(
      partyAccountNo: (l$partyAccountNo as String?),
      partyName: (l$partyName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? partyAccountNo;

  final String? partyName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partyAccountNo,
      l$partyName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$parties$parties) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
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

extension UtilityExtension$Query$parties$parties on Query$parties$parties {
  CopyWith$Query$parties$parties<Query$parties$parties> get copyWith =>
      CopyWith$Query$parties$parties(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$parties$parties<TRes> {
  factory CopyWith$Query$parties$parties(
    Query$parties$parties instance,
    TRes Function(Query$parties$parties) then,
  ) = _CopyWithImpl$Query$parties$parties;

  factory CopyWith$Query$parties$parties.stub(TRes res) =
      _CopyWithStubImpl$Query$parties$parties;

  TRes call({
    String? partyAccountNo,
    String? partyName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$parties$parties<TRes>
    implements CopyWith$Query$parties$parties<TRes> {
  _CopyWithImpl$Query$parties$parties(
    this._instance,
    this._then,
  );

  final Query$parties$parties _instance;

  final TRes Function(Query$parties$parties) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$parties$parties(
        partyAccountNo: partyAccountNo == _undefined
            ? _instance.partyAccountNo
            : (partyAccountNo as String?),
        partyName: partyName == _undefined
            ? _instance.partyName
            : (partyName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$parties$parties<TRes>
    implements CopyWith$Query$parties$parties<TRes> {
  _CopyWithStubImpl$Query$parties$parties(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    String? partyName,
    String? $__typename,
  }) =>
      _res;
}
