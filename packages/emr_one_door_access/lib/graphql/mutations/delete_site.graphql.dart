import 'package:gql/ast.dart';

class Variables$Mutation$DeleteSite {
  factory Variables$Mutation$DeleteSite({required String siteId}) =>
      Variables$Mutation$DeleteSite._({r'siteId': siteId});

  Variables$Mutation$DeleteSite._(this._$data);

  factory Variables$Mutation$DeleteSite.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    return Variables$Mutation$DeleteSite._(result$data);
  }

  Map<String, dynamic> _$data;

  String get siteId => (_$data['siteId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSite<Variables$Mutation$DeleteSite>
  get copyWith => CopyWith$Variables$Mutation$DeleteSite(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteSite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    return Object.hashAll([l$siteId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteSite<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSite(
    Variables$Mutation$DeleteSite instance,
    TRes Function(Variables$Mutation$DeleteSite) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSite;

  factory CopyWith$Variables$Mutation$DeleteSite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSite;

  TRes call({String? siteId});
}

class _CopyWithImpl$Variables$Mutation$DeleteSite<TRes>
    implements CopyWith$Variables$Mutation$DeleteSite<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSite(this._instance, this._then);

  final Variables$Mutation$DeleteSite _instance;

  final TRes Function(Variables$Mutation$DeleteSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? siteId = _undefined}) => _then(
    Variables$Mutation$DeleteSite._({
      ..._instance._$data,
      if (siteId != _undefined && siteId != null) 'siteId': (siteId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSite<TRes>
    implements CopyWith$Variables$Mutation$DeleteSite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSite(this._res);

  TRes _res;

  call({String? siteId}) => _res;
}

class Mutation$DeleteSite {
  Mutation$DeleteSite({
    required this.deleteSite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteSite.fromJson(Map<String, dynamic> json) {
    final l$deleteSite = json['deleteSite'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSite(
      deleteSite: (l$deleteSite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteSite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteSite = deleteSite;
    _resultData['deleteSite'] = l$deleteSite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteSite = deleteSite;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteSite, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteSite || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteSite = deleteSite;
    final lOther$deleteSite = other.deleteSite;
    if (l$deleteSite != lOther$deleteSite) {
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

extension UtilityExtension$Mutation$DeleteSite on Mutation$DeleteSite {
  CopyWith$Mutation$DeleteSite<Mutation$DeleteSite> get copyWith =>
      CopyWith$Mutation$DeleteSite(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteSite<TRes> {
  factory CopyWith$Mutation$DeleteSite(
    Mutation$DeleteSite instance,
    TRes Function(Mutation$DeleteSite) then,
  ) = _CopyWithImpl$Mutation$DeleteSite;

  factory CopyWith$Mutation$DeleteSite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSite;

  TRes call({bool? deleteSite, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteSite<TRes>
    implements CopyWith$Mutation$DeleteSite<TRes> {
  _CopyWithImpl$Mutation$DeleteSite(this._instance, this._then);

  final Mutation$DeleteSite _instance;

  final TRes Function(Mutation$DeleteSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteSite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteSite(
      deleteSite: deleteSite == _undefined || deleteSite == null
          ? _instance.deleteSite
          : (deleteSite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteSite<TRes>
    implements CopyWith$Mutation$DeleteSite<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSite(this._res);

  TRes _res;

  call({bool? deleteSite, String? $__typename}) => _res;
}

const documentNodeMutationDeleteSite = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteSite'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'siteId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteSite'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'siteId'),
                value: VariableNode(name: NameNode(value: 'siteId')),
              ),
            ],
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
  ],
);
