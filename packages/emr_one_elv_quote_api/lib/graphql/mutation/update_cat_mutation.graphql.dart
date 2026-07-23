import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateCATMutation {
  factory Variables$Mutation$UpdateCATMutation({
    required int quoteId,
    required int vehicleId,
    String? territory,
    required Input$VehicleCatDetailRequestInput input,
  }) =>
      Variables$Mutation$UpdateCATMutation._({
        r'quoteId': quoteId,
        r'vehicleId': vehicleId,
        if (territory != null) r'territory': territory,
        r'input': input,
      });

  Variables$Mutation$UpdateCATMutation._(this._$data);

  factory Variables$Mutation$UpdateCATMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    final l$vehicleId = data['vehicleId'];
    result$data['vehicleId'] = (l$vehicleId as int);
    if (data.containsKey('territory')) {
      final l$territory = data['territory'];
      result$data['territory'] = (l$territory as String?);
    }
    final l$input = data['input'];
    result$data['input'] = Input$VehicleCatDetailRequestInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateCATMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  int get vehicleId => (_$data['vehicleId'] as int);

  String? get territory => (_$data['territory'] as String?);

  Input$VehicleCatDetailRequestInput get input =>
      (_$data['input'] as Input$VehicleCatDetailRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    final l$vehicleId = vehicleId;
    result$data['vehicleId'] = l$vehicleId;
    if (_$data.containsKey('territory')) {
      final l$territory = territory;
      result$data['territory'] = l$territory;
    }
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCATMutation<
          Variables$Mutation$UpdateCATMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateCATMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateCATMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (_$data.containsKey('territory') !=
        other._$data.containsKey('territory')) {
      return false;
    }
    if (l$territory != lOther$territory) {
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
    final l$quoteId = quoteId;
    final l$vehicleId = vehicleId;
    final l$territory = territory;
    final l$input = input;
    return Object.hashAll([
      l$quoteId,
      l$vehicleId,
      _$data.containsKey('territory') ? l$territory : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateCATMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCATMutation(
    Variables$Mutation$UpdateCATMutation instance,
    TRes Function(Variables$Mutation$UpdateCATMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCATMutation;

  factory CopyWith$Variables$Mutation$UpdateCATMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCATMutation;

  TRes call({
    int? quoteId,
    int? vehicleId,
    String? territory,
    Input$VehicleCatDetailRequestInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCATMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCATMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCATMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCATMutation _instance;

  final TRes Function(Variables$Mutation$UpdateCATMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quoteId = _undefined,
    Object? vehicleId = _undefined,
    Object? territory = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateCATMutation._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
        if (vehicleId != _undefined && vehicleId != null)
          'vehicleId': (vehicleId as int),
        if (territory != _undefined) 'territory': (territory as String?),
        if (input != _undefined && input != null)
          'input': (input as Input$VehicleCatDetailRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCATMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCATMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCATMutation(this._res);

  TRes _res;

  call({
    int? quoteId,
    int? vehicleId,
    String? territory,
    Input$VehicleCatDetailRequestInput? input,
  }) =>
      _res;
}

class Mutation$UpdateCATMutation {
  Mutation$UpdateCATMutation({
    required this.updateCat,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCATMutation.fromJson(Map<String, dynamic> json) {
    final l$updateCat = json['updateCat'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCATMutation(
      updateCat: (l$updateCat as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int updateCat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCat = updateCat;
    _resultData['updateCat'] = l$updateCat;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCat = updateCat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateCat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCATMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCat = updateCat;
    final lOther$updateCat = other.updateCat;
    if (l$updateCat != lOther$updateCat) {
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

extension UtilityExtension$Mutation$UpdateCATMutation
    on Mutation$UpdateCATMutation {
  CopyWith$Mutation$UpdateCATMutation<Mutation$UpdateCATMutation>
      get copyWith => CopyWith$Mutation$UpdateCATMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCATMutation<TRes> {
  factory CopyWith$Mutation$UpdateCATMutation(
    Mutation$UpdateCATMutation instance,
    TRes Function(Mutation$UpdateCATMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateCATMutation;

  factory CopyWith$Mutation$UpdateCATMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCATMutation;

  TRes call({
    int? updateCat,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCATMutation<TRes>
    implements CopyWith$Mutation$UpdateCATMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateCATMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCATMutation _instance;

  final TRes Function(Mutation$UpdateCATMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCATMutation(
        updateCat: updateCat == _undefined || updateCat == null
            ? _instance.updateCat
            : (updateCat as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateCATMutation<TRes>
    implements CopyWith$Mutation$UpdateCATMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCATMutation(this._res);

  TRes _res;

  call({
    int? updateCat,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateCATMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateCATMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quoteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'territory')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'VehicleCatDetailRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateCat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'vehicleId'),
            value: VariableNode(name: NameNode(value: 'vehicleId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'territory'),
            value: VariableNode(name: NameNode(value: 'territory')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
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
