import 'package:gql/ast.dart';

class Variables$Query$GetFormLists {
  factory Variables$Query$GetFormLists({
    String? startDate,
    String? endDate,
    String? listName,
    String? createdBy,
  }) =>
      Variables$Query$GetFormLists._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (listName != null) r'listName': listName,
        if (createdBy != null) r'createdBy': createdBy,
      });

  Variables$Query$GetFormLists._(this._$data);

  factory Variables$Query$GetFormLists.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('listName')) {
      final l$listName = data['listName'];
      result$data['listName'] = (l$listName as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    return Variables$Query$GetFormLists._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get listName => (_$data['listName'] as String?);

  String? get createdBy => (_$data['createdBy'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('listName')) {
      final l$listName = listName;
      result$data['listName'] = l$listName;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetFormLists<Variables$Query$GetFormLists>
      get copyWith => CopyWith$Variables$Query$GetFormLists(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFormLists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (_$data.containsKey('listName') !=
        other._$data.containsKey('listName')) {
      return false;
    }
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$listName = listName;
    final l$createdBy = createdBy;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('listName') ? l$listName : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetFormLists<TRes> {
  factory CopyWith$Variables$Query$GetFormLists(
    Variables$Query$GetFormLists instance,
    TRes Function(Variables$Query$GetFormLists) then,
  ) = _CopyWithImpl$Variables$Query$GetFormLists;

  factory CopyWith$Variables$Query$GetFormLists.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFormLists;

  TRes call({
    String? startDate,
    String? endDate,
    String? listName,
    String? createdBy,
  });
}

class _CopyWithImpl$Variables$Query$GetFormLists<TRes>
    implements CopyWith$Variables$Query$GetFormLists<TRes> {
  _CopyWithImpl$Variables$Query$GetFormLists(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFormLists _instance;

  final TRes Function(Variables$Query$GetFormLists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? listName = _undefined,
    Object? createdBy = _undefined,
  }) =>
      _then(Variables$Query$GetFormLists._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (listName != _undefined) 'listName': (listName as String?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFormLists<TRes>
    implements CopyWith$Variables$Query$GetFormLists<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFormLists(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
    String? listName,
    String? createdBy,
  }) =>
      _res;
}

class Query$GetFormLists {
  Query$GetFormLists({
    required this.formLists,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetFormLists.fromJson(Map<String, dynamic> json) {
    final l$formLists = json['formLists'];
    final l$$__typename = json['__typename'];
    return Query$GetFormLists(
      formLists: (l$formLists as List<dynamic>)
          .map((e) => Query$GetFormLists$formLists.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFormLists$formLists> formLists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formLists = formLists;
    _resultData['formLists'] = l$formLists.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formLists = formLists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$formLists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormLists) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$formLists = formLists;
    final lOther$formLists = other.formLists;
    if (l$formLists.length != lOther$formLists.length) {
      return false;
    }
    for (int i = 0; i < l$formLists.length; i++) {
      final l$formLists$entry = l$formLists[i];
      final lOther$formLists$entry = lOther$formLists[i];
      if (l$formLists$entry != lOther$formLists$entry) {
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

extension UtilityExtension$Query$GetFormLists on Query$GetFormLists {
  CopyWith$Query$GetFormLists<Query$GetFormLists> get copyWith =>
      CopyWith$Query$GetFormLists(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFormLists<TRes> {
  factory CopyWith$Query$GetFormLists(
    Query$GetFormLists instance,
    TRes Function(Query$GetFormLists) then,
  ) = _CopyWithImpl$Query$GetFormLists;

  factory CopyWith$Query$GetFormLists.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormLists;

  TRes call({
    List<Query$GetFormLists$formLists>? formLists,
    String? $__typename,
  });
  TRes formLists(
      Iterable<Query$GetFormLists$formLists> Function(
              Iterable<
                  CopyWith$Query$GetFormLists$formLists<
                      Query$GetFormLists$formLists>>)
          _fn);
}

class _CopyWithImpl$Query$GetFormLists<TRes>
    implements CopyWith$Query$GetFormLists<TRes> {
  _CopyWithImpl$Query$GetFormLists(
    this._instance,
    this._then,
  );

  final Query$GetFormLists _instance;

  final TRes Function(Query$GetFormLists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formLists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormLists(
        formLists: formLists == _undefined || formLists == null
            ? _instance.formLists
            : (formLists as List<Query$GetFormLists$formLists>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formLists(
          Iterable<Query$GetFormLists$formLists> Function(
                  Iterable<
                      CopyWith$Query$GetFormLists$formLists<
                          Query$GetFormLists$formLists>>)
              _fn) =>
      call(
          formLists: _fn(_instance.formLists
              .map((e) => CopyWith$Query$GetFormLists$formLists(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFormLists<TRes>
    implements CopyWith$Query$GetFormLists<TRes> {
  _CopyWithStubImpl$Query$GetFormLists(this._res);

  TRes _res;

  call({
    List<Query$GetFormLists$formLists>? formLists,
    String? $__typename,
  }) =>
      _res;

  formLists(_fn) => _res;
}

const documentNodeQueryGetFormLists = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFormLists'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'listName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createdBy')),
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
        name: NameNode(value: 'formLists'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'startDate'),
            value: VariableNode(name: NameNode(value: 'startDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'endDate'),
            value: VariableNode(name: NameNode(value: 'endDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'listName'),
            value: VariableNode(name: NameNode(value: 'listName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'createdBy'),
            value: VariableNode(name: NameNode(value: 'createdBy')),
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
            name: NameNode(value: 'listName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listValues'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
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

class Query$GetFormLists$formLists {
  Query$GetFormLists$formLists({
    required this.id,
    required this.listName,
    required this.listValues,
    required this.createdBy,
    required this.createdDate,
    this.modifiedBy,
    this.modifiedDate,
    required this.isActive,
    this.$__typename = 'FormList',
  });

  factory Query$GetFormLists$formLists.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$listName = json['listName'];
    final l$listValues = json['listValues'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$modifiedBy = json['modifiedBy'];
    final l$modifiedDate = json['modifiedDate'];
    final l$isActive = json['isActive'];
    final l$$__typename = json['__typename'];
    return Query$GetFormLists$formLists(
      id: (l$id as int),
      listName: (l$listName as String),
      listValues: (l$listValues as String),
      createdBy: (l$createdBy as String),
      createdDate: (l$createdDate as String),
      modifiedBy: (l$modifiedBy as String?),
      modifiedDate: (l$modifiedDate as String?),
      isActive: (l$isActive as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String listName;

  final String listValues;

  final String createdBy;

  final String createdDate;

  final String? modifiedBy;

  final String? modifiedDate;

  final bool isActive;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$listName = listName;
    _resultData['listName'] = l$listName;
    final l$listValues = listValues;
    _resultData['listValues'] = l$listValues;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$modifiedDate = modifiedDate;
    _resultData['modifiedDate'] = l$modifiedDate;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$listName = listName;
    final l$listValues = listValues;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$modifiedBy = modifiedBy;
    final l$modifiedDate = modifiedDate;
    final l$isActive = isActive;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$listName,
      l$listValues,
      l$createdBy,
      l$createdDate,
      l$modifiedBy,
      l$modifiedDate,
      l$isActive,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormLists$formLists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$listName = listName;
    final lOther$listName = other.listName;
    if (l$listName != lOther$listName) {
      return false;
    }
    final l$listValues = listValues;
    final lOther$listValues = other.listValues;
    if (l$listValues != lOther$listValues) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$modifiedDate = modifiedDate;
    final lOther$modifiedDate = other.modifiedDate;
    if (l$modifiedDate != lOther$modifiedDate) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
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

extension UtilityExtension$Query$GetFormLists$formLists
    on Query$GetFormLists$formLists {
  CopyWith$Query$GetFormLists$formLists<Query$GetFormLists$formLists>
      get copyWith => CopyWith$Query$GetFormLists$formLists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormLists$formLists<TRes> {
  factory CopyWith$Query$GetFormLists$formLists(
    Query$GetFormLists$formLists instance,
    TRes Function(Query$GetFormLists$formLists) then,
  ) = _CopyWithImpl$Query$GetFormLists$formLists;

  factory CopyWith$Query$GetFormLists$formLists.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormLists$formLists;

  TRes call({
    int? id,
    String? listName,
    String? listValues,
    String? createdBy,
    String? createdDate,
    String? modifiedBy,
    String? modifiedDate,
    bool? isActive,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFormLists$formLists<TRes>
    implements CopyWith$Query$GetFormLists$formLists<TRes> {
  _CopyWithImpl$Query$GetFormLists$formLists(
    this._instance,
    this._then,
  );

  final Query$GetFormLists$formLists _instance;

  final TRes Function(Query$GetFormLists$formLists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? listName = _undefined,
    Object? listValues = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? modifiedBy = _undefined,
    Object? modifiedDate = _undefined,
    Object? isActive = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormLists$formLists(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        listName: listName == _undefined || listName == null
            ? _instance.listName
            : (listName as String),
        listValues: listValues == _undefined || listValues == null
            ? _instance.listValues
            : (listValues as String),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        modifiedBy: modifiedBy == _undefined
            ? _instance.modifiedBy
            : (modifiedBy as String?),
        modifiedDate: modifiedDate == _undefined
            ? _instance.modifiedDate
            : (modifiedDate as String?),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFormLists$formLists<TRes>
    implements CopyWith$Query$GetFormLists$formLists<TRes> {
  _CopyWithStubImpl$Query$GetFormLists$formLists(this._res);

  TRes _res;

  call({
    int? id,
    String? listName,
    String? listValues,
    String? createdBy,
    String? createdDate,
    String? modifiedBy,
    String? modifiedDate,
    bool? isActive,
    String? $__typename,
  }) =>
      _res;
}
