import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpsertSite {
  factory Variables$Mutation$UpsertSite({
    required Input$UpsertSiteInput input,
  }) => Variables$Mutation$UpsertSite._({r'input': input});

  Variables$Mutation$UpsertSite._(this._$data);

  factory Variables$Mutation$UpsertSite.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpsertSiteInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpsertSite._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpsertSiteInput get input => (_$data['input'] as Input$UpsertSiteInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpsertSite<Variables$Mutation$UpsertSite>
  get copyWith => CopyWith$Variables$Mutation$UpsertSite(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpsertSite ||
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

abstract class CopyWith$Variables$Mutation$UpsertSite<TRes> {
  factory CopyWith$Variables$Mutation$UpsertSite(
    Variables$Mutation$UpsertSite instance,
    TRes Function(Variables$Mutation$UpsertSite) then,
  ) = _CopyWithImpl$Variables$Mutation$UpsertSite;

  factory CopyWith$Variables$Mutation$UpsertSite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpsertSite;

  TRes call({Input$UpsertSiteInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpsertSite<TRes>
    implements CopyWith$Variables$Mutation$UpsertSite<TRes> {
  _CopyWithImpl$Variables$Mutation$UpsertSite(this._instance, this._then);

  final Variables$Mutation$UpsertSite _instance;

  final TRes Function(Variables$Mutation$UpsertSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpsertSite._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpsertSiteInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpsertSite<TRes>
    implements CopyWith$Variables$Mutation$UpsertSite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpsertSite(this._res);

  TRes _res;

  call({Input$UpsertSiteInput? input}) => _res;
}

class Mutation$UpsertSite {
  Mutation$UpsertSite({
    required this.upsertSite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpsertSite.fromJson(Map<String, dynamic> json) {
    final l$upsertSite = json['upsertSite'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertSite(
      upsertSite: Mutation$UpsertSite$upsertSite.fromJson(
        (l$upsertSite as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpsertSite$upsertSite upsertSite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upsertSite = upsertSite;
    _resultData['upsertSite'] = l$upsertSite.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upsertSite = upsertSite;
    final l$$__typename = $__typename;
    return Object.hashAll([l$upsertSite, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpsertSite || runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertSite = upsertSite;
    final lOther$upsertSite = other.upsertSite;
    if (l$upsertSite != lOther$upsertSite) {
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

extension UtilityExtension$Mutation$UpsertSite on Mutation$UpsertSite {
  CopyWith$Mutation$UpsertSite<Mutation$UpsertSite> get copyWith =>
      CopyWith$Mutation$UpsertSite(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertSite<TRes> {
  factory CopyWith$Mutation$UpsertSite(
    Mutation$UpsertSite instance,
    TRes Function(Mutation$UpsertSite) then,
  ) = _CopyWithImpl$Mutation$UpsertSite;

  factory CopyWith$Mutation$UpsertSite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertSite;

  TRes call({Mutation$UpsertSite$upsertSite? upsertSite, String? $__typename});
  CopyWith$Mutation$UpsertSite$upsertSite<TRes> get upsertSite;
}

class _CopyWithImpl$Mutation$UpsertSite<TRes>
    implements CopyWith$Mutation$UpsertSite<TRes> {
  _CopyWithImpl$Mutation$UpsertSite(this._instance, this._then);

  final Mutation$UpsertSite _instance;

  final TRes Function(Mutation$UpsertSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upsertSite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertSite(
      upsertSite: upsertSite == _undefined || upsertSite == null
          ? _instance.upsertSite
          : (upsertSite as Mutation$UpsertSite$upsertSite),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpsertSite$upsertSite<TRes> get upsertSite {
    final local$upsertSite = _instance.upsertSite;
    return CopyWith$Mutation$UpsertSite$upsertSite(
      local$upsertSite,
      (e) => call(upsertSite: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpsertSite<TRes>
    implements CopyWith$Mutation$UpsertSite<TRes> {
  _CopyWithStubImpl$Mutation$UpsertSite(this._res);

  TRes _res;

  call({Mutation$UpsertSite$upsertSite? upsertSite, String? $__typename}) =>
      _res;

  CopyWith$Mutation$UpsertSite$upsertSite<TRes> get upsertSite =>
      CopyWith$Mutation$UpsertSite$upsertSite.stub(_res);
}

const documentNodeMutationUpsertSite = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpsertSite'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpsertSiteInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'upsertSite'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'createdOn'),
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
                  name: NameNode(value: 'modifiedOn'),
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Mutation$UpsertSite$upsertSite {
  Mutation$UpsertSite$upsertSite({
    required this.createdOn,
    required this.createdBy,
    this.modifiedOn,
    required this.id,
    required this.yardCode,
    required this.name,
    this.$__typename = 'Site',
  });

  factory Mutation$UpsertSite$upsertSite.fromJson(Map<String, dynamic> json) {
    final l$createdOn = json['createdOn'];
    final l$createdBy = json['createdBy'];
    final l$modifiedOn = json['modifiedOn'];
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertSite$upsertSite(
      createdOn: DateTime.parse((l$createdOn as String)),
      createdBy: (l$createdBy as String),
      modifiedOn: l$modifiedOn == null
          ? null
          : DateTime.parse((l$modifiedOn as String)),
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime createdOn;

  final String createdBy;

  final DateTime? modifiedOn;

  final String id;

  final String yardCode;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn?.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$createdOn = createdOn;
    final l$createdBy = createdBy;
    final l$modifiedOn = modifiedOn;
    final l$id = id;
    final l$yardCode = yardCode;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdOn,
      l$createdBy,
      l$modifiedOn,
      l$id,
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
    if (other is! Mutation$UpsertSite$upsertSite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpsertSite$upsertSite
    on Mutation$UpsertSite$upsertSite {
  CopyWith$Mutation$UpsertSite$upsertSite<Mutation$UpsertSite$upsertSite>
  get copyWith => CopyWith$Mutation$UpsertSite$upsertSite(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertSite$upsertSite<TRes> {
  factory CopyWith$Mutation$UpsertSite$upsertSite(
    Mutation$UpsertSite$upsertSite instance,
    TRes Function(Mutation$UpsertSite$upsertSite) then,
  ) = _CopyWithImpl$Mutation$UpsertSite$upsertSite;

  factory CopyWith$Mutation$UpsertSite$upsertSite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertSite$upsertSite;

  TRes call({
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? id,
    String? yardCode,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpsertSite$upsertSite<TRes>
    implements CopyWith$Mutation$UpsertSite$upsertSite<TRes> {
  _CopyWithImpl$Mutation$UpsertSite$upsertSite(this._instance, this._then);

  final Mutation$UpsertSite$upsertSite _instance;

  final TRes Function(Mutation$UpsertSite$upsertSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdOn = _undefined,
    Object? createdBy = _undefined,
    Object? modifiedOn = _undefined,
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertSite$upsertSite(
      createdOn: createdOn == _undefined || createdOn == null
          ? _instance.createdOn
          : (createdOn as DateTime),
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      modifiedOn: modifiedOn == _undefined
          ? _instance.modifiedOn
          : (modifiedOn as DateTime?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpsertSite$upsertSite<TRes>
    implements CopyWith$Mutation$UpsertSite$upsertSite<TRes> {
  _CopyWithStubImpl$Mutation$UpsertSite$upsertSite(this._res);

  TRes _res;

  call({
    DateTime? createdOn,
    String? createdBy,
    DateTime? modifiedOn,
    String? id,
    String? yardCode,
    String? name,
    String? $__typename,
  }) => _res;
}
