import 'package:gql/ast.dart';

class Variables$Mutation$UpdateBatteryStatusMutation {
  factory Variables$Mutation$UpdateBatteryStatusMutation({
    required int quoteId,
    required bool hasBattery,
  }) =>
      Variables$Mutation$UpdateBatteryStatusMutation._({
        r'quoteId': quoteId,
        r'hasBattery': hasBattery,
      });

  Variables$Mutation$UpdateBatteryStatusMutation._(this._$data);

  factory Variables$Mutation$UpdateBatteryStatusMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    final l$hasBattery = data['hasBattery'];
    result$data['hasBattery'] = (l$hasBattery as bool);
    return Variables$Mutation$UpdateBatteryStatusMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quoteId => (_$data['quoteId'] as int);

  bool get hasBattery => (_$data['hasBattery'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    final l$hasBattery = hasBattery;
    result$data['hasBattery'] = l$hasBattery;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBatteryStatusMutation<
          Variables$Mutation$UpdateBatteryStatusMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateBatteryStatusMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateBatteryStatusMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quoteId = quoteId;
    final l$hasBattery = hasBattery;
    return Object.hashAll([
      l$quoteId,
      l$hasBattery,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateBatteryStatusMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBatteryStatusMutation(
    Variables$Mutation$UpdateBatteryStatusMutation instance,
    TRes Function(Variables$Mutation$UpdateBatteryStatusMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBatteryStatusMutation;

  factory CopyWith$Variables$Mutation$UpdateBatteryStatusMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatusMutation;

  TRes call({
    int? quoteId,
    bool? hasBattery,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateBatteryStatusMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBatteryStatusMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBatteryStatusMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateBatteryStatusMutation _instance;

  final TRes Function(Variables$Mutation$UpdateBatteryStatusMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quoteId = _undefined,
    Object? hasBattery = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateBatteryStatusMutation._({
        ..._instance._$data,
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
        if (hasBattery != _undefined && hasBattery != null)
          'hasBattery': (hasBattery as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatusMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBatteryStatusMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatusMutation(this._res);

  TRes _res;

  call({
    int? quoteId,
    bool? hasBattery,
  }) =>
      _res;
}

class Mutation$UpdateBatteryStatusMutation {
  Mutation$UpdateBatteryStatusMutation({
    required this.updateBatteryStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateBatteryStatusMutation.fromJson(
      Map<String, dynamic> json) {
    final l$updateBatteryStatus = json['updateBatteryStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBatteryStatusMutation(
      updateBatteryStatus: (l$updateBatteryStatus as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateBatteryStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateBatteryStatus = updateBatteryStatus;
    _resultData['updateBatteryStatus'] = l$updateBatteryStatus;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateBatteryStatus = updateBatteryStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateBatteryStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateBatteryStatusMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBatteryStatus = updateBatteryStatus;
    final lOther$updateBatteryStatus = other.updateBatteryStatus;
    if (l$updateBatteryStatus != lOther$updateBatteryStatus) {
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

extension UtilityExtension$Mutation$UpdateBatteryStatusMutation
    on Mutation$UpdateBatteryStatusMutation {
  CopyWith$Mutation$UpdateBatteryStatusMutation<
          Mutation$UpdateBatteryStatusMutation>
      get copyWith => CopyWith$Mutation$UpdateBatteryStatusMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBatteryStatusMutation<TRes> {
  factory CopyWith$Mutation$UpdateBatteryStatusMutation(
    Mutation$UpdateBatteryStatusMutation instance,
    TRes Function(Mutation$UpdateBatteryStatusMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateBatteryStatusMutation;

  factory CopyWith$Mutation$UpdateBatteryStatusMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBatteryStatusMutation;

  TRes call({
    bool? updateBatteryStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateBatteryStatusMutation<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatusMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateBatteryStatusMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBatteryStatusMutation _instance;

  final TRes Function(Mutation$UpdateBatteryStatusMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateBatteryStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBatteryStatusMutation(
        updateBatteryStatus:
            updateBatteryStatus == _undefined || updateBatteryStatus == null
                ? _instance.updateBatteryStatus
                : (updateBatteryStatus as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateBatteryStatusMutation<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatusMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBatteryStatusMutation(this._res);

  TRes _res;

  call({
    bool? updateBatteryStatus,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateBatteryStatusMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateBatteryStatusMutation'),
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
        variable: VariableNode(name: NameNode(value: 'hasBattery')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateBatteryStatus'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'quoteId'),
            value: VariableNode(name: NameNode(value: 'quoteId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hasBattery'),
            value: VariableNode(name: NameNode(value: 'hasBattery')),
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
