import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateDoc {
  factory Variables$Mutation$UpdateDoc({
    required Enum$VehicleDocumentType documentType,
    required String elvQuotationId,
    required String vehicleKey,
    required String imagePath,
    bool? isVinUnreadable,
  }) => Variables$Mutation$UpdateDoc._({
    r'documentType': documentType,
    r'elvQuotationId': elvQuotationId,
    r'vehicleKey': vehicleKey,
    r'imagePath': imagePath,
    if (isVinUnreadable != null) r'isVinUnreadable': isVinUnreadable,
  });

  Variables$Mutation$UpdateDoc._(this._$data);

  factory Variables$Mutation$UpdateDoc.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$documentType = data['documentType'];
    result$data['documentType'] = fromJson$Enum$VehicleDocumentType(
      (l$documentType as String),
    );
    final l$elvQuotationId = data['elvQuotationId'];
    result$data['elvQuotationId'] = (l$elvQuotationId as String);
    final l$vehicleKey = data['vehicleKey'];
    result$data['vehicleKey'] = (l$vehicleKey as String);
    final l$imagePath = data['imagePath'];
    result$data['imagePath'] = (l$imagePath as String);
    if (data.containsKey('isVinUnreadable')) {
      final l$isVinUnreadable = data['isVinUnreadable'];
      result$data['isVinUnreadable'] = (l$isVinUnreadable as bool?);
    }
    return Variables$Mutation$UpdateDoc._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$VehicleDocumentType get documentType =>
      (_$data['documentType'] as Enum$VehicleDocumentType);

  String get elvQuotationId => (_$data['elvQuotationId'] as String);

  String get vehicleKey => (_$data['vehicleKey'] as String);

  String get imagePath => (_$data['imagePath'] as String);

  bool? get isVinUnreadable => (_$data['isVinUnreadable'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$documentType = documentType;
    result$data['documentType'] = toJson$Enum$VehicleDocumentType(
      l$documentType,
    );
    final l$elvQuotationId = elvQuotationId;
    result$data['elvQuotationId'] = l$elvQuotationId;
    final l$vehicleKey = vehicleKey;
    result$data['vehicleKey'] = l$vehicleKey;
    final l$imagePath = imagePath;
    result$data['imagePath'] = l$imagePath;
    if (_$data.containsKey('isVinUnreadable')) {
      final l$isVinUnreadable = isVinUnreadable;
      result$data['isVinUnreadable'] = l$isVinUnreadable;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDoc<Variables$Mutation$UpdateDoc>
  get copyWith => CopyWith$Variables$Mutation$UpdateDoc(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDoc ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
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
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$isVinUnreadable = isVinUnreadable;
    final lOther$isVinUnreadable = other.isVinUnreadable;
    if (_$data.containsKey('isVinUnreadable') !=
        other._$data.containsKey('isVinUnreadable')) {
      return false;
    }
    if (l$isVinUnreadable != lOther$isVinUnreadable) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$documentType = documentType;
    final l$elvQuotationId = elvQuotationId;
    final l$vehicleKey = vehicleKey;
    final l$imagePath = imagePath;
    final l$isVinUnreadable = isVinUnreadable;
    return Object.hashAll([
      l$documentType,
      l$elvQuotationId,
      l$vehicleKey,
      l$imagePath,
      _$data.containsKey('isVinUnreadable') ? l$isVinUnreadable : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDoc<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDoc(
    Variables$Mutation$UpdateDoc instance,
    TRes Function(Variables$Mutation$UpdateDoc) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDoc;

  factory CopyWith$Variables$Mutation$UpdateDoc.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDoc;

  TRes call({
    Enum$VehicleDocumentType? documentType,
    String? elvQuotationId,
    String? vehicleKey,
    String? imagePath,
    bool? isVinUnreadable,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDoc<TRes>
    implements CopyWith$Variables$Mutation$UpdateDoc<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDoc(this._instance, this._then);

  final Variables$Mutation$UpdateDoc _instance;

  final TRes Function(Variables$Mutation$UpdateDoc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentType = _undefined,
    Object? elvQuotationId = _undefined,
    Object? vehicleKey = _undefined,
    Object? imagePath = _undefined,
    Object? isVinUnreadable = _undefined,
  }) => _then(
    Variables$Mutation$UpdateDoc._({
      ..._instance._$data,
      if (documentType != _undefined && documentType != null)
        'documentType': (documentType as Enum$VehicleDocumentType),
      if (elvQuotationId != _undefined && elvQuotationId != null)
        'elvQuotationId': (elvQuotationId as String),
      if (vehicleKey != _undefined && vehicleKey != null)
        'vehicleKey': (vehicleKey as String),
      if (imagePath != _undefined && imagePath != null)
        'imagePath': (imagePath as String),
      if (isVinUnreadable != _undefined)
        'isVinUnreadable': (isVinUnreadable as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDoc<TRes>
    implements CopyWith$Variables$Mutation$UpdateDoc<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDoc(this._res);

  TRes _res;

  call({
    Enum$VehicleDocumentType? documentType,
    String? elvQuotationId,
    String? vehicleKey,
    String? imagePath,
    bool? isVinUnreadable,
  }) => _res;
}

class Mutation$UpdateDoc {
  Mutation$UpdateDoc({
    this.updateVehicleDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDoc.fromJson(Map<String, dynamic> json) {
    final l$updateVehicleDocument = json['updateVehicleDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDoc(
      updateVehicleDocument: l$updateVehicleDocument == null
          ? null
          : Mutation$UpdateDoc$updateVehicleDocument.fromJson(
              (l$updateVehicleDocument as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDoc$updateVehicleDocument? updateVehicleDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateVehicleDocument = updateVehicleDocument;
    _resultData['updateVehicleDocument'] = l$updateVehicleDocument?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateVehicleDocument = updateVehicleDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateVehicleDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDoc || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateVehicleDocument = updateVehicleDocument;
    final lOther$updateVehicleDocument = other.updateVehicleDocument;
    if (l$updateVehicleDocument != lOther$updateVehicleDocument) {
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

extension UtilityExtension$Mutation$UpdateDoc on Mutation$UpdateDoc {
  CopyWith$Mutation$UpdateDoc<Mutation$UpdateDoc> get copyWith =>
      CopyWith$Mutation$UpdateDoc(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateDoc<TRes> {
  factory CopyWith$Mutation$UpdateDoc(
    Mutation$UpdateDoc instance,
    TRes Function(Mutation$UpdateDoc) then,
  ) = _CopyWithImpl$Mutation$UpdateDoc;

  factory CopyWith$Mutation$UpdateDoc.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDoc;

  TRes call({
    Mutation$UpdateDoc$updateVehicleDocument? updateVehicleDocument,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes>
  get updateVehicleDocument;
}

class _CopyWithImpl$Mutation$UpdateDoc<TRes>
    implements CopyWith$Mutation$UpdateDoc<TRes> {
  _CopyWithImpl$Mutation$UpdateDoc(this._instance, this._then);

  final Mutation$UpdateDoc _instance;

  final TRes Function(Mutation$UpdateDoc) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateVehicleDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateDoc(
      updateVehicleDocument: updateVehicleDocument == _undefined
          ? _instance.updateVehicleDocument
          : (updateVehicleDocument
                as Mutation$UpdateDoc$updateVehicleDocument?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes>
  get updateVehicleDocument {
    final local$updateVehicleDocument = _instance.updateVehicleDocument;
    return local$updateVehicleDocument == null
        ? CopyWith$Mutation$UpdateDoc$updateVehicleDocument.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateDoc$updateVehicleDocument(
            local$updateVehicleDocument,
            (e) => call(updateVehicleDocument: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateDoc<TRes>
    implements CopyWith$Mutation$UpdateDoc<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDoc(this._res);

  TRes _res;

  call({
    Mutation$UpdateDoc$updateVehicleDocument? updateVehicleDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes>
  get updateVehicleDocument =>
      CopyWith$Mutation$UpdateDoc$updateVehicleDocument.stub(_res);
}

const documentNodeMutationUpdateDoc = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateDoc'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'documentType')),
          type: NamedTypeNode(
            name: NameNode(value: 'VehicleDocumentType'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
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
          variable: VariableNode(name: NameNode(value: 'imagePath')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'isVinUnreadable')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateVehicleDocument'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'documentType'),
                      value: VariableNode(
                        name: NameNode(value: 'documentType'),
                      ),
                    ),
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
                      name: NameNode(value: 'relativeUrl'),
                      value: VariableNode(name: NameNode(value: 'imagePath')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'isVinUnreadable'),
                      value: VariableNode(
                        name: NameNode(value: 'isVinUnreadable'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'VehicleDocuments'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'ElvInspectionError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'message'),
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

class Mutation$UpdateDoc$updateVehicleDocument {
  Mutation$UpdateDoc$updateVehicleDocument({required this.$__typename});

  factory Mutation$UpdateDoc$updateVehicleDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "VehicleDocuments":
        return Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments.fromJson(
          json,
        );

      case "ElvInspectionError":
        return Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateDoc$updateVehicleDocument(
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
    if (other is! Mutation$UpdateDoc$updateVehicleDocument ||
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

extension UtilityExtension$Mutation$UpdateDoc$updateVehicleDocument
    on Mutation$UpdateDoc$updateVehicleDocument {
  CopyWith$Mutation$UpdateDoc$updateVehicleDocument<
    Mutation$UpdateDoc$updateVehicleDocument
  >
  get copyWith =>
      CopyWith$Mutation$UpdateDoc$updateVehicleDocument(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments,
    )
    vehicleDocuments,
    required _T Function(
      Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError,
    )
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleDocuments":
        return vehicleDocuments(
          this as Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments,
        );

      case "ElvInspectionError":
        return elvInspectionError(
          this as Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments)?
    vehicleDocuments,
    _T Function(Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError)?
    elvInspectionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "VehicleDocuments":
        if (vehicleDocuments != null) {
          return vehicleDocuments(
            this as Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments,
          );
        } else {
          return orElse();
        }

      case "ElvInspectionError":
        if (elvInspectionError != null) {
          return elvInspectionError(
            this
                as Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes> {
  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument(
    Mutation$UpdateDoc$updateVehicleDocument instance,
    TRes Function(Mutation$UpdateDoc$updateVehicleDocument) then,
  ) = _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument;

  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument<TRes>
    implements CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes> {
  _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDoc$updateVehicleDocument _instance;

  final TRes Function(Mutation$UpdateDoc$updateVehicleDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateDoc$updateVehicleDocument(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument<TRes>
    implements CopyWith$Mutation$UpdateDoc$updateVehicleDocument<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments
    implements Mutation$UpdateDoc$updateVehicleDocument {
  Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments({
    this.$__typename = 'VehicleDocuments',
  });

  factory Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
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
    if (other is! Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments ||
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

extension UtilityExtension$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments
    on Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments {
  CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
    Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments
  >
  get copyWith =>
      CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
  TRes
> {
  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
    Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments instance,
    TRes Function(Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments)
    then,
  ) = _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments;

  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
  TRes
>
    implements
        CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments _instance;

  final TRes Function(
    Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
  TRes
>
    implements
        CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$VehicleDocuments(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError
    implements Mutation$UpdateDoc$updateVehicleDocument {
  Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
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
            is! Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError ||
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

extension UtilityExtension$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError
    on Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError {
  CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
    Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
  TRes
> {
  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
    Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError instance,
    TRes Function(Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError)
    then,
  ) = _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError;

  factory CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError _instance;

  final TRes Function(
    Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateDoc$updateVehicleDocument$$ElvInspectionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
