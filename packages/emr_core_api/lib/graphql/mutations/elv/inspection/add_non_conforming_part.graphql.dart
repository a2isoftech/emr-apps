import '../../../fragments/elv/mutations/inspection_error_fields.graphql.dart';
import '../../../fragments/elv/mutations/non_conforming_part_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddNonConformingPart {
  factory Variables$Mutation$AddNonConformingPart({
    required String elvQuotationId,
    required String vehicleKey,
    required List<String> partPhotoUrls,
    required String partName,
  }) => Variables$Mutation$AddNonConformingPart._({
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'partPhotoUrls': partPhotoUrls,
    r'partName': partName,
  });

  Variables$Mutation$AddNonConformingPart._(this._$data);

  factory Variables$Mutation$AddNonConformingPart.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$partPhotoUrls = data['partPhotoUrls'];
    result$data['partPhotoUrls'] = (l$partPhotoUrls as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$partName = data['partName'];
    result$data['partName'] = (l$partName as String);
    return Variables$Mutation$AddNonConformingPart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  List<String> get partPhotoUrls => (_$data['partPhotoUrls'] as List<String>);

  String get partName => (_$data['partName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$partPhotoUrls = partPhotoUrls;
    result$data['partPhotoUrls'] = l$partPhotoUrls.map((e) => e).toList();
    final l$partName = partName;
    result$data['partName'] = l$partName;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddNonConformingPart<
    Variables$Mutation$AddNonConformingPart
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddNonConformingPart(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddNonConformingPart ||
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
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$partPhotoUrls = partPhotoUrls;
    final l$partName = partName;
    return Object.hashAll([
      l$elvQuotationId,
      l$vehicleKey,
      Object.hashAll(l$partPhotoUrls.map((v) => v)),
      l$partName,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddNonConformingPart<TRes> {
  factory CopyWith$Variables$Mutation$AddNonConformingPart(
    Variables$Mutation$AddNonConformingPart instance,
    TRes Function(Variables$Mutation$AddNonConformingPart) then,
  ) = _CopyWithImpl$Variables$Mutation$AddNonConformingPart;

  factory CopyWith$Variables$Mutation$AddNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddNonConformingPart;

  TRes call({
    String? elvQuotationId,
    String? vehicleKey,
    List<String>? partPhotoUrls,
    String? partName,
  });
}

class _CopyWithImpl$Variables$Mutation$AddNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$AddNonConformingPart<TRes> {
  _CopyWithImpl$Variables$Mutation$AddNonConformingPart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddNonConformingPart _instance;

  final TRes Function(Variables$Mutation$AddNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? partPhotoUrls = _undefined,
    Object? partName = _undefined,
  }) => _then(
    Variables$Mutation$AddNonConformingPart._({
      ..._instance._$data,
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (partPhotoUrls != _undefined && partPhotoUrls != null)
        'partPhotoUrls': (partPhotoUrls as List<String>),
      if (partName != _undefined && partName != null)
        'partName': (partName as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddNonConformingPart<TRes>
    implements CopyWith$Variables$Mutation$AddNonConformingPart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddNonConformingPart(this._res);

  TRes _res;

  call({
    String? elvQuotationId,
    String? vehicleKey,
    List<String>? partPhotoUrls,
    String? partName,
  }) => _res;
}

class Mutation$AddNonConformingPart {
  Mutation$AddNonConformingPart({
    this.addNonConformingPart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddNonConformingPart.fromJson(Map<String, dynamic> json) {
    final l$addNonConformingPart = json['addNonConformingPart'];
    final l$$__typename = json['__typename'];
    return Mutation$AddNonConformingPart(
      addNonConformingPart: l$addNonConformingPart == null
          ? null
          : Mutation$AddNonConformingPart$addNonConformingPart.fromJson(
              (l$addNonConformingPart as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddNonConformingPart$addNonConformingPart?
  addNonConformingPart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addNonConformingPart = addNonConformingPart;
    _resultData['addNonConformingPart'] = l$addNonConformingPart?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addNonConformingPart = addNonConformingPart;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addNonConformingPart, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddNonConformingPart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addNonConformingPart = addNonConformingPart;
    final lOther$addNonConformingPart = other.addNonConformingPart;
    if (l$addNonConformingPart != lOther$addNonConformingPart) {
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

extension UtilityExtension$Mutation$AddNonConformingPart
    on Mutation$AddNonConformingPart {
  CopyWith$Mutation$AddNonConformingPart<Mutation$AddNonConformingPart>
  get copyWith => CopyWith$Mutation$AddNonConformingPart(this, (i) => i);
}

abstract class CopyWith$Mutation$AddNonConformingPart<TRes> {
  factory CopyWith$Mutation$AddNonConformingPart(
    Mutation$AddNonConformingPart instance,
    TRes Function(Mutation$AddNonConformingPart) then,
  ) = _CopyWithImpl$Mutation$AddNonConformingPart;

  factory CopyWith$Mutation$AddNonConformingPart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddNonConformingPart;

  TRes call({
    Mutation$AddNonConformingPart$addNonConformingPart? addNonConformingPart,
    String? $__typename,
  });
  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<TRes>
  get addNonConformingPart;
}

class _CopyWithImpl$Mutation$AddNonConformingPart<TRes>
    implements CopyWith$Mutation$AddNonConformingPart<TRes> {
  _CopyWithImpl$Mutation$AddNonConformingPart(this._instance, this._then);

  final Mutation$AddNonConformingPart _instance;

  final TRes Function(Mutation$AddNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addNonConformingPart = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddNonConformingPart(
      addNonConformingPart: addNonConformingPart == _undefined
          ? _instance.addNonConformingPart
          : (addNonConformingPart
                as Mutation$AddNonConformingPart$addNonConformingPart?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<TRes>
  get addNonConformingPart {
    final local$addNonConformingPart = _instance.addNonConformingPart;
    return local$addNonConformingPart == null
        ? CopyWith$Mutation$AddNonConformingPart$addNonConformingPart.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddNonConformingPart$addNonConformingPart(
            local$addNonConformingPart,
            (e) => call(addNonConformingPart: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddNonConformingPart<TRes>
    implements CopyWith$Mutation$AddNonConformingPart<TRes> {
  _CopyWithStubImpl$Mutation$AddNonConformingPart(this._res);

  TRes _res;

  call({
    Mutation$AddNonConformingPart$addNonConformingPart? addNonConformingPart,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<TRes>
  get addNonConformingPart =>
      CopyWith$Mutation$AddNonConformingPart$addNonConformingPart.stub(_res);
}

const documentNodeMutationAddNonConformingPart = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddNonConformingPart'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partName')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'addNonConformingPart'),
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
                      name: NameNode(value: 'partPhotoUrls'),
                      value: VariableNode(
                        name: NameNode(value: 'partPhotoUrls'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'partName'),
                      value: VariableNode(name: NameNode(value: 'partName')),
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

class Mutation$AddNonConformingPart$addNonConformingPart {
  Mutation$AddNonConformingPart$addNonConformingPart({
    required this.$__typename,
  });

  factory Mutation$AddNonConformingPart$addNonConformingPart.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "NonConformingPart":
        return Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddNonConformingPart$addNonConformingPart(
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
    if (other is! Mutation$AddNonConformingPart$addNonConformingPart ||
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

extension UtilityExtension$Mutation$AddNonConformingPart$addNonConformingPart
    on Mutation$AddNonConformingPart$addNonConformingPart {
  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<
    Mutation$AddNonConformingPart$addNonConformingPart
  >
  get copyWith => CopyWith$Mutation$AddNonConformingPart$addNonConformingPart(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
    )
    nonConformingPart,
    required _T Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "NonConformingPart":
        return nonConformingPart(
          this
              as Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this
              as Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
    )?
    nonConformingPart,
    _T Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
    )?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "NonConformingPart":
        if (nonConformingPart != null) {
          return nonConformingPart(
            this
                as Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<
  TRes
> {
  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart(
    Mutation$AddNonConformingPart$addNonConformingPart instance,
    TRes Function(Mutation$AddNonConformingPart$addNonConformingPart) then,
  ) = _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart;

  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart<TRes>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<TRes> {
  _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart(
    this._instance,
    this._then,
  );

  final Mutation$AddNonConformingPart$addNonConformingPart _instance;

  final TRes Function(Mutation$AddNonConformingPart$addNonConformingPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddNonConformingPart$addNonConformingPart(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart<TRes>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart<TRes> {
  _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart
    implements
        Fragment$NonConformingPartFields,
        Mutation$AddNonConformingPart$addNonConformingPart {
  Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart({
    required this.partKey,
    required this.partName,
    required this.partPhotos,
    this.$__typename = 'NonConformingPart',
  });

  factory Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partKey = json['partKey'];
    final l$partName = json['partName'];
    final l$partPhotos = json['partPhotos'];
    final l$$__typename = json['__typename'];
    return Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
      partKey: (l$partKey as String),
      partName: (l$partName as String),
      partPhotos: (l$partPhotos as List<dynamic>)
          .map(
            (e) =>
                Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos.fromJson(
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
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
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
            is! Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart ||
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

extension UtilityExtension$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart
    on Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart {
  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart
  >
  get copyWith =>
      CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
  TRes
> {
  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart
    instance,
    TRes Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart;

  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart;

  TRes call({
    String? partKey,
    String? partName,
    List<
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    >?
    partPhotos,
    String? $__typename,
  });
  TRes partPhotos(
    Iterable<
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
          Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
          TRes
        > {
  _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
    this._instance,
    this._then,
  );

  final Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart
  _instance;

  final TRes Function(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partKey = _undefined,
    Object? partName = _undefined,
    Object? partPhotos = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
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
                  Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes partPhotos(
    Iterable<
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    >
    Function(
      Iterable<
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
          Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
        >
      >,
    )
    _fn,
  ) => call(
    partPhotos: _fn(
      _instance.partPhotos.map(
        (e) =>
            CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart(
    this._res,
  );

  TRes _res;

  call({
    String? partKey,
    String? partName,
    List<
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    >?
    partPhotos,
    String? $__typename,
  }) => _res;

  partPhotos(_fn) => _res;
}

class Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    implements Fragment$NonConformingPartFields$partPhotos {
  Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
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
            is! Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos ||
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

extension UtilityExtension$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    on
        Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos {
  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
  >
  get copyWith =>
      CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
  TRes
> {
  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
    instance,
    TRes Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos;

  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
          TRes
        > {
  _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
    this._instance,
    this._then,
  );

  final Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos
  _instance;

  final TRes Function(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$NonConformingPart$partPhotos(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError
    implements
        Fragment$InspectionErrorFields,
        Mutation$AddNonConformingPart$addNonConformingPart {
  Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
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
            is! Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError ||
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

extension UtilityExtension$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError
    on Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError {
  CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
    Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
    Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError
    instance,
    TRes Function(
      Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError;

  factory CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError
  _instance;

  final TRes Function(
    Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddNonConformingPart$addNonConformingPart$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
