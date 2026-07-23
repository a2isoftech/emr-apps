import 'package:gql/ast.dart';

class Variables$Query$GetAllYardsInComapny {
  factory Variables$Query$GetAllYardsInComapny({required String companyCode}) =>
      Variables$Query$GetAllYardsInComapny._({
        r'companyCode': companyCode,
      });

  Variables$Query$GetAllYardsInComapny._(this._$data);

  factory Variables$Query$GetAllYardsInComapny.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$companyCode = data['companyCode'];
    result$data['companyCode'] = (l$companyCode as String);
    return Variables$Query$GetAllYardsInComapny._(result$data);
  }

  Map<String, dynamic> _$data;

  String get companyCode => (_$data['companyCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$companyCode = companyCode;
    result$data['companyCode'] = l$companyCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetAllYardsInComapny<
          Variables$Query$GetAllYardsInComapny>
      get copyWith => CopyWith$Variables$Query$GetAllYardsInComapny(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllYardsInComapny) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyCode = companyCode;
    return Object.hashAll([l$companyCode]);
  }
}

abstract class CopyWith$Variables$Query$GetAllYardsInComapny<TRes> {
  factory CopyWith$Variables$Query$GetAllYardsInComapny(
    Variables$Query$GetAllYardsInComapny instance,
    TRes Function(Variables$Query$GetAllYardsInComapny) then,
  ) = _CopyWithImpl$Variables$Query$GetAllYardsInComapny;

  factory CopyWith$Variables$Query$GetAllYardsInComapny.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllYardsInComapny;

  TRes call({String? companyCode});
}

class _CopyWithImpl$Variables$Query$GetAllYardsInComapny<TRes>
    implements CopyWith$Variables$Query$GetAllYardsInComapny<TRes> {
  _CopyWithImpl$Variables$Query$GetAllYardsInComapny(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllYardsInComapny _instance;

  final TRes Function(Variables$Query$GetAllYardsInComapny) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? companyCode = _undefined}) =>
      _then(Variables$Query$GetAllYardsInComapny._({
        ..._instance._$data,
        if (companyCode != _undefined && companyCode != null)
          'companyCode': (companyCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllYardsInComapny<TRes>
    implements CopyWith$Variables$Query$GetAllYardsInComapny<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllYardsInComapny(this._res);

  TRes _res;

  call({String? companyCode}) => _res;
}

class Query$GetAllYardsInComapny {
  Query$GetAllYardsInComapny({
    required this.allYards,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAllYardsInComapny.fromJson(Map<String, dynamic> json) {
    final l$allYards = json['allYards'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYardsInComapny(
      allYards: (l$allYards as List<dynamic>)
          .map((e) => Query$GetAllYardsInComapny$allYards.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllYardsInComapny$allYards> allYards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allYards = allYards;
    _resultData['allYards'] = l$allYards.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allYards = allYards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allYards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllYardsInComapny) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allYards = allYards;
    final lOther$allYards = other.allYards;
    if (l$allYards.length != lOther$allYards.length) {
      return false;
    }
    for (int i = 0; i < l$allYards.length; i++) {
      final l$allYards$entry = l$allYards[i];
      final lOther$allYards$entry = lOther$allYards[i];
      if (l$allYards$entry != lOther$allYards$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllYardsInComapny
    on Query$GetAllYardsInComapny {
  CopyWith$Query$GetAllYardsInComapny<Query$GetAllYardsInComapny>
      get copyWith => CopyWith$Query$GetAllYardsInComapny(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllYardsInComapny<TRes> {
  factory CopyWith$Query$GetAllYardsInComapny(
    Query$GetAllYardsInComapny instance,
    TRes Function(Query$GetAllYardsInComapny) then,
  ) = _CopyWithImpl$Query$GetAllYardsInComapny;

  factory CopyWith$Query$GetAllYardsInComapny.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYardsInComapny;

  TRes call({
    List<Query$GetAllYardsInComapny$allYards>? allYards,
    String? $__typename,
  });
  TRes allYards(
      Iterable<Query$GetAllYardsInComapny$allYards> Function(
              Iterable<
                  CopyWith$Query$GetAllYardsInComapny$allYards<
                      Query$GetAllYardsInComapny$allYards>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllYardsInComapny<TRes>
    implements CopyWith$Query$GetAllYardsInComapny<TRes> {
  _CopyWithImpl$Query$GetAllYardsInComapny(
    this._instance,
    this._then,
  );

  final Query$GetAllYardsInComapny _instance;

  final TRes Function(Query$GetAllYardsInComapny) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allYards = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllYardsInComapny(
        allYards: allYards == _undefined || allYards == null
            ? _instance.allYards
            : (allYards as List<Query$GetAllYardsInComapny$allYards>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes allYards(
          Iterable<Query$GetAllYardsInComapny$allYards> Function(
                  Iterable<
                      CopyWith$Query$GetAllYardsInComapny$allYards<
                          Query$GetAllYardsInComapny$allYards>>)
              _fn) =>
      call(
          allYards: _fn(_instance.allYards
              .map((e) => CopyWith$Query$GetAllYardsInComapny$allYards(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllYardsInComapny<TRes>
    implements CopyWith$Query$GetAllYardsInComapny<TRes> {
  _CopyWithStubImpl$Query$GetAllYardsInComapny(this._res);

  TRes _res;

  call({
    List<Query$GetAllYardsInComapny$allYards>? allYards,
    String? $__typename,
  }) =>
      _res;

  allYards(_fn) => _res;
}

const documentNodeQueryGetAllYardsInComapny = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllYardsInComapny'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'companyCode')),
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
        name: NameNode(value: 'allYards'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyCode'),
            value: VariableNode(name: NameNode(value: 'companyCode')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'yardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
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

class Query$GetAllYardsInComapny$allYards {
  Query$GetAllYardsInComapny$allYards({
    this.yardCode,
    this.name,
    this.$__typename = 'Yard',
  });

  factory Query$GetAllYardsInComapny$allYards.fromJson(
      Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAllYardsInComapny$allYards(
      yardCode: (l$yardCode as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? yardCode;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllYardsInComapny$allYards) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAllYardsInComapny$allYards
    on Query$GetAllYardsInComapny$allYards {
  CopyWith$Query$GetAllYardsInComapny$allYards<
          Query$GetAllYardsInComapny$allYards>
      get copyWith => CopyWith$Query$GetAllYardsInComapny$allYards(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllYardsInComapny$allYards<TRes> {
  factory CopyWith$Query$GetAllYardsInComapny$allYards(
    Query$GetAllYardsInComapny$allYards instance,
    TRes Function(Query$GetAllYardsInComapny$allYards) then,
  ) = _CopyWithImpl$Query$GetAllYardsInComapny$allYards;

  factory CopyWith$Query$GetAllYardsInComapny$allYards.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllYardsInComapny$allYards;

  TRes call({
    String? yardCode,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllYardsInComapny$allYards<TRes>
    implements CopyWith$Query$GetAllYardsInComapny$allYards<TRes> {
  _CopyWithImpl$Query$GetAllYardsInComapny$allYards(
    this._instance,
    this._then,
  );

  final Query$GetAllYardsInComapny$allYards _instance;

  final TRes Function(Query$GetAllYardsInComapny$allYards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllYardsInComapny$allYards(
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllYardsInComapny$allYards<TRes>
    implements CopyWith$Query$GetAllYardsInComapny$allYards<TRes> {
  _CopyWithStubImpl$Query$GetAllYardsInComapny$allYards(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
