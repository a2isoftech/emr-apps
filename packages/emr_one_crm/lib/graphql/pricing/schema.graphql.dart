class Input$PriceInput {
  factory Input$PriceInput({
    required String partyAccountNo,
    required String gradeCode,
    String? yardCode,
    String? arisingPointCode,
    String? contractRef,
    int? uomId,
  }) =>
      Input$PriceInput._({
        r'partyAccountNo': partyAccountNo,
        r'gradeCode': gradeCode,
        if (yardCode != null) r'yardCode': yardCode,
        if (arisingPointCode != null) r'arisingPointCode': arisingPointCode,
        if (contractRef != null) r'contractRef': contractRef,
        if (uomId != null) r'uomId': uomId,
      });

  Input$PriceInput._(this._$data);

  factory Input$PriceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    final l$gradeCode = data['gradeCode'];
    result$data['gradeCode'] = (l$gradeCode as String);
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = (l$yardCode as String?);
    }
    if (data.containsKey('arisingPointCode')) {
      final l$arisingPointCode = data['arisingPointCode'];
      result$data['arisingPointCode'] = (l$arisingPointCode as String?);
    }
    if (data.containsKey('contractRef')) {
      final l$contractRef = data['contractRef'];
      result$data['contractRef'] = (l$contractRef as String?);
    }
    if (data.containsKey('uomId')) {
      final l$uomId = data['uomId'];
      result$data['uomId'] = (l$uomId as int?);
    }
    return Input$PriceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  String get gradeCode => (_$data['gradeCode'] as String);

  String? get yardCode => (_$data['yardCode'] as String?);

  String? get arisingPointCode => (_$data['arisingPointCode'] as String?);

  String? get contractRef => (_$data['contractRef'] as String?);

  int? get uomId => (_$data['uomId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    final l$gradeCode = gradeCode;
    result$data['gradeCode'] = l$gradeCode;
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode;
    }
    if (_$data.containsKey('arisingPointCode')) {
      final l$arisingPointCode = arisingPointCode;
      result$data['arisingPointCode'] = l$arisingPointCode;
    }
    if (_$data.containsKey('contractRef')) {
      final l$contractRef = contractRef;
      result$data['contractRef'] = l$contractRef;
    }
    if (_$data.containsKey('uomId')) {
      final l$uomId = uomId;
      result$data['uomId'] = l$uomId;
    }
    return result$data;
  }

  CopyWith$Input$PriceInput<Input$PriceInput> get copyWith =>
      CopyWith$Input$PriceInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PriceInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (_$data.containsKey('yardCode') !=
        other._$data.containsKey('yardCode')) {
      return false;
    }
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$arisingPointCode = arisingPointCode;
    final lOther$arisingPointCode = other.arisingPointCode;
    if (_$data.containsKey('arisingPointCode') !=
        other._$data.containsKey('arisingPointCode')) {
      return false;
    }
    if (l$arisingPointCode != lOther$arisingPointCode) {
      return false;
    }
    final l$contractRef = contractRef;
    final lOther$contractRef = other.contractRef;
    if (_$data.containsKey('contractRef') !=
        other._$data.containsKey('contractRef')) {
      return false;
    }
    if (l$contractRef != lOther$contractRef) {
      return false;
    }
    final l$uomId = uomId;
    final lOther$uomId = other.uomId;
    if (_$data.containsKey('uomId') != other._$data.containsKey('uomId')) {
      return false;
    }
    if (l$uomId != lOther$uomId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$gradeCode = gradeCode;
    final l$yardCode = yardCode;
    final l$arisingPointCode = arisingPointCode;
    final l$contractRef = contractRef;
    final l$uomId = uomId;
    return Object.hashAll([
      l$partyAccountNo,
      l$gradeCode,
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('arisingPointCode') ? l$arisingPointCode : const {},
      _$data.containsKey('contractRef') ? l$contractRef : const {},
      _$data.containsKey('uomId') ? l$uomId : const {},
    ]);
  }
}

abstract class CopyWith$Input$PriceInput<TRes> {
  factory CopyWith$Input$PriceInput(
    Input$PriceInput instance,
    TRes Function(Input$PriceInput) then,
  ) = _CopyWithImpl$Input$PriceInput;

  factory CopyWith$Input$PriceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PriceInput;

  TRes call({
    String? partyAccountNo,
    String? gradeCode,
    String? yardCode,
    String? arisingPointCode,
    String? contractRef,
    int? uomId,
  });
}

class _CopyWithImpl$Input$PriceInput<TRes>
    implements CopyWith$Input$PriceInput<TRes> {
  _CopyWithImpl$Input$PriceInput(
    this._instance,
    this._then,
  );

  final Input$PriceInput _instance;

  final TRes Function(Input$PriceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? gradeCode = _undefined,
    Object? yardCode = _undefined,
    Object? arisingPointCode = _undefined,
    Object? contractRef = _undefined,
    Object? uomId = _undefined,
  }) =>
      _then(Input$PriceInput._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
        if (gradeCode != _undefined && gradeCode != null)
          'gradeCode': (gradeCode as String),
        if (yardCode != _undefined) 'yardCode': (yardCode as String?),
        if (arisingPointCode != _undefined)
          'arisingPointCode': (arisingPointCode as String?),
        if (contractRef != _undefined) 'contractRef': (contractRef as String?),
        if (uomId != _undefined) 'uomId': (uomId as int?),
      }));
}

class _CopyWithStubImpl$Input$PriceInput<TRes>
    implements CopyWith$Input$PriceInput<TRes> {
  _CopyWithStubImpl$Input$PriceInput(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    String? gradeCode,
    String? yardCode,
    String? arisingPointCode,
    String? contractRef,
    int? uomId,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
