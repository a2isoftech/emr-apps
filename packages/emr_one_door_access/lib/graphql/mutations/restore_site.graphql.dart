import 'package:gql/ast.dart';

class Variables$Mutation$RestoreSite {
  factory Variables$Mutation$RestoreSite({required String siteId}) =>
      Variables$Mutation$RestoreSite._({r'siteId': siteId});

  Variables$Mutation$RestoreSite._(this._$data);

  factory Variables$Mutation$RestoreSite.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    return Variables$Mutation$RestoreSite._(result$data);
  }

  Map<String, dynamic> _$data;

  String get siteId => (_$data['siteId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RestoreSite<Variables$Mutation$RestoreSite>
  get copyWith => CopyWith$Variables$Mutation$RestoreSite(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RestoreSite ||
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

abstract class CopyWith$Variables$Mutation$RestoreSite<TRes> {
  factory CopyWith$Variables$Mutation$RestoreSite(
    Variables$Mutation$RestoreSite instance,
    TRes Function(Variables$Mutation$RestoreSite) then,
  ) = _CopyWithImpl$Variables$Mutation$RestoreSite;

  factory CopyWith$Variables$Mutation$RestoreSite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RestoreSite;

  TRes call({String? siteId});
}

class _CopyWithImpl$Variables$Mutation$RestoreSite<TRes>
    implements CopyWith$Variables$Mutation$RestoreSite<TRes> {
  _CopyWithImpl$Variables$Mutation$RestoreSite(this._instance, this._then);

  final Variables$Mutation$RestoreSite _instance;

  final TRes Function(Variables$Mutation$RestoreSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? siteId = _undefined}) => _then(
    Variables$Mutation$RestoreSite._({
      ..._instance._$data,
      if (siteId != _undefined && siteId != null) 'siteId': (siteId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RestoreSite<TRes>
    implements CopyWith$Variables$Mutation$RestoreSite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RestoreSite(this._res);

  TRes _res;

  call({String? siteId}) => _res;
}

class Mutation$RestoreSite {
  Mutation$RestoreSite({
    required this.restoreSite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RestoreSite.fromJson(Map<String, dynamic> json) {
    final l$restoreSite = json['restoreSite'];
    final l$$__typename = json['__typename'];
    return Mutation$RestoreSite(
      restoreSite: (l$restoreSite as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool restoreSite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restoreSite = restoreSite;
    _resultData['restoreSite'] = l$restoreSite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restoreSite = restoreSite;
    final l$$__typename = $__typename;
    return Object.hashAll([l$restoreSite, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RestoreSite || runtimeType != other.runtimeType) {
      return false;
    }
    final l$restoreSite = restoreSite;
    final lOther$restoreSite = other.restoreSite;
    if (l$restoreSite != lOther$restoreSite) {
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

extension UtilityExtension$Mutation$RestoreSite on Mutation$RestoreSite {
  CopyWith$Mutation$RestoreSite<Mutation$RestoreSite> get copyWith =>
      CopyWith$Mutation$RestoreSite(this, (i) => i);
}

abstract class CopyWith$Mutation$RestoreSite<TRes> {
  factory CopyWith$Mutation$RestoreSite(
    Mutation$RestoreSite instance,
    TRes Function(Mutation$RestoreSite) then,
  ) = _CopyWithImpl$Mutation$RestoreSite;

  factory CopyWith$Mutation$RestoreSite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestoreSite;

  TRes call({bool? restoreSite, String? $__typename});
}

class _CopyWithImpl$Mutation$RestoreSite<TRes>
    implements CopyWith$Mutation$RestoreSite<TRes> {
  _CopyWithImpl$Mutation$RestoreSite(this._instance, this._then);

  final Mutation$RestoreSite _instance;

  final TRes Function(Mutation$RestoreSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restoreSite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RestoreSite(
      restoreSite: restoreSite == _undefined || restoreSite == null
          ? _instance.restoreSite
          : (restoreSite as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RestoreSite<TRes>
    implements CopyWith$Mutation$RestoreSite<TRes> {
  _CopyWithStubImpl$Mutation$RestoreSite(this._res);

  TRes _res;

  call({bool? restoreSite, String? $__typename}) => _res;
}

const documentNodeMutationRestoreSite = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RestoreSite'),
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
            name: NameNode(value: 'restoreSite'),
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
