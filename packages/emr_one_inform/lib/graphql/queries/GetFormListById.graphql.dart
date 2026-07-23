import 'package:gql/ast.dart';

class Variables$Query$GetListById {
  factory Variables$Query$GetListById({required int id}) =>
      Variables$Query$GetListById._({
        r'id': id,
      });

  Variables$Query$GetListById._(this._$data);

  factory Variables$Query$GetListById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$GetListById._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetListById<Variables$Query$GetListById>
      get copyWith => CopyWith$Variables$Query$GetListById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetListById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetListById<TRes> {
  factory CopyWith$Variables$Query$GetListById(
    Variables$Query$GetListById instance,
    TRes Function(Variables$Query$GetListById) then,
  ) = _CopyWithImpl$Variables$Query$GetListById;

  factory CopyWith$Variables$Query$GetListById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetListById;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetListById<TRes>
    implements CopyWith$Variables$Query$GetListById<TRes> {
  _CopyWithImpl$Variables$Query$GetListById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetListById _instance;

  final TRes Function(Variables$Query$GetListById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetListById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetListById<TRes>
    implements CopyWith$Variables$Query$GetListById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetListById(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetListById {
  Query$GetListById({
    this.listById,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetListById.fromJson(Map<String, dynamic> json) {
    final l$listById = json['listById'];
    final l$$__typename = json['__typename'];
    return Query$GetListById(
      listById: l$listById == null
          ? null
          : Query$GetListById$listById.fromJson(
              (l$listById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetListById$listById? listById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$listById = listById;
    _resultData['listById'] = l$listById?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$listById = listById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$listById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetListById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$listById = listById;
    final lOther$listById = other.listById;
    if (l$listById != lOther$listById) {
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

extension UtilityExtension$Query$GetListById on Query$GetListById {
  CopyWith$Query$GetListById<Query$GetListById> get copyWith =>
      CopyWith$Query$GetListById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetListById<TRes> {
  factory CopyWith$Query$GetListById(
    Query$GetListById instance,
    TRes Function(Query$GetListById) then,
  ) = _CopyWithImpl$Query$GetListById;

  factory CopyWith$Query$GetListById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetListById;

  TRes call({
    Query$GetListById$listById? listById,
    String? $__typename,
  });
  CopyWith$Query$GetListById$listById<TRes> get listById;
}

class _CopyWithImpl$Query$GetListById<TRes>
    implements CopyWith$Query$GetListById<TRes> {
  _CopyWithImpl$Query$GetListById(
    this._instance,
    this._then,
  );

  final Query$GetListById _instance;

  final TRes Function(Query$GetListById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? listById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetListById(
        listById: listById == _undefined
            ? _instance.listById
            : (listById as Query$GetListById$listById?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetListById$listById<TRes> get listById {
    final local$listById = _instance.listById;
    return local$listById == null
        ? CopyWith$Query$GetListById$listById.stub(_then(_instance))
        : CopyWith$Query$GetListById$listById(
            local$listById, (e) => call(listById: e));
  }
}

class _CopyWithStubImpl$Query$GetListById<TRes>
    implements CopyWith$Query$GetListById<TRes> {
  _CopyWithStubImpl$Query$GetListById(this._res);

  TRes _res;

  call({
    Query$GetListById$listById? listById,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetListById$listById<TRes> get listById =>
      CopyWith$Query$GetListById$listById.stub(_res);
}

const documentNodeQueryGetListById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetListById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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

class Query$GetListById$listById {
  Query$GetListById$listById({
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

  factory Query$GetListById$listById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$listName = json['listName'];
    final l$listValues = json['listValues'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$modifiedBy = json['modifiedBy'];
    final l$modifiedDate = json['modifiedDate'];
    final l$isActive = json['isActive'];
    final l$$__typename = json['__typename'];
    return Query$GetListById$listById(
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
    if (!(other is Query$GetListById$listById) ||
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

extension UtilityExtension$Query$GetListById$listById
    on Query$GetListById$listById {
  CopyWith$Query$GetListById$listById<Query$GetListById$listById>
      get copyWith => CopyWith$Query$GetListById$listById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetListById$listById<TRes> {
  factory CopyWith$Query$GetListById$listById(
    Query$GetListById$listById instance,
    TRes Function(Query$GetListById$listById) then,
  ) = _CopyWithImpl$Query$GetListById$listById;

  factory CopyWith$Query$GetListById$listById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetListById$listById;

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

class _CopyWithImpl$Query$GetListById$listById<TRes>
    implements CopyWith$Query$GetListById$listById<TRes> {
  _CopyWithImpl$Query$GetListById$listById(
    this._instance,
    this._then,
  );

  final Query$GetListById$listById _instance;

  final TRes Function(Query$GetListById$listById) _then;

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
      _then(Query$GetListById$listById(
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

class _CopyWithStubImpl$Query$GetListById$listById<TRes>
    implements CopyWith$Query$GetListById$listById<TRes> {
  _CopyWithStubImpl$Query$GetListById$listById(this._res);

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
