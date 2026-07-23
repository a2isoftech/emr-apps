import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$gplPublicationData {
  factory Variables$Query$gplPublicationData({
    required String partyAccountNo,
    List<int>? publicationIds,
    String? territoryCode,
  }) =>
      Variables$Query$gplPublicationData._({
        r'partyAccountNo': partyAccountNo,
        if (publicationIds != null) r'publicationIds': publicationIds,
        if (territoryCode != null) r'territoryCode': territoryCode,
      });

  Variables$Query$gplPublicationData._(this._$data);

  factory Variables$Query$gplPublicationData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    if (data.containsKey('publicationIds')) {
      final l$publicationIds = data['publicationIds'];
      result$data['publicationIds'] =
          (l$publicationIds as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = (l$territoryCode as String?);
    }
    return Variables$Query$gplPublicationData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  List<int>? get publicationIds => (_$data['publicationIds'] as List<int>?);

  String? get territoryCode => (_$data['territoryCode'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    if (_$data.containsKey('publicationIds')) {
      final l$publicationIds = publicationIds;
      result$data['publicationIds'] = l$publicationIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode;
    }
    return result$data;
  }

  CopyWith$Variables$Query$gplPublicationData<
          Variables$Query$gplPublicationData>
      get copyWith => CopyWith$Variables$Query$gplPublicationData(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$gplPublicationData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$publicationIds = publicationIds;
    final lOther$publicationIds = other.publicationIds;
    if (_$data.containsKey('publicationIds') !=
        other._$data.containsKey('publicationIds')) {
      return false;
    }
    if (l$publicationIds != null && lOther$publicationIds != null) {
      if (l$publicationIds.length != lOther$publicationIds.length) {
        return false;
      }
      for (int i = 0; i < l$publicationIds.length; i++) {
        final l$publicationIds$entry = l$publicationIds[i];
        final lOther$publicationIds$entry = lOther$publicationIds[i];
        if (l$publicationIds$entry != lOther$publicationIds$entry) {
          return false;
        }
      }
    } else if (l$publicationIds != lOther$publicationIds) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$publicationIds = publicationIds;
    final l$territoryCode = territoryCode;
    return Object.hashAll([
      l$partyAccountNo,
      _$data.containsKey('publicationIds')
          ? l$publicationIds == null
              ? null
              : Object.hashAll(l$publicationIds.map((v) => v))
          : const {},
      _$data.containsKey('territoryCode') ? l$territoryCode : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$gplPublicationData<TRes> {
  factory CopyWith$Variables$Query$gplPublicationData(
    Variables$Query$gplPublicationData instance,
    TRes Function(Variables$Query$gplPublicationData) then,
  ) = _CopyWithImpl$Variables$Query$gplPublicationData;

  factory CopyWith$Variables$Query$gplPublicationData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$gplPublicationData;

  TRes call({
    String? partyAccountNo,
    List<int>? publicationIds,
    String? territoryCode,
  });
}

class _CopyWithImpl$Variables$Query$gplPublicationData<TRes>
    implements CopyWith$Variables$Query$gplPublicationData<TRes> {
  _CopyWithImpl$Variables$Query$gplPublicationData(
    this._instance,
    this._then,
  );

  final Variables$Query$gplPublicationData _instance;

  final TRes Function(Variables$Query$gplPublicationData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? publicationIds = _undefined,
    Object? territoryCode = _undefined,
  }) =>
      _then(Variables$Query$gplPublicationData._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
        if (publicationIds != _undefined)
          'publicationIds': (publicationIds as List<int>?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$gplPublicationData<TRes>
    implements CopyWith$Variables$Query$gplPublicationData<TRes> {
  _CopyWithStubImpl$Variables$Query$gplPublicationData(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    List<int>? publicationIds,
    String? territoryCode,
  }) =>
      _res;
}

class Query$gplPublicationData {
  Query$gplPublicationData({
    required this.gplPublicationData,
    this.$__typename = 'Query',
  });

  factory Query$gplPublicationData.fromJson(Map<String, dynamic> json) {
    final l$gplPublicationData = json['gplPublicationData'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData(
      gplPublicationData: (l$gplPublicationData as List<dynamic>)
          .map((e) => Query$gplPublicationData$gplPublicationData.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$gplPublicationData$gplPublicationData> gplPublicationData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gplPublicationData = gplPublicationData;
    _resultData['gplPublicationData'] =
        l$gplPublicationData.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gplPublicationData = gplPublicationData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$gplPublicationData.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$gplPublicationData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gplPublicationData = gplPublicationData;
    final lOther$gplPublicationData = other.gplPublicationData;
    if (l$gplPublicationData.length != lOther$gplPublicationData.length) {
      return false;
    }
    for (int i = 0; i < l$gplPublicationData.length; i++) {
      final l$gplPublicationData$entry = l$gplPublicationData[i];
      final lOther$gplPublicationData$entry = lOther$gplPublicationData[i];
      if (l$gplPublicationData$entry != lOther$gplPublicationData$entry) {
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

extension UtilityExtension$Query$gplPublicationData
    on Query$gplPublicationData {
  CopyWith$Query$gplPublicationData<Query$gplPublicationData> get copyWith =>
      CopyWith$Query$gplPublicationData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$gplPublicationData<TRes> {
  factory CopyWith$Query$gplPublicationData(
    Query$gplPublicationData instance,
    TRes Function(Query$gplPublicationData) then,
  ) = _CopyWithImpl$Query$gplPublicationData;

  factory CopyWith$Query$gplPublicationData.stub(TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData;

  TRes call({
    List<Query$gplPublicationData$gplPublicationData>? gplPublicationData,
    String? $__typename,
  });
  TRes gplPublicationData(
      Iterable<Query$gplPublicationData$gplPublicationData> Function(
              Iterable<
                  CopyWith$Query$gplPublicationData$gplPublicationData<
                      Query$gplPublicationData$gplPublicationData>>)
          _fn);
}

class _CopyWithImpl$Query$gplPublicationData<TRes>
    implements CopyWith$Query$gplPublicationData<TRes> {
  _CopyWithImpl$Query$gplPublicationData(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData _instance;

  final TRes Function(Query$gplPublicationData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gplPublicationData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData(
        gplPublicationData:
            gplPublicationData == _undefined || gplPublicationData == null
                ? _instance.gplPublicationData
                : (gplPublicationData
                    as List<Query$gplPublicationData$gplPublicationData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes gplPublicationData(
          Iterable<Query$gplPublicationData$gplPublicationData> Function(
                  Iterable<
                      CopyWith$Query$gplPublicationData$gplPublicationData<
                          Query$gplPublicationData$gplPublicationData>>)
              _fn) =>
      call(
          gplPublicationData: _fn(_instance.gplPublicationData
              .map((e) => CopyWith$Query$gplPublicationData$gplPublicationData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$gplPublicationData<TRes>
    implements CopyWith$Query$gplPublicationData<TRes> {
  _CopyWithStubImpl$Query$gplPublicationData(this._res);

  TRes _res;

  call({
    List<Query$gplPublicationData$gplPublicationData>? gplPublicationData,
    String? $__typename,
  }) =>
      _res;

  gplPublicationData(_fn) => _res;
}

const documentNodeQuerygplPublicationData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'gplPublicationData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNo')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'publicationIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'territoryCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gplPublicationData'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'partyAccountNo'),
            value: VariableNode(name: NameNode(value: 'partyAccountNo')),
          ),
          ArgumentNode(
            name: NameNode(value: 'publicationIds'),
            value: VariableNode(name: NameNode(value: 'publicationIds')),
          ),
          ArgumentNode(
            name: NameNode(value: 'territoryCode'),
            value: VariableNode(name: NameNode(value: 'territoryCode')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
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
            name: NameNode(value: 'issueDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'grades'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'gradeCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'comment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gradeGroup'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'groupDesc'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gradeType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'basePrice'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
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
                name: NameNode(value: 'yardPrices'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'depot'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'depotNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'depotShortName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'depotName'),
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
                    name: NameNode(value: 'yard'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'yardName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'yardShortName'),
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
                    name: NameNode(value: 'finalPrice'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
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

class Query$gplPublicationData$gplPublicationData {
  Query$gplPublicationData$gplPublicationData({
    required this.id,
    required this.name,
    required this.issueDate,
    required this.grades,
    this.$__typename = 'GplPublication',
  });

  factory Query$gplPublicationData$gplPublicationData.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$issueDate = json['issueDate'];
    final l$grades = json['grades'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData(
      id: (l$id as int),
      name: (l$name as String),
      issueDate: DateTime.parse((l$issueDate as String)),
      grades: (l$grades as List<dynamic>)
          .map((e) =>
              Query$gplPublicationData$gplPublicationData$grades.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final DateTime issueDate;

  final List<Query$gplPublicationData$gplPublicationData$grades> grades;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate.toIso8601String();
    final l$grades = grades;
    _resultData['grades'] = l$grades.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$issueDate = issueDate;
    final l$grades = grades;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$issueDate,
      Object.hashAll(l$grades.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$gplPublicationData$gplPublicationData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
      return false;
    }
    final l$grades = grades;
    final lOther$grades = other.grades;
    if (l$grades.length != lOther$grades.length) {
      return false;
    }
    for (int i = 0; i < l$grades.length; i++) {
      final l$grades$entry = l$grades[i];
      final lOther$grades$entry = lOther$grades[i];
      if (l$grades$entry != lOther$grades$entry) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData
    on Query$gplPublicationData$gplPublicationData {
  CopyWith$Query$gplPublicationData$gplPublicationData<
          Query$gplPublicationData$gplPublicationData>
      get copyWith => CopyWith$Query$gplPublicationData$gplPublicationData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData<TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData(
    Query$gplPublicationData$gplPublicationData instance,
    TRes Function(Query$gplPublicationData$gplPublicationData) then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData;

  factory CopyWith$Query$gplPublicationData$gplPublicationData.stub(TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData;

  TRes call({
    int? id,
    String? name,
    DateTime? issueDate,
    List<Query$gplPublicationData$gplPublicationData$grades>? grades,
    String? $__typename,
  });
  TRes grades(
      Iterable<Query$gplPublicationData$gplPublicationData$grades> Function(
              Iterable<
                  CopyWith$Query$gplPublicationData$gplPublicationData$grades<
                      Query$gplPublicationData$gplPublicationData$grades>>)
          _fn);
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData<TRes>
    implements CopyWith$Query$gplPublicationData$gplPublicationData<TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData _instance;

  final TRes Function(Query$gplPublicationData$gplPublicationData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? issueDate = _undefined,
    Object? grades = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        issueDate: issueDate == _undefined || issueDate == null
            ? _instance.issueDate
            : (issueDate as DateTime),
        grades: grades == _undefined || grades == null
            ? _instance.grades
            : (grades
                as List<Query$gplPublicationData$gplPublicationData$grades>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes grades(
          Iterable<Query$gplPublicationData$gplPublicationData$grades> Function(
                  Iterable<
                      CopyWith$Query$gplPublicationData$gplPublicationData$grades<
                          Query$gplPublicationData$gplPublicationData$grades>>)
              _fn) =>
      call(
          grades: _fn(_instance.grades.map((e) =>
              CopyWith$Query$gplPublicationData$gplPublicationData$grades(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData<TRes>
    implements CopyWith$Query$gplPublicationData$gplPublicationData<TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    DateTime? issueDate,
    List<Query$gplPublicationData$gplPublicationData$grades>? grades,
    String? $__typename,
  }) =>
      _res;

  grades(_fn) => _res;
}

class Query$gplPublicationData$gplPublicationData$grades {
  Query$gplPublicationData$gplPublicationData$grades({
    required this.gradeCode,
    required this.comment,
    required this.gradeGroup,
    required this.groupDesc,
    required this.gradeType,
    required this.basePrice,
    required this.yardPrices,
    this.$__typename = 'GplGrade',
  });

  factory Query$gplPublicationData$gplPublicationData$grades.fromJson(
      Map<String, dynamic> json) {
    final l$gradeCode = json['gradeCode'];
    final l$comment = json['comment'];
    final l$gradeGroup = json['gradeGroup'];
    final l$groupDesc = json['groupDesc'];
    final l$gradeType = json['gradeType'];
    final l$basePrice = json['basePrice'];
    final l$yardPrices = json['yardPrices'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades(
      gradeCode: (l$gradeCode as String),
      comment: (l$comment as String),
      gradeGroup: (l$gradeGroup as String),
      groupDesc: (l$groupDesc as String),
      gradeType: (l$gradeType as String),
      basePrice:
          Query$gplPublicationData$gplPublicationData$grades$basePrice.fromJson(
              (l$basePrice as Map<String, dynamic>)),
      yardPrices: (l$yardPrices as List<dynamic>)
          .map((e) =>
              Query$gplPublicationData$gplPublicationData$grades$yardPrices
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeCode;

  final String comment;

  final String gradeGroup;

  final String groupDesc;

  final String gradeType;

  final Query$gplPublicationData$gplPublicationData$grades$basePrice basePrice;

  final List<Query$gplPublicationData$gplPublicationData$grades$yardPrices>
      yardPrices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$gradeGroup = gradeGroup;
    _resultData['gradeGroup'] = l$gradeGroup;
    final l$groupDesc = groupDesc;
    _resultData['groupDesc'] = l$groupDesc;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$basePrice = basePrice;
    _resultData['basePrice'] = l$basePrice.toJson();
    final l$yardPrices = yardPrices;
    _resultData['yardPrices'] = l$yardPrices.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeCode = gradeCode;
    final l$comment = comment;
    final l$gradeGroup = gradeGroup;
    final l$groupDesc = groupDesc;
    final l$gradeType = gradeType;
    final l$basePrice = basePrice;
    final l$yardPrices = yardPrices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeCode,
      l$comment,
      l$gradeGroup,
      l$groupDesc,
      l$gradeType,
      l$basePrice,
      Object.hashAll(l$yardPrices.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$gplPublicationData$gplPublicationData$grades ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$gradeGroup = gradeGroup;
    final lOther$gradeGroup = other.gradeGroup;
    if (l$gradeGroup != lOther$gradeGroup) {
      return false;
    }
    final l$groupDesc = groupDesc;
    final lOther$groupDesc = other.groupDesc;
    if (l$groupDesc != lOther$groupDesc) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$basePrice = basePrice;
    final lOther$basePrice = other.basePrice;
    if (l$basePrice != lOther$basePrice) {
      return false;
    }
    final l$yardPrices = yardPrices;
    final lOther$yardPrices = other.yardPrices;
    if (l$yardPrices.length != lOther$yardPrices.length) {
      return false;
    }
    for (int i = 0; i < l$yardPrices.length; i++) {
      final l$yardPrices$entry = l$yardPrices[i];
      final lOther$yardPrices$entry = lOther$yardPrices[i];
      if (l$yardPrices$entry != lOther$yardPrices$entry) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades
    on Query$gplPublicationData$gplPublicationData$grades {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades<
          Query$gplPublicationData$gplPublicationData$grades>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades(
    Query$gplPublicationData$gplPublicationData$grades instance,
    TRes Function(Query$gplPublicationData$gplPublicationData$grades) then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades;

  TRes call({
    String? gradeCode,
    String? comment,
    String? gradeGroup,
    String? groupDesc,
    String? gradeType,
    Query$gplPublicationData$gplPublicationData$grades$basePrice? basePrice,
    List<Query$gplPublicationData$gplPublicationData$grades$yardPrices>?
        yardPrices,
    String? $__typename,
  });
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<TRes>
      get basePrice;
  TRes yardPrices(
      Iterable<Query$gplPublicationData$gplPublicationData$grades$yardPrices> Function(
              Iterable<
                  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
                      Query$gplPublicationData$gplPublicationData$grades$yardPrices>>)
          _fn);
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades<TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades<TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades _instance;

  final TRes Function(Query$gplPublicationData$gplPublicationData$grades) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeCode = _undefined,
    Object? comment = _undefined,
    Object? gradeGroup = _undefined,
    Object? groupDesc = _undefined,
    Object? gradeType = _undefined,
    Object? basePrice = _undefined,
    Object? yardPrices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData$grades(
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        gradeGroup: gradeGroup == _undefined || gradeGroup == null
            ? _instance.gradeGroup
            : (gradeGroup as String),
        groupDesc: groupDesc == _undefined || groupDesc == null
            ? _instance.groupDesc
            : (groupDesc as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        basePrice: basePrice == _undefined || basePrice == null
            ? _instance.basePrice
            : (basePrice
                as Query$gplPublicationData$gplPublicationData$grades$basePrice),
        yardPrices: yardPrices == _undefined || yardPrices == null
            ? _instance.yardPrices
            : (yardPrices as List<
                Query$gplPublicationData$gplPublicationData$grades$yardPrices>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<TRes>
      get basePrice {
    final local$basePrice = _instance.basePrice;
    return CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice(
        local$basePrice, (e) => call(basePrice: e));
  }

  TRes yardPrices(
          Iterable<Query$gplPublicationData$gplPublicationData$grades$yardPrices> Function(
                  Iterable<
                      CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
                          Query$gplPublicationData$gplPublicationData$grades$yardPrices>>)
              _fn) =>
      call(
          yardPrices: _fn(_instance.yardPrices.map((e) =>
              CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades<TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades<TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades(
      this._res);

  TRes _res;

  call({
    String? gradeCode,
    String? comment,
    String? gradeGroup,
    String? groupDesc,
    String? gradeType,
    Query$gplPublicationData$gplPublicationData$grades$basePrice? basePrice,
    List<Query$gplPublicationData$gplPublicationData$grades$yardPrices>?
        yardPrices,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<TRes>
      get basePrice =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice
              .stub(_res);

  yardPrices(_fn) => _res;
}

class Query$gplPublicationData$gplPublicationData$grades$basePrice {
  Query$gplPublicationData$gplPublicationData$grades$basePrice({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$gplPublicationData$gplPublicationData$grades$basePrice.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades$basePrice(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$gplPublicationData$gplPublicationData$grades$basePrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades$basePrice
    on Query$gplPublicationData$gplPublicationData$grades$basePrice {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<
          Query$gplPublicationData$gplPublicationData$grades$basePrice>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice(
    Query$gplPublicationData$gplPublicationData$grades$basePrice instance,
    TRes Function(Query$gplPublicationData$gplPublicationData$grades$basePrice)
        then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice;

  TRes call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<
            TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades$basePrice _instance;

  final TRes Function(
      Query$gplPublicationData$gplPublicationData$grades$basePrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData$grades$basePrice(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$basePrice<
            TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$basePrice(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$gplPublicationData$gplPublicationData$grades$yardPrices {
  Query$gplPublicationData$gplPublicationData$grades$yardPrices({
    required this.depot,
    required this.yard,
    required this.finalPrice,
    this.$__typename = 'YardPrice',
  });

  factory Query$gplPublicationData$gplPublicationData$grades$yardPrices.fromJson(
      Map<String, dynamic> json) {
    final l$depot = json['depot'];
    final l$yard = json['yard'];
    final l$finalPrice = json['finalPrice'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades$yardPrices(
      depot: Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
          .fromJson((l$depot as Map<String, dynamic>)),
      yard: Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard
          .fromJson((l$yard as Map<String, dynamic>)),
      finalPrice:
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
              .fromJson((l$finalPrice as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
      depot;

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard yard;

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
      finalPrice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depot = depot;
    _resultData['depot'] = l$depot.toJson();
    final l$yard = yard;
    _resultData['yard'] = l$yard.toJson();
    final l$finalPrice = finalPrice;
    _resultData['finalPrice'] = l$finalPrice.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depot = depot;
    final l$yard = yard;
    final l$finalPrice = finalPrice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depot,
      l$yard,
      l$finalPrice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$gplPublicationData$gplPublicationData$grades$yardPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depot = depot;
    final lOther$depot = other.depot;
    if (l$depot != lOther$depot) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$finalPrice = finalPrice;
    final lOther$finalPrice = other.finalPrice;
    if (l$finalPrice != lOther$finalPrice) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades$yardPrices
    on Query$gplPublicationData$gplPublicationData$grades$yardPrices {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
          Query$gplPublicationData$gplPublicationData$grades$yardPrices>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices(
    Query$gplPublicationData$gplPublicationData$grades$yardPrices instance,
    TRes Function(Query$gplPublicationData$gplPublicationData$grades$yardPrices)
        then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices;

  TRes call({
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot? depot,
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard? yard,
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice?
        finalPrice,
    String? $__typename,
  });
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
      TRes> get depot;
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
      TRes> get yard;
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
      TRes> get finalPrice;
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
            TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices _instance;

  final TRes Function(
      Query$gplPublicationData$gplPublicationData$grades$yardPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depot = _undefined,
    Object? yard = _undefined,
    Object? finalPrice = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData$grades$yardPrices(
        depot: depot == _undefined || depot == null
            ? _instance.depot
            : (depot
                as Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot),
        yard: yard == _undefined || yard == null
            ? _instance.yard
            : (yard
                as Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard),
        finalPrice: finalPrice == _undefined || finalPrice == null
            ? _instance.finalPrice
            : (finalPrice
                as Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
      TRes> get depot {
    final local$depot = _instance.depot;
    return CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
        local$depot, (e) => call(depot: e));
  }

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
      TRes> get yard {
    final local$yard = _instance.yard;
    return CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
        local$yard, (e) => call(yard: e));
  }

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
      TRes> get finalPrice {
    final local$finalPrice = _instance.finalPrice;
    return CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
        local$finalPrice, (e) => call(finalPrice: e));
  }
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices<
            TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices(
      this._res);

  TRes _res;

  call({
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot? depot,
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard? yard,
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice?
        finalPrice,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
          TRes>
      get depot =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
              .stub(_res);

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
          TRes>
      get yard =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard
              .stub(_res);

  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
          TRes>
      get finalPrice =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
              .stub(_res);
}

class Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot {
  Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot({
    required this.depotNo,
    required this.depotShortName,
    required this.depotName,
    this.$__typename = 'MsDepot',
  });

  factory Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot.fromJson(
      Map<String, dynamic> json) {
    final l$depotNo = json['depotNo'];
    final l$depotShortName = json['depotShortName'];
    final l$depotName = json['depotName'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
      depotNo: (l$depotNo as String),
      depotShortName: (l$depotShortName as String),
      depotName: (l$depotName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String depotNo;

  final String depotShortName;

  final String depotName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$depotShortName = depotShortName;
    _resultData['depotShortName'] = l$depotShortName;
    final l$depotName = depotName;
    _resultData['depotName'] = l$depotName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotNo = depotNo;
    final l$depotShortName = depotShortName;
    final l$depotName = depotName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotNo,
      l$depotShortName,
      l$depotName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$depotShortName = depotShortName;
    final lOther$depotShortName = other.depotShortName;
    if (l$depotShortName != lOther$depotShortName) {
      return false;
    }
    final l$depotName = depotName;
    final lOther$depotName = other.depotName;
    if (l$depotName != lOther$depotName) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
    on Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
        instance,
    TRes Function(
            Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot)
        then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot;

  TRes call({
    String? depotNo,
    String? depotShortName,
    String? depotName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
            TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot
      _instance;

  final TRes Function(
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotNo = _undefined,
    Object? depotShortName = _undefined,
    Object? depotName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        depotShortName: depotShortName == _undefined || depotShortName == null
            ? _instance.depotShortName
            : (depotShortName as String),
        depotName: depotName == _undefined || depotName == null
            ? _instance.depotName
            : (depotName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot<
            TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$depot(
      this._res);

  TRes _res;

  call({
    String? depotNo,
    String? depotShortName,
    String? depotName,
    String? $__typename,
  }) =>
      _res;
}

class Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard {
  Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard({
    required this.yardCode,
    required this.yardName,
    required this.yardShortName,
    this.$__typename = 'Yard',
  });

  factory Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard.fromJson(
      Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$yardName = json['yardName'];
    final l$yardShortName = json['yardShortName'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
      yardCode: (l$yardCode as String),
      yardName: (l$yardName as String),
      yardShortName: (l$yardShortName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yardCode;

  final String yardName;

  final String yardShortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardName = yardName;
    _resultData['yardName'] = l$yardName;
    final l$yardShortName = yardShortName;
    _resultData['yardShortName'] = l$yardShortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$yardName = yardName;
    final l$yardShortName = yardShortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$yardName,
      l$yardShortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (l$yardName != lOther$yardName) {
      return false;
    }
    final l$yardShortName = yardShortName;
    final lOther$yardShortName = other.yardShortName;
    if (l$yardShortName != lOther$yardShortName) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard
    on Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard instance,
    TRes Function(
            Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard)
        then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard;

  TRes call({
    String? yardCode,
    String? yardName,
    String? yardShortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
            TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard
      _instance;

  final TRes Function(
      Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? yardName = _undefined,
    Object? yardShortName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        yardName: yardName == _undefined || yardName == null
            ? _instance.yardName
            : (yardName as String),
        yardShortName: yardShortName == _undefined || yardShortName == null
            ? _instance.yardShortName
            : (yardShortName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard<
            TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$yard(
      this._res);

  TRes _res;

  call({
    String? yardCode,
    String? yardName,
    String? yardShortName,
    String? $__typename,
  }) =>
      _res;
}

class Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice {
  Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice({
    required this.value,
    required this.id,
    this.$__typename = 'UomValue',
  });

  factory Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
    on Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice {
  CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice>
      get copyWith =>
          CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
    TRes> {
  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
    Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
        instance,
    TRes Function(
            Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice)
        then,
  ) = _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice;

  factory CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice.stub(
          TRes res) =
      _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice;

  TRes call({
    double? value,
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
            TRes> {
  _CopyWithImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
    this._instance,
    this._then,
  );

  final Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice
      _instance;

  final TRes Function(
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
        TRes>
    implements
        CopyWith$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice<
            TRes> {
  _CopyWithStubImpl$Query$gplPublicationData$gplPublicationData$grades$yardPrices$finalPrice(
      this._res);

  TRes _res;

  call({
    double? value,
    int? id,
    String? $__typename,
  }) =>
      _res;
}
