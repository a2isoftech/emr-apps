import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import '../../../fragments/elv/mutations/non_conforming_part_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateNonConformingPart {
  factory Variables$Mutation$UpdateNonConformingPart({
    required String elvQuotationId,
    required String vehicleKey,
    required String partKey,
    required List<String> partPhotoUrls,
  }) => Variables$Mutation$UpdateNonConformingPart._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partKey': partKey,
    r'partPhotoUrls': partPhotoUrls,
  });

  Variables$Mutation$UpdateNonConformingPart._(this._$data);

  factory Variables$Mutation$UpdateNonConformingPart.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partKey = data['partKey'];
    result$data['partKey'] = (l$partKey as String);
    final l$partPhotoUrls = data['partPhotoUrls'];
    result$data['partPhotoUrls'] = (l$partPhotoUrls as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Mutation$UpdateNonConformingPart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  String get partKey => (_$data['partKey'] as String);

  List<String> get partPhotoUrls => (_$data['partPhotoUrls'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$partKey = partKey;
    result$data['partKey'] = l$partKey;
    final l$partPhotoUrls = partPhotoUrls;
    result$data['partPhotoUrls'] = l$partPhotoUrls.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateNonConformingPart<
    Variables$Mutation$UpdateNonConformingPart
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateNonConformingPart(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateNonConformingPart ||
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
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partPhotoUrls = partPhotoUrls;
    final lOther$partPhotoUrls = other.partPhotoUrls;
    if (l$partPhotoUrls.length != lOther$partPhotoUrls.length) {
      return false;
    }
    for (int i = 0; i < l$partPhotoUrls.length; i++) {
      final l$partPhotoUrls$entry = l$partPhotoUrls[i];
      final lOther$partPhotoUrls$entry = lOther$partPhotoUrls[i];
      if (l$partPhotoUrls$entry != lOther$partPhotoUrls$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$partKey = partKey;
    final l$partPhotoUrls = partPhotoUrls;
    return Object.hashAll([
      l$elvQuotationId,
      l$vehicleKey,
      l$partKey,
      Object.hashAll(l$partPhotoUrls.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateNonConformingPart<TRes> {
  factory CopyWith$Variables$Mutation$UpdateNonConformingPart(
    Variables$Mutation$UpdateNonConformingPart instance,
    TRes Function(Variables$Mutation$UpdateNonConformingPart) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateNonConformingPart;

  factory CopyWith$Variables$Mutation$UpdateNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPart;

  TRes call({
    String? elvQuotationId,
    String? vehicleKey,
    String? partKey,
    List<String>? partPhotoUrls,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$UpdateNonConformingPart<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateNonConformingPart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateNonConformingPart _instance;

  final TRes Function(Variables$Mutation$UpdateNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partKey = _undefined,
    Object? partPhotoUrls = _undefined,
  }) => _then(
    Variables$Mutation$UpdateNonConformingPart._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (partKey != _undefined && partKey != null)
        'partKey': (partKey as String),
      if (partPhotoUrls != _undefined && partPhotoUrls != null)
        'partPhotoUrls': (partPhotoUrls as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$UpdateNonConformingPart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateNonConformingPart(this._res);

  TRes _res;

  call({
    String? elvQuotationId,
    String? vehicleKey,
    String? partKey,
    List<String>? partPhotoUrls,
  }) => _res;
}

class Mutation$UpdateNonConformingPart {
  Mutation$UpdateNonConformingPart({
    this.updateNonConformingPart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateNonConformingPart.fromJson(Map<String, dynamic> json) {
    final l$updateNonConformingPart = json['updateNonConformingPart'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNonConformingPart(
      updateNonConformingPart: l$updateNonConformingPart == null
          ? null
          : Mutation$UpdateNonConformingPart$updateNonConformingPart.fromJson(
              (l$updateNonConformingPart as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateNonConformingPart$updateNonConformingPart?
  updateNonConformingPart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateNonConformingPart = updateNonConformingPart;
    _resultData['updateNonConformingPart'] = l$updateNonConformingPart
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateNonConformingPart = updateNonConformingPart;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateNonConformingPart, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateNonConformingPart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateNonConformingPart = updateNonConformingPart;
    final lOther$updateNonConformingPart = other.updateNonConformingPart;
    if (l$updateNonConformingPart != lOther$updateNonConformingPart) {
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

extension UtilityExtension$Mutation$UpdateNonConformingPart
    on Mutation$UpdateNonConformingPart {
  CopyWith$Mutation$UpdateNonConformingPart<Mutation$UpdateNonConformingPart>
  get copyWith => CopyWith$Mutation$UpdateNonConformingPart(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateNonConformingPart<TRes> {
  factory CopyWith$Mutation$UpdateNonConformingPart(
    Mutation$UpdateNonConformingPart instance,
    TRes Function(Mutation$UpdateNonConformingPart) then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPart;

  factory CopyWith$Mutation$UpdateNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateNonConformingPart;

  TRes call({
    Mutation$UpdateNonConformingPart$updateNonConformingPart?
    updateNonConformingPart,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<TRes>
  get updateNonConformingPart;
}

class _CopyWithImpl$Mutation$UpdateNonConformingPart<TRes>
    implements CopyWith$Mutation$UpdateNonConformingPart<TRes> {
  _CopyWithImpl$Mutation$UpdateNonConformingPart(this._instance, this._then);

  final Mutation$UpdateNonConformingPart _instance;

  final TRes Function(Mutation$UpdateNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateNonConformingPart = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateNonConformingPart(
      updateNonConformingPart: updateNonConformingPart == _undefined
          ? _instance.updateNonConformingPart
          : (updateNonConformingPart
                as Mutation$UpdateNonConformingPart$updateNonConformingPart?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<TRes>
  get updateNonConformingPart {
    final local$updateNonConformingPart = _instance.updateNonConformingPart;
    return local$updateNonConformingPart == null
        ? CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart(
            local$updateNonConformingPart,
            (e) => call(updateNonConformingPart: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPart<TRes>
    implements CopyWith$Mutation$UpdateNonConformingPart<TRes> {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPart(this._res);

  TRes _res;

  call({
    Mutation$UpdateNonConformingPart$updateNonConformingPart?
    updateNonConformingPart,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<TRes>
  get updateNonConformingPart =>
      CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart.stub(
        _res,
      );
}

const documentNodeMutationUpdateNonConformingPart = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateNonConformingPart'),
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
          variable: VariableNode(name: NameNode(value: 'partKey')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partPhotoUrls')),
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
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateNonConformingPart'),
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
                      name: NameNode(value: 'partKey'),
                      value: VariableNode(name: NameNode(value: 'partKey')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'partPhotoUrls'),
                      value: VariableNode(
                        name: NameNode(value: 'partPhotoUrls'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'NonConformingPartFields'),
                  directives: [],
                ),
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
    fragmentDefinitionNonConformingPartFields,
    fragmentDefinitionInspectionErrorFields,
  ],
);

class Mutation$UpdateNonConformingPart$updateNonConformingPart {
  Mutation$UpdateNonConformingPart$updateNonConformingPart({
    required this.$__typename,
  });

  factory Mutation$UpdateNonConformingPart$updateNonConformingPart.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "NonConformingPart":
        return Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateNonConformingPart$updateNonConformingPart(
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
    if (other is! Mutation$UpdateNonConformingPart$updateNonConformingPart ||
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

extension UtilityExtension$Mutation$UpdateNonConformingPart$updateNonConformingPart
    on Mutation$UpdateNonConformingPart$updateNonConformingPart {
  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<
    Mutation$UpdateNonConformingPart$updateNonConformingPart
  >
  get copyWith =>
      CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
    )
    nonConformingPart,
    required _T Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "NonConformingPart":
        return nonConformingPart(
          this
              as Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
    )?
    nonConformingPart,
    _T Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "NonConformingPart":
        if (nonConformingPart != null) {
          return nonConformingPart(
            this
                as Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<
  TRes
> {
  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart(
    Mutation$UpdateNonConformingPart$updateNonConformingPart instance,
    TRes Function(Mutation$UpdateNonConformingPart$updateNonConformingPart)
    then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart;

  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNonConformingPart$updateNonConformingPart _instance;

  final TRes Function(Mutation$UpdateNonConformingPart$updateNonConformingPart)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateNonConformingPart$updateNonConformingPart(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart
    implements
        Fragment$NonConformingPartFields,
        Mutation$UpdateNonConformingPart$updateNonConformingPart {
  Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart({
    required this.partKey,
    required this.partName,
    required this.partPhotos,
    this.$__typename = 'NonConformingPart',
  });

  factory Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partKey = json['partKey'];
    final l$partName = json['partName'];
    final l$partPhotos = json['partPhotos'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
      partKey: (l$partKey as String),
      partName: (l$partName as String),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String partKey;

  final String partName;

  final List<
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
  >
  partPhotos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partKey = partKey;
    _resultData['partKey'] = l$partKey;
    final l$partName = partName;
    _resultData['partName'] = l$partName;
    final l$partPhotos = partPhotos;
    _resultData['partPhotos'] = l$partPhotos.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partKey = partKey;
    final l$partName = partName;
    final l$partPhotos = partPhotos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partKey,
      l$partName,
      Object.hashAll(l$partPhotos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partKey = partKey;
    final lOther$partKey = other.partKey;
    if (l$partKey != lOther$partKey) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    final l$partPhotos = partPhotos;
    final lOther$partPhotos = other.partPhotos;
    if (l$partPhotos.length != lOther$partPhotos.length) {
      return false;
    }
    for (int i = 0; i < l$partPhotos.length; i++) {
      final l$partPhotos$entry = l$partPhotos[i];
      final lOther$partPhotos$entry = lOther$partPhotos[i];
      if (l$partPhotos$entry != lOther$partPhotos$entry) {
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

extension UtilityExtension$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart
    on Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart {
  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart
  >
  get copyWith =>
      CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
  TRes
> {
  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart
    instance,
    TRes Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart;

  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart;

  TRes call({
    String? partKey,
    String? partName,
    List<
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    >?
    partPhotos,
    String? $__typename,
  });
  TRes partPhotos(
    Iterable<
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
          Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart
  _instance;

  final TRes Function(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partName = _undefined,
    Object? partPhotos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
      partKey: partKey == _undefined || partKey == null
          ? _instance.partKey
          : (partKey as String),
      partName: partName == _undefined || partName == null
          ? _instance.partName
          : (partName as String),
      partPhotos: partPhotos == _undefined || partPhotos == null
          ? _instance.partPhotos
          : (partPhotos
                as List<
                  Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes partPhotos(
    Iterable<
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
          Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart(
    this._res,
  );

  TRes _res;

  call({
    String? partKey,
    String? partName,
    List<
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    >?
    partPhotos,
    String? $__typename,
  }) => _res;

  partPhotos(_fn) => _res;
}

class Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    implements Fragment$NonConformingPartFields$partPhotos {
  Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    on
        Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos {
  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
  >
  get copyWith =>
      CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
  TRes
> {
  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
    instance,
    TRes Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos;

  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos
  _instance;

  final TRes Function(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$NonConformingPart$partPhotos(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$UpdateNonConformingPart$updateNonConformingPart {
  Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
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
            is! Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError ||
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

extension UtilityExtension$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError
    on Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError {
  CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError
    instance,
    TRes Function(
      Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError;

  factory CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateNonConformingPart$updateNonConformingPart$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
