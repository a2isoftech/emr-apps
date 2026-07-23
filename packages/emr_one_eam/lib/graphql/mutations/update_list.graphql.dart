import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateList {
  factory Variables$Mutation$UpdateList(
          {required Input$UpdateListInput input}) =>
      Variables$Mutation$UpdateList._({
        r'input': input,
      });

  Variables$Mutation$UpdateList._(this._$data);

  factory Variables$Mutation$UpdateList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateListInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateList._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateListInput get input => (_$data['input'] as Input$UpdateListInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateList<Variables$Mutation$UpdateList>
      get copyWith => CopyWith$Variables$Mutation$UpdateList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateList<TRes> {
  factory CopyWith$Variables$Mutation$UpdateList(
    Variables$Mutation$UpdateList instance,
    TRes Function(Variables$Mutation$UpdateList) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateList;

  factory CopyWith$Variables$Mutation$UpdateList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateList;

  TRes call({Input$UpdateListInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateList<TRes>
    implements CopyWith$Variables$Mutation$UpdateList<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateList(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateList _instance;

  final TRes Function(Variables$Mutation$UpdateList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateList._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateListInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateList<TRes>
    implements CopyWith$Variables$Mutation$UpdateList<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateList(this._res);

  TRes _res;

  call({Input$UpdateListInput? input}) => _res;
}

class Mutation$UpdateList {
  Mutation$UpdateList({
    this.updateList,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateList.fromJson(Map<String, dynamic> json) {
    final l$updateList = json['updateList'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateList(
      updateList: l$updateList == null
          ? null
          : Mutation$UpdateList$updateList.fromJson(
              (l$updateList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateList$updateList? updateList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateList = updateList;
    _resultData['updateList'] = l$updateList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateList = updateList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateList = updateList;
    final lOther$updateList = other.updateList;
    if (l$updateList != lOther$updateList) {
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

extension UtilityExtension$Mutation$UpdateList on Mutation$UpdateList {
  CopyWith$Mutation$UpdateList<Mutation$UpdateList> get copyWith =>
      CopyWith$Mutation$UpdateList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateList<TRes> {
  factory CopyWith$Mutation$UpdateList(
    Mutation$UpdateList instance,
    TRes Function(Mutation$UpdateList) then,
  ) = _CopyWithImpl$Mutation$UpdateList;

  factory CopyWith$Mutation$UpdateList.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateList;

  TRes call({
    Mutation$UpdateList$updateList? updateList,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateList$updateList<TRes> get updateList;
}

class _CopyWithImpl$Mutation$UpdateList<TRes>
    implements CopyWith$Mutation$UpdateList<TRes> {
  _CopyWithImpl$Mutation$UpdateList(
    this._instance,
    this._then,
  );

  final Mutation$UpdateList _instance;

  final TRes Function(Mutation$UpdateList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateList(
        updateList: updateList == _undefined
            ? _instance.updateList
            : (updateList as Mutation$UpdateList$updateList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateList$updateList<TRes> get updateList {
    final local$updateList = _instance.updateList;
    return local$updateList == null
        ? CopyWith$Mutation$UpdateList$updateList.stub(_then(_instance))
        : CopyWith$Mutation$UpdateList$updateList(
            local$updateList, (e) => call(updateList: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateList<TRes>
    implements CopyWith$Mutation$UpdateList<TRes> {
  _CopyWithStubImpl$Mutation$UpdateList(this._res);

  TRes _res;

  call({
    Mutation$UpdateList$updateList? updateList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateList$updateList<TRes> get updateList =>
      CopyWith$Mutation$UpdateList$updateList.stub(_res);
}

const documentNodeMutationUpdateList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateListInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
            name: NameNode(value: 'active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listValue'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'text'),
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
                name: NameNode(value: 'orderIndex'),
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
]);

class Mutation$UpdateList$updateList {
  Mutation$UpdateList$updateList({
    this.id,
    this.listName,
    required this.active,
    this.listValue,
    this.$__typename = 'AssetManagementList',
  });

  factory Mutation$UpdateList$updateList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$listName = json['listName'];
    final l$active = json['active'];
    final l$listValue = json['listValue'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateList$updateList(
      id: (l$id as String?),
      listName: (l$listName as String?),
      active: (l$active as bool),
      listValue: (l$listValue as List<dynamic>?)
          ?.map((e) => Mutation$UpdateList$updateList$listValue.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? listName;

  final bool active;

  final List<Mutation$UpdateList$updateList$listValue>? listValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$listName = listName;
    _resultData['listName'] = l$listName;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$listValue = listValue;
    _resultData['listValue'] = l$listValue?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$listName = listName;
    final l$active = active;
    final l$listValue = listValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$listName,
      l$active,
      l$listValue == null ? null : Object.hashAll(l$listValue.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateList$updateList) ||
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
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$listValue = listValue;
    final lOther$listValue = other.listValue;
    if (l$listValue != null && lOther$listValue != null) {
      if (l$listValue.length != lOther$listValue.length) {
        return false;
      }
      for (int i = 0; i < l$listValue.length; i++) {
        final l$listValue$entry = l$listValue[i];
        final lOther$listValue$entry = lOther$listValue[i];
        if (l$listValue$entry != lOther$listValue$entry) {
          return false;
        }
      }
    } else if (l$listValue != lOther$listValue) {
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

extension UtilityExtension$Mutation$UpdateList$updateList
    on Mutation$UpdateList$updateList {
  CopyWith$Mutation$UpdateList$updateList<Mutation$UpdateList$updateList>
      get copyWith => CopyWith$Mutation$UpdateList$updateList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateList$updateList<TRes> {
  factory CopyWith$Mutation$UpdateList$updateList(
    Mutation$UpdateList$updateList instance,
    TRes Function(Mutation$UpdateList$updateList) then,
  ) = _CopyWithImpl$Mutation$UpdateList$updateList;

  factory CopyWith$Mutation$UpdateList$updateList.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateList$updateList;

  TRes call({
    String? id,
    String? listName,
    bool? active,
    List<Mutation$UpdateList$updateList$listValue>? listValue,
    String? $__typename,
  });
  TRes listValue(
      Iterable<Mutation$UpdateList$updateList$listValue>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateList$updateList$listValue<
                      Mutation$UpdateList$updateList$listValue>>?)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateList$updateList<TRes>
    implements CopyWith$Mutation$UpdateList$updateList<TRes> {
  _CopyWithImpl$Mutation$UpdateList$updateList(
    this._instance,
    this._then,
  );

  final Mutation$UpdateList$updateList _instance;

  final TRes Function(Mutation$UpdateList$updateList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? listName = _undefined,
    Object? active = _undefined,
    Object? listValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateList$updateList(
        id: id == _undefined ? _instance.id : (id as String?),
        listName:
            listName == _undefined ? _instance.listName : (listName as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        listValue: listValue == _undefined
            ? _instance.listValue
            : (listValue as List<Mutation$UpdateList$updateList$listValue>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes listValue(
          Iterable<Mutation$UpdateList$updateList$listValue>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateList$updateList$listValue<
                          Mutation$UpdateList$updateList$listValue>>?)
              _fn) =>
      call(
          listValue: _fn(_instance.listValue
              ?.map((e) => CopyWith$Mutation$UpdateList$updateList$listValue(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Mutation$UpdateList$updateList<TRes>
    implements CopyWith$Mutation$UpdateList$updateList<TRes> {
  _CopyWithStubImpl$Mutation$UpdateList$updateList(this._res);

  TRes _res;

  call({
    String? id,
    String? listName,
    bool? active,
    List<Mutation$UpdateList$updateList$listValue>? listValue,
    String? $__typename,
  }) =>
      _res;

  listValue(_fn) => _res;
}

class Mutation$UpdateList$updateList$listValue {
  Mutation$UpdateList$updateList$listValue({
    required this.active,
    this.text,
    this.value,
    required this.orderIndex,
    this.$__typename = 'ListValueQuery',
  });

  factory Mutation$UpdateList$updateList$listValue.fromJson(
      Map<String, dynamic> json) {
    final l$active = json['active'];
    final l$text = json['text'];
    final l$value = json['value'];
    final l$orderIndex = json['orderIndex'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateList$updateList$listValue(
      active: (l$active as bool),
      text: (l$text as String?),
      value: (l$value as String?),
      orderIndex: (l$orderIndex as int),
      $__typename: (l$$__typename as String),
    );
  }

  final bool active;

  final String? text;

  final String? value;

  final int orderIndex;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$active = active;
    _resultData['active'] = l$active;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$orderIndex = orderIndex;
    _resultData['orderIndex'] = l$orderIndex;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$active = active;
    final l$text = text;
    final l$value = value;
    final l$orderIndex = orderIndex;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$active,
      l$text,
      l$value,
      l$orderIndex,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateList$updateList$listValue) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
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

extension UtilityExtension$Mutation$UpdateList$updateList$listValue
    on Mutation$UpdateList$updateList$listValue {
  CopyWith$Mutation$UpdateList$updateList$listValue<
          Mutation$UpdateList$updateList$listValue>
      get copyWith => CopyWith$Mutation$UpdateList$updateList$listValue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateList$updateList$listValue<TRes> {
  factory CopyWith$Mutation$UpdateList$updateList$listValue(
    Mutation$UpdateList$updateList$listValue instance,
    TRes Function(Mutation$UpdateList$updateList$listValue) then,
  ) = _CopyWithImpl$Mutation$UpdateList$updateList$listValue;

  factory CopyWith$Mutation$UpdateList$updateList$listValue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateList$updateList$listValue;

  TRes call({
    bool? active,
    String? text,
    String? value,
    int? orderIndex,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateList$updateList$listValue<TRes>
    implements CopyWith$Mutation$UpdateList$updateList$listValue<TRes> {
  _CopyWithImpl$Mutation$UpdateList$updateList$listValue(
    this._instance,
    this._then,
  );

  final Mutation$UpdateList$updateList$listValue _instance;

  final TRes Function(Mutation$UpdateList$updateList$listValue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? active = _undefined,
    Object? text = _undefined,
    Object? value = _undefined,
    Object? orderIndex = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateList$updateList$listValue(
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        text: text == _undefined ? _instance.text : (text as String?),
        value: value == _undefined ? _instance.value : (value as String?),
        orderIndex: orderIndex == _undefined || orderIndex == null
            ? _instance.orderIndex
            : (orderIndex as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateList$updateList$listValue<TRes>
    implements CopyWith$Mutation$UpdateList$updateList$listValue<TRes> {
  _CopyWithStubImpl$Mutation$UpdateList$updateList$listValue(this._res);

  TRes _res;

  call({
    bool? active,
    String? text,
    String? value,
    int? orderIndex,
    String? $__typename,
  }) =>
      _res;
}
