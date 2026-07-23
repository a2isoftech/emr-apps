import 'package:gql/ast.dart';

class Query$FormsTemplates {
  Query$FormsTemplates({
    required this.formTemplates,
    this.$__typename = 'FormsQuery',
  });

  factory Query$FormsTemplates.fromJson(Map<String, dynamic> json) {
    final l$formTemplates = json['formTemplates'];
    final l$$__typename = json['__typename'];
    return Query$FormsTemplates(
      formTemplates: (l$formTemplates as List<dynamic>)
          .map((e) => Query$FormsTemplates$formTemplates.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FormsTemplates$formTemplates> formTemplates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formTemplates = formTemplates;
    _resultData['formTemplates'] =
        l$formTemplates.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formTemplates = formTemplates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$formTemplates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormsTemplates) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$formTemplates = formTemplates;
    final lOther$formTemplates = other.formTemplates;
    if (l$formTemplates.length != lOther$formTemplates.length) {
      return false;
    }
    for (int i = 0; i < l$formTemplates.length; i++) {
      final l$formTemplates$entry = l$formTemplates[i];
      final lOther$formTemplates$entry = lOther$formTemplates[i];
      if (l$formTemplates$entry != lOther$formTemplates$entry) {
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

extension UtilityExtension$Query$FormsTemplates on Query$FormsTemplates {
  CopyWith$Query$FormsTemplates<Query$FormsTemplates> get copyWith =>
      CopyWith$Query$FormsTemplates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FormsTemplates<TRes> {
  factory CopyWith$Query$FormsTemplates(
    Query$FormsTemplates instance,
    TRes Function(Query$FormsTemplates) then,
  ) = _CopyWithImpl$Query$FormsTemplates;

  factory CopyWith$Query$FormsTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$FormsTemplates;

  TRes call({
    List<Query$FormsTemplates$formTemplates>? formTemplates,
    String? $__typename,
  });
  TRes formTemplates(
      Iterable<Query$FormsTemplates$formTemplates> Function(
              Iterable<
                  CopyWith$Query$FormsTemplates$formTemplates<
                      Query$FormsTemplates$formTemplates>>)
          _fn);
}

class _CopyWithImpl$Query$FormsTemplates<TRes>
    implements CopyWith$Query$FormsTemplates<TRes> {
  _CopyWithImpl$Query$FormsTemplates(
    this._instance,
    this._then,
  );

  final Query$FormsTemplates _instance;

  final TRes Function(Query$FormsTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formTemplates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormsTemplates(
        formTemplates: formTemplates == _undefined || formTemplates == null
            ? _instance.formTemplates
            : (formTemplates as List<Query$FormsTemplates$formTemplates>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formTemplates(
          Iterable<Query$FormsTemplates$formTemplates> Function(
                  Iterable<
                      CopyWith$Query$FormsTemplates$formTemplates<
                          Query$FormsTemplates$formTemplates>>)
              _fn) =>
      call(
          formTemplates: _fn(_instance.formTemplates
              .map((e) => CopyWith$Query$FormsTemplates$formTemplates(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FormsTemplates<TRes>
    implements CopyWith$Query$FormsTemplates<TRes> {
  _CopyWithStubImpl$Query$FormsTemplates(this._res);

  TRes _res;

  call({
    List<Query$FormsTemplates$formTemplates>? formTemplates,
    String? $__typename,
  }) =>
      _res;

  formTemplates(_fn) => _res;
}

const documentNodeQueryFormsTemplates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FormsTemplates'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'formTemplates'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'title'),
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

class Query$FormsTemplates$formTemplates {
  Query$FormsTemplates$formTemplates({
    required this.id,
    this.title,
    this.$__typename = 'FormTemplate',
  });

  factory Query$FormsTemplates$formTemplates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$FormsTemplates$formTemplates(
      id: (l$id as String),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FormsTemplates$formTemplates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$FormsTemplates$formTemplates
    on Query$FormsTemplates$formTemplates {
  CopyWith$Query$FormsTemplates$formTemplates<
          Query$FormsTemplates$formTemplates>
      get copyWith => CopyWith$Query$FormsTemplates$formTemplates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FormsTemplates$formTemplates<TRes> {
  factory CopyWith$Query$FormsTemplates$formTemplates(
    Query$FormsTemplates$formTemplates instance,
    TRes Function(Query$FormsTemplates$formTemplates) then,
  ) = _CopyWithImpl$Query$FormsTemplates$formTemplates;

  factory CopyWith$Query$FormsTemplates$formTemplates.stub(TRes res) =
      _CopyWithStubImpl$Query$FormsTemplates$formTemplates;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FormsTemplates$formTemplates<TRes>
    implements CopyWith$Query$FormsTemplates$formTemplates<TRes> {
  _CopyWithImpl$Query$FormsTemplates$formTemplates(
    this._instance,
    this._then,
  );

  final Query$FormsTemplates$formTemplates _instance;

  final TRes Function(Query$FormsTemplates$formTemplates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FormsTemplates$formTemplates(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FormsTemplates$formTemplates<TRes>
    implements CopyWith$Query$FormsTemplates$formTemplates<TRes> {
  _CopyWithStubImpl$Query$FormsTemplates$formTemplates(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}
