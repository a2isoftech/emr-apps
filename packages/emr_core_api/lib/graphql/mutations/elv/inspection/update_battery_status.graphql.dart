import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateBatteryStatus {
  factory Variables$Mutation$UpdateBatteryStatus({
    required String elvQuotationId,
    required String vehicleKey,
    required List<String> batteryPhotoPaths,
    required bool hasBattery,
  }) => Variables$Mutation$UpdateBatteryStatus._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'batteryPhotoPaths': batteryPhotoPaths,
    r'hasBattery': hasBattery,
  });

  Variables$Mutation$UpdateBatteryStatus._(this._$data);

  factory Variables$Mutation$UpdateBatteryStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$batteryPhotoPaths = data['batteryPhotoPaths'];
    result$data['batteryPhotoPaths'] = (l$batteryPhotoPaths as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$hasBattery = data['hasBattery'];
    result$data['hasBattery'] = (l$hasBattery as bool);
    return Variables$Mutation$UpdateBatteryStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  List<String> get batteryPhotoPaths =>
      (_$data['batteryPhotoPaths'] as List<String>);

  bool get hasBattery => (_$data['hasBattery'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$batteryPhotoPaths = batteryPhotoPaths;
    result$data['batteryPhotoPaths'] = l$batteryPhotoPaths
        .map((e) => e)
        .toList();
    final l$hasBattery = hasBattery;
    result$data['hasBattery'] = l$hasBattery;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBatteryStatus<
    Variables$Mutation$UpdateBatteryStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateBatteryStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateBatteryStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$elvQuotationId = elvQuotationId;
    final lOther$elvQuotationId = other.elvQuotationId;
    if (l$elvQuotationId != lOther$elvQuotationId) {
      return false;
    }
    final l$vehicleKey = vehicleKey;
    final lOther$vehicleKey = other.vehicleKey;
    if (l$vehicleKey != lOther$vehicleKey) {
      return false;
    }
    final l$batteryPhotoPaths = batteryPhotoPaths;
    final lOther$batteryPhotoPaths = other.batteryPhotoPaths;
    if (l$batteryPhotoPaths.length != lOther$batteryPhotoPaths.length) {
      return false;
    }
    for (int i = 0; i < l$batteryPhotoPaths.length; i++) {
      final l$batteryPhotoPaths$entry = l$batteryPhotoPaths[i];
      final lOther$batteryPhotoPaths$entry = lOther$batteryPhotoPaths[i];
      if (l$batteryPhotoPaths$entry != lOther$batteryPhotoPaths$entry) {
        return false;
      }
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
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$batteryPhotoPaths = batteryPhotoPaths;
    final l$hasBattery = hasBattery;
    return Object.hashAll([
      l$elvQuotationId,
      l$vehicleKey,
      Object.hashAll(l$batteryPhotoPaths.map((v) => v)),
      l$hasBattery,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateBatteryStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBatteryStatus(
    Variables$Mutation$UpdateBatteryStatus instance,
    TRes Function(Variables$Mutation$UpdateBatteryStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBatteryStatus;

  factory CopyWith$Variables$Mutation$UpdateBatteryStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatus;

  TRes call({
    String? elvQuotationId,
    String? vehicleKey,
    List<String>? batteryPhotoPaths,
    bool? hasBattery,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateBatteryStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateBatteryStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBatteryStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateBatteryStatus _instance;

  final TRes Function(Variables$Mutation$UpdateBatteryStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? batteryPhotoPaths = _undefined,
    Object? hasBattery = _undefined,
  }) => _then(
    Variables$Mutation$UpdateBatteryStatus._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (batteryPhotoPaths != _undefined && batteryPhotoPaths != null)
        'batteryPhotoPaths': (batteryPhotoPaths as List<String>),
      if (hasBattery != _undefined && hasBattery != null)
        'hasBattery': (hasBattery as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateBatteryStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBatteryStatus(this._res);

  TRes _res;

  call({
    String? elvQuotationId,
    String? vehicleKey,
    List<String>? batteryPhotoPaths,
    bool? hasBattery,
  }) => _res;
}

class Mutation$UpdateBatteryStatus {
  Mutation$UpdateBatteryStatus({
    this.updateBatteryStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateBatteryStatus.fromJson(Map<String, dynamic> json) {
    final l$updateBatteryStatus = json['updateBatteryStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBatteryStatus(
      updateBatteryStatus: l$updateBatteryStatus == null
          ? null
          : Mutation$UpdateBatteryStatus$updateBatteryStatus.fromJson(
              (l$updateBatteryStatus as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateBatteryStatus$updateBatteryStatus? updateBatteryStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateBatteryStatus = updateBatteryStatus;
    _resultData['updateBatteryStatus'] = l$updateBatteryStatus?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateBatteryStatus = updateBatteryStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateBatteryStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateBatteryStatus ||
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

extension UtilityExtension$Mutation$UpdateBatteryStatus
    on Mutation$UpdateBatteryStatus {
  CopyWith$Mutation$UpdateBatteryStatus<Mutation$UpdateBatteryStatus>
  get copyWith => CopyWith$Mutation$UpdateBatteryStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateBatteryStatus<TRes> {
  factory CopyWith$Mutation$UpdateBatteryStatus(
    Mutation$UpdateBatteryStatus instance,
    TRes Function(Mutation$UpdateBatteryStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateBatteryStatus;

  factory CopyWith$Mutation$UpdateBatteryStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBatteryStatus;

  TRes call({
    Mutation$UpdateBatteryStatus$updateBatteryStatus? updateBatteryStatus,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes>
  get updateBatteryStatus;
}

class _CopyWithImpl$Mutation$UpdateBatteryStatus<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateBatteryStatus(this._instance, this._then);

  final Mutation$UpdateBatteryStatus _instance;

  final TRes Function(Mutation$UpdateBatteryStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateBatteryStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateBatteryStatus(
      updateBatteryStatus: updateBatteryStatus == _undefined
          ? _instance.updateBatteryStatus
          : (updateBatteryStatus
                as Mutation$UpdateBatteryStatus$updateBatteryStatus?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes>
  get updateBatteryStatus {
    final local$updateBatteryStatus = _instance.updateBatteryStatus;
    return local$updateBatteryStatus == null
        ? CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus(
            local$updateBatteryStatus,
            (e) => call(updateBatteryStatus: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateBatteryStatus<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBatteryStatus(this._res);

  TRes _res;

  call({
    Mutation$UpdateBatteryStatus$updateBatteryStatus? updateBatteryStatus,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes>
  get updateBatteryStatus =>
      CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus.stub(_res);
}

const documentNodeMutationUpdateBatteryStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateBatteryStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'elvQuotationId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'vehicleKey')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'batteryPhotoPaths')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
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
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateBatteryStatus'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'elvQuotationVehicleInput'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'elvQuotationId'),
                            value: VariableNode(
                              name: NameNode(value: 'elvQuotationId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'vehicleKey'),
                            value: VariableNode(
                              name: NameNode(value: 'vehicleKey'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'batteryPhotoPaths'),
                      value: VariableNode(
                        name: NameNode(value: 'batteryPhotoPaths'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'hasBattery'),
                      value: VariableNode(name: NameNode(value: 'hasBattery')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'InspectionErrorFields'),
                  directives: [],
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
    fragmentDefinitionInspectionErrorFields,
  ],
);

class Mutation$UpdateBatteryStatus$updateBatteryStatus {
  Mutation$UpdateBatteryStatus$updateBatteryStatus({required this.$__typename});

  factory Mutation$UpdateBatteryStatus$updateBatteryStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "VehicleForInspectionResult":
        return Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateBatteryStatus$updateBatteryStatus(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateBatteryStatus$updateBatteryStatus ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateBatteryStatus$updateBatteryStatus
    on Mutation$UpdateBatteryStatus$updateBatteryStatus {
  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<
    Mutation$UpdateBatteryStatus$updateBatteryStatus
  >
  get copyWith =>
      CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
    )
    vehicleForInspectionResult,
    required _T Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        return vehicleForInspectionResult(
          this
              as Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
    )?
    vehicleForInspectionResult,
    _T Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleForInspectionResult":
        if (vehicleForInspectionResult != null) {
          return vehicleForInspectionResult(
            this
                as Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes> {
  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus(
    Mutation$UpdateBatteryStatus$updateBatteryStatus instance,
    TRes Function(Mutation$UpdateBatteryStatus$updateBatteryStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus;

  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBatteryStatus$updateBatteryStatus _instance;

  final TRes Function(Mutation$UpdateBatteryStatus$updateBatteryStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateBatteryStatus$updateBatteryStatus(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes>
    implements CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult
    implements Mutation$UpdateBatteryStatus$updateBatteryStatus {
  Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult({
    this.$__typename = 'VehicleForInspectionResult',
  });

  factory Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
      $__typename: (l$$__typename as String),
    );
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult
    on Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult {
  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult
  >
  get copyWith =>
      CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
  TRes
> {
  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult
    instance,
    TRes Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult;

  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult
  _instance;

  final TRes Function(
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
  TRes
>
    implements
        CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$VehicleForInspectionResult(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$UpdateBatteryStatus$updateBatteryStatus {
  Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError
    on Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError {
  CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError
    instance,
    TRes Function(
      Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError;

  factory CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateBatteryStatus$updateBatteryStatus$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
