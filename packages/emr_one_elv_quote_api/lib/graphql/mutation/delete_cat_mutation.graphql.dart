import 'package:gql/ast.dart';

class Variables$Mutation$DeleteCatMutation {
  factory Variables$Mutation$DeleteCatMutation({
    required int vehicleId,
    required int vehicleCatId,
  }) =>
      Variables$Mutation$DeleteCatMutation._({
        r'vehicleId': vehicleId,
        r'vehicleCatId': vehicleCatId,
      });

  Variables$Mutation$DeleteCatMutation._(this._$data);

  factory Variables$Mutation$DeleteCatMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$vehicleId = data['vehicleId'];
    result$data['vehicleId'] = (l$vehicleId as int);
    final l$vehicleCatId = data['vehicleCatId'];
    result$data['vehicleCatId'] = (l$vehicleCatId as int);
    return Variables$Mutation$DeleteCatMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get vehicleId => (_$data['vehicleId'] as int);

  int get vehicleCatId => (_$data['vehicleCatId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$vehicleId = vehicleId;
    result$data['vehicleId'] = l$vehicleId;
    final l$vehicleCatId = vehicleCatId;
    result$data['vehicleCatId'] = l$vehicleCatId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteCatMutation<
          Variables$Mutation$DeleteCatMutation>
      get copyWith => CopyWith$Variables$Mutation$DeleteCatMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteCatMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$vehicleCatId = vehicleCatId;
    final lOther$vehicleCatId = other.vehicleCatId;
    if (l$vehicleCatId != lOther$vehicleCatId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$vehicleId = vehicleId;
    final l$vehicleCatId = vehicleCatId;
    return Object.hashAll([
      l$vehicleId,
      l$vehicleCatId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteCatMutation<TRes> {
  factory CopyWith$Variables$Mutation$DeleteCatMutation(
    Variables$Mutation$DeleteCatMutation instance,
    TRes Function(Variables$Mutation$DeleteCatMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteCatMutation;

  factory CopyWith$Variables$Mutation$DeleteCatMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteCatMutation;

  TRes call({
    int? vehicleId,
    int? vehicleCatId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteCatMutation<TRes>
    implements CopyWith$Variables$Mutation$DeleteCatMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteCatMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteCatMutation _instance;

  final TRes Function(Variables$Mutation$DeleteCatMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleId = _undefined,
    Object? vehicleCatId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteCatMutation._({
        ..._instance._$data,
        if (vehicleId != _undefined && vehicleId != null)
          'vehicleId': (vehicleId as int),
        if (vehicleCatId != _undefined && vehicleCatId != null)
          'vehicleCatId': (vehicleCatId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteCatMutation<TRes>
    implements CopyWith$Variables$Mutation$DeleteCatMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteCatMutation(this._res);

  TRes _res;

  call({
    int? vehicleId,
    int? vehicleCatId,
  }) =>
      _res;
}

class Mutation$DeleteCatMutation {
  Mutation$DeleteCatMutation({
    required this.deleteCat,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteCatMutation.fromJson(Map<String, dynamic> json) {
    final l$deleteCat = json['deleteCat'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteCatMutation(
      deleteCat: (l$deleteCat as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String deleteCat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteCat = deleteCat;
    _resultData['deleteCat'] = l$deleteCat;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteCat = deleteCat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteCat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteCatMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteCat = deleteCat;
    final lOther$deleteCat = other.deleteCat;
    if (l$deleteCat != lOther$deleteCat) {
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

extension UtilityExtension$Mutation$DeleteCatMutation
    on Mutation$DeleteCatMutation {
  CopyWith$Mutation$DeleteCatMutation<Mutation$DeleteCatMutation>
      get copyWith => CopyWith$Mutation$DeleteCatMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteCatMutation<TRes> {
  factory CopyWith$Mutation$DeleteCatMutation(
    Mutation$DeleteCatMutation instance,
    TRes Function(Mutation$DeleteCatMutation) then,
  ) = _CopyWithImpl$Mutation$DeleteCatMutation;

  factory CopyWith$Mutation$DeleteCatMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteCatMutation;

  TRes call({
    String? deleteCat,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteCatMutation<TRes>
    implements CopyWith$Mutation$DeleteCatMutation<TRes> {
  _CopyWithImpl$Mutation$DeleteCatMutation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteCatMutation _instance;

  final TRes Function(Mutation$DeleteCatMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteCat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteCatMutation(
        deleteCat: deleteCat == _undefined || deleteCat == null
            ? _instance.deleteCat
            : (deleteCat as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteCatMutation<TRes>
    implements CopyWith$Mutation$DeleteCatMutation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteCatMutation(this._res);

  TRes _res;

  call({
    String? deleteCat,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteCatMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteCatMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehicleId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehicleCatId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteCat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'vehicleId'),
            value: VariableNode(name: NameNode(value: 'vehicleId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'vehicleCatId'),
            value: VariableNode(name: NameNode(value: 'vehicleCatId')),
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
    ]),
  ),
]);
