import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentRuleResultFields {
  Fragment$PaymentRuleResultFields({
    required this.status,
    required this.errors,
    required this.warnings,
    required this.validationFlags,
    this.$__typename = 'PaymentRuleResult',
  });

  factory Fragment$PaymentRuleResultFields.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$errors = json['errors'];
    final l$warnings = json['warnings'];
    final l$validationFlags = json['validationFlags'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRuleResultFields(
      status: fromJson$Enum$PaymentValidationResultStatus((l$status as String)),
      errors: (l$errors as List<dynamic>).map((e) => (e as String)).toList(),
      warnings: (l$warnings as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      validationFlags:
          Fragment$PaymentRuleResultFields$validationFlags.fromJson(
            (l$validationFlags as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentValidationResultStatus status;

  final List<String> errors;

  final List<String> warnings;

  final Fragment$PaymentRuleResultFields$validationFlags validationFlags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentValidationResultStatus(l$status);
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e).toList();
    final l$warnings = warnings;
    _resultData['warnings'] = l$warnings.map((e) => e).toList();
    final l$validationFlags = validationFlags;
    _resultData['validationFlags'] = l$validationFlags.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$errors = errors;
    final l$warnings = warnings;
    final l$validationFlags = validationFlags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      Object.hashAll(l$errors.map((v) => v)),
      Object.hashAll(l$warnings.map((v) => v)),
      l$validationFlags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRuleResultFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$warnings = warnings;
    final lOther$warnings = other.warnings;
    if (l$warnings.length != lOther$warnings.length) {
      return false;
    }
    for (int i = 0; i < l$warnings.length; i++) {
      final l$warnings$entry = l$warnings[i];
      final lOther$warnings$entry = lOther$warnings[i];
      if (l$warnings$entry != lOther$warnings$entry) {
        return false;
      }
    }
    final l$validationFlags = validationFlags;
    final lOther$validationFlags = other.validationFlags;
    if (l$validationFlags != lOther$validationFlags) {
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

extension UtilityExtension$Fragment$PaymentRuleResultFields
    on Fragment$PaymentRuleResultFields {
  CopyWith$Fragment$PaymentRuleResultFields<Fragment$PaymentRuleResultFields>
  get copyWith => CopyWith$Fragment$PaymentRuleResultFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRuleResultFields<TRes> {
  factory CopyWith$Fragment$PaymentRuleResultFields(
    Fragment$PaymentRuleResultFields instance,
    TRes Function(Fragment$PaymentRuleResultFields) then,
  ) = _CopyWithImpl$Fragment$PaymentRuleResultFields;

  factory CopyWith$Fragment$PaymentRuleResultFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRuleResultFields;

  TRes call({
    Enum$PaymentValidationResultStatus? status,
    List<String>? errors,
    List<String>? warnings,
    Fragment$PaymentRuleResultFields$validationFlags? validationFlags,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes>
  get validationFlags;
}

class _CopyWithImpl$Fragment$PaymentRuleResultFields<TRes>
    implements CopyWith$Fragment$PaymentRuleResultFields<TRes> {
  _CopyWithImpl$Fragment$PaymentRuleResultFields(this._instance, this._then);

  final Fragment$PaymentRuleResultFields _instance;

  final TRes Function(Fragment$PaymentRuleResultFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? errors = _undefined,
    Object? warnings = _undefined,
    Object? validationFlags = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRuleResultFields(
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentValidationResultStatus),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors as List<String>),
      warnings: warnings == _undefined || warnings == null
          ? _instance.warnings
          : (warnings as List<String>),
      validationFlags: validationFlags == _undefined || validationFlags == null
          ? _instance.validationFlags
          : (validationFlags
                as Fragment$PaymentRuleResultFields$validationFlags),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes>
  get validationFlags {
    final local$validationFlags = _instance.validationFlags;
    return CopyWith$Fragment$PaymentRuleResultFields$validationFlags(
      local$validationFlags,
      (e) => call(validationFlags: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentRuleResultFields<TRes>
    implements CopyWith$Fragment$PaymentRuleResultFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRuleResultFields(this._res);

  TRes _res;

  call({
    Enum$PaymentValidationResultStatus? status,
    List<String>? errors,
    List<String>? warnings,
    Fragment$PaymentRuleResultFields$validationFlags? validationFlags,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes>
  get validationFlags =>
      CopyWith$Fragment$PaymentRuleResultFields$validationFlags.stub(_res);
}

const fragmentDefinitionPaymentRuleResultFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentRuleResultFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentRuleResult'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'errors'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'warnings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'validationFlags'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'isPriced'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'hasRequiredAgreements'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'hasRequiredIdentities'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isValidPaymentMethod'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isPhotoIdRequired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isPhotoIdRuleSatisfied'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isDrivingLicenseRequired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isDrivingLicenseSatisfied'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isUtilityBillRequired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isUtilityBillRuleSatisfied'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isCELAgreementRequired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isCELAgreementRuleSatisfied'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isSecoreAgreementRequired'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isSecoreAgreementRuleSatisfied'),
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
);
const documentNodeFragmentPaymentRuleResultFields = DocumentNode(
  definitions: [fragmentDefinitionPaymentRuleResultFields],
);

class Fragment$PaymentRuleResultFields$validationFlags {
  Fragment$PaymentRuleResultFields$validationFlags({
    required this.isPriced,
    required this.hasRequiredAgreements,
    required this.hasRequiredIdentities,
    required this.isValidPaymentMethod,
    required this.isPhotoIdRequired,
    required this.isPhotoIdRuleSatisfied,
    required this.isDrivingLicenseRequired,
    required this.isDrivingLicenseSatisfied,
    required this.isUtilityBillRequired,
    required this.isUtilityBillRuleSatisfied,
    required this.isCELAgreementRequired,
    required this.isCELAgreementRuleSatisfied,
    required this.isSecoreAgreementRequired,
    required this.isSecoreAgreementRuleSatisfied,
    this.$__typename = 'ValidationFlags',
  });

  factory Fragment$PaymentRuleResultFields$validationFlags.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isPriced = json['isPriced'];
    final l$hasRequiredAgreements = json['hasRequiredAgreements'];
    final l$hasRequiredIdentities = json['hasRequiredIdentities'];
    final l$isValidPaymentMethod = json['isValidPaymentMethod'];
    final l$isPhotoIdRequired = json['isPhotoIdRequired'];
    final l$isPhotoIdRuleSatisfied = json['isPhotoIdRuleSatisfied'];
    final l$isDrivingLicenseRequired = json['isDrivingLicenseRequired'];
    final l$isDrivingLicenseSatisfied = json['isDrivingLicenseSatisfied'];
    final l$isUtilityBillRequired = json['isUtilityBillRequired'];
    final l$isUtilityBillRuleSatisfied = json['isUtilityBillRuleSatisfied'];
    final l$isCELAgreementRequired = json['isCELAgreementRequired'];
    final l$isCELAgreementRuleSatisfied = json['isCELAgreementRuleSatisfied'];
    final l$isSecoreAgreementRequired = json['isSecoreAgreementRequired'];
    final l$isSecoreAgreementRuleSatisfied =
        json['isSecoreAgreementRuleSatisfied'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRuleResultFields$validationFlags(
      isPriced: (l$isPriced as bool),
      hasRequiredAgreements: (l$hasRequiredAgreements as bool),
      hasRequiredIdentities: (l$hasRequiredIdentities as bool),
      isValidPaymentMethod: (l$isValidPaymentMethod as bool),
      isPhotoIdRequired: (l$isPhotoIdRequired as bool),
      isPhotoIdRuleSatisfied: (l$isPhotoIdRuleSatisfied as bool),
      isDrivingLicenseRequired: (l$isDrivingLicenseRequired as bool),
      isDrivingLicenseSatisfied: (l$isDrivingLicenseSatisfied as bool),
      isUtilityBillRequired: (l$isUtilityBillRequired as bool),
      isUtilityBillRuleSatisfied: (l$isUtilityBillRuleSatisfied as bool),
      isCELAgreementRequired: (l$isCELAgreementRequired as bool),
      isCELAgreementRuleSatisfied: (l$isCELAgreementRuleSatisfied as bool),
      isSecoreAgreementRequired: (l$isSecoreAgreementRequired as bool),
      isSecoreAgreementRuleSatisfied:
          (l$isSecoreAgreementRuleSatisfied as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isPriced;

  final bool hasRequiredAgreements;

  final bool hasRequiredIdentities;

  final bool isValidPaymentMethod;

  final bool isPhotoIdRequired;

  final bool isPhotoIdRuleSatisfied;

  final bool isDrivingLicenseRequired;

  final bool isDrivingLicenseSatisfied;

  final bool isUtilityBillRequired;

  final bool isUtilityBillRuleSatisfied;

  final bool isCELAgreementRequired;

  final bool isCELAgreementRuleSatisfied;

  final bool isSecoreAgreementRequired;

  final bool isSecoreAgreementRuleSatisfied;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isPriced = isPriced;
    _resultData['isPriced'] = l$isPriced;
    final l$hasRequiredAgreements = hasRequiredAgreements;
    _resultData['hasRequiredAgreements'] = l$hasRequiredAgreements;
    final l$hasRequiredIdentities = hasRequiredIdentities;
    _resultData['hasRequiredIdentities'] = l$hasRequiredIdentities;
    final l$isValidPaymentMethod = isValidPaymentMethod;
    _resultData['isValidPaymentMethod'] = l$isValidPaymentMethod;
    final l$isPhotoIdRequired = isPhotoIdRequired;
    _resultData['isPhotoIdRequired'] = l$isPhotoIdRequired;
    final l$isPhotoIdRuleSatisfied = isPhotoIdRuleSatisfied;
    _resultData['isPhotoIdRuleSatisfied'] = l$isPhotoIdRuleSatisfied;
    final l$isDrivingLicenseRequired = isDrivingLicenseRequired;
    _resultData['isDrivingLicenseRequired'] = l$isDrivingLicenseRequired;
    final l$isDrivingLicenseSatisfied = isDrivingLicenseSatisfied;
    _resultData['isDrivingLicenseSatisfied'] = l$isDrivingLicenseSatisfied;
    final l$isUtilityBillRequired = isUtilityBillRequired;
    _resultData['isUtilityBillRequired'] = l$isUtilityBillRequired;
    final l$isUtilityBillRuleSatisfied = isUtilityBillRuleSatisfied;
    _resultData['isUtilityBillRuleSatisfied'] = l$isUtilityBillRuleSatisfied;
    final l$isCELAgreementRequired = isCELAgreementRequired;
    _resultData['isCELAgreementRequired'] = l$isCELAgreementRequired;
    final l$isCELAgreementRuleSatisfied = isCELAgreementRuleSatisfied;
    _resultData['isCELAgreementRuleSatisfied'] = l$isCELAgreementRuleSatisfied;
    final l$isSecoreAgreementRequired = isSecoreAgreementRequired;
    _resultData['isSecoreAgreementRequired'] = l$isSecoreAgreementRequired;
    final l$isSecoreAgreementRuleSatisfied = isSecoreAgreementRuleSatisfied;
    _resultData['isSecoreAgreementRuleSatisfied'] =
        l$isSecoreAgreementRuleSatisfied;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isPriced = isPriced;
    final l$hasRequiredAgreements = hasRequiredAgreements;
    final l$hasRequiredIdentities = hasRequiredIdentities;
    final l$isValidPaymentMethod = isValidPaymentMethod;
    final l$isPhotoIdRequired = isPhotoIdRequired;
    final l$isPhotoIdRuleSatisfied = isPhotoIdRuleSatisfied;
    final l$isDrivingLicenseRequired = isDrivingLicenseRequired;
    final l$isDrivingLicenseSatisfied = isDrivingLicenseSatisfied;
    final l$isUtilityBillRequired = isUtilityBillRequired;
    final l$isUtilityBillRuleSatisfied = isUtilityBillRuleSatisfied;
    final l$isCELAgreementRequired = isCELAgreementRequired;
    final l$isCELAgreementRuleSatisfied = isCELAgreementRuleSatisfied;
    final l$isSecoreAgreementRequired = isSecoreAgreementRequired;
    final l$isSecoreAgreementRuleSatisfied = isSecoreAgreementRuleSatisfied;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isPriced,
      l$hasRequiredAgreements,
      l$hasRequiredIdentities,
      l$isValidPaymentMethod,
      l$isPhotoIdRequired,
      l$isPhotoIdRuleSatisfied,
      l$isDrivingLicenseRequired,
      l$isDrivingLicenseSatisfied,
      l$isUtilityBillRequired,
      l$isUtilityBillRuleSatisfied,
      l$isCELAgreementRequired,
      l$isCELAgreementRuleSatisfied,
      l$isSecoreAgreementRequired,
      l$isSecoreAgreementRuleSatisfied,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRuleResultFields$validationFlags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isPriced = isPriced;
    final lOther$isPriced = other.isPriced;
    if (l$isPriced != lOther$isPriced) {
      return false;
    }
    final l$hasRequiredAgreements = hasRequiredAgreements;
    final lOther$hasRequiredAgreements = other.hasRequiredAgreements;
    if (l$hasRequiredAgreements != lOther$hasRequiredAgreements) {
      return false;
    }
    final l$hasRequiredIdentities = hasRequiredIdentities;
    final lOther$hasRequiredIdentities = other.hasRequiredIdentities;
    if (l$hasRequiredIdentities != lOther$hasRequiredIdentities) {
      return false;
    }
    final l$isValidPaymentMethod = isValidPaymentMethod;
    final lOther$isValidPaymentMethod = other.isValidPaymentMethod;
    if (l$isValidPaymentMethod != lOther$isValidPaymentMethod) {
      return false;
    }
    final l$isPhotoIdRequired = isPhotoIdRequired;
    final lOther$isPhotoIdRequired = other.isPhotoIdRequired;
    if (l$isPhotoIdRequired != lOther$isPhotoIdRequired) {
      return false;
    }
    final l$isPhotoIdRuleSatisfied = isPhotoIdRuleSatisfied;
    final lOther$isPhotoIdRuleSatisfied = other.isPhotoIdRuleSatisfied;
    if (l$isPhotoIdRuleSatisfied != lOther$isPhotoIdRuleSatisfied) {
      return false;
    }
    final l$isDrivingLicenseRequired = isDrivingLicenseRequired;
    final lOther$isDrivingLicenseRequired = other.isDrivingLicenseRequired;
    if (l$isDrivingLicenseRequired != lOther$isDrivingLicenseRequired) {
      return false;
    }
    final l$isDrivingLicenseSatisfied = isDrivingLicenseSatisfied;
    final lOther$isDrivingLicenseSatisfied = other.isDrivingLicenseSatisfied;
    if (l$isDrivingLicenseSatisfied != lOther$isDrivingLicenseSatisfied) {
      return false;
    }
    final l$isUtilityBillRequired = isUtilityBillRequired;
    final lOther$isUtilityBillRequired = other.isUtilityBillRequired;
    if (l$isUtilityBillRequired != lOther$isUtilityBillRequired) {
      return false;
    }
    final l$isUtilityBillRuleSatisfied = isUtilityBillRuleSatisfied;
    final lOther$isUtilityBillRuleSatisfied = other.isUtilityBillRuleSatisfied;
    if (l$isUtilityBillRuleSatisfied != lOther$isUtilityBillRuleSatisfied) {
      return false;
    }
    final l$isCELAgreementRequired = isCELAgreementRequired;
    final lOther$isCELAgreementRequired = other.isCELAgreementRequired;
    if (l$isCELAgreementRequired != lOther$isCELAgreementRequired) {
      return false;
    }
    final l$isCELAgreementRuleSatisfied = isCELAgreementRuleSatisfied;
    final lOther$isCELAgreementRuleSatisfied =
        other.isCELAgreementRuleSatisfied;
    if (l$isCELAgreementRuleSatisfied != lOther$isCELAgreementRuleSatisfied) {
      return false;
    }
    final l$isSecoreAgreementRequired = isSecoreAgreementRequired;
    final lOther$isSecoreAgreementRequired = other.isSecoreAgreementRequired;
    if (l$isSecoreAgreementRequired != lOther$isSecoreAgreementRequired) {
      return false;
    }
    final l$isSecoreAgreementRuleSatisfied = isSecoreAgreementRuleSatisfied;
    final lOther$isSecoreAgreementRuleSatisfied =
        other.isSecoreAgreementRuleSatisfied;
    if (l$isSecoreAgreementRuleSatisfied !=
        lOther$isSecoreAgreementRuleSatisfied) {
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

extension UtilityExtension$Fragment$PaymentRuleResultFields$validationFlags
    on Fragment$PaymentRuleResultFields$validationFlags {
  CopyWith$Fragment$PaymentRuleResultFields$validationFlags<
    Fragment$PaymentRuleResultFields$validationFlags
  >
  get copyWith =>
      CopyWith$Fragment$PaymentRuleResultFields$validationFlags(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes> {
  factory CopyWith$Fragment$PaymentRuleResultFields$validationFlags(
    Fragment$PaymentRuleResultFields$validationFlags instance,
    TRes Function(Fragment$PaymentRuleResultFields$validationFlags) then,
  ) = _CopyWithImpl$Fragment$PaymentRuleResultFields$validationFlags;

  factory CopyWith$Fragment$PaymentRuleResultFields$validationFlags.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentRuleResultFields$validationFlags;

  TRes call({
    bool? isPriced,
    bool? hasRequiredAgreements,
    bool? hasRequiredIdentities,
    bool? isValidPaymentMethod,
    bool? isPhotoIdRequired,
    bool? isPhotoIdRuleSatisfied,
    bool? isDrivingLicenseRequired,
    bool? isDrivingLicenseSatisfied,
    bool? isUtilityBillRequired,
    bool? isUtilityBillRuleSatisfied,
    bool? isCELAgreementRequired,
    bool? isCELAgreementRuleSatisfied,
    bool? isSecoreAgreementRequired,
    bool? isSecoreAgreementRuleSatisfied,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRuleResultFields$validationFlags<TRes>
    implements CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes> {
  _CopyWithImpl$Fragment$PaymentRuleResultFields$validationFlags(
    this._instance,
    this._then,
  );

  final Fragment$PaymentRuleResultFields$validationFlags _instance;

  final TRes Function(Fragment$PaymentRuleResultFields$validationFlags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isPriced = _undefined,
    Object? hasRequiredAgreements = _undefined,
    Object? hasRequiredIdentities = _undefined,
    Object? isValidPaymentMethod = _undefined,
    Object? isPhotoIdRequired = _undefined,
    Object? isPhotoIdRuleSatisfied = _undefined,
    Object? isDrivingLicenseRequired = _undefined,
    Object? isDrivingLicenseSatisfied = _undefined,
    Object? isUtilityBillRequired = _undefined,
    Object? isUtilityBillRuleSatisfied = _undefined,
    Object? isCELAgreementRequired = _undefined,
    Object? isCELAgreementRuleSatisfied = _undefined,
    Object? isSecoreAgreementRequired = _undefined,
    Object? isSecoreAgreementRuleSatisfied = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRuleResultFields$validationFlags(
      isPriced: isPriced == _undefined || isPriced == null
          ? _instance.isPriced
          : (isPriced as bool),
      hasRequiredAgreements:
          hasRequiredAgreements == _undefined || hasRequiredAgreements == null
          ? _instance.hasRequiredAgreements
          : (hasRequiredAgreements as bool),
      hasRequiredIdentities:
          hasRequiredIdentities == _undefined || hasRequiredIdentities == null
          ? _instance.hasRequiredIdentities
          : (hasRequiredIdentities as bool),
      isValidPaymentMethod:
          isValidPaymentMethod == _undefined || isValidPaymentMethod == null
          ? _instance.isValidPaymentMethod
          : (isValidPaymentMethod as bool),
      isPhotoIdRequired:
          isPhotoIdRequired == _undefined || isPhotoIdRequired == null
          ? _instance.isPhotoIdRequired
          : (isPhotoIdRequired as bool),
      isPhotoIdRuleSatisfied:
          isPhotoIdRuleSatisfied == _undefined || isPhotoIdRuleSatisfied == null
          ? _instance.isPhotoIdRuleSatisfied
          : (isPhotoIdRuleSatisfied as bool),
      isDrivingLicenseRequired:
          isDrivingLicenseRequired == _undefined ||
              isDrivingLicenseRequired == null
          ? _instance.isDrivingLicenseRequired
          : (isDrivingLicenseRequired as bool),
      isDrivingLicenseSatisfied:
          isDrivingLicenseSatisfied == _undefined ||
              isDrivingLicenseSatisfied == null
          ? _instance.isDrivingLicenseSatisfied
          : (isDrivingLicenseSatisfied as bool),
      isUtilityBillRequired:
          isUtilityBillRequired == _undefined || isUtilityBillRequired == null
          ? _instance.isUtilityBillRequired
          : (isUtilityBillRequired as bool),
      isUtilityBillRuleSatisfied:
          isUtilityBillRuleSatisfied == _undefined ||
              isUtilityBillRuleSatisfied == null
          ? _instance.isUtilityBillRuleSatisfied
          : (isUtilityBillRuleSatisfied as bool),
      isCELAgreementRequired:
          isCELAgreementRequired == _undefined || isCELAgreementRequired == null
          ? _instance.isCELAgreementRequired
          : (isCELAgreementRequired as bool),
      isCELAgreementRuleSatisfied:
          isCELAgreementRuleSatisfied == _undefined ||
              isCELAgreementRuleSatisfied == null
          ? _instance.isCELAgreementRuleSatisfied
          : (isCELAgreementRuleSatisfied as bool),
      isSecoreAgreementRequired:
          isSecoreAgreementRequired == _undefined ||
              isSecoreAgreementRequired == null
          ? _instance.isSecoreAgreementRequired
          : (isSecoreAgreementRequired as bool),
      isSecoreAgreementRuleSatisfied:
          isSecoreAgreementRuleSatisfied == _undefined ||
              isSecoreAgreementRuleSatisfied == null
          ? _instance.isSecoreAgreementRuleSatisfied
          : (isSecoreAgreementRuleSatisfied as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRuleResultFields$validationFlags<TRes>
    implements CopyWith$Fragment$PaymentRuleResultFields$validationFlags<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRuleResultFields$validationFlags(this._res);

  TRes _res;

  call({
    bool? isPriced,
    bool? hasRequiredAgreements,
    bool? hasRequiredIdentities,
    bool? isValidPaymentMethod,
    bool? isPhotoIdRequired,
    bool? isPhotoIdRuleSatisfied,
    bool? isDrivingLicenseRequired,
    bool? isDrivingLicenseSatisfied,
    bool? isUtilityBillRequired,
    bool? isUtilityBillRuleSatisfied,
    bool? isCELAgreementRequired,
    bool? isCELAgreementRuleSatisfied,
    bool? isSecoreAgreementRequired,
    bool? isSecoreAgreementRuleSatisfied,
    String? $__typename,
  }) => _res;
}
