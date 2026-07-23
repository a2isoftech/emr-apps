class Input$AccountDocumentUploadRequestInput {
  factory Input$AccountDocumentUploadRequestInput({
    required Enum$DocumentUploadTypeEnum documentUploadTypeEnum,
    required Enum$DocumentTypeEnum documentTypeEnum,
    required Enum$DocumentSubTypeEnum documentSubTypeEnum,
    required String mediaPath,
    required int batchQuoteId,
    required int vehicleId,
    required int quoteId,
  }) =>
      Input$AccountDocumentUploadRequestInput._({
        r'documentUploadTypeEnum': documentUploadTypeEnum,
        r'documentTypeEnum': documentTypeEnum,
        r'documentSubTypeEnum': documentSubTypeEnum,
        r'mediaPath': mediaPath,
        r'batchQuoteId': batchQuoteId,
        r'vehicleId': vehicleId,
        r'quoteId': quoteId,
      });

  Input$AccountDocumentUploadRequestInput._(this._$data);

  factory Input$AccountDocumentUploadRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$documentUploadTypeEnum = data['documentUploadTypeEnum'];
    result$data['documentUploadTypeEnum'] =
        fromJson$Enum$DocumentUploadTypeEnum(
            (l$documentUploadTypeEnum as String));
    final l$documentTypeEnum = data['documentTypeEnum'];
    result$data['documentTypeEnum'] =
        fromJson$Enum$DocumentTypeEnum((l$documentTypeEnum as String));
    final l$documentSubTypeEnum = data['documentSubTypeEnum'];
    result$data['documentSubTypeEnum'] =
        fromJson$Enum$DocumentSubTypeEnum((l$documentSubTypeEnum as String));
    final l$mediaPath = data['mediaPath'];
    result$data['mediaPath'] = (l$mediaPath as String);
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$vehicleId = data['vehicleId'];
    result$data['vehicleId'] = (l$vehicleId as int);
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Input$AccountDocumentUploadRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DocumentUploadTypeEnum get documentUploadTypeEnum =>
      (_$data['documentUploadTypeEnum'] as Enum$DocumentUploadTypeEnum);

  Enum$DocumentTypeEnum get documentTypeEnum =>
      (_$data['documentTypeEnum'] as Enum$DocumentTypeEnum);

  Enum$DocumentSubTypeEnum get documentSubTypeEnum =>
      (_$data['documentSubTypeEnum'] as Enum$DocumentSubTypeEnum);

  String get mediaPath => (_$data['mediaPath'] as String);

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  int get vehicleId => (_$data['vehicleId'] as int);

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$documentUploadTypeEnum = documentUploadTypeEnum;
    result$data['documentUploadTypeEnum'] =
        toJson$Enum$DocumentUploadTypeEnum(l$documentUploadTypeEnum);
    final l$documentTypeEnum = documentTypeEnum;
    result$data['documentTypeEnum'] =
        toJson$Enum$DocumentTypeEnum(l$documentTypeEnum);
    final l$documentSubTypeEnum = documentSubTypeEnum;
    result$data['documentSubTypeEnum'] =
        toJson$Enum$DocumentSubTypeEnum(l$documentSubTypeEnum);
    final l$mediaPath = mediaPath;
    result$data['mediaPath'] = l$mediaPath;
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$vehicleId = vehicleId;
    result$data['vehicleId'] = l$vehicleId;
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Input$AccountDocumentUploadRequestInput<
          Input$AccountDocumentUploadRequestInput>
      get copyWith => CopyWith$Input$AccountDocumentUploadRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountDocumentUploadRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentUploadTypeEnum = documentUploadTypeEnum;
    final lOther$documentUploadTypeEnum = other.documentUploadTypeEnum;
    if (l$documentUploadTypeEnum != lOther$documentUploadTypeEnum) {
      return false;
    }
    final l$documentTypeEnum = documentTypeEnum;
    final lOther$documentTypeEnum = other.documentTypeEnum;
    if (l$documentTypeEnum != lOther$documentTypeEnum) {
      return false;
    }
    final l$documentSubTypeEnum = documentSubTypeEnum;
    final lOther$documentSubTypeEnum = other.documentSubTypeEnum;
    if (l$documentSubTypeEnum != lOther$documentSubTypeEnum) {
      return false;
    }
    final l$mediaPath = mediaPath;
    final lOther$mediaPath = other.mediaPath;
    if (l$mediaPath != lOther$mediaPath) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$documentUploadTypeEnum = documentUploadTypeEnum;
    final l$documentTypeEnum = documentTypeEnum;
    final l$documentSubTypeEnum = documentSubTypeEnum;
    final l$mediaPath = mediaPath;
    final l$batchQuoteId = batchQuoteId;
    final l$vehicleId = vehicleId;
    final l$quoteId = quoteId;
    return Object.hashAll([
      l$documentUploadTypeEnum,
      l$documentTypeEnum,
      l$documentSubTypeEnum,
      l$mediaPath,
      l$batchQuoteId,
      l$vehicleId,
      l$quoteId,
    ]);
  }
}

abstract class CopyWith$Input$AccountDocumentUploadRequestInput<TRes> {
  factory CopyWith$Input$AccountDocumentUploadRequestInput(
    Input$AccountDocumentUploadRequestInput instance,
    TRes Function(Input$AccountDocumentUploadRequestInput) then,
  ) = _CopyWithImpl$Input$AccountDocumentUploadRequestInput;

  factory CopyWith$Input$AccountDocumentUploadRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountDocumentUploadRequestInput;

  TRes call({
    Enum$DocumentUploadTypeEnum? documentUploadTypeEnum,
    Enum$DocumentTypeEnum? documentTypeEnum,
    Enum$DocumentSubTypeEnum? documentSubTypeEnum,
    String? mediaPath,
    int? batchQuoteId,
    int? vehicleId,
    int? quoteId,
  });
}

class _CopyWithImpl$Input$AccountDocumentUploadRequestInput<TRes>
    implements CopyWith$Input$AccountDocumentUploadRequestInput<TRes> {
  _CopyWithImpl$Input$AccountDocumentUploadRequestInput(
    this._instance,
    this._then,
  );

  final Input$AccountDocumentUploadRequestInput _instance;

  final TRes Function(Input$AccountDocumentUploadRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentUploadTypeEnum = _undefined,
    Object? documentTypeEnum = _undefined,
    Object? documentSubTypeEnum = _undefined,
    Object? mediaPath = _undefined,
    Object? batchQuoteId = _undefined,
    Object? vehicleId = _undefined,
    Object? quoteId = _undefined,
  }) =>
      _then(Input$AccountDocumentUploadRequestInput._({
        ..._instance._$data,
        if (documentUploadTypeEnum != _undefined &&
            documentUploadTypeEnum != null)
          'documentUploadTypeEnum':
              (documentUploadTypeEnum as Enum$DocumentUploadTypeEnum),
        if (documentTypeEnum != _undefined && documentTypeEnum != null)
          'documentTypeEnum': (documentTypeEnum as Enum$DocumentTypeEnum),
        if (documentSubTypeEnum != _undefined && documentSubTypeEnum != null)
          'documentSubTypeEnum':
              (documentSubTypeEnum as Enum$DocumentSubTypeEnum),
        if (mediaPath != _undefined && mediaPath != null)
          'mediaPath': (mediaPath as String),
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (vehicleId != _undefined && vehicleId != null)
          'vehicleId': (vehicleId as int),
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Input$AccountDocumentUploadRequestInput<TRes>
    implements CopyWith$Input$AccountDocumentUploadRequestInput<TRes> {
  _CopyWithStubImpl$Input$AccountDocumentUploadRequestInput(this._res);

  TRes _res;

  call({
    Enum$DocumentUploadTypeEnum? documentUploadTypeEnum,
    Enum$DocumentTypeEnum? documentTypeEnum,
    Enum$DocumentSubTypeEnum? documentSubTypeEnum,
    String? mediaPath,
    int? batchQuoteId,
    int? vehicleId,
    int? quoteId,
  }) =>
      _res;
}

class Input$AccountModelFilterInput {
  factory Input$AccountModelFilterInput({
    List<Input$AccountModelFilterInput>? and,
    List<Input$AccountModelFilterInput>? or,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? defaultYardCode,
    Input$StringOperationFilterInput? title,
    Input$StringOperationFilterInput? firstName,
    Input$StringOperationFilterInput? middleName,
    Input$StringOperationFilterInput? lastName,
    Input$DateTimeOperationFilterInput? dateOfBirth,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? landlineNumber,
    Input$StringOperationFilterInput? mobileNumber,
    Input$StringOperationFilterInput? leadSource,
    Input$IntOperationFilterInput? contactId,
    Input$ListFilterInputTypeOfDocumentModelFilterInput? documents,
    Input$ListFilterInputTypeOfBankAccountModelFilterInput? bankAccounts,
    Input$BankAccountModelFilterInput? preferredBankAccount,
    Input$StringOperationFilterInput? name,
    Input$QuoteAccountTypeOperationFilterInput? accountType,
  }) =>
      Input$AccountModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (defaultYardCode != null) r'defaultYardCode': defaultYardCode,
        if (title != null) r'title': title,
        if (firstName != null) r'firstName': firstName,
        if (middleName != null) r'middleName': middleName,
        if (lastName != null) r'lastName': lastName,
        if (dateOfBirth != null) r'dateOfBirth': dateOfBirth,
        if (address != null) r'address': address,
        if (email != null) r'email': email,
        if (landlineNumber != null) r'landlineNumber': landlineNumber,
        if (mobileNumber != null) r'mobileNumber': mobileNumber,
        if (leadSource != null) r'leadSource': leadSource,
        if (contactId != null) r'contactId': contactId,
        if (documents != null) r'documents': documents,
        if (bankAccounts != null) r'bankAccounts': bankAccounts,
        if (preferredBankAccount != null)
          r'preferredBankAccount': preferredBankAccount,
        if (name != null) r'name': name,
        if (accountType != null) r'accountType': accountType,
      });

  Input$AccountModelFilterInput._(this._$data);

  factory Input$AccountModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AccountModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AccountModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accountNumber as Map<String, dynamic>));
    }
    if (data.containsKey('defaultYardCode')) {
      final l$defaultYardCode = data['defaultYardCode'];
      result$data['defaultYardCode'] = l$defaultYardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$defaultYardCode as Map<String, dynamic>));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$title as Map<String, dynamic>));
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = l$firstName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$firstName as Map<String, dynamic>));
    }
    if (data.containsKey('middleName')) {
      final l$middleName = data['middleName'];
      result$data['middleName'] = l$middleName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$middleName as Map<String, dynamic>));
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = l$lastName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$lastName as Map<String, dynamic>));
    }
    if (data.containsKey('dateOfBirth')) {
      final l$dateOfBirth = data['dateOfBirth'];
      result$data['dateOfBirth'] = l$dateOfBirth == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$dateOfBirth as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressModelFilterInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$email as Map<String, dynamic>));
    }
    if (data.containsKey('landlineNumber')) {
      final l$landlineNumber = data['landlineNumber'];
      result$data['landlineNumber'] = l$landlineNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$landlineNumber as Map<String, dynamic>));
    }
    if (data.containsKey('mobileNumber')) {
      final l$mobileNumber = data['mobileNumber'];
      result$data['mobileNumber'] = l$mobileNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$mobileNumber as Map<String, dynamic>));
    }
    if (data.containsKey('leadSource')) {
      final l$leadSource = data['leadSource'];
      result$data['leadSource'] = l$leadSource == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$leadSource as Map<String, dynamic>));
    }
    if (data.containsKey('contactId')) {
      final l$contactId = data['contactId'];
      result$data['contactId'] = l$contactId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$contactId as Map<String, dynamic>));
    }
    if (data.containsKey('documents')) {
      final l$documents = data['documents'];
      result$data['documents'] = l$documents == null
          ? null
          : Input$ListFilterInputTypeOfDocumentModelFilterInput.fromJson(
              (l$documents as Map<String, dynamic>));
    }
    if (data.containsKey('bankAccounts')) {
      final l$bankAccounts = data['bankAccounts'];
      result$data['bankAccounts'] = l$bankAccounts == null
          ? null
          : Input$ListFilterInputTypeOfBankAccountModelFilterInput.fromJson(
              (l$bankAccounts as Map<String, dynamic>));
    }
    if (data.containsKey('preferredBankAccount')) {
      final l$preferredBankAccount = data['preferredBankAccount'];
      result$data['preferredBankAccount'] = l$preferredBankAccount == null
          ? null
          : Input$BankAccountModelFilterInput.fromJson(
              (l$preferredBankAccount as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('accountType')) {
      final l$accountType = data['accountType'];
      result$data['accountType'] = l$accountType == null
          ? null
          : Input$QuoteAccountTypeOperationFilterInput.fromJson(
              (l$accountType as Map<String, dynamic>));
    }
    return Input$AccountModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AccountModelFilterInput>? get and =>
      (_$data['and'] as List<Input$AccountModelFilterInput>?);

  List<Input$AccountModelFilterInput>? get or =>
      (_$data['or'] as List<Input$AccountModelFilterInput>?);

  Input$StringOperationFilterInput? get accountNumber =>
      (_$data['accountNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get defaultYardCode =>
      (_$data['defaultYardCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get title =>
      (_$data['title'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get firstName =>
      (_$data['firstName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get middleName =>
      (_$data['middleName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get lastName =>
      (_$data['lastName'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get dateOfBirth =>
      (_$data['dateOfBirth'] as Input$DateTimeOperationFilterInput?);

  Input$AddressModelFilterInput? get address =>
      (_$data['address'] as Input$AddressModelFilterInput?);

  Input$StringOperationFilterInput? get email =>
      (_$data['email'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get landlineNumber =>
      (_$data['landlineNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get mobileNumber =>
      (_$data['mobileNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get leadSource =>
      (_$data['leadSource'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get contactId =>
      (_$data['contactId'] as Input$IntOperationFilterInput?);

  Input$ListFilterInputTypeOfDocumentModelFilterInput? get documents =>
      (_$data['documents']
          as Input$ListFilterInputTypeOfDocumentModelFilterInput?);

  Input$ListFilterInputTypeOfBankAccountModelFilterInput? get bankAccounts =>
      (_$data['bankAccounts']
          as Input$ListFilterInputTypeOfBankAccountModelFilterInput?);

  Input$BankAccountModelFilterInput? get preferredBankAccount =>
      (_$data['preferredBankAccount'] as Input$BankAccountModelFilterInput?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$QuoteAccountTypeOperationFilterInput? get accountType =>
      (_$data['accountType'] as Input$QuoteAccountTypeOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber?.toJson();
    }
    if (_$data.containsKey('defaultYardCode')) {
      final l$defaultYardCode = defaultYardCode;
      result$data['defaultYardCode'] = l$defaultYardCode?.toJson();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title?.toJson();
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName?.toJson();
    }
    if (_$data.containsKey('middleName')) {
      final l$middleName = middleName;
      result$data['middleName'] = l$middleName?.toJson();
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName?.toJson();
    }
    if (_$data.containsKey('dateOfBirth')) {
      final l$dateOfBirth = dateOfBirth;
      result$data['dateOfBirth'] = l$dateOfBirth?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('landlineNumber')) {
      final l$landlineNumber = landlineNumber;
      result$data['landlineNumber'] = l$landlineNumber?.toJson();
    }
    if (_$data.containsKey('mobileNumber')) {
      final l$mobileNumber = mobileNumber;
      result$data['mobileNumber'] = l$mobileNumber?.toJson();
    }
    if (_$data.containsKey('leadSource')) {
      final l$leadSource = leadSource;
      result$data['leadSource'] = l$leadSource?.toJson();
    }
    if (_$data.containsKey('contactId')) {
      final l$contactId = contactId;
      result$data['contactId'] = l$contactId?.toJson();
    }
    if (_$data.containsKey('documents')) {
      final l$documents = documents;
      result$data['documents'] = l$documents?.toJson();
    }
    if (_$data.containsKey('bankAccounts')) {
      final l$bankAccounts = bankAccounts;
      result$data['bankAccounts'] = l$bankAccounts?.toJson();
    }
    if (_$data.containsKey('preferredBankAccount')) {
      final l$preferredBankAccount = preferredBankAccount;
      result$data['preferredBankAccount'] = l$preferredBankAccount?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('accountType')) {
      final l$accountType = accountType;
      result$data['accountType'] = l$accountType?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccountModelFilterInput<Input$AccountModelFilterInput>
      get copyWith => CopyWith$Input$AccountModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (_$data.containsKey('defaultYardCode') !=
        other._$data.containsKey('defaultYardCode')) {
      return false;
    }
    if (l$defaultYardCode != lOther$defaultYardCode) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (_$data.containsKey('middleName') !=
        other._$data.containsKey('middleName')) {
      return false;
    }
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (_$data.containsKey('dateOfBirth') !=
        other._$data.containsKey('dateOfBirth')) {
      return false;
    }
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$landlineNumber = landlineNumber;
    final lOther$landlineNumber = other.landlineNumber;
    if (_$data.containsKey('landlineNumber') !=
        other._$data.containsKey('landlineNumber')) {
      return false;
    }
    if (l$landlineNumber != lOther$landlineNumber) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (_$data.containsKey('mobileNumber') !=
        other._$data.containsKey('mobileNumber')) {
      return false;
    }
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$leadSource = leadSource;
    final lOther$leadSource = other.leadSource;
    if (_$data.containsKey('leadSource') !=
        other._$data.containsKey('leadSource')) {
      return false;
    }
    if (l$leadSource != lOther$leadSource) {
      return false;
    }
    final l$contactId = contactId;
    final lOther$contactId = other.contactId;
    if (_$data.containsKey('contactId') !=
        other._$data.containsKey('contactId')) {
      return false;
    }
    if (l$contactId != lOther$contactId) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (_$data.containsKey('documents') !=
        other._$data.containsKey('documents')) {
      return false;
    }
    if (l$documents != lOther$documents) {
      return false;
    }
    final l$bankAccounts = bankAccounts;
    final lOther$bankAccounts = other.bankAccounts;
    if (_$data.containsKey('bankAccounts') !=
        other._$data.containsKey('bankAccounts')) {
      return false;
    }
    if (l$bankAccounts != lOther$bankAccounts) {
      return false;
    }
    final l$preferredBankAccount = preferredBankAccount;
    final lOther$preferredBankAccount = other.preferredBankAccount;
    if (_$data.containsKey('preferredBankAccount') !=
        other._$data.containsKey('preferredBankAccount')) {
      return false;
    }
    if (l$preferredBankAccount != lOther$preferredBankAccount) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountType = accountType;
    final lOther$accountType = other.accountType;
    if (_$data.containsKey('accountType') !=
        other._$data.containsKey('accountType')) {
      return false;
    }
    if (l$accountType != lOther$accountType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$accountNumber = accountNumber;
    final l$defaultYardCode = defaultYardCode;
    final l$title = title;
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$dateOfBirth = dateOfBirth;
    final l$address = address;
    final l$email = email;
    final l$landlineNumber = landlineNumber;
    final l$mobileNumber = mobileNumber;
    final l$leadSource = leadSource;
    final l$contactId = contactId;
    final l$documents = documents;
    final l$bankAccounts = bankAccounts;
    final l$preferredBankAccount = preferredBankAccount;
    final l$name = name;
    final l$accountType = accountType;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('defaultYardCode') ? l$defaultYardCode : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('middleName') ? l$middleName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('dateOfBirth') ? l$dateOfBirth : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('landlineNumber') ? l$landlineNumber : const {},
      _$data.containsKey('mobileNumber') ? l$mobileNumber : const {},
      _$data.containsKey('leadSource') ? l$leadSource : const {},
      _$data.containsKey('contactId') ? l$contactId : const {},
      _$data.containsKey('documents') ? l$documents : const {},
      _$data.containsKey('bankAccounts') ? l$bankAccounts : const {},
      _$data.containsKey('preferredBankAccount')
          ? l$preferredBankAccount
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('accountType') ? l$accountType : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountModelFilterInput<TRes> {
  factory CopyWith$Input$AccountModelFilterInput(
    Input$AccountModelFilterInput instance,
    TRes Function(Input$AccountModelFilterInput) then,
  ) = _CopyWithImpl$Input$AccountModelFilterInput;

  factory CopyWith$Input$AccountModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountModelFilterInput;

  TRes call({
    List<Input$AccountModelFilterInput>? and,
    List<Input$AccountModelFilterInput>? or,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? defaultYardCode,
    Input$StringOperationFilterInput? title,
    Input$StringOperationFilterInput? firstName,
    Input$StringOperationFilterInput? middleName,
    Input$StringOperationFilterInput? lastName,
    Input$DateTimeOperationFilterInput? dateOfBirth,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? landlineNumber,
    Input$StringOperationFilterInput? mobileNumber,
    Input$StringOperationFilterInput? leadSource,
    Input$IntOperationFilterInput? contactId,
    Input$ListFilterInputTypeOfDocumentModelFilterInput? documents,
    Input$ListFilterInputTypeOfBankAccountModelFilterInput? bankAccounts,
    Input$BankAccountModelFilterInput? preferredBankAccount,
    Input$StringOperationFilterInput? name,
    Input$QuoteAccountTypeOperationFilterInput? accountType,
  });
  TRes and(
      Iterable<Input$AccountModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AccountModelFilterInput<
                      Input$AccountModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AccountModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AccountModelFilterInput<
                      Input$AccountModelFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get defaultYardCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get title;
  CopyWith$Input$StringOperationFilterInput<TRes> get firstName;
  CopyWith$Input$StringOperationFilterInput<TRes> get middleName;
  CopyWith$Input$StringOperationFilterInput<TRes> get lastName;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get dateOfBirth;
  CopyWith$Input$AddressModelFilterInput<TRes> get address;
  CopyWith$Input$StringOperationFilterInput<TRes> get email;
  CopyWith$Input$StringOperationFilterInput<TRes> get landlineNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get mobileNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get leadSource;
  CopyWith$Input$IntOperationFilterInput<TRes> get contactId;
  CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes>
      get documents;
  CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes>
      get bankAccounts;
  CopyWith$Input$BankAccountModelFilterInput<TRes> get preferredBankAccount;
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> get accountType;
}

class _CopyWithImpl$Input$AccountModelFilterInput<TRes>
    implements CopyWith$Input$AccountModelFilterInput<TRes> {
  _CopyWithImpl$Input$AccountModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$AccountModelFilterInput _instance;

  final TRes Function(Input$AccountModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? accountNumber = _undefined,
    Object? defaultYardCode = _undefined,
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? dateOfBirth = _undefined,
    Object? address = _undefined,
    Object? email = _undefined,
    Object? landlineNumber = _undefined,
    Object? mobileNumber = _undefined,
    Object? leadSource = _undefined,
    Object? contactId = _undefined,
    Object? documents = _undefined,
    Object? bankAccounts = _undefined,
    Object? preferredBankAccount = _undefined,
    Object? name = _undefined,
    Object? accountType = _undefined,
  }) =>
      _then(Input$AccountModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AccountModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AccountModelFilterInput>?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as Input$StringOperationFilterInput?),
        if (defaultYardCode != _undefined)
          'defaultYardCode':
              (defaultYardCode as Input$StringOperationFilterInput?),
        if (title != _undefined)
          'title': (title as Input$StringOperationFilterInput?),
        if (firstName != _undefined)
          'firstName': (firstName as Input$StringOperationFilterInput?),
        if (middleName != _undefined)
          'middleName': (middleName as Input$StringOperationFilterInput?),
        if (lastName != _undefined)
          'lastName': (lastName as Input$StringOperationFilterInput?),
        if (dateOfBirth != _undefined)
          'dateOfBirth': (dateOfBirth as Input$DateTimeOperationFilterInput?),
        if (address != _undefined)
          'address': (address as Input$AddressModelFilterInput?),
        if (email != _undefined)
          'email': (email as Input$StringOperationFilterInput?),
        if (landlineNumber != _undefined)
          'landlineNumber':
              (landlineNumber as Input$StringOperationFilterInput?),
        if (mobileNumber != _undefined)
          'mobileNumber': (mobileNumber as Input$StringOperationFilterInput?),
        if (leadSource != _undefined)
          'leadSource': (leadSource as Input$StringOperationFilterInput?),
        if (contactId != _undefined)
          'contactId': (contactId as Input$IntOperationFilterInput?),
        if (documents != _undefined)
          'documents': (documents
              as Input$ListFilterInputTypeOfDocumentModelFilterInput?),
        if (bankAccounts != _undefined)
          'bankAccounts': (bankAccounts
              as Input$ListFilterInputTypeOfBankAccountModelFilterInput?),
        if (preferredBankAccount != _undefined)
          'preferredBankAccount':
              (preferredBankAccount as Input$BankAccountModelFilterInput?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (accountType != _undefined)
          'accountType':
              (accountType as Input$QuoteAccountTypeOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AccountModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AccountModelFilterInput<
                          Input$AccountModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AccountModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AccountModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AccountModelFilterInput<
                          Input$AccountModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$AccountModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber {
    final local$accountNumber = _instance.accountNumber;
    return local$accountNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accountNumber, (e) => call(accountNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultYardCode {
    final local$defaultYardCode = _instance.defaultYardCode;
    return local$defaultYardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$defaultYardCode, (e) => call(defaultYardCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$title, (e) => call(title: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get firstName {
    final local$firstName = _instance.firstName;
    return local$firstName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$firstName, (e) => call(firstName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get middleName {
    final local$middleName = _instance.middleName;
    return local$middleName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$middleName, (e) => call(middleName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get lastName {
    final local$lastName = _instance.lastName;
    return local$lastName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$lastName, (e) => call(lastName: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Input$AddressModelFilterInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$AddressModelFilterInput(
            local$address, (e) => call(address: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$email, (e) => call(email: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get landlineNumber {
    final local$landlineNumber = _instance.landlineNumber;
    return local$landlineNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$landlineNumber, (e) => call(landlineNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get mobileNumber {
    final local$mobileNumber = _instance.mobileNumber;
    return local$mobileNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$mobileNumber, (e) => call(mobileNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get leadSource {
    final local$leadSource = _instance.leadSource;
    return local$leadSource == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$leadSource, (e) => call(leadSource: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get contactId {
    final local$contactId = _instance.contactId;
    return local$contactId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$contactId, (e) => call(contactId: e));
  }

  CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes>
      get documents {
    final local$documents = _instance.documents;
    return local$documents == null
        ? CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput(
            local$documents, (e) => call(documents: e));
  }

  CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes>
      get bankAccounts {
    final local$bankAccounts = _instance.bankAccounts;
    return local$bankAccounts == null
        ? CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput(
            local$bankAccounts, (e) => call(bankAccounts: e));
  }

  CopyWith$Input$BankAccountModelFilterInput<TRes> get preferredBankAccount {
    final local$preferredBankAccount = _instance.preferredBankAccount;
    return local$preferredBankAccount == null
        ? CopyWith$Input$BankAccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelFilterInput(
            local$preferredBankAccount, (e) => call(preferredBankAccount: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> get accountType {
    final local$accountType = _instance.accountType;
    return local$accountType == null
        ? CopyWith$Input$QuoteAccountTypeOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteAccountTypeOperationFilterInput(
            local$accountType, (e) => call(accountType: e));
  }
}

class _CopyWithStubImpl$Input$AccountModelFilterInput<TRes>
    implements CopyWith$Input$AccountModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccountModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AccountModelFilterInput>? and,
    List<Input$AccountModelFilterInput>? or,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? defaultYardCode,
    Input$StringOperationFilterInput? title,
    Input$StringOperationFilterInput? firstName,
    Input$StringOperationFilterInput? middleName,
    Input$StringOperationFilterInput? lastName,
    Input$DateTimeOperationFilterInput? dateOfBirth,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? email,
    Input$StringOperationFilterInput? landlineNumber,
    Input$StringOperationFilterInput? mobileNumber,
    Input$StringOperationFilterInput? leadSource,
    Input$IntOperationFilterInput? contactId,
    Input$ListFilterInputTypeOfDocumentModelFilterInput? documents,
    Input$ListFilterInputTypeOfBankAccountModelFilterInput? bankAccounts,
    Input$BankAccountModelFilterInput? preferredBankAccount,
    Input$StringOperationFilterInput? name,
    Input$QuoteAccountTypeOperationFilterInput? accountType,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get defaultYardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get title =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get firstName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get middleName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get lastName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get dateOfBirth =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$AddressModelFilterInput<TRes> get address =>
      CopyWith$Input$AddressModelFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get email =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get landlineNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get mobileNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get leadSource =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get contactId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes>
      get documents =>
          CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput.stub(
              _res);

  CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes>
      get bankAccounts =>
          CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput.stub(
              _res);

  CopyWith$Input$BankAccountModelFilterInput<TRes> get preferredBankAccount =>
      CopyWith$Input$BankAccountModelFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> get accountType =>
      CopyWith$Input$QuoteAccountTypeOperationFilterInput.stub(_res);
}

class Input$AccountModelSortInput {
  factory Input$AccountModelSortInput({
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? defaultYardCode,
    Enum$SortEnumType? title,
    Enum$SortEnumType? firstName,
    Enum$SortEnumType? middleName,
    Enum$SortEnumType? lastName,
    Enum$SortEnumType? dateOfBirth,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? email,
    Enum$SortEnumType? landlineNumber,
    Enum$SortEnumType? mobileNumber,
    Enum$SortEnumType? leadSource,
    Enum$SortEnumType? contactId,
    Input$BankAccountModelSortInput? preferredBankAccount,
    Enum$SortEnumType? name,
    Enum$SortEnumType? accountType,
  }) =>
      Input$AccountModelSortInput._({
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (defaultYardCode != null) r'defaultYardCode': defaultYardCode,
        if (title != null) r'title': title,
        if (firstName != null) r'firstName': firstName,
        if (middleName != null) r'middleName': middleName,
        if (lastName != null) r'lastName': lastName,
        if (dateOfBirth != null) r'dateOfBirth': dateOfBirth,
        if (address != null) r'address': address,
        if (email != null) r'email': email,
        if (landlineNumber != null) r'landlineNumber': landlineNumber,
        if (mobileNumber != null) r'mobileNumber': mobileNumber,
        if (leadSource != null) r'leadSource': leadSource,
        if (contactId != null) r'contactId': contactId,
        if (preferredBankAccount != null)
          r'preferredBankAccount': preferredBankAccount,
        if (name != null) r'name': name,
        if (accountType != null) r'accountType': accountType,
      });

  Input$AccountModelSortInput._(this._$data);

  factory Input$AccountModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$accountNumber as String));
    }
    if (data.containsKey('defaultYardCode')) {
      final l$defaultYardCode = data['defaultYardCode'];
      result$data['defaultYardCode'] = l$defaultYardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$defaultYardCode as String));
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = l$title == null
          ? null
          : fromJson$Enum$SortEnumType((l$title as String));
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = l$firstName == null
          ? null
          : fromJson$Enum$SortEnumType((l$firstName as String));
    }
    if (data.containsKey('middleName')) {
      final l$middleName = data['middleName'];
      result$data['middleName'] = l$middleName == null
          ? null
          : fromJson$Enum$SortEnumType((l$middleName as String));
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = l$lastName == null
          ? null
          : fromJson$Enum$SortEnumType((l$lastName as String));
    }
    if (data.containsKey('dateOfBirth')) {
      final l$dateOfBirth = data['dateOfBirth'];
      result$data['dateOfBirth'] = l$dateOfBirth == null
          ? null
          : fromJson$Enum$SortEnumType((l$dateOfBirth as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressModelSortInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : fromJson$Enum$SortEnumType((l$email as String));
    }
    if (data.containsKey('landlineNumber')) {
      final l$landlineNumber = data['landlineNumber'];
      result$data['landlineNumber'] = l$landlineNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$landlineNumber as String));
    }
    if (data.containsKey('mobileNumber')) {
      final l$mobileNumber = data['mobileNumber'];
      result$data['mobileNumber'] = l$mobileNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$mobileNumber as String));
    }
    if (data.containsKey('leadSource')) {
      final l$leadSource = data['leadSource'];
      result$data['leadSource'] = l$leadSource == null
          ? null
          : fromJson$Enum$SortEnumType((l$leadSource as String));
    }
    if (data.containsKey('contactId')) {
      final l$contactId = data['contactId'];
      result$data['contactId'] = l$contactId == null
          ? null
          : fromJson$Enum$SortEnumType((l$contactId as String));
    }
    if (data.containsKey('preferredBankAccount')) {
      final l$preferredBankAccount = data['preferredBankAccount'];
      result$data['preferredBankAccount'] = l$preferredBankAccount == null
          ? null
          : Input$BankAccountModelSortInput.fromJson(
              (l$preferredBankAccount as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('accountType')) {
      final l$accountType = data['accountType'];
      result$data['accountType'] = l$accountType == null
          ? null
          : fromJson$Enum$SortEnumType((l$accountType as String));
    }
    return Input$AccountModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get accountNumber =>
      (_$data['accountNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get defaultYardCode =>
      (_$data['defaultYardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get title => (_$data['title'] as Enum$SortEnumType?);

  Enum$SortEnumType? get firstName =>
      (_$data['firstName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get middleName =>
      (_$data['middleName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get lastName => (_$data['lastName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get dateOfBirth =>
      (_$data['dateOfBirth'] as Enum$SortEnumType?);

  Input$AddressModelSortInput? get address =>
      (_$data['address'] as Input$AddressModelSortInput?);

  Enum$SortEnumType? get email => (_$data['email'] as Enum$SortEnumType?);

  Enum$SortEnumType? get landlineNumber =>
      (_$data['landlineNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get mobileNumber =>
      (_$data['mobileNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get leadSource =>
      (_$data['leadSource'] as Enum$SortEnumType?);

  Enum$SortEnumType? get contactId =>
      (_$data['contactId'] as Enum$SortEnumType?);

  Input$BankAccountModelSortInput? get preferredBankAccount =>
      (_$data['preferredBankAccount'] as Input$BankAccountModelSortInput?);

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accountType =>
      (_$data['accountType'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$accountNumber);
    }
    if (_$data.containsKey('defaultYardCode')) {
      final l$defaultYardCode = defaultYardCode;
      result$data['defaultYardCode'] = l$defaultYardCode == null
          ? null
          : toJson$Enum$SortEnumType(l$defaultYardCode);
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] =
          l$title == null ? null : toJson$Enum$SortEnumType(l$title);
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] =
          l$firstName == null ? null : toJson$Enum$SortEnumType(l$firstName);
    }
    if (_$data.containsKey('middleName')) {
      final l$middleName = middleName;
      result$data['middleName'] =
          l$middleName == null ? null : toJson$Enum$SortEnumType(l$middleName);
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] =
          l$lastName == null ? null : toJson$Enum$SortEnumType(l$lastName);
    }
    if (_$data.containsKey('dateOfBirth')) {
      final l$dateOfBirth = dateOfBirth;
      result$data['dateOfBirth'] = l$dateOfBirth == null
          ? null
          : toJson$Enum$SortEnumType(l$dateOfBirth);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] =
          l$email == null ? null : toJson$Enum$SortEnumType(l$email);
    }
    if (_$data.containsKey('landlineNumber')) {
      final l$landlineNumber = landlineNumber;
      result$data['landlineNumber'] = l$landlineNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$landlineNumber);
    }
    if (_$data.containsKey('mobileNumber')) {
      final l$mobileNumber = mobileNumber;
      result$data['mobileNumber'] = l$mobileNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$mobileNumber);
    }
    if (_$data.containsKey('leadSource')) {
      final l$leadSource = leadSource;
      result$data['leadSource'] =
          l$leadSource == null ? null : toJson$Enum$SortEnumType(l$leadSource);
    }
    if (_$data.containsKey('contactId')) {
      final l$contactId = contactId;
      result$data['contactId'] =
          l$contactId == null ? null : toJson$Enum$SortEnumType(l$contactId);
    }
    if (_$data.containsKey('preferredBankAccount')) {
      final l$preferredBankAccount = preferredBankAccount;
      result$data['preferredBankAccount'] = l$preferredBankAccount?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('accountType')) {
      final l$accountType = accountType;
      result$data['accountType'] = l$accountType == null
          ? null
          : toJson$Enum$SortEnumType(l$accountType);
    }
    return result$data;
  }

  CopyWith$Input$AccountModelSortInput<Input$AccountModelSortInput>
      get copyWith => CopyWith$Input$AccountModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (_$data.containsKey('defaultYardCode') !=
        other._$data.containsKey('defaultYardCode')) {
      return false;
    }
    if (l$defaultYardCode != lOther$defaultYardCode) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (_$data.containsKey('middleName') !=
        other._$data.containsKey('middleName')) {
      return false;
    }
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (_$data.containsKey('dateOfBirth') !=
        other._$data.containsKey('dateOfBirth')) {
      return false;
    }
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$landlineNumber = landlineNumber;
    final lOther$landlineNumber = other.landlineNumber;
    if (_$data.containsKey('landlineNumber') !=
        other._$data.containsKey('landlineNumber')) {
      return false;
    }
    if (l$landlineNumber != lOther$landlineNumber) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (_$data.containsKey('mobileNumber') !=
        other._$data.containsKey('mobileNumber')) {
      return false;
    }
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$leadSource = leadSource;
    final lOther$leadSource = other.leadSource;
    if (_$data.containsKey('leadSource') !=
        other._$data.containsKey('leadSource')) {
      return false;
    }
    if (l$leadSource != lOther$leadSource) {
      return false;
    }
    final l$contactId = contactId;
    final lOther$contactId = other.contactId;
    if (_$data.containsKey('contactId') !=
        other._$data.containsKey('contactId')) {
      return false;
    }
    if (l$contactId != lOther$contactId) {
      return false;
    }
    final l$preferredBankAccount = preferredBankAccount;
    final lOther$preferredBankAccount = other.preferredBankAccount;
    if (_$data.containsKey('preferredBankAccount') !=
        other._$data.containsKey('preferredBankAccount')) {
      return false;
    }
    if (l$preferredBankAccount != lOther$preferredBankAccount) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountType = accountType;
    final lOther$accountType = other.accountType;
    if (_$data.containsKey('accountType') !=
        other._$data.containsKey('accountType')) {
      return false;
    }
    if (l$accountType != lOther$accountType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$defaultYardCode = defaultYardCode;
    final l$title = title;
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$dateOfBirth = dateOfBirth;
    final l$address = address;
    final l$email = email;
    final l$landlineNumber = landlineNumber;
    final l$mobileNumber = mobileNumber;
    final l$leadSource = leadSource;
    final l$contactId = contactId;
    final l$preferredBankAccount = preferredBankAccount;
    final l$name = name;
    final l$accountType = accountType;
    return Object.hashAll([
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('defaultYardCode') ? l$defaultYardCode : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('middleName') ? l$middleName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('dateOfBirth') ? l$dateOfBirth : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('landlineNumber') ? l$landlineNumber : const {},
      _$data.containsKey('mobileNumber') ? l$mobileNumber : const {},
      _$data.containsKey('leadSource') ? l$leadSource : const {},
      _$data.containsKey('contactId') ? l$contactId : const {},
      _$data.containsKey('preferredBankAccount')
          ? l$preferredBankAccount
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('accountType') ? l$accountType : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountModelSortInput<TRes> {
  factory CopyWith$Input$AccountModelSortInput(
    Input$AccountModelSortInput instance,
    TRes Function(Input$AccountModelSortInput) then,
  ) = _CopyWithImpl$Input$AccountModelSortInput;

  factory CopyWith$Input$AccountModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountModelSortInput;

  TRes call({
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? defaultYardCode,
    Enum$SortEnumType? title,
    Enum$SortEnumType? firstName,
    Enum$SortEnumType? middleName,
    Enum$SortEnumType? lastName,
    Enum$SortEnumType? dateOfBirth,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? email,
    Enum$SortEnumType? landlineNumber,
    Enum$SortEnumType? mobileNumber,
    Enum$SortEnumType? leadSource,
    Enum$SortEnumType? contactId,
    Input$BankAccountModelSortInput? preferredBankAccount,
    Enum$SortEnumType? name,
    Enum$SortEnumType? accountType,
  });
  CopyWith$Input$AddressModelSortInput<TRes> get address;
  CopyWith$Input$BankAccountModelSortInput<TRes> get preferredBankAccount;
}

class _CopyWithImpl$Input$AccountModelSortInput<TRes>
    implements CopyWith$Input$AccountModelSortInput<TRes> {
  _CopyWithImpl$Input$AccountModelSortInput(
    this._instance,
    this._then,
  );

  final Input$AccountModelSortInput _instance;

  final TRes Function(Input$AccountModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? defaultYardCode = _undefined,
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? dateOfBirth = _undefined,
    Object? address = _undefined,
    Object? email = _undefined,
    Object? landlineNumber = _undefined,
    Object? mobileNumber = _undefined,
    Object? leadSource = _undefined,
    Object? contactId = _undefined,
    Object? preferredBankAccount = _undefined,
    Object? name = _undefined,
    Object? accountType = _undefined,
  }) =>
      _then(Input$AccountModelSortInput._({
        ..._instance._$data,
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as Enum$SortEnumType?),
        if (defaultYardCode != _undefined)
          'defaultYardCode': (defaultYardCode as Enum$SortEnumType?),
        if (title != _undefined) 'title': (title as Enum$SortEnumType?),
        if (firstName != _undefined)
          'firstName': (firstName as Enum$SortEnumType?),
        if (middleName != _undefined)
          'middleName': (middleName as Enum$SortEnumType?),
        if (lastName != _undefined)
          'lastName': (lastName as Enum$SortEnumType?),
        if (dateOfBirth != _undefined)
          'dateOfBirth': (dateOfBirth as Enum$SortEnumType?),
        if (address != _undefined)
          'address': (address as Input$AddressModelSortInput?),
        if (email != _undefined) 'email': (email as Enum$SortEnumType?),
        if (landlineNumber != _undefined)
          'landlineNumber': (landlineNumber as Enum$SortEnumType?),
        if (mobileNumber != _undefined)
          'mobileNumber': (mobileNumber as Enum$SortEnumType?),
        if (leadSource != _undefined)
          'leadSource': (leadSource as Enum$SortEnumType?),
        if (contactId != _undefined)
          'contactId': (contactId as Enum$SortEnumType?),
        if (preferredBankAccount != _undefined)
          'preferredBankAccount':
              (preferredBankAccount as Input$BankAccountModelSortInput?),
        if (name != _undefined) 'name': (name as Enum$SortEnumType?),
        if (accountType != _undefined)
          'accountType': (accountType as Enum$SortEnumType?),
      }));

  CopyWith$Input$AddressModelSortInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressModelSortInput.stub(_then(_instance))
        : CopyWith$Input$AddressModelSortInput(
            local$address, (e) => call(address: e));
  }

  CopyWith$Input$BankAccountModelSortInput<TRes> get preferredBankAccount {
    final local$preferredBankAccount = _instance.preferredBankAccount;
    return local$preferredBankAccount == null
        ? CopyWith$Input$BankAccountModelSortInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelSortInput(
            local$preferredBankAccount, (e) => call(preferredBankAccount: e));
  }
}

class _CopyWithStubImpl$Input$AccountModelSortInput<TRes>
    implements CopyWith$Input$AccountModelSortInput<TRes> {
  _CopyWithStubImpl$Input$AccountModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? defaultYardCode,
    Enum$SortEnumType? title,
    Enum$SortEnumType? firstName,
    Enum$SortEnumType? middleName,
    Enum$SortEnumType? lastName,
    Enum$SortEnumType? dateOfBirth,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? email,
    Enum$SortEnumType? landlineNumber,
    Enum$SortEnumType? mobileNumber,
    Enum$SortEnumType? leadSource,
    Enum$SortEnumType? contactId,
    Input$BankAccountModelSortInput? preferredBankAccount,
    Enum$SortEnumType? name,
    Enum$SortEnumType? accountType,
  }) =>
      _res;

  CopyWith$Input$AddressModelSortInput<TRes> get address =>
      CopyWith$Input$AddressModelSortInput.stub(_res);

  CopyWith$Input$BankAccountModelSortInput<TRes> get preferredBankAccount =>
      CopyWith$Input$BankAccountModelSortInput.stub(_res);
}

class Input$ActiveQuoteModelFilterInput {
  factory Input$ActiveQuoteModelFilterInput({
    List<Input$ActiveQuoteModelFilterInput>? and,
    List<Input$ActiveQuoteModelFilterInput>? or,
    Input$VehicleDescriptionModelFilterInput? vehicleDescription,
    Input$VehicleConfigurationModelFilterInput? vehicleConfiguration,
    Input$DateTimeOperationFilterInput? expires,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? meridiem,
    Input$NullableOfLeadSourceEnumOperationFilterInput? leadSource,
    Input$ListFilterInputTypeOfQuoteLineFilterInput? quoteLines,
    Input$DecimalOperationFilterInput? total,
    Input$IntOperationFilterInput? quoteId,
    Input$StringOperationFilterInput? proofOfOwnership,
    Input$DecimalOperationFilterInput? catValue,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$NullableOfQuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$DecimalOperationFilterInput? haulageCost,
  }) =>
      Input$ActiveQuoteModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (vehicleDescription != null)
          r'vehicleDescription': vehicleDescription,
        if (vehicleConfiguration != null)
          r'vehicleConfiguration': vehicleConfiguration,
        if (expires != null) r'expires': expires,
        if (appointmentDate != null) r'appointmentDate': appointmentDate,
        if (meridiem != null) r'meridiem': meridiem,
        if (leadSource != null) r'leadSource': leadSource,
        if (quoteLines != null) r'quoteLines': quoteLines,
        if (total != null) r'total': total,
        if (quoteId != null) r'quoteId': quoteId,
        if (proofOfOwnership != null) r'proofOfOwnership': proofOfOwnership,
        if (catValue != null) r'catValue': catValue,
        if (hasTechemetCat != null) r'hasTechemetCat': hasTechemetCat,
        if (quoteStatus != null) r'quoteStatus': quoteStatus,
        if (haulageCost != null) r'haulageCost': haulageCost,
      });

  Input$ActiveQuoteModelFilterInput._(this._$data);

  factory Input$ActiveQuoteModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$ActiveQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$ActiveQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('vehicleDescription')) {
      final l$vehicleDescription = data['vehicleDescription'];
      result$data['vehicleDescription'] = l$vehicleDescription == null
          ? null
          : Input$VehicleDescriptionModelFilterInput.fromJson(
              (l$vehicleDescription as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleConfiguration')) {
      final l$vehicleConfiguration = data['vehicleConfiguration'];
      result$data['vehicleConfiguration'] = l$vehicleConfiguration == null
          ? null
          : Input$VehicleConfigurationModelFilterInput.fromJson(
              (l$vehicleConfiguration as Map<String, dynamic>));
    }
    if (data.containsKey('expires')) {
      final l$expires = data['expires'];
      result$data['expires'] = l$expires == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$expires as Map<String, dynamic>));
    }
    if (data.containsKey('appointmentDate')) {
      final l$appointmentDate = data['appointmentDate'];
      result$data['appointmentDate'] = l$appointmentDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$appointmentDate as Map<String, dynamic>));
    }
    if (data.containsKey('meridiem')) {
      final l$meridiem = data['meridiem'];
      result$data['meridiem'] = l$meridiem == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$meridiem as Map<String, dynamic>));
    }
    if (data.containsKey('leadSource')) {
      final l$leadSource = data['leadSource'];
      result$data['leadSource'] = l$leadSource == null
          ? null
          : Input$NullableOfLeadSourceEnumOperationFilterInput.fromJson(
              (l$leadSource as Map<String, dynamic>));
    }
    if (data.containsKey('quoteLines')) {
      final l$quoteLines = data['quoteLines'];
      result$data['quoteLines'] = l$quoteLines == null
          ? null
          : Input$ListFilterInputTypeOfQuoteLineFilterInput.fromJson(
              (l$quoteLines as Map<String, dynamic>));
    }
    if (data.containsKey('total')) {
      final l$total = data['total'];
      result$data['total'] = l$total == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$total as Map<String, dynamic>));
    }
    if (data.containsKey('quoteId')) {
      final l$quoteId = data['quoteId'];
      result$data['quoteId'] = l$quoteId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$quoteId as Map<String, dynamic>));
    }
    if (data.containsKey('proofOfOwnership')) {
      final l$proofOfOwnership = data['proofOfOwnership'];
      result$data['proofOfOwnership'] = l$proofOfOwnership == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$proofOfOwnership as Map<String, dynamic>));
    }
    if (data.containsKey('catValue')) {
      final l$catValue = data['catValue'];
      result$data['catValue'] = l$catValue == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$catValue as Map<String, dynamic>));
    }
    if (data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = data['hasTechemetCat'];
      result$data['hasTechemetCat'] = l$hasTechemetCat == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasTechemetCat as Map<String, dynamic>));
    }
    if (data.containsKey('quoteStatus')) {
      final l$quoteStatus = data['quoteStatus'];
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : Input$NullableOfQuoteStatusEnumOperationFilterInput.fromJson(
              (l$quoteStatus as Map<String, dynamic>));
    }
    if (data.containsKey('haulageCost')) {
      final l$haulageCost = data['haulageCost'];
      result$data['haulageCost'] = l$haulageCost == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$haulageCost as Map<String, dynamic>));
    }
    return Input$ActiveQuoteModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ActiveQuoteModelFilterInput>? get and =>
      (_$data['and'] as List<Input$ActiveQuoteModelFilterInput>?);

  List<Input$ActiveQuoteModelFilterInput>? get or =>
      (_$data['or'] as List<Input$ActiveQuoteModelFilterInput>?);

  Input$VehicleDescriptionModelFilterInput? get vehicleDescription =>
      (_$data['vehicleDescription']
          as Input$VehicleDescriptionModelFilterInput?);

  Input$VehicleConfigurationModelFilterInput? get vehicleConfiguration =>
      (_$data['vehicleConfiguration']
          as Input$VehicleConfigurationModelFilterInput?);

  Input$DateTimeOperationFilterInput? get expires =>
      (_$data['expires'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get appointmentDate =>
      (_$data['appointmentDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get meridiem =>
      (_$data['meridiem'] as Input$StringOperationFilterInput?);

  Input$NullableOfLeadSourceEnumOperationFilterInput? get leadSource =>
      (_$data['leadSource']
          as Input$NullableOfLeadSourceEnumOperationFilterInput?);

  Input$ListFilterInputTypeOfQuoteLineFilterInput? get quoteLines =>
      (_$data['quoteLines']
          as Input$ListFilterInputTypeOfQuoteLineFilterInput?);

  Input$DecimalOperationFilterInput? get total =>
      (_$data['total'] as Input$DecimalOperationFilterInput?);

  Input$IntOperationFilterInput? get quoteId =>
      (_$data['quoteId'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get proofOfOwnership =>
      (_$data['proofOfOwnership'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get catValue =>
      (_$data['catValue'] as Input$DecimalOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasTechemetCat =>
      (_$data['hasTechemetCat'] as Input$BooleanOperationFilterInput?);

  Input$NullableOfQuoteStatusEnumOperationFilterInput? get quoteStatus =>
      (_$data['quoteStatus']
          as Input$NullableOfQuoteStatusEnumOperationFilterInput?);

  Input$DecimalOperationFilterInput? get haulageCost =>
      (_$data['haulageCost'] as Input$DecimalOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('vehicleDescription')) {
      final l$vehicleDescription = vehicleDescription;
      result$data['vehicleDescription'] = l$vehicleDescription?.toJson();
    }
    if (_$data.containsKey('vehicleConfiguration')) {
      final l$vehicleConfiguration = vehicleConfiguration;
      result$data['vehicleConfiguration'] = l$vehicleConfiguration?.toJson();
    }
    if (_$data.containsKey('expires')) {
      final l$expires = expires;
      result$data['expires'] = l$expires?.toJson();
    }
    if (_$data.containsKey('appointmentDate')) {
      final l$appointmentDate = appointmentDate;
      result$data['appointmentDate'] = l$appointmentDate?.toJson();
    }
    if (_$data.containsKey('meridiem')) {
      final l$meridiem = meridiem;
      result$data['meridiem'] = l$meridiem?.toJson();
    }
    if (_$data.containsKey('leadSource')) {
      final l$leadSource = leadSource;
      result$data['leadSource'] = l$leadSource?.toJson();
    }
    if (_$data.containsKey('quoteLines')) {
      final l$quoteLines = quoteLines;
      result$data['quoteLines'] = l$quoteLines?.toJson();
    }
    if (_$data.containsKey('total')) {
      final l$total = total;
      result$data['total'] = l$total?.toJson();
    }
    if (_$data.containsKey('quoteId')) {
      final l$quoteId = quoteId;
      result$data['quoteId'] = l$quoteId?.toJson();
    }
    if (_$data.containsKey('proofOfOwnership')) {
      final l$proofOfOwnership = proofOfOwnership;
      result$data['proofOfOwnership'] = l$proofOfOwnership?.toJson();
    }
    if (_$data.containsKey('catValue')) {
      final l$catValue = catValue;
      result$data['catValue'] = l$catValue?.toJson();
    }
    if (_$data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = hasTechemetCat;
      result$data['hasTechemetCat'] = l$hasTechemetCat?.toJson();
    }
    if (_$data.containsKey('quoteStatus')) {
      final l$quoteStatus = quoteStatus;
      result$data['quoteStatus'] = l$quoteStatus?.toJson();
    }
    if (_$data.containsKey('haulageCost')) {
      final l$haulageCost = haulageCost;
      result$data['haulageCost'] = l$haulageCost?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ActiveQuoteModelFilterInput<Input$ActiveQuoteModelFilterInput>
      get copyWith => CopyWith$Input$ActiveQuoteModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ActiveQuoteModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$vehicleDescription = vehicleDescription;
    final lOther$vehicleDescription = other.vehicleDescription;
    if (_$data.containsKey('vehicleDescription') !=
        other._$data.containsKey('vehicleDescription')) {
      return false;
    }
    if (l$vehicleDescription != lOther$vehicleDescription) {
      return false;
    }
    final l$vehicleConfiguration = vehicleConfiguration;
    final lOther$vehicleConfiguration = other.vehicleConfiguration;
    if (_$data.containsKey('vehicleConfiguration') !=
        other._$data.containsKey('vehicleConfiguration')) {
      return false;
    }
    if (l$vehicleConfiguration != lOther$vehicleConfiguration) {
      return false;
    }
    final l$expires = expires;
    final lOther$expires = other.expires;
    if (_$data.containsKey('expires') != other._$data.containsKey('expires')) {
      return false;
    }
    if (l$expires != lOther$expires) {
      return false;
    }
    final l$appointmentDate = appointmentDate;
    final lOther$appointmentDate = other.appointmentDate;
    if (_$data.containsKey('appointmentDate') !=
        other._$data.containsKey('appointmentDate')) {
      return false;
    }
    if (l$appointmentDate != lOther$appointmentDate) {
      return false;
    }
    final l$meridiem = meridiem;
    final lOther$meridiem = other.meridiem;
    if (_$data.containsKey('meridiem') !=
        other._$data.containsKey('meridiem')) {
      return false;
    }
    if (l$meridiem != lOther$meridiem) {
      return false;
    }
    final l$leadSource = leadSource;
    final lOther$leadSource = other.leadSource;
    if (_$data.containsKey('leadSource') !=
        other._$data.containsKey('leadSource')) {
      return false;
    }
    if (l$leadSource != lOther$leadSource) {
      return false;
    }
    final l$quoteLines = quoteLines;
    final lOther$quoteLines = other.quoteLines;
    if (_$data.containsKey('quoteLines') !=
        other._$data.containsKey('quoteLines')) {
      return false;
    }
    if (l$quoteLines != lOther$quoteLines) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (_$data.containsKey('total') != other._$data.containsKey('total')) {
      return false;
    }
    if (l$total != lOther$total) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (_$data.containsKey('quoteId') != other._$data.containsKey('quoteId')) {
      return false;
    }
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$proofOfOwnership = proofOfOwnership;
    final lOther$proofOfOwnership = other.proofOfOwnership;
    if (_$data.containsKey('proofOfOwnership') !=
        other._$data.containsKey('proofOfOwnership')) {
      return false;
    }
    if (l$proofOfOwnership != lOther$proofOfOwnership) {
      return false;
    }
    final l$catValue = catValue;
    final lOther$catValue = other.catValue;
    if (_$data.containsKey('catValue') !=
        other._$data.containsKey('catValue')) {
      return false;
    }
    if (l$catValue != lOther$catValue) {
      return false;
    }
    final l$hasTechemetCat = hasTechemetCat;
    final lOther$hasTechemetCat = other.hasTechemetCat;
    if (_$data.containsKey('hasTechemetCat') !=
        other._$data.containsKey('hasTechemetCat')) {
      return false;
    }
    if (l$hasTechemetCat != lOther$hasTechemetCat) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (_$data.containsKey('quoteStatus') !=
        other._$data.containsKey('quoteStatus')) {
      return false;
    }
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$haulageCost = haulageCost;
    final lOther$haulageCost = other.haulageCost;
    if (_$data.containsKey('haulageCost') !=
        other._$data.containsKey('haulageCost')) {
      return false;
    }
    if (l$haulageCost != lOther$haulageCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$vehicleDescription = vehicleDescription;
    final l$vehicleConfiguration = vehicleConfiguration;
    final l$expires = expires;
    final l$appointmentDate = appointmentDate;
    final l$meridiem = meridiem;
    final l$leadSource = leadSource;
    final l$quoteLines = quoteLines;
    final l$total = total;
    final l$quoteId = quoteId;
    final l$proofOfOwnership = proofOfOwnership;
    final l$catValue = catValue;
    final l$hasTechemetCat = hasTechemetCat;
    final l$quoteStatus = quoteStatus;
    final l$haulageCost = haulageCost;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('vehicleDescription')
          ? l$vehicleDescription
          : const {},
      _$data.containsKey('vehicleConfiguration')
          ? l$vehicleConfiguration
          : const {},
      _$data.containsKey('expires') ? l$expires : const {},
      _$data.containsKey('appointmentDate') ? l$appointmentDate : const {},
      _$data.containsKey('meridiem') ? l$meridiem : const {},
      _$data.containsKey('leadSource') ? l$leadSource : const {},
      _$data.containsKey('quoteLines') ? l$quoteLines : const {},
      _$data.containsKey('total') ? l$total : const {},
      _$data.containsKey('quoteId') ? l$quoteId : const {},
      _$data.containsKey('proofOfOwnership') ? l$proofOfOwnership : const {},
      _$data.containsKey('catValue') ? l$catValue : const {},
      _$data.containsKey('hasTechemetCat') ? l$hasTechemetCat : const {},
      _$data.containsKey('quoteStatus') ? l$quoteStatus : const {},
      _$data.containsKey('haulageCost') ? l$haulageCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$ActiveQuoteModelFilterInput<TRes> {
  factory CopyWith$Input$ActiveQuoteModelFilterInput(
    Input$ActiveQuoteModelFilterInput instance,
    TRes Function(Input$ActiveQuoteModelFilterInput) then,
  ) = _CopyWithImpl$Input$ActiveQuoteModelFilterInput;

  factory CopyWith$Input$ActiveQuoteModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ActiveQuoteModelFilterInput;

  TRes call({
    List<Input$ActiveQuoteModelFilterInput>? and,
    List<Input$ActiveQuoteModelFilterInput>? or,
    Input$VehicleDescriptionModelFilterInput? vehicleDescription,
    Input$VehicleConfigurationModelFilterInput? vehicleConfiguration,
    Input$DateTimeOperationFilterInput? expires,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? meridiem,
    Input$NullableOfLeadSourceEnumOperationFilterInput? leadSource,
    Input$ListFilterInputTypeOfQuoteLineFilterInput? quoteLines,
    Input$DecimalOperationFilterInput? total,
    Input$IntOperationFilterInput? quoteId,
    Input$StringOperationFilterInput? proofOfOwnership,
    Input$DecimalOperationFilterInput? catValue,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$NullableOfQuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$DecimalOperationFilterInput? haulageCost,
  });
  TRes and(
      Iterable<Input$ActiveQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$ActiveQuoteModelFilterInput<
                      Input$ActiveQuoteModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$ActiveQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$ActiveQuoteModelFilterInput<
                      Input$ActiveQuoteModelFilterInput>>?)
          _fn);
  CopyWith$Input$VehicleDescriptionModelFilterInput<TRes>
      get vehicleDescription;
  CopyWith$Input$VehicleConfigurationModelFilterInput<TRes>
      get vehicleConfiguration;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get meridiem;
  CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes>
      get leadSource;
  CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes> get quoteLines;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get total;
  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get proofOfOwnership;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat;
  CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes>
      get quoteStatus;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get haulageCost;
}

class _CopyWithImpl$Input$ActiveQuoteModelFilterInput<TRes>
    implements CopyWith$Input$ActiveQuoteModelFilterInput<TRes> {
  _CopyWithImpl$Input$ActiveQuoteModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ActiveQuoteModelFilterInput _instance;

  final TRes Function(Input$ActiveQuoteModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? vehicleDescription = _undefined,
    Object? vehicleConfiguration = _undefined,
    Object? expires = _undefined,
    Object? appointmentDate = _undefined,
    Object? meridiem = _undefined,
    Object? leadSource = _undefined,
    Object? quoteLines = _undefined,
    Object? total = _undefined,
    Object? quoteId = _undefined,
    Object? proofOfOwnership = _undefined,
    Object? catValue = _undefined,
    Object? hasTechemetCat = _undefined,
    Object? quoteStatus = _undefined,
    Object? haulageCost = _undefined,
  }) =>
      _then(Input$ActiveQuoteModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$ActiveQuoteModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$ActiveQuoteModelFilterInput>?),
        if (vehicleDescription != _undefined)
          'vehicleDescription':
              (vehicleDescription as Input$VehicleDescriptionModelFilterInput?),
        if (vehicleConfiguration != _undefined)
          'vehicleConfiguration': (vehicleConfiguration
              as Input$VehicleConfigurationModelFilterInput?),
        if (expires != _undefined)
          'expires': (expires as Input$DateTimeOperationFilterInput?),
        if (appointmentDate != _undefined)
          'appointmentDate':
              (appointmentDate as Input$DateTimeOperationFilterInput?),
        if (meridiem != _undefined)
          'meridiem': (meridiem as Input$StringOperationFilterInput?),
        if (leadSource != _undefined)
          'leadSource': (leadSource
              as Input$NullableOfLeadSourceEnumOperationFilterInput?),
        if (quoteLines != _undefined)
          'quoteLines':
              (quoteLines as Input$ListFilterInputTypeOfQuoteLineFilterInput?),
        if (total != _undefined)
          'total': (total as Input$DecimalOperationFilterInput?),
        if (quoteId != _undefined)
          'quoteId': (quoteId as Input$IntOperationFilterInput?),
        if (proofOfOwnership != _undefined)
          'proofOfOwnership':
              (proofOfOwnership as Input$StringOperationFilterInput?),
        if (catValue != _undefined)
          'catValue': (catValue as Input$DecimalOperationFilterInput?),
        if (hasTechemetCat != _undefined)
          'hasTechemetCat':
              (hasTechemetCat as Input$BooleanOperationFilterInput?),
        if (quoteStatus != _undefined)
          'quoteStatus': (quoteStatus
              as Input$NullableOfQuoteStatusEnumOperationFilterInput?),
        if (haulageCost != _undefined)
          'haulageCost': (haulageCost as Input$DecimalOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$ActiveQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$ActiveQuoteModelFilterInput<
                          Input$ActiveQuoteModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$ActiveQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$ActiveQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$ActiveQuoteModelFilterInput<
                          Input$ActiveQuoteModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$ActiveQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$VehicleDescriptionModelFilterInput<TRes>
      get vehicleDescription {
    final local$vehicleDescription = _instance.vehicleDescription;
    return local$vehicleDescription == null
        ? CopyWith$Input$VehicleDescriptionModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleDescriptionModelFilterInput(
            local$vehicleDescription, (e) => call(vehicleDescription: e));
  }

  CopyWith$Input$VehicleConfigurationModelFilterInput<TRes>
      get vehicleConfiguration {
    final local$vehicleConfiguration = _instance.vehicleConfiguration;
    return local$vehicleConfiguration == null
        ? CopyWith$Input$VehicleConfigurationModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleConfigurationModelFilterInput(
            local$vehicleConfiguration, (e) => call(vehicleConfiguration: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires {
    final local$expires = _instance.expires;
    return local$expires == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$expires, (e) => call(expires: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate {
    final local$appointmentDate = _instance.appointmentDate;
    return local$appointmentDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$appointmentDate, (e) => call(appointmentDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get meridiem {
    final local$meridiem = _instance.meridiem;
    return local$meridiem == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$meridiem, (e) => call(meridiem: e));
  }

  CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes>
      get leadSource {
    final local$leadSource = _instance.leadSource;
    return local$leadSource == null
        ? CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput(
            local$leadSource, (e) => call(leadSource: e));
  }

  CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes>
      get quoteLines {
    final local$quoteLines = _instance.quoteLines;
    return local$quoteLines == null
        ? CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput(
            local$quoteLines, (e) => call(quoteLines: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get total {
    final local$total = _instance.total;
    return local$total == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$total, (e) => call(total: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId {
    final local$quoteId = _instance.quoteId;
    return local$quoteId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$quoteId, (e) => call(quoteId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get proofOfOwnership {
    final local$proofOfOwnership = _instance.proofOfOwnership;
    return local$proofOfOwnership == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$proofOfOwnership, (e) => call(proofOfOwnership: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue {
    final local$catValue = _instance.catValue;
    return local$catValue == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$catValue, (e) => call(catValue: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat {
    final local$hasTechemetCat = _instance.hasTechemetCat;
    return local$hasTechemetCat == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasTechemetCat, (e) => call(hasTechemetCat: e));
  }

  CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes>
      get quoteStatus {
    final local$quoteStatus = _instance.quoteStatus;
    return local$quoteStatus == null
        ? CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput(
            local$quoteStatus, (e) => call(quoteStatus: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get haulageCost {
    final local$haulageCost = _instance.haulageCost;
    return local$haulageCost == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$haulageCost, (e) => call(haulageCost: e));
  }
}

class _CopyWithStubImpl$Input$ActiveQuoteModelFilterInput<TRes>
    implements CopyWith$Input$ActiveQuoteModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$ActiveQuoteModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$ActiveQuoteModelFilterInput>? and,
    List<Input$ActiveQuoteModelFilterInput>? or,
    Input$VehicleDescriptionModelFilterInput? vehicleDescription,
    Input$VehicleConfigurationModelFilterInput? vehicleConfiguration,
    Input$DateTimeOperationFilterInput? expires,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? meridiem,
    Input$NullableOfLeadSourceEnumOperationFilterInput? leadSource,
    Input$ListFilterInputTypeOfQuoteLineFilterInput? quoteLines,
    Input$DecimalOperationFilterInput? total,
    Input$IntOperationFilterInput? quoteId,
    Input$StringOperationFilterInput? proofOfOwnership,
    Input$DecimalOperationFilterInput? catValue,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$NullableOfQuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$DecimalOperationFilterInput? haulageCost,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$VehicleDescriptionModelFilterInput<TRes>
      get vehicleDescription =>
          CopyWith$Input$VehicleDescriptionModelFilterInput.stub(_res);

  CopyWith$Input$VehicleConfigurationModelFilterInput<TRes>
      get vehicleConfiguration =>
          CopyWith$Input$VehicleConfigurationModelFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get meridiem =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes>
      get leadSource =>
          CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput.stub(
              _res);

  CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes>
      get quoteLines =>
          CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get total =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get proofOfOwnership =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes>
      get quoteStatus =>
          CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput.stub(
              _res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get haulageCost =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);
}

class Input$AddressModelFilterInput {
  factory Input$AddressModelFilterInput({
    List<Input$AddressModelFilterInput>? and,
    List<Input$AddressModelFilterInput>? or,
    Input$StringOperationFilterInput? line1,
    Input$StringOperationFilterInput? line2,
    Input$StringOperationFilterInput? line3,
    Input$StringOperationFilterInput? line4,
    Input$StringOperationFilterInput? line5,
    Input$StringOperationFilterInput? line6,
    Input$StringOperationFilterInput? postcode,
    Input$GeoLocationModelFilterInput? geoLocation,
    Input$StringOperationFilterInput? country,
    Input$StringOperationFilterInput? shortAddress,
  }) =>
      Input$AddressModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (line1 != null) r'line1': line1,
        if (line2 != null) r'line2': line2,
        if (line3 != null) r'line3': line3,
        if (line4 != null) r'line4': line4,
        if (line5 != null) r'line5': line5,
        if (line6 != null) r'line6': line6,
        if (postcode != null) r'postcode': postcode,
        if (geoLocation != null) r'geoLocation': geoLocation,
        if (country != null) r'country': country,
        if (shortAddress != null) r'shortAddress': shortAddress,
      });

  Input$AddressModelFilterInput._(this._$data);

  factory Input$AddressModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AddressModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AddressModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('line1')) {
      final l$line1 = data['line1'];
      result$data['line1'] = l$line1 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line1 as Map<String, dynamic>));
    }
    if (data.containsKey('line2')) {
      final l$line2 = data['line2'];
      result$data['line2'] = l$line2 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line2 as Map<String, dynamic>));
    }
    if (data.containsKey('line3')) {
      final l$line3 = data['line3'];
      result$data['line3'] = l$line3 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line3 as Map<String, dynamic>));
    }
    if (data.containsKey('line4')) {
      final l$line4 = data['line4'];
      result$data['line4'] = l$line4 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line4 as Map<String, dynamic>));
    }
    if (data.containsKey('line5')) {
      final l$line5 = data['line5'];
      result$data['line5'] = l$line5 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line5 as Map<String, dynamic>));
    }
    if (data.containsKey('line6')) {
      final l$line6 = data['line6'];
      result$data['line6'] = l$line6 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$line6 as Map<String, dynamic>));
    }
    if (data.containsKey('postcode')) {
      final l$postcode = data['postcode'];
      result$data['postcode'] = l$postcode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$postcode as Map<String, dynamic>));
    }
    if (data.containsKey('geoLocation')) {
      final l$geoLocation = data['geoLocation'];
      result$data['geoLocation'] = l$geoLocation == null
          ? null
          : Input$GeoLocationModelFilterInput.fromJson(
              (l$geoLocation as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$country as Map<String, dynamic>));
    }
    if (data.containsKey('shortAddress')) {
      final l$shortAddress = data['shortAddress'];
      result$data['shortAddress'] = l$shortAddress == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$shortAddress as Map<String, dynamic>));
    }
    return Input$AddressModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AddressModelFilterInput>? get and =>
      (_$data['and'] as List<Input$AddressModelFilterInput>?);

  List<Input$AddressModelFilterInput>? get or =>
      (_$data['or'] as List<Input$AddressModelFilterInput>?);

  Input$StringOperationFilterInput? get line1 =>
      (_$data['line1'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get line2 =>
      (_$data['line2'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get line3 =>
      (_$data['line3'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get line4 =>
      (_$data['line4'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get line5 =>
      (_$data['line5'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get line6 =>
      (_$data['line6'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get postcode =>
      (_$data['postcode'] as Input$StringOperationFilterInput?);

  Input$GeoLocationModelFilterInput? get geoLocation =>
      (_$data['geoLocation'] as Input$GeoLocationModelFilterInput?);

  Input$StringOperationFilterInput? get country =>
      (_$data['country'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get shortAddress =>
      (_$data['shortAddress'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('line1')) {
      final l$line1 = line1;
      result$data['line1'] = l$line1?.toJson();
    }
    if (_$data.containsKey('line2')) {
      final l$line2 = line2;
      result$data['line2'] = l$line2?.toJson();
    }
    if (_$data.containsKey('line3')) {
      final l$line3 = line3;
      result$data['line3'] = l$line3?.toJson();
    }
    if (_$data.containsKey('line4')) {
      final l$line4 = line4;
      result$data['line4'] = l$line4?.toJson();
    }
    if (_$data.containsKey('line5')) {
      final l$line5 = line5;
      result$data['line5'] = l$line5?.toJson();
    }
    if (_$data.containsKey('line6')) {
      final l$line6 = line6;
      result$data['line6'] = l$line6?.toJson();
    }
    if (_$data.containsKey('postcode')) {
      final l$postcode = postcode;
      result$data['postcode'] = l$postcode?.toJson();
    }
    if (_$data.containsKey('geoLocation')) {
      final l$geoLocation = geoLocation;
      result$data['geoLocation'] = l$geoLocation?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country?.toJson();
    }
    if (_$data.containsKey('shortAddress')) {
      final l$shortAddress = shortAddress;
      result$data['shortAddress'] = l$shortAddress?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AddressModelFilterInput<Input$AddressModelFilterInput>
      get copyWith => CopyWith$Input$AddressModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddressModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$line1 = line1;
    final lOther$line1 = other.line1;
    if (_$data.containsKey('line1') != other._$data.containsKey('line1')) {
      return false;
    }
    if (l$line1 != lOther$line1) {
      return false;
    }
    final l$line2 = line2;
    final lOther$line2 = other.line2;
    if (_$data.containsKey('line2') != other._$data.containsKey('line2')) {
      return false;
    }
    if (l$line2 != lOther$line2) {
      return false;
    }
    final l$line3 = line3;
    final lOther$line3 = other.line3;
    if (_$data.containsKey('line3') != other._$data.containsKey('line3')) {
      return false;
    }
    if (l$line3 != lOther$line3) {
      return false;
    }
    final l$line4 = line4;
    final lOther$line4 = other.line4;
    if (_$data.containsKey('line4') != other._$data.containsKey('line4')) {
      return false;
    }
    if (l$line4 != lOther$line4) {
      return false;
    }
    final l$line5 = line5;
    final lOther$line5 = other.line5;
    if (_$data.containsKey('line5') != other._$data.containsKey('line5')) {
      return false;
    }
    if (l$line5 != lOther$line5) {
      return false;
    }
    final l$line6 = line6;
    final lOther$line6 = other.line6;
    if (_$data.containsKey('line6') != other._$data.containsKey('line6')) {
      return false;
    }
    if (l$line6 != lOther$line6) {
      return false;
    }
    final l$postcode = postcode;
    final lOther$postcode = other.postcode;
    if (_$data.containsKey('postcode') !=
        other._$data.containsKey('postcode')) {
      return false;
    }
    if (l$postcode != lOther$postcode) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (_$data.containsKey('geoLocation') !=
        other._$data.containsKey('geoLocation')) {
      return false;
    }
    if (l$geoLocation != lOther$geoLocation) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$shortAddress = shortAddress;
    final lOther$shortAddress = other.shortAddress;
    if (_$data.containsKey('shortAddress') !=
        other._$data.containsKey('shortAddress')) {
      return false;
    }
    if (l$shortAddress != lOther$shortAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$line1 = line1;
    final l$line2 = line2;
    final l$line3 = line3;
    final l$line4 = line4;
    final l$line5 = line5;
    final l$line6 = line6;
    final l$postcode = postcode;
    final l$geoLocation = geoLocation;
    final l$country = country;
    final l$shortAddress = shortAddress;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('line1') ? l$line1 : const {},
      _$data.containsKey('line2') ? l$line2 : const {},
      _$data.containsKey('line3') ? l$line3 : const {},
      _$data.containsKey('line4') ? l$line4 : const {},
      _$data.containsKey('line5') ? l$line5 : const {},
      _$data.containsKey('line6') ? l$line6 : const {},
      _$data.containsKey('postcode') ? l$postcode : const {},
      _$data.containsKey('geoLocation') ? l$geoLocation : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('shortAddress') ? l$shortAddress : const {},
    ]);
  }
}

abstract class CopyWith$Input$AddressModelFilterInput<TRes> {
  factory CopyWith$Input$AddressModelFilterInput(
    Input$AddressModelFilterInput instance,
    TRes Function(Input$AddressModelFilterInput) then,
  ) = _CopyWithImpl$Input$AddressModelFilterInput;

  factory CopyWith$Input$AddressModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddressModelFilterInput;

  TRes call({
    List<Input$AddressModelFilterInput>? and,
    List<Input$AddressModelFilterInput>? or,
    Input$StringOperationFilterInput? line1,
    Input$StringOperationFilterInput? line2,
    Input$StringOperationFilterInput? line3,
    Input$StringOperationFilterInput? line4,
    Input$StringOperationFilterInput? line5,
    Input$StringOperationFilterInput? line6,
    Input$StringOperationFilterInput? postcode,
    Input$GeoLocationModelFilterInput? geoLocation,
    Input$StringOperationFilterInput? country,
    Input$StringOperationFilterInput? shortAddress,
  });
  TRes and(
      Iterable<Input$AddressModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AddressModelFilterInput<
                      Input$AddressModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AddressModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AddressModelFilterInput<
                      Input$AddressModelFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get line1;
  CopyWith$Input$StringOperationFilterInput<TRes> get line2;
  CopyWith$Input$StringOperationFilterInput<TRes> get line3;
  CopyWith$Input$StringOperationFilterInput<TRes> get line4;
  CopyWith$Input$StringOperationFilterInput<TRes> get line5;
  CopyWith$Input$StringOperationFilterInput<TRes> get line6;
  CopyWith$Input$StringOperationFilterInput<TRes> get postcode;
  CopyWith$Input$GeoLocationModelFilterInput<TRes> get geoLocation;
  CopyWith$Input$StringOperationFilterInput<TRes> get country;
  CopyWith$Input$StringOperationFilterInput<TRes> get shortAddress;
}

class _CopyWithImpl$Input$AddressModelFilterInput<TRes>
    implements CopyWith$Input$AddressModelFilterInput<TRes> {
  _CopyWithImpl$Input$AddressModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$AddressModelFilterInput _instance;

  final TRes Function(Input$AddressModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? line1 = _undefined,
    Object? line2 = _undefined,
    Object? line3 = _undefined,
    Object? line4 = _undefined,
    Object? line5 = _undefined,
    Object? line6 = _undefined,
    Object? postcode = _undefined,
    Object? geoLocation = _undefined,
    Object? country = _undefined,
    Object? shortAddress = _undefined,
  }) =>
      _then(Input$AddressModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AddressModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AddressModelFilterInput>?),
        if (line1 != _undefined)
          'line1': (line1 as Input$StringOperationFilterInput?),
        if (line2 != _undefined)
          'line2': (line2 as Input$StringOperationFilterInput?),
        if (line3 != _undefined)
          'line3': (line3 as Input$StringOperationFilterInput?),
        if (line4 != _undefined)
          'line4': (line4 as Input$StringOperationFilterInput?),
        if (line5 != _undefined)
          'line5': (line5 as Input$StringOperationFilterInput?),
        if (line6 != _undefined)
          'line6': (line6 as Input$StringOperationFilterInput?),
        if (postcode != _undefined)
          'postcode': (postcode as Input$StringOperationFilterInput?),
        if (geoLocation != _undefined)
          'geoLocation': (geoLocation as Input$GeoLocationModelFilterInput?),
        if (country != _undefined)
          'country': (country as Input$StringOperationFilterInput?),
        if (shortAddress != _undefined)
          'shortAddress': (shortAddress as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AddressModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AddressModelFilterInput<
                          Input$AddressModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$AddressModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AddressModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AddressModelFilterInput<
                          Input$AddressModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$AddressModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get line1 {
    final local$line1 = _instance.line1;
    return local$line1 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line1, (e) => call(line1: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get line2 {
    final local$line2 = _instance.line2;
    return local$line2 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line2, (e) => call(line2: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get line3 {
    final local$line3 = _instance.line3;
    return local$line3 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line3, (e) => call(line3: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get line4 {
    final local$line4 = _instance.line4;
    return local$line4 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line4, (e) => call(line4: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get line5 {
    final local$line5 = _instance.line5;
    return local$line5 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line5, (e) => call(line5: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get line6 {
    final local$line6 = _instance.line6;
    return local$line6 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$line6, (e) => call(line6: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get postcode {
    final local$postcode = _instance.postcode;
    return local$postcode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$postcode, (e) => call(postcode: e));
  }

  CopyWith$Input$GeoLocationModelFilterInput<TRes> get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Input$GeoLocationModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$GeoLocationModelFilterInput(
            local$geoLocation, (e) => call(geoLocation: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$country, (e) => call(country: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get shortAddress {
    final local$shortAddress = _instance.shortAddress;
    return local$shortAddress == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$shortAddress, (e) => call(shortAddress: e));
  }
}

class _CopyWithStubImpl$Input$AddressModelFilterInput<TRes>
    implements CopyWith$Input$AddressModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$AddressModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AddressModelFilterInput>? and,
    List<Input$AddressModelFilterInput>? or,
    Input$StringOperationFilterInput? line1,
    Input$StringOperationFilterInput? line2,
    Input$StringOperationFilterInput? line3,
    Input$StringOperationFilterInput? line4,
    Input$StringOperationFilterInput? line5,
    Input$StringOperationFilterInput? line6,
    Input$StringOperationFilterInput? postcode,
    Input$GeoLocationModelFilterInput? geoLocation,
    Input$StringOperationFilterInput? country,
    Input$StringOperationFilterInput? shortAddress,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get line1 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get line2 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get line3 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get line4 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get line5 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get line6 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get postcode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$GeoLocationModelFilterInput<TRes> get geoLocation =>
      CopyWith$Input$GeoLocationModelFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get country =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get shortAddress =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$AddressModelSortInput {
  factory Input$AddressModelSortInput({
    Enum$SortEnumType? line1,
    Enum$SortEnumType? line2,
    Enum$SortEnumType? line3,
    Enum$SortEnumType? line4,
    Enum$SortEnumType? line5,
    Enum$SortEnumType? line6,
    Enum$SortEnumType? postcode,
    Input$GeoLocationModelSortInput? geoLocation,
    Enum$SortEnumType? country,
    Enum$SortEnumType? shortAddress,
  }) =>
      Input$AddressModelSortInput._({
        if (line1 != null) r'line1': line1,
        if (line2 != null) r'line2': line2,
        if (line3 != null) r'line3': line3,
        if (line4 != null) r'line4': line4,
        if (line5 != null) r'line5': line5,
        if (line6 != null) r'line6': line6,
        if (postcode != null) r'postcode': postcode,
        if (geoLocation != null) r'geoLocation': geoLocation,
        if (country != null) r'country': country,
        if (shortAddress != null) r'shortAddress': shortAddress,
      });

  Input$AddressModelSortInput._(this._$data);

  factory Input$AddressModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('line1')) {
      final l$line1 = data['line1'];
      result$data['line1'] = l$line1 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line1 as String));
    }
    if (data.containsKey('line2')) {
      final l$line2 = data['line2'];
      result$data['line2'] = l$line2 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line2 as String));
    }
    if (data.containsKey('line3')) {
      final l$line3 = data['line3'];
      result$data['line3'] = l$line3 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line3 as String));
    }
    if (data.containsKey('line4')) {
      final l$line4 = data['line4'];
      result$data['line4'] = l$line4 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line4 as String));
    }
    if (data.containsKey('line5')) {
      final l$line5 = data['line5'];
      result$data['line5'] = l$line5 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line5 as String));
    }
    if (data.containsKey('line6')) {
      final l$line6 = data['line6'];
      result$data['line6'] = l$line6 == null
          ? null
          : fromJson$Enum$SortEnumType((l$line6 as String));
    }
    if (data.containsKey('postcode')) {
      final l$postcode = data['postcode'];
      result$data['postcode'] = l$postcode == null
          ? null
          : fromJson$Enum$SortEnumType((l$postcode as String));
    }
    if (data.containsKey('geoLocation')) {
      final l$geoLocation = data['geoLocation'];
      result$data['geoLocation'] = l$geoLocation == null
          ? null
          : Input$GeoLocationModelSortInput.fromJson(
              (l$geoLocation as Map<String, dynamic>));
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = l$country == null
          ? null
          : fromJson$Enum$SortEnumType((l$country as String));
    }
    if (data.containsKey('shortAddress')) {
      final l$shortAddress = data['shortAddress'];
      result$data['shortAddress'] = l$shortAddress == null
          ? null
          : fromJson$Enum$SortEnumType((l$shortAddress as String));
    }
    return Input$AddressModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get line1 => (_$data['line1'] as Enum$SortEnumType?);

  Enum$SortEnumType? get line2 => (_$data['line2'] as Enum$SortEnumType?);

  Enum$SortEnumType? get line3 => (_$data['line3'] as Enum$SortEnumType?);

  Enum$SortEnumType? get line4 => (_$data['line4'] as Enum$SortEnumType?);

  Enum$SortEnumType? get line5 => (_$data['line5'] as Enum$SortEnumType?);

  Enum$SortEnumType? get line6 => (_$data['line6'] as Enum$SortEnumType?);

  Enum$SortEnumType? get postcode => (_$data['postcode'] as Enum$SortEnumType?);

  Input$GeoLocationModelSortInput? get geoLocation =>
      (_$data['geoLocation'] as Input$GeoLocationModelSortInput?);

  Enum$SortEnumType? get country => (_$data['country'] as Enum$SortEnumType?);

  Enum$SortEnumType? get shortAddress =>
      (_$data['shortAddress'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('line1')) {
      final l$line1 = line1;
      result$data['line1'] =
          l$line1 == null ? null : toJson$Enum$SortEnumType(l$line1);
    }
    if (_$data.containsKey('line2')) {
      final l$line2 = line2;
      result$data['line2'] =
          l$line2 == null ? null : toJson$Enum$SortEnumType(l$line2);
    }
    if (_$data.containsKey('line3')) {
      final l$line3 = line3;
      result$data['line3'] =
          l$line3 == null ? null : toJson$Enum$SortEnumType(l$line3);
    }
    if (_$data.containsKey('line4')) {
      final l$line4 = line4;
      result$data['line4'] =
          l$line4 == null ? null : toJson$Enum$SortEnumType(l$line4);
    }
    if (_$data.containsKey('line5')) {
      final l$line5 = line5;
      result$data['line5'] =
          l$line5 == null ? null : toJson$Enum$SortEnumType(l$line5);
    }
    if (_$data.containsKey('line6')) {
      final l$line6 = line6;
      result$data['line6'] =
          l$line6 == null ? null : toJson$Enum$SortEnumType(l$line6);
    }
    if (_$data.containsKey('postcode')) {
      final l$postcode = postcode;
      result$data['postcode'] =
          l$postcode == null ? null : toJson$Enum$SortEnumType(l$postcode);
    }
    if (_$data.containsKey('geoLocation')) {
      final l$geoLocation = geoLocation;
      result$data['geoLocation'] = l$geoLocation?.toJson();
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] =
          l$country == null ? null : toJson$Enum$SortEnumType(l$country);
    }
    if (_$data.containsKey('shortAddress')) {
      final l$shortAddress = shortAddress;
      result$data['shortAddress'] = l$shortAddress == null
          ? null
          : toJson$Enum$SortEnumType(l$shortAddress);
    }
    return result$data;
  }

  CopyWith$Input$AddressModelSortInput<Input$AddressModelSortInput>
      get copyWith => CopyWith$Input$AddressModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddressModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$line1 = line1;
    final lOther$line1 = other.line1;
    if (_$data.containsKey('line1') != other._$data.containsKey('line1')) {
      return false;
    }
    if (l$line1 != lOther$line1) {
      return false;
    }
    final l$line2 = line2;
    final lOther$line2 = other.line2;
    if (_$data.containsKey('line2') != other._$data.containsKey('line2')) {
      return false;
    }
    if (l$line2 != lOther$line2) {
      return false;
    }
    final l$line3 = line3;
    final lOther$line3 = other.line3;
    if (_$data.containsKey('line3') != other._$data.containsKey('line3')) {
      return false;
    }
    if (l$line3 != lOther$line3) {
      return false;
    }
    final l$line4 = line4;
    final lOther$line4 = other.line4;
    if (_$data.containsKey('line4') != other._$data.containsKey('line4')) {
      return false;
    }
    if (l$line4 != lOther$line4) {
      return false;
    }
    final l$line5 = line5;
    final lOther$line5 = other.line5;
    if (_$data.containsKey('line5') != other._$data.containsKey('line5')) {
      return false;
    }
    if (l$line5 != lOther$line5) {
      return false;
    }
    final l$line6 = line6;
    final lOther$line6 = other.line6;
    if (_$data.containsKey('line6') != other._$data.containsKey('line6')) {
      return false;
    }
    if (l$line6 != lOther$line6) {
      return false;
    }
    final l$postcode = postcode;
    final lOther$postcode = other.postcode;
    if (_$data.containsKey('postcode') !=
        other._$data.containsKey('postcode')) {
      return false;
    }
    if (l$postcode != lOther$postcode) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (_$data.containsKey('geoLocation') !=
        other._$data.containsKey('geoLocation')) {
      return false;
    }
    if (l$geoLocation != lOther$geoLocation) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$shortAddress = shortAddress;
    final lOther$shortAddress = other.shortAddress;
    if (_$data.containsKey('shortAddress') !=
        other._$data.containsKey('shortAddress')) {
      return false;
    }
    if (l$shortAddress != lOther$shortAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$line1 = line1;
    final l$line2 = line2;
    final l$line3 = line3;
    final l$line4 = line4;
    final l$line5 = line5;
    final l$line6 = line6;
    final l$postcode = postcode;
    final l$geoLocation = geoLocation;
    final l$country = country;
    final l$shortAddress = shortAddress;
    return Object.hashAll([
      _$data.containsKey('line1') ? l$line1 : const {},
      _$data.containsKey('line2') ? l$line2 : const {},
      _$data.containsKey('line3') ? l$line3 : const {},
      _$data.containsKey('line4') ? l$line4 : const {},
      _$data.containsKey('line5') ? l$line5 : const {},
      _$data.containsKey('line6') ? l$line6 : const {},
      _$data.containsKey('postcode') ? l$postcode : const {},
      _$data.containsKey('geoLocation') ? l$geoLocation : const {},
      _$data.containsKey('country') ? l$country : const {},
      _$data.containsKey('shortAddress') ? l$shortAddress : const {},
    ]);
  }
}

abstract class CopyWith$Input$AddressModelSortInput<TRes> {
  factory CopyWith$Input$AddressModelSortInput(
    Input$AddressModelSortInput instance,
    TRes Function(Input$AddressModelSortInput) then,
  ) = _CopyWithImpl$Input$AddressModelSortInput;

  factory CopyWith$Input$AddressModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddressModelSortInput;

  TRes call({
    Enum$SortEnumType? line1,
    Enum$SortEnumType? line2,
    Enum$SortEnumType? line3,
    Enum$SortEnumType? line4,
    Enum$SortEnumType? line5,
    Enum$SortEnumType? line6,
    Enum$SortEnumType? postcode,
    Input$GeoLocationModelSortInput? geoLocation,
    Enum$SortEnumType? country,
    Enum$SortEnumType? shortAddress,
  });
  CopyWith$Input$GeoLocationModelSortInput<TRes> get geoLocation;
}

class _CopyWithImpl$Input$AddressModelSortInput<TRes>
    implements CopyWith$Input$AddressModelSortInput<TRes> {
  _CopyWithImpl$Input$AddressModelSortInput(
    this._instance,
    this._then,
  );

  final Input$AddressModelSortInput _instance;

  final TRes Function(Input$AddressModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? line1 = _undefined,
    Object? line2 = _undefined,
    Object? line3 = _undefined,
    Object? line4 = _undefined,
    Object? line5 = _undefined,
    Object? line6 = _undefined,
    Object? postcode = _undefined,
    Object? geoLocation = _undefined,
    Object? country = _undefined,
    Object? shortAddress = _undefined,
  }) =>
      _then(Input$AddressModelSortInput._({
        ..._instance._$data,
        if (line1 != _undefined) 'line1': (line1 as Enum$SortEnumType?),
        if (line2 != _undefined) 'line2': (line2 as Enum$SortEnumType?),
        if (line3 != _undefined) 'line3': (line3 as Enum$SortEnumType?),
        if (line4 != _undefined) 'line4': (line4 as Enum$SortEnumType?),
        if (line5 != _undefined) 'line5': (line5 as Enum$SortEnumType?),
        if (line6 != _undefined) 'line6': (line6 as Enum$SortEnumType?),
        if (postcode != _undefined)
          'postcode': (postcode as Enum$SortEnumType?),
        if (geoLocation != _undefined)
          'geoLocation': (geoLocation as Input$GeoLocationModelSortInput?),
        if (country != _undefined) 'country': (country as Enum$SortEnumType?),
        if (shortAddress != _undefined)
          'shortAddress': (shortAddress as Enum$SortEnumType?),
      }));

  CopyWith$Input$GeoLocationModelSortInput<TRes> get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Input$GeoLocationModelSortInput.stub(_then(_instance))
        : CopyWith$Input$GeoLocationModelSortInput(
            local$geoLocation, (e) => call(geoLocation: e));
  }
}

class _CopyWithStubImpl$Input$AddressModelSortInput<TRes>
    implements CopyWith$Input$AddressModelSortInput<TRes> {
  _CopyWithStubImpl$Input$AddressModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? line1,
    Enum$SortEnumType? line2,
    Enum$SortEnumType? line3,
    Enum$SortEnumType? line4,
    Enum$SortEnumType? line5,
    Enum$SortEnumType? line6,
    Enum$SortEnumType? postcode,
    Input$GeoLocationModelSortInput? geoLocation,
    Enum$SortEnumType? country,
    Enum$SortEnumType? shortAddress,
  }) =>
      _res;

  CopyWith$Input$GeoLocationModelSortInput<TRes> get geoLocation =>
      CopyWith$Input$GeoLocationModelSortInput.stub(_res);
}

class Input$BankAccountModelFilterInput {
  factory Input$BankAccountModelFilterInput({
    List<Input$BankAccountModelFilterInput>? and,
    List<Input$BankAccountModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? sortCode,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? bankName,
    Input$StringOperationFilterInput? accountHolderName,
  }) =>
      Input$BankAccountModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (sortCode != null) r'sortCode': sortCode,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (bankName != null) r'bankName': bankName,
        if (accountHolderName != null) r'accountHolderName': accountHolderName,
      });

  Input$BankAccountModelFilterInput._(this._$data);

  factory Input$BankAccountModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$BankAccountModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$BankAccountModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('sortCode')) {
      final l$sortCode = data['sortCode'];
      result$data['sortCode'] = l$sortCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$sortCode as Map<String, dynamic>));
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accountNumber as Map<String, dynamic>));
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = l$bankName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$bankName as Map<String, dynamic>));
    }
    if (data.containsKey('accountHolderName')) {
      final l$accountHolderName = data['accountHolderName'];
      result$data['accountHolderName'] = l$accountHolderName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accountHolderName as Map<String, dynamic>));
    }
    return Input$BankAccountModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$BankAccountModelFilterInput>? get and =>
      (_$data['and'] as List<Input$BankAccountModelFilterInput>?);

  List<Input$BankAccountModelFilterInput>? get or =>
      (_$data['or'] as List<Input$BankAccountModelFilterInput>?);

  Input$IntOperationFilterInput? get id =>
      (_$data['id'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get sortCode =>
      (_$data['sortCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accountNumber =>
      (_$data['accountNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get bankName =>
      (_$data['bankName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accountHolderName =>
      (_$data['accountHolderName'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('sortCode')) {
      final l$sortCode = sortCode;
      result$data['sortCode'] = l$sortCode?.toJson();
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber?.toJson();
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName?.toJson();
    }
    if (_$data.containsKey('accountHolderName')) {
      final l$accountHolderName = accountHolderName;
      result$data['accountHolderName'] = l$accountHolderName?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$BankAccountModelFilterInput<Input$BankAccountModelFilterInput>
      get copyWith => CopyWith$Input$BankAccountModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BankAccountModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (_$data.containsKey('sortCode') !=
        other._$data.containsKey('sortCode')) {
      return false;
    }
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (_$data.containsKey('accountHolderName') !=
        other._$data.containsKey('accountHolderName')) {
      return false;
    }
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('sortCode') ? l$sortCode : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('accountHolderName') ? l$accountHolderName : const {},
    ]);
  }
}

abstract class CopyWith$Input$BankAccountModelFilterInput<TRes> {
  factory CopyWith$Input$BankAccountModelFilterInput(
    Input$BankAccountModelFilterInput instance,
    TRes Function(Input$BankAccountModelFilterInput) then,
  ) = _CopyWithImpl$Input$BankAccountModelFilterInput;

  factory CopyWith$Input$BankAccountModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BankAccountModelFilterInput;

  TRes call({
    List<Input$BankAccountModelFilterInput>? and,
    List<Input$BankAccountModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? sortCode,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? bankName,
    Input$StringOperationFilterInput? accountHolderName,
  });
  TRes and(
      Iterable<Input$BankAccountModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$BankAccountModelFilterInput<
                      Input$BankAccountModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$BankAccountModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$BankAccountModelFilterInput<
                      Input$BankAccountModelFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get sortCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get bankName;
  CopyWith$Input$StringOperationFilterInput<TRes> get accountHolderName;
}

class _CopyWithImpl$Input$BankAccountModelFilterInput<TRes>
    implements CopyWith$Input$BankAccountModelFilterInput<TRes> {
  _CopyWithImpl$Input$BankAccountModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$BankAccountModelFilterInput _instance;

  final TRes Function(Input$BankAccountModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
  }) =>
      _then(Input$BankAccountModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$BankAccountModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$BankAccountModelFilterInput>?),
        if (id != _undefined) 'id': (id as Input$IntOperationFilterInput?),
        if (sortCode != _undefined)
          'sortCode': (sortCode as Input$StringOperationFilterInput?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as Input$StringOperationFilterInput?),
        if (bankName != _undefined)
          'bankName': (bankName as Input$StringOperationFilterInput?),
        if (accountHolderName != _undefined)
          'accountHolderName':
              (accountHolderName as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$BankAccountModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$BankAccountModelFilterInput<
                          Input$BankAccountModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$BankAccountModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$BankAccountModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$BankAccountModelFilterInput<
                          Input$BankAccountModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$BankAccountModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get sortCode {
    final local$sortCode = _instance.sortCode;
    return local$sortCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$sortCode, (e) => call(sortCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber {
    final local$accountNumber = _instance.accountNumber;
    return local$accountNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accountNumber, (e) => call(accountNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get bankName {
    final local$bankName = _instance.bankName;
    return local$bankName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$bankName, (e) => call(bankName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accountHolderName {
    final local$accountHolderName = _instance.accountHolderName;
    return local$accountHolderName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accountHolderName, (e) => call(accountHolderName: e));
  }
}

class _CopyWithStubImpl$Input$BankAccountModelFilterInput<TRes>
    implements CopyWith$Input$BankAccountModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$BankAccountModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$BankAccountModelFilterInput>? and,
    List<Input$BankAccountModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? sortCode,
    Input$StringOperationFilterInput? accountNumber,
    Input$StringOperationFilterInput? bankName,
    Input$StringOperationFilterInput? accountHolderName,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get id =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get sortCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accountNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get bankName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accountHolderName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$BankAccountModelSortInput {
  factory Input$BankAccountModelSortInput({
    Enum$SortEnumType? id,
    Enum$SortEnumType? sortCode,
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? bankName,
    Enum$SortEnumType? accountHolderName,
  }) =>
      Input$BankAccountModelSortInput._({
        if (id != null) r'id': id,
        if (sortCode != null) r'sortCode': sortCode,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (bankName != null) r'bankName': bankName,
        if (accountHolderName != null) r'accountHolderName': accountHolderName,
      });

  Input$BankAccountModelSortInput._(this._$data);

  factory Input$BankAccountModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('sortCode')) {
      final l$sortCode = data['sortCode'];
      result$data['sortCode'] = l$sortCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$sortCode as String));
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$accountNumber as String));
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = l$bankName == null
          ? null
          : fromJson$Enum$SortEnumType((l$bankName as String));
    }
    if (data.containsKey('accountHolderName')) {
      final l$accountHolderName = data['accountHolderName'];
      result$data['accountHolderName'] = l$accountHolderName == null
          ? null
          : fromJson$Enum$SortEnumType((l$accountHolderName as String));
    }
    return Input$BankAccountModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Enum$SortEnumType? get sortCode => (_$data['sortCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accountNumber =>
      (_$data['accountNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get bankName => (_$data['bankName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get accountHolderName =>
      (_$data['accountHolderName'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('sortCode')) {
      final l$sortCode = sortCode;
      result$data['sortCode'] =
          l$sortCode == null ? null : toJson$Enum$SortEnumType(l$sortCode);
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$accountNumber);
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] =
          l$bankName == null ? null : toJson$Enum$SortEnumType(l$bankName);
    }
    if (_$data.containsKey('accountHolderName')) {
      final l$accountHolderName = accountHolderName;
      result$data['accountHolderName'] = l$accountHolderName == null
          ? null
          : toJson$Enum$SortEnumType(l$accountHolderName);
    }
    return result$data;
  }

  CopyWith$Input$BankAccountModelSortInput<Input$BankAccountModelSortInput>
      get copyWith => CopyWith$Input$BankAccountModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BankAccountModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (_$data.containsKey('sortCode') !=
        other._$data.containsKey('sortCode')) {
      return false;
    }
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (_$data.containsKey('accountHolderName') !=
        other._$data.containsKey('accountHolderName')) {
      return false;
    }
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('sortCode') ? l$sortCode : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('accountHolderName') ? l$accountHolderName : const {},
    ]);
  }
}

abstract class CopyWith$Input$BankAccountModelSortInput<TRes> {
  factory CopyWith$Input$BankAccountModelSortInput(
    Input$BankAccountModelSortInput instance,
    TRes Function(Input$BankAccountModelSortInput) then,
  ) = _CopyWithImpl$Input$BankAccountModelSortInput;

  factory CopyWith$Input$BankAccountModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BankAccountModelSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? sortCode,
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? bankName,
    Enum$SortEnumType? accountHolderName,
  });
}

class _CopyWithImpl$Input$BankAccountModelSortInput<TRes>
    implements CopyWith$Input$BankAccountModelSortInput<TRes> {
  _CopyWithImpl$Input$BankAccountModelSortInput(
    this._instance,
    this._then,
  );

  final Input$BankAccountModelSortInput _instance;

  final TRes Function(Input$BankAccountModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
  }) =>
      _then(Input$BankAccountModelSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (sortCode != _undefined)
          'sortCode': (sortCode as Enum$SortEnumType?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as Enum$SortEnumType?),
        if (bankName != _undefined)
          'bankName': (bankName as Enum$SortEnumType?),
        if (accountHolderName != _undefined)
          'accountHolderName': (accountHolderName as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$BankAccountModelSortInput<TRes>
    implements CopyWith$Input$BankAccountModelSortInput<TRes> {
  _CopyWithStubImpl$Input$BankAccountModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Enum$SortEnumType? sortCode,
    Enum$SortEnumType? accountNumber,
    Enum$SortEnumType? bankName,
    Enum$SortEnumType? accountHolderName,
  }) =>
      _res;
}

class Input$BatchQuoteInput {
  factory Input$BatchQuoteInput({
    int? batchQuoteId,
    required String territory,
  }) =>
      Input$BatchQuoteInput._({
        if (batchQuoteId != null) r'batchQuoteId': batchQuoteId,
        r'territory': territory,
      });

  Input$BatchQuoteInput._(this._$data);

  factory Input$BatchQuoteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = data['batchQuoteId'];
      result$data['batchQuoteId'] = (l$batchQuoteId as int?);
    }
    final l$territory = data['territory'];
    result$data['territory'] = (l$territory as String);
    return Input$BatchQuoteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get batchQuoteId => (_$data['batchQuoteId'] as int?);

  String get territory => (_$data['territory'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = batchQuoteId;
      result$data['batchQuoteId'] = l$batchQuoteId;
    }
    final l$territory = territory;
    result$data['territory'] = l$territory;
    return result$data;
  }

  CopyWith$Input$BatchQuoteInput<Input$BatchQuoteInput> get copyWith =>
      CopyWith$Input$BatchQuoteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BatchQuoteInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (_$data.containsKey('batchQuoteId') !=
        other._$data.containsKey('batchQuoteId')) {
      return false;
    }
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$territory = territory;
    final lOther$territory = other.territory;
    if (l$territory != lOther$territory) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$territory = territory;
    return Object.hashAll([
      _$data.containsKey('batchQuoteId') ? l$batchQuoteId : const {},
      l$territory,
    ]);
  }
}

abstract class CopyWith$Input$BatchQuoteInput<TRes> {
  factory CopyWith$Input$BatchQuoteInput(
    Input$BatchQuoteInput instance,
    TRes Function(Input$BatchQuoteInput) then,
  ) = _CopyWithImpl$Input$BatchQuoteInput;

  factory CopyWith$Input$BatchQuoteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BatchQuoteInput;

  TRes call({
    int? batchQuoteId,
    String? territory,
  });
}

class _CopyWithImpl$Input$BatchQuoteInput<TRes>
    implements CopyWith$Input$BatchQuoteInput<TRes> {
  _CopyWithImpl$Input$BatchQuoteInput(
    this._instance,
    this._then,
  );

  final Input$BatchQuoteInput _instance;

  final TRes Function(Input$BatchQuoteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? territory = _undefined,
  }) =>
      _then(Input$BatchQuoteInput._({
        ..._instance._$data,
        if (batchQuoteId != _undefined) 'batchQuoteId': (batchQuoteId as int?),
        if (territory != _undefined && territory != null)
          'territory': (territory as String),
      }));
}

class _CopyWithStubImpl$Input$BatchQuoteInput<TRes>
    implements CopyWith$Input$BatchQuoteInput<TRes> {
  _CopyWithStubImpl$Input$BatchQuoteInput(this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    String? territory,
  }) =>
      _res;
}

class Input$BatchQuoteModelFilterInput {
  factory Input$BatchQuoteModelFilterInput({
    List<Input$BatchQuoteModelFilterInput>? and,
    List<Input$BatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$YardModelFilterInput? yard,
    Input$AccountModelFilterInput? accountModel,
    Input$ListFilterInputTypeOfActiveQuoteModelFilterInput? quotes,
    Input$QuoteTypeEnumOperationFilterInput? acquisition,
    Input$DateTimeOperationFilterInput? expires,
    Input$BooleanOperationFilterInput? hasExpired,
    Input$DateTimeOperationFilterInput? created,
    Input$PaymentMethodEnumOperationFilterInput? paymentMethod,
    Input$BooleanOperationFilterInput? sentForPayment,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$BankAccountModelFilterInput? selectedBankAccount,
    Input$QuoteSourceEnumOperationFilterInput? quoteSource,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? postCode,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? territoryCode,
    Input$StringOperationFilterInput? referenceNumber,
  }) =>
      Input$BatchQuoteModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (yard != null) r'yard': yard,
        if (accountModel != null) r'accountModel': accountModel,
        if (quotes != null) r'quotes': quotes,
        if (acquisition != null) r'acquisition': acquisition,
        if (expires != null) r'expires': expires,
        if (hasExpired != null) r'hasExpired': hasExpired,
        if (created != null) r'created': created,
        if (paymentMethod != null) r'paymentMethod': paymentMethod,
        if (sentForPayment != null) r'sentForPayment': sentForPayment,
        if (quoteStatus != null) r'quoteStatus': quoteStatus,
        if (selectedBankAccount != null)
          r'selectedBankAccount': selectedBankAccount,
        if (quoteSource != null) r'quoteSource': quoteSource,
        if (appointmentDate != null) r'appointmentDate': appointmentDate,
        if (postCode != null) r'postCode': postCode,
        if (batchQuoteBundleId != null)
          r'batchQuoteBundleId': batchQuoteBundleId,
        if (createdBy != null) r'createdBy': createdBy,
        if (yardCode != null) r'yardCode': yardCode,
        if (territoryCode != null) r'territoryCode': territoryCode,
        if (referenceNumber != null) r'referenceNumber': referenceNumber,
      });

  Input$BatchQuoteModelFilterInput._(this._$data);

  factory Input$BatchQuoteModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$BatchQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$BatchQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('yard')) {
      final l$yard = data['yard'];
      result$data['yard'] = l$yard == null
          ? null
          : Input$YardModelFilterInput.fromJson(
              (l$yard as Map<String, dynamic>));
    }
    if (data.containsKey('accountModel')) {
      final l$accountModel = data['accountModel'];
      result$data['accountModel'] = l$accountModel == null
          ? null
          : Input$AccountModelFilterInput.fromJson(
              (l$accountModel as Map<String, dynamic>));
    }
    if (data.containsKey('quotes')) {
      final l$quotes = data['quotes'];
      result$data['quotes'] = l$quotes == null
          ? null
          : Input$ListFilterInputTypeOfActiveQuoteModelFilterInput.fromJson(
              (l$quotes as Map<String, dynamic>));
    }
    if (data.containsKey('acquisition')) {
      final l$acquisition = data['acquisition'];
      result$data['acquisition'] = l$acquisition == null
          ? null
          : Input$QuoteTypeEnumOperationFilterInput.fromJson(
              (l$acquisition as Map<String, dynamic>));
    }
    if (data.containsKey('expires')) {
      final l$expires = data['expires'];
      result$data['expires'] = l$expires == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$expires as Map<String, dynamic>));
    }
    if (data.containsKey('hasExpired')) {
      final l$hasExpired = data['hasExpired'];
      result$data['hasExpired'] = l$hasExpired == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasExpired as Map<String, dynamic>));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$created as Map<String, dynamic>));
    }
    if (data.containsKey('paymentMethod')) {
      final l$paymentMethod = data['paymentMethod'];
      result$data['paymentMethod'] = l$paymentMethod == null
          ? null
          : Input$PaymentMethodEnumOperationFilterInput.fromJson(
              (l$paymentMethod as Map<String, dynamic>));
    }
    if (data.containsKey('sentForPayment')) {
      final l$sentForPayment = data['sentForPayment'];
      result$data['sentForPayment'] = l$sentForPayment == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$sentForPayment as Map<String, dynamic>));
    }
    if (data.containsKey('quoteStatus')) {
      final l$quoteStatus = data['quoteStatus'];
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : Input$QuoteStatusEnumOperationFilterInput.fromJson(
              (l$quoteStatus as Map<String, dynamic>));
    }
    if (data.containsKey('selectedBankAccount')) {
      final l$selectedBankAccount = data['selectedBankAccount'];
      result$data['selectedBankAccount'] = l$selectedBankAccount == null
          ? null
          : Input$BankAccountModelFilterInput.fromJson(
              (l$selectedBankAccount as Map<String, dynamic>));
    }
    if (data.containsKey('quoteSource')) {
      final l$quoteSource = data['quoteSource'];
      result$data['quoteSource'] = l$quoteSource == null
          ? null
          : Input$QuoteSourceEnumOperationFilterInput.fromJson(
              (l$quoteSource as Map<String, dynamic>));
    }
    if (data.containsKey('appointmentDate')) {
      final l$appointmentDate = data['appointmentDate'];
      result$data['appointmentDate'] = l$appointmentDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$appointmentDate as Map<String, dynamic>));
    }
    if (data.containsKey('postCode')) {
      final l$postCode = data['postCode'];
      result$data['postCode'] = l$postCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$postCode as Map<String, dynamic>));
    }
    if (data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = data['batchQuoteBundleId'];
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$batchQuoteBundleId as Map<String, dynamic>));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$createdBy as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$territoryCode as Map<String, dynamic>));
    }
    if (data.containsKey('referenceNumber')) {
      final l$referenceNumber = data['referenceNumber'];
      result$data['referenceNumber'] = l$referenceNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$referenceNumber as Map<String, dynamic>));
    }
    return Input$BatchQuoteModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$BatchQuoteModelFilterInput>? get and =>
      (_$data['and'] as List<Input$BatchQuoteModelFilterInput>?);

  List<Input$BatchQuoteModelFilterInput>? get or =>
      (_$data['or'] as List<Input$BatchQuoteModelFilterInput>?);

  Input$IntOperationFilterInput? get id =>
      (_$data['id'] as Input$IntOperationFilterInput?);

  Input$YardModelFilterInput? get yard =>
      (_$data['yard'] as Input$YardModelFilterInput?);

  Input$AccountModelFilterInput? get accountModel =>
      (_$data['accountModel'] as Input$AccountModelFilterInput?);

  Input$ListFilterInputTypeOfActiveQuoteModelFilterInput? get quotes =>
      (_$data['quotes']
          as Input$ListFilterInputTypeOfActiveQuoteModelFilterInput?);

  Input$QuoteTypeEnumOperationFilterInput? get acquisition =>
      (_$data['acquisition'] as Input$QuoteTypeEnumOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get expires =>
      (_$data['expires'] as Input$DateTimeOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasExpired =>
      (_$data['hasExpired'] as Input$BooleanOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get created =>
      (_$data['created'] as Input$DateTimeOperationFilterInput?);

  Input$PaymentMethodEnumOperationFilterInput? get paymentMethod =>
      (_$data['paymentMethod'] as Input$PaymentMethodEnumOperationFilterInput?);

  Input$BooleanOperationFilterInput? get sentForPayment =>
      (_$data['sentForPayment'] as Input$BooleanOperationFilterInput?);

  Input$QuoteStatusEnumOperationFilterInput? get quoteStatus =>
      (_$data['quoteStatus'] as Input$QuoteStatusEnumOperationFilterInput?);

  Input$BankAccountModelFilterInput? get selectedBankAccount =>
      (_$data['selectedBankAccount'] as Input$BankAccountModelFilterInput?);

  Input$QuoteSourceEnumOperationFilterInput? get quoteSource =>
      (_$data['quoteSource'] as Input$QuoteSourceEnumOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get appointmentDate =>
      (_$data['appointmentDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get postCode =>
      (_$data['postCode'] as Input$StringOperationFilterInput?);

  Input$UuidOperationFilterInput? get batchQuoteBundleId =>
      (_$data['batchQuoteBundleId'] as Input$UuidOperationFilterInput?);

  Input$StringOperationFilterInput? get createdBy =>
      (_$data['createdBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get territoryCode =>
      (_$data['territoryCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get referenceNumber =>
      (_$data['referenceNumber'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('yard')) {
      final l$yard = yard;
      result$data['yard'] = l$yard?.toJson();
    }
    if (_$data.containsKey('accountModel')) {
      final l$accountModel = accountModel;
      result$data['accountModel'] = l$accountModel?.toJson();
    }
    if (_$data.containsKey('quotes')) {
      final l$quotes = quotes;
      result$data['quotes'] = l$quotes?.toJson();
    }
    if (_$data.containsKey('acquisition')) {
      final l$acquisition = acquisition;
      result$data['acquisition'] = l$acquisition?.toJson();
    }
    if (_$data.containsKey('expires')) {
      final l$expires = expires;
      result$data['expires'] = l$expires?.toJson();
    }
    if (_$data.containsKey('hasExpired')) {
      final l$hasExpired = hasExpired;
      result$data['hasExpired'] = l$hasExpired?.toJson();
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] = l$created?.toJson();
    }
    if (_$data.containsKey('paymentMethod')) {
      final l$paymentMethod = paymentMethod;
      result$data['paymentMethod'] = l$paymentMethod?.toJson();
    }
    if (_$data.containsKey('sentForPayment')) {
      final l$sentForPayment = sentForPayment;
      result$data['sentForPayment'] = l$sentForPayment?.toJson();
    }
    if (_$data.containsKey('quoteStatus')) {
      final l$quoteStatus = quoteStatus;
      result$data['quoteStatus'] = l$quoteStatus?.toJson();
    }
    if (_$data.containsKey('selectedBankAccount')) {
      final l$selectedBankAccount = selectedBankAccount;
      result$data['selectedBankAccount'] = l$selectedBankAccount?.toJson();
    }
    if (_$data.containsKey('quoteSource')) {
      final l$quoteSource = quoteSource;
      result$data['quoteSource'] = l$quoteSource?.toJson();
    }
    if (_$data.containsKey('appointmentDate')) {
      final l$appointmentDate = appointmentDate;
      result$data['appointmentDate'] = l$appointmentDate?.toJson();
    }
    if (_$data.containsKey('postCode')) {
      final l$postCode = postCode;
      result$data['postCode'] = l$postCode?.toJson();
    }
    if (_$data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = batchQuoteBundleId;
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId?.toJson();
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode?.toJson();
    }
    if (_$data.containsKey('referenceNumber')) {
      final l$referenceNumber = referenceNumber;
      result$data['referenceNumber'] = l$referenceNumber?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$BatchQuoteModelFilterInput<Input$BatchQuoteModelFilterInput>
      get copyWith => CopyWith$Input$BatchQuoteModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BatchQuoteModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (_$data.containsKey('yard') != other._$data.containsKey('yard')) {
      return false;
    }
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$accountModel = accountModel;
    final lOther$accountModel = other.accountModel;
    if (_$data.containsKey('accountModel') !=
        other._$data.containsKey('accountModel')) {
      return false;
    }
    if (l$accountModel != lOther$accountModel) {
      return false;
    }
    final l$quotes = quotes;
    final lOther$quotes = other.quotes;
    if (_$data.containsKey('quotes') != other._$data.containsKey('quotes')) {
      return false;
    }
    if (l$quotes != lOther$quotes) {
      return false;
    }
    final l$acquisition = acquisition;
    final lOther$acquisition = other.acquisition;
    if (_$data.containsKey('acquisition') !=
        other._$data.containsKey('acquisition')) {
      return false;
    }
    if (l$acquisition != lOther$acquisition) {
      return false;
    }
    final l$expires = expires;
    final lOther$expires = other.expires;
    if (_$data.containsKey('expires') != other._$data.containsKey('expires')) {
      return false;
    }
    if (l$expires != lOther$expires) {
      return false;
    }
    final l$hasExpired = hasExpired;
    final lOther$hasExpired = other.hasExpired;
    if (_$data.containsKey('hasExpired') !=
        other._$data.containsKey('hasExpired')) {
      return false;
    }
    if (l$hasExpired != lOther$hasExpired) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (_$data.containsKey('paymentMethod') !=
        other._$data.containsKey('paymentMethod')) {
      return false;
    }
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$sentForPayment = sentForPayment;
    final lOther$sentForPayment = other.sentForPayment;
    if (_$data.containsKey('sentForPayment') !=
        other._$data.containsKey('sentForPayment')) {
      return false;
    }
    if (l$sentForPayment != lOther$sentForPayment) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (_$data.containsKey('quoteStatus') !=
        other._$data.containsKey('quoteStatus')) {
      return false;
    }
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$selectedBankAccount = selectedBankAccount;
    final lOther$selectedBankAccount = other.selectedBankAccount;
    if (_$data.containsKey('selectedBankAccount') !=
        other._$data.containsKey('selectedBankAccount')) {
      return false;
    }
    if (l$selectedBankAccount != lOther$selectedBankAccount) {
      return false;
    }
    final l$quoteSource = quoteSource;
    final lOther$quoteSource = other.quoteSource;
    if (_$data.containsKey('quoteSource') !=
        other._$data.containsKey('quoteSource')) {
      return false;
    }
    if (l$quoteSource != lOther$quoteSource) {
      return false;
    }
    final l$appointmentDate = appointmentDate;
    final lOther$appointmentDate = other.appointmentDate;
    if (_$data.containsKey('appointmentDate') !=
        other._$data.containsKey('appointmentDate')) {
      return false;
    }
    if (l$appointmentDate != lOther$appointmentDate) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (_$data.containsKey('postCode') !=
        other._$data.containsKey('postCode')) {
      return false;
    }
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final lOther$batchQuoteBundleId = other.batchQuoteBundleId;
    if (_$data.containsKey('batchQuoteBundleId') !=
        other._$data.containsKey('batchQuoteBundleId')) {
      return false;
    }
    if (l$batchQuoteBundleId != lOther$batchQuoteBundleId) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
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
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$referenceNumber = referenceNumber;
    final lOther$referenceNumber = other.referenceNumber;
    if (_$data.containsKey('referenceNumber') !=
        other._$data.containsKey('referenceNumber')) {
      return false;
    }
    if (l$referenceNumber != lOther$referenceNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$yard = yard;
    final l$accountModel = accountModel;
    final l$quotes = quotes;
    final l$acquisition = acquisition;
    final l$expires = expires;
    final l$hasExpired = hasExpired;
    final l$created = created;
    final l$paymentMethod = paymentMethod;
    final l$sentForPayment = sentForPayment;
    final l$quoteStatus = quoteStatus;
    final l$selectedBankAccount = selectedBankAccount;
    final l$quoteSource = quoteSource;
    final l$appointmentDate = appointmentDate;
    final l$postCode = postCode;
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final l$createdBy = createdBy;
    final l$yardCode = yardCode;
    final l$territoryCode = territoryCode;
    final l$referenceNumber = referenceNumber;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('yard') ? l$yard : const {},
      _$data.containsKey('accountModel') ? l$accountModel : const {},
      _$data.containsKey('quotes') ? l$quotes : const {},
      _$data.containsKey('acquisition') ? l$acquisition : const {},
      _$data.containsKey('expires') ? l$expires : const {},
      _$data.containsKey('hasExpired') ? l$hasExpired : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('paymentMethod') ? l$paymentMethod : const {},
      _$data.containsKey('sentForPayment') ? l$sentForPayment : const {},
      _$data.containsKey('quoteStatus') ? l$quoteStatus : const {},
      _$data.containsKey('selectedBankAccount')
          ? l$selectedBankAccount
          : const {},
      _$data.containsKey('quoteSource') ? l$quoteSource : const {},
      _$data.containsKey('appointmentDate') ? l$appointmentDate : const {},
      _$data.containsKey('postCode') ? l$postCode : const {},
      _$data.containsKey('batchQuoteBundleId')
          ? l$batchQuoteBundleId
          : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('territoryCode') ? l$territoryCode : const {},
      _$data.containsKey('referenceNumber') ? l$referenceNumber : const {},
    ]);
  }
}

abstract class CopyWith$Input$BatchQuoteModelFilterInput<TRes> {
  factory CopyWith$Input$BatchQuoteModelFilterInput(
    Input$BatchQuoteModelFilterInput instance,
    TRes Function(Input$BatchQuoteModelFilterInput) then,
  ) = _CopyWithImpl$Input$BatchQuoteModelFilterInput;

  factory CopyWith$Input$BatchQuoteModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BatchQuoteModelFilterInput;

  TRes call({
    List<Input$BatchQuoteModelFilterInput>? and,
    List<Input$BatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$YardModelFilterInput? yard,
    Input$AccountModelFilterInput? accountModel,
    Input$ListFilterInputTypeOfActiveQuoteModelFilterInput? quotes,
    Input$QuoteTypeEnumOperationFilterInput? acquisition,
    Input$DateTimeOperationFilterInput? expires,
    Input$BooleanOperationFilterInput? hasExpired,
    Input$DateTimeOperationFilterInput? created,
    Input$PaymentMethodEnumOperationFilterInput? paymentMethod,
    Input$BooleanOperationFilterInput? sentForPayment,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$BankAccountModelFilterInput? selectedBankAccount,
    Input$QuoteSourceEnumOperationFilterInput? quoteSource,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? postCode,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? territoryCode,
    Input$StringOperationFilterInput? referenceNumber,
  });
  TRes and(
      Iterable<Input$BatchQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$BatchQuoteModelFilterInput<
                      Input$BatchQuoteModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$BatchQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$BatchQuoteModelFilterInput<
                      Input$BatchQuoteModelFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get id;
  CopyWith$Input$YardModelFilterInput<TRes> get yard;
  CopyWith$Input$AccountModelFilterInput<TRes> get accountModel;
  CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes>
      get quotes;
  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get acquisition;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasExpired;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created;
  CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes> get paymentMethod;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get sentForPayment;
  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus;
  CopyWith$Input$BankAccountModelFilterInput<TRes> get selectedBankAccount;
  CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> get quoteSource;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get postCode;
  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId;
  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get referenceNumber;
}

class _CopyWithImpl$Input$BatchQuoteModelFilterInput<TRes>
    implements CopyWith$Input$BatchQuoteModelFilterInput<TRes> {
  _CopyWithImpl$Input$BatchQuoteModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$BatchQuoteModelFilterInput _instance;

  final TRes Function(Input$BatchQuoteModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? yard = _undefined,
    Object? accountModel = _undefined,
    Object? quotes = _undefined,
    Object? acquisition = _undefined,
    Object? expires = _undefined,
    Object? hasExpired = _undefined,
    Object? created = _undefined,
    Object? paymentMethod = _undefined,
    Object? sentForPayment = _undefined,
    Object? quoteStatus = _undefined,
    Object? selectedBankAccount = _undefined,
    Object? quoteSource = _undefined,
    Object? appointmentDate = _undefined,
    Object? postCode = _undefined,
    Object? batchQuoteBundleId = _undefined,
    Object? createdBy = _undefined,
    Object? yardCode = _undefined,
    Object? territoryCode = _undefined,
    Object? referenceNumber = _undefined,
  }) =>
      _then(Input$BatchQuoteModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$BatchQuoteModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$BatchQuoteModelFilterInput>?),
        if (id != _undefined) 'id': (id as Input$IntOperationFilterInput?),
        if (yard != _undefined) 'yard': (yard as Input$YardModelFilterInput?),
        if (accountModel != _undefined)
          'accountModel': (accountModel as Input$AccountModelFilterInput?),
        if (quotes != _undefined)
          'quotes': (quotes
              as Input$ListFilterInputTypeOfActiveQuoteModelFilterInput?),
        if (acquisition != _undefined)
          'acquisition':
              (acquisition as Input$QuoteTypeEnumOperationFilterInput?),
        if (expires != _undefined)
          'expires': (expires as Input$DateTimeOperationFilterInput?),
        if (hasExpired != _undefined)
          'hasExpired': (hasExpired as Input$BooleanOperationFilterInput?),
        if (created != _undefined)
          'created': (created as Input$DateTimeOperationFilterInput?),
        if (paymentMethod != _undefined)
          'paymentMethod':
              (paymentMethod as Input$PaymentMethodEnumOperationFilterInput?),
        if (sentForPayment != _undefined)
          'sentForPayment':
              (sentForPayment as Input$BooleanOperationFilterInput?),
        if (quoteStatus != _undefined)
          'quoteStatus':
              (quoteStatus as Input$QuoteStatusEnumOperationFilterInput?),
        if (selectedBankAccount != _undefined)
          'selectedBankAccount':
              (selectedBankAccount as Input$BankAccountModelFilterInput?),
        if (quoteSource != _undefined)
          'quoteSource':
              (quoteSource as Input$QuoteSourceEnumOperationFilterInput?),
        if (appointmentDate != _undefined)
          'appointmentDate':
              (appointmentDate as Input$DateTimeOperationFilterInput?),
        if (postCode != _undefined)
          'postCode': (postCode as Input$StringOperationFilterInput?),
        if (batchQuoteBundleId != _undefined)
          'batchQuoteBundleId':
              (batchQuoteBundleId as Input$UuidOperationFilterInput?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Input$StringOperationFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as Input$StringOperationFilterInput?),
        if (referenceNumber != _undefined)
          'referenceNumber':
              (referenceNumber as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$BatchQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$BatchQuoteModelFilterInput<
                          Input$BatchQuoteModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$BatchQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$BatchQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$BatchQuoteModelFilterInput<
                          Input$BatchQuoteModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$BatchQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(local$id, (e) => call(id: e));
  }

  CopyWith$Input$YardModelFilterInput<TRes> get yard {
    final local$yard = _instance.yard;
    return local$yard == null
        ? CopyWith$Input$YardModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$YardModelFilterInput(local$yard, (e) => call(yard: e));
  }

  CopyWith$Input$AccountModelFilterInput<TRes> get accountModel {
    final local$accountModel = _instance.accountModel;
    return local$accountModel == null
        ? CopyWith$Input$AccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$AccountModelFilterInput(
            local$accountModel, (e) => call(accountModel: e));
  }

  CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes>
      get quotes {
    final local$quotes = _instance.quotes;
    return local$quotes == null
        ? CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput(
            local$quotes, (e) => call(quotes: e));
  }

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get acquisition {
    final local$acquisition = _instance.acquisition;
    return local$acquisition == null
        ? CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteTypeEnumOperationFilterInput(
            local$acquisition, (e) => call(acquisition: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires {
    final local$expires = _instance.expires;
    return local$expires == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$expires, (e) => call(expires: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasExpired {
    final local$hasExpired = _instance.hasExpired;
    return local$hasExpired == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasExpired, (e) => call(hasExpired: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created {
    final local$created = _instance.created;
    return local$created == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$created, (e) => call(created: e));
  }

  CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes> get paymentMethod {
    final local$paymentMethod = _instance.paymentMethod;
    return local$paymentMethod == null
        ? CopyWith$Input$PaymentMethodEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$PaymentMethodEnumOperationFilterInput(
            local$paymentMethod, (e) => call(paymentMethod: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get sentForPayment {
    final local$sentForPayment = _instance.sentForPayment;
    return local$sentForPayment == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$sentForPayment, (e) => call(sentForPayment: e));
  }

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus {
    final local$quoteStatus = _instance.quoteStatus;
    return local$quoteStatus == null
        ? CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteStatusEnumOperationFilterInput(
            local$quoteStatus, (e) => call(quoteStatus: e));
  }

  CopyWith$Input$BankAccountModelFilterInput<TRes> get selectedBankAccount {
    final local$selectedBankAccount = _instance.selectedBankAccount;
    return local$selectedBankAccount == null
        ? CopyWith$Input$BankAccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelFilterInput(
            local$selectedBankAccount, (e) => call(selectedBankAccount: e));
  }

  CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> get quoteSource {
    final local$quoteSource = _instance.quoteSource;
    return local$quoteSource == null
        ? CopyWith$Input$QuoteSourceEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteSourceEnumOperationFilterInput(
            local$quoteSource, (e) => call(quoteSource: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate {
    final local$appointmentDate = _instance.appointmentDate;
    return local$appointmentDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$appointmentDate, (e) => call(appointmentDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get postCode {
    final local$postCode = _instance.postCode;
    return local$postCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$postCode, (e) => call(postCode: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId {
    final local$batchQuoteBundleId = _instance.batchQuoteBundleId;
    return local$batchQuoteBundleId == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$batchQuoteBundleId, (e) => call(batchQuoteBundleId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy {
    final local$createdBy = _instance.createdBy;
    return local$createdBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$createdBy, (e) => call(createdBy: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode {
    final local$territoryCode = _instance.territoryCode;
    return local$territoryCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$territoryCode, (e) => call(territoryCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get referenceNumber {
    final local$referenceNumber = _instance.referenceNumber;
    return local$referenceNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$referenceNumber, (e) => call(referenceNumber: e));
  }
}

class _CopyWithStubImpl$Input$BatchQuoteModelFilterInput<TRes>
    implements CopyWith$Input$BatchQuoteModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$BatchQuoteModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$BatchQuoteModelFilterInput>? and,
    List<Input$BatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$YardModelFilterInput? yard,
    Input$AccountModelFilterInput? accountModel,
    Input$ListFilterInputTypeOfActiveQuoteModelFilterInput? quotes,
    Input$QuoteTypeEnumOperationFilterInput? acquisition,
    Input$DateTimeOperationFilterInput? expires,
    Input$BooleanOperationFilterInput? hasExpired,
    Input$DateTimeOperationFilterInput? created,
    Input$PaymentMethodEnumOperationFilterInput? paymentMethod,
    Input$BooleanOperationFilterInput? sentForPayment,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$BankAccountModelFilterInput? selectedBankAccount,
    Input$QuoteSourceEnumOperationFilterInput? quoteSource,
    Input$DateTimeOperationFilterInput? appointmentDate,
    Input$StringOperationFilterInput? postCode,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
    Input$StringOperationFilterInput? createdBy,
    Input$StringOperationFilterInput? yardCode,
    Input$StringOperationFilterInput? territoryCode,
    Input$StringOperationFilterInput? referenceNumber,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get id =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$YardModelFilterInput<TRes> get yard =>
      CopyWith$Input$YardModelFilterInput.stub(_res);

  CopyWith$Input$AccountModelFilterInput<TRes> get accountModel =>
      CopyWith$Input$AccountModelFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes>
      get quotes =>
          CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput.stub(
              _res);

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get acquisition =>
      CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expires =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasExpired =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get created =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes>
      get paymentMethod =>
          CopyWith$Input$PaymentMethodEnumOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get sentForPayment =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus =>
      CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(_res);

  CopyWith$Input$BankAccountModelFilterInput<TRes> get selectedBankAccount =>
      CopyWith$Input$BankAccountModelFilterInput.stub(_res);

  CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> get quoteSource =>
      CopyWith$Input$QuoteSourceEnumOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get appointmentDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get postCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get createdBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get referenceNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$BatchQuoteModelSortInput {
  factory Input$BatchQuoteModelSortInput({
    Enum$SortEnumType? id,
    Input$YardModelSortInput? yard,
    Input$AccountModelSortInput? accountModel,
    Enum$SortEnumType? acquisition,
    Enum$SortEnumType? expires,
    Enum$SortEnumType? hasExpired,
    Enum$SortEnumType? created,
    Enum$SortEnumType? paymentMethod,
    Enum$SortEnumType? sentForPayment,
    Enum$SortEnumType? quoteStatus,
    Input$BankAccountModelSortInput? selectedBankAccount,
    Enum$SortEnumType? quoteSource,
    Enum$SortEnumType? appointmentDate,
    Enum$SortEnumType? postCode,
    Enum$SortEnumType? batchQuoteBundleId,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? territoryCode,
    Enum$SortEnumType? referenceNumber,
  }) =>
      Input$BatchQuoteModelSortInput._({
        if (id != null) r'id': id,
        if (yard != null) r'yard': yard,
        if (accountModel != null) r'accountModel': accountModel,
        if (acquisition != null) r'acquisition': acquisition,
        if (expires != null) r'expires': expires,
        if (hasExpired != null) r'hasExpired': hasExpired,
        if (created != null) r'created': created,
        if (paymentMethod != null) r'paymentMethod': paymentMethod,
        if (sentForPayment != null) r'sentForPayment': sentForPayment,
        if (quoteStatus != null) r'quoteStatus': quoteStatus,
        if (selectedBankAccount != null)
          r'selectedBankAccount': selectedBankAccount,
        if (quoteSource != null) r'quoteSource': quoteSource,
        if (appointmentDate != null) r'appointmentDate': appointmentDate,
        if (postCode != null) r'postCode': postCode,
        if (batchQuoteBundleId != null)
          r'batchQuoteBundleId': batchQuoteBundleId,
        if (createdBy != null) r'createdBy': createdBy,
        if (yardCode != null) r'yardCode': yardCode,
        if (territoryCode != null) r'territoryCode': territoryCode,
        if (referenceNumber != null) r'referenceNumber': referenceNumber,
      });

  Input$BatchQuoteModelSortInput._(this._$data);

  factory Input$BatchQuoteModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortEnumType((l$id as String));
    }
    if (data.containsKey('yard')) {
      final l$yard = data['yard'];
      result$data['yard'] = l$yard == null
          ? null
          : Input$YardModelSortInput.fromJson((l$yard as Map<String, dynamic>));
    }
    if (data.containsKey('accountModel')) {
      final l$accountModel = data['accountModel'];
      result$data['accountModel'] = l$accountModel == null
          ? null
          : Input$AccountModelSortInput.fromJson(
              (l$accountModel as Map<String, dynamic>));
    }
    if (data.containsKey('acquisition')) {
      final l$acquisition = data['acquisition'];
      result$data['acquisition'] = l$acquisition == null
          ? null
          : fromJson$Enum$SortEnumType((l$acquisition as String));
    }
    if (data.containsKey('expires')) {
      final l$expires = data['expires'];
      result$data['expires'] = l$expires == null
          ? null
          : fromJson$Enum$SortEnumType((l$expires as String));
    }
    if (data.containsKey('hasExpired')) {
      final l$hasExpired = data['hasExpired'];
      result$data['hasExpired'] = l$hasExpired == null
          ? null
          : fromJson$Enum$SortEnumType((l$hasExpired as String));
    }
    if (data.containsKey('created')) {
      final l$created = data['created'];
      result$data['created'] = l$created == null
          ? null
          : fromJson$Enum$SortEnumType((l$created as String));
    }
    if (data.containsKey('paymentMethod')) {
      final l$paymentMethod = data['paymentMethod'];
      result$data['paymentMethod'] = l$paymentMethod == null
          ? null
          : fromJson$Enum$SortEnumType((l$paymentMethod as String));
    }
    if (data.containsKey('sentForPayment')) {
      final l$sentForPayment = data['sentForPayment'];
      result$data['sentForPayment'] = l$sentForPayment == null
          ? null
          : fromJson$Enum$SortEnumType((l$sentForPayment as String));
    }
    if (data.containsKey('quoteStatus')) {
      final l$quoteStatus = data['quoteStatus'];
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$quoteStatus as String));
    }
    if (data.containsKey('selectedBankAccount')) {
      final l$selectedBankAccount = data['selectedBankAccount'];
      result$data['selectedBankAccount'] = l$selectedBankAccount == null
          ? null
          : Input$BankAccountModelSortInput.fromJson(
              (l$selectedBankAccount as Map<String, dynamic>));
    }
    if (data.containsKey('quoteSource')) {
      final l$quoteSource = data['quoteSource'];
      result$data['quoteSource'] = l$quoteSource == null
          ? null
          : fromJson$Enum$SortEnumType((l$quoteSource as String));
    }
    if (data.containsKey('appointmentDate')) {
      final l$appointmentDate = data['appointmentDate'];
      result$data['appointmentDate'] = l$appointmentDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$appointmentDate as String));
    }
    if (data.containsKey('postCode')) {
      final l$postCode = data['postCode'];
      result$data['postCode'] = l$postCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$postCode as String));
    }
    if (data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = data['batchQuoteBundleId'];
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId == null
          ? null
          : fromJson$Enum$SortEnumType((l$batchQuoteBundleId as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson$Enum$SortEnumType((l$createdBy as String));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$territoryCode as String));
    }
    if (data.containsKey('referenceNumber')) {
      final l$referenceNumber = data['referenceNumber'];
      result$data['referenceNumber'] = l$referenceNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$referenceNumber as String));
    }
    return Input$BatchQuoteModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get id => (_$data['id'] as Enum$SortEnumType?);

  Input$YardModelSortInput? get yard =>
      (_$data['yard'] as Input$YardModelSortInput?);

  Input$AccountModelSortInput? get accountModel =>
      (_$data['accountModel'] as Input$AccountModelSortInput?);

  Enum$SortEnumType? get acquisition =>
      (_$data['acquisition'] as Enum$SortEnumType?);

  Enum$SortEnumType? get expires => (_$data['expires'] as Enum$SortEnumType?);

  Enum$SortEnumType? get hasExpired =>
      (_$data['hasExpired'] as Enum$SortEnumType?);

  Enum$SortEnumType? get created => (_$data['created'] as Enum$SortEnumType?);

  Enum$SortEnumType? get paymentMethod =>
      (_$data['paymentMethod'] as Enum$SortEnumType?);

  Enum$SortEnumType? get sentForPayment =>
      (_$data['sentForPayment'] as Enum$SortEnumType?);

  Enum$SortEnumType? get quoteStatus =>
      (_$data['quoteStatus'] as Enum$SortEnumType?);

  Input$BankAccountModelSortInput? get selectedBankAccount =>
      (_$data['selectedBankAccount'] as Input$BankAccountModelSortInput?);

  Enum$SortEnumType? get quoteSource =>
      (_$data['quoteSource'] as Enum$SortEnumType?);

  Enum$SortEnumType? get appointmentDate =>
      (_$data['appointmentDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get postCode => (_$data['postCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get batchQuoteBundleId =>
      (_$data['batchQuoteBundleId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get createdBy =>
      (_$data['createdBy'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get territoryCode =>
      (_$data['territoryCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get referenceNumber =>
      (_$data['referenceNumber'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortEnumType(l$id);
    }
    if (_$data.containsKey('yard')) {
      final l$yard = yard;
      result$data['yard'] = l$yard?.toJson();
    }
    if (_$data.containsKey('accountModel')) {
      final l$accountModel = accountModel;
      result$data['accountModel'] = l$accountModel?.toJson();
    }
    if (_$data.containsKey('acquisition')) {
      final l$acquisition = acquisition;
      result$data['acquisition'] = l$acquisition == null
          ? null
          : toJson$Enum$SortEnumType(l$acquisition);
    }
    if (_$data.containsKey('expires')) {
      final l$expires = expires;
      result$data['expires'] =
          l$expires == null ? null : toJson$Enum$SortEnumType(l$expires);
    }
    if (_$data.containsKey('hasExpired')) {
      final l$hasExpired = hasExpired;
      result$data['hasExpired'] =
          l$hasExpired == null ? null : toJson$Enum$SortEnumType(l$hasExpired);
    }
    if (_$data.containsKey('created')) {
      final l$created = created;
      result$data['created'] =
          l$created == null ? null : toJson$Enum$SortEnumType(l$created);
    }
    if (_$data.containsKey('paymentMethod')) {
      final l$paymentMethod = paymentMethod;
      result$data['paymentMethod'] = l$paymentMethod == null
          ? null
          : toJson$Enum$SortEnumType(l$paymentMethod);
    }
    if (_$data.containsKey('sentForPayment')) {
      final l$sentForPayment = sentForPayment;
      result$data['sentForPayment'] = l$sentForPayment == null
          ? null
          : toJson$Enum$SortEnumType(l$sentForPayment);
    }
    if (_$data.containsKey('quoteStatus')) {
      final l$quoteStatus = quoteStatus;
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$quoteStatus);
    }
    if (_$data.containsKey('selectedBankAccount')) {
      final l$selectedBankAccount = selectedBankAccount;
      result$data['selectedBankAccount'] = l$selectedBankAccount?.toJson();
    }
    if (_$data.containsKey('quoteSource')) {
      final l$quoteSource = quoteSource;
      result$data['quoteSource'] = l$quoteSource == null
          ? null
          : toJson$Enum$SortEnumType(l$quoteSource);
    }
    if (_$data.containsKey('appointmentDate')) {
      final l$appointmentDate = appointmentDate;
      result$data['appointmentDate'] = l$appointmentDate == null
          ? null
          : toJson$Enum$SortEnumType(l$appointmentDate);
    }
    if (_$data.containsKey('postCode')) {
      final l$postCode = postCode;
      result$data['postCode'] =
          l$postCode == null ? null : toJson$Enum$SortEnumType(l$postCode);
    }
    if (_$data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = batchQuoteBundleId;
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId == null
          ? null
          : toJson$Enum$SortEnumType(l$batchQuoteBundleId);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] =
          l$createdBy == null ? null : toJson$Enum$SortEnumType(l$createdBy);
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] =
          l$yardCode == null ? null : toJson$Enum$SortEnumType(l$yardCode);
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : toJson$Enum$SortEnumType(l$territoryCode);
    }
    if (_$data.containsKey('referenceNumber')) {
      final l$referenceNumber = referenceNumber;
      result$data['referenceNumber'] = l$referenceNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$referenceNumber);
    }
    return result$data;
  }

  CopyWith$Input$BatchQuoteModelSortInput<Input$BatchQuoteModelSortInput>
      get copyWith => CopyWith$Input$BatchQuoteModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BatchQuoteModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (_$data.containsKey('yard') != other._$data.containsKey('yard')) {
      return false;
    }
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$accountModel = accountModel;
    final lOther$accountModel = other.accountModel;
    if (_$data.containsKey('accountModel') !=
        other._$data.containsKey('accountModel')) {
      return false;
    }
    if (l$accountModel != lOther$accountModel) {
      return false;
    }
    final l$acquisition = acquisition;
    final lOther$acquisition = other.acquisition;
    if (_$data.containsKey('acquisition') !=
        other._$data.containsKey('acquisition')) {
      return false;
    }
    if (l$acquisition != lOther$acquisition) {
      return false;
    }
    final l$expires = expires;
    final lOther$expires = other.expires;
    if (_$data.containsKey('expires') != other._$data.containsKey('expires')) {
      return false;
    }
    if (l$expires != lOther$expires) {
      return false;
    }
    final l$hasExpired = hasExpired;
    final lOther$hasExpired = other.hasExpired;
    if (_$data.containsKey('hasExpired') !=
        other._$data.containsKey('hasExpired')) {
      return false;
    }
    if (l$hasExpired != lOther$hasExpired) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (_$data.containsKey('created') != other._$data.containsKey('created')) {
      return false;
    }
    if (l$created != lOther$created) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (_$data.containsKey('paymentMethod') !=
        other._$data.containsKey('paymentMethod')) {
      return false;
    }
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$sentForPayment = sentForPayment;
    final lOther$sentForPayment = other.sentForPayment;
    if (_$data.containsKey('sentForPayment') !=
        other._$data.containsKey('sentForPayment')) {
      return false;
    }
    if (l$sentForPayment != lOther$sentForPayment) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (_$data.containsKey('quoteStatus') !=
        other._$data.containsKey('quoteStatus')) {
      return false;
    }
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$selectedBankAccount = selectedBankAccount;
    final lOther$selectedBankAccount = other.selectedBankAccount;
    if (_$data.containsKey('selectedBankAccount') !=
        other._$data.containsKey('selectedBankAccount')) {
      return false;
    }
    if (l$selectedBankAccount != lOther$selectedBankAccount) {
      return false;
    }
    final l$quoteSource = quoteSource;
    final lOther$quoteSource = other.quoteSource;
    if (_$data.containsKey('quoteSource') !=
        other._$data.containsKey('quoteSource')) {
      return false;
    }
    if (l$quoteSource != lOther$quoteSource) {
      return false;
    }
    final l$appointmentDate = appointmentDate;
    final lOther$appointmentDate = other.appointmentDate;
    if (_$data.containsKey('appointmentDate') !=
        other._$data.containsKey('appointmentDate')) {
      return false;
    }
    if (l$appointmentDate != lOther$appointmentDate) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (_$data.containsKey('postCode') !=
        other._$data.containsKey('postCode')) {
      return false;
    }
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final lOther$batchQuoteBundleId = other.batchQuoteBundleId;
    if (_$data.containsKey('batchQuoteBundleId') !=
        other._$data.containsKey('batchQuoteBundleId')) {
      return false;
    }
    if (l$batchQuoteBundleId != lOther$batchQuoteBundleId) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
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
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    final l$referenceNumber = referenceNumber;
    final lOther$referenceNumber = other.referenceNumber;
    if (_$data.containsKey('referenceNumber') !=
        other._$data.containsKey('referenceNumber')) {
      return false;
    }
    if (l$referenceNumber != lOther$referenceNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yard = yard;
    final l$accountModel = accountModel;
    final l$acquisition = acquisition;
    final l$expires = expires;
    final l$hasExpired = hasExpired;
    final l$created = created;
    final l$paymentMethod = paymentMethod;
    final l$sentForPayment = sentForPayment;
    final l$quoteStatus = quoteStatus;
    final l$selectedBankAccount = selectedBankAccount;
    final l$quoteSource = quoteSource;
    final l$appointmentDate = appointmentDate;
    final l$postCode = postCode;
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final l$createdBy = createdBy;
    final l$yardCode = yardCode;
    final l$territoryCode = territoryCode;
    final l$referenceNumber = referenceNumber;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('yard') ? l$yard : const {},
      _$data.containsKey('accountModel') ? l$accountModel : const {},
      _$data.containsKey('acquisition') ? l$acquisition : const {},
      _$data.containsKey('expires') ? l$expires : const {},
      _$data.containsKey('hasExpired') ? l$hasExpired : const {},
      _$data.containsKey('created') ? l$created : const {},
      _$data.containsKey('paymentMethod') ? l$paymentMethod : const {},
      _$data.containsKey('sentForPayment') ? l$sentForPayment : const {},
      _$data.containsKey('quoteStatus') ? l$quoteStatus : const {},
      _$data.containsKey('selectedBankAccount')
          ? l$selectedBankAccount
          : const {},
      _$data.containsKey('quoteSource') ? l$quoteSource : const {},
      _$data.containsKey('appointmentDate') ? l$appointmentDate : const {},
      _$data.containsKey('postCode') ? l$postCode : const {},
      _$data.containsKey('batchQuoteBundleId')
          ? l$batchQuoteBundleId
          : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('territoryCode') ? l$territoryCode : const {},
      _$data.containsKey('referenceNumber') ? l$referenceNumber : const {},
    ]);
  }
}

abstract class CopyWith$Input$BatchQuoteModelSortInput<TRes> {
  factory CopyWith$Input$BatchQuoteModelSortInput(
    Input$BatchQuoteModelSortInput instance,
    TRes Function(Input$BatchQuoteModelSortInput) then,
  ) = _CopyWithImpl$Input$BatchQuoteModelSortInput;

  factory CopyWith$Input$BatchQuoteModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BatchQuoteModelSortInput;

  TRes call({
    Enum$SortEnumType? id,
    Input$YardModelSortInput? yard,
    Input$AccountModelSortInput? accountModel,
    Enum$SortEnumType? acquisition,
    Enum$SortEnumType? expires,
    Enum$SortEnumType? hasExpired,
    Enum$SortEnumType? created,
    Enum$SortEnumType? paymentMethod,
    Enum$SortEnumType? sentForPayment,
    Enum$SortEnumType? quoteStatus,
    Input$BankAccountModelSortInput? selectedBankAccount,
    Enum$SortEnumType? quoteSource,
    Enum$SortEnumType? appointmentDate,
    Enum$SortEnumType? postCode,
    Enum$SortEnumType? batchQuoteBundleId,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? territoryCode,
    Enum$SortEnumType? referenceNumber,
  });
  CopyWith$Input$YardModelSortInput<TRes> get yard;
  CopyWith$Input$AccountModelSortInput<TRes> get accountModel;
  CopyWith$Input$BankAccountModelSortInput<TRes> get selectedBankAccount;
}

class _CopyWithImpl$Input$BatchQuoteModelSortInput<TRes>
    implements CopyWith$Input$BatchQuoteModelSortInput<TRes> {
  _CopyWithImpl$Input$BatchQuoteModelSortInput(
    this._instance,
    this._then,
  );

  final Input$BatchQuoteModelSortInput _instance;

  final TRes Function(Input$BatchQuoteModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yard = _undefined,
    Object? accountModel = _undefined,
    Object? acquisition = _undefined,
    Object? expires = _undefined,
    Object? hasExpired = _undefined,
    Object? created = _undefined,
    Object? paymentMethod = _undefined,
    Object? sentForPayment = _undefined,
    Object? quoteStatus = _undefined,
    Object? selectedBankAccount = _undefined,
    Object? quoteSource = _undefined,
    Object? appointmentDate = _undefined,
    Object? postCode = _undefined,
    Object? batchQuoteBundleId = _undefined,
    Object? createdBy = _undefined,
    Object? yardCode = _undefined,
    Object? territoryCode = _undefined,
    Object? referenceNumber = _undefined,
  }) =>
      _then(Input$BatchQuoteModelSortInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$SortEnumType?),
        if (yard != _undefined) 'yard': (yard as Input$YardModelSortInput?),
        if (accountModel != _undefined)
          'accountModel': (accountModel as Input$AccountModelSortInput?),
        if (acquisition != _undefined)
          'acquisition': (acquisition as Enum$SortEnumType?),
        if (expires != _undefined) 'expires': (expires as Enum$SortEnumType?),
        if (hasExpired != _undefined)
          'hasExpired': (hasExpired as Enum$SortEnumType?),
        if (created != _undefined) 'created': (created as Enum$SortEnumType?),
        if (paymentMethod != _undefined)
          'paymentMethod': (paymentMethod as Enum$SortEnumType?),
        if (sentForPayment != _undefined)
          'sentForPayment': (sentForPayment as Enum$SortEnumType?),
        if (quoteStatus != _undefined)
          'quoteStatus': (quoteStatus as Enum$SortEnumType?),
        if (selectedBankAccount != _undefined)
          'selectedBankAccount':
              (selectedBankAccount as Input$BankAccountModelSortInput?),
        if (quoteSource != _undefined)
          'quoteSource': (quoteSource as Enum$SortEnumType?),
        if (appointmentDate != _undefined)
          'appointmentDate': (appointmentDate as Enum$SortEnumType?),
        if (postCode != _undefined)
          'postCode': (postCode as Enum$SortEnumType?),
        if (batchQuoteBundleId != _undefined)
          'batchQuoteBundleId': (batchQuoteBundleId as Enum$SortEnumType?),
        if (createdBy != _undefined)
          'createdBy': (createdBy as Enum$SortEnumType?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Enum$SortEnumType?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as Enum$SortEnumType?),
        if (referenceNumber != _undefined)
          'referenceNumber': (referenceNumber as Enum$SortEnumType?),
      }));

  CopyWith$Input$YardModelSortInput<TRes> get yard {
    final local$yard = _instance.yard;
    return local$yard == null
        ? CopyWith$Input$YardModelSortInput.stub(_then(_instance))
        : CopyWith$Input$YardModelSortInput(local$yard, (e) => call(yard: e));
  }

  CopyWith$Input$AccountModelSortInput<TRes> get accountModel {
    final local$accountModel = _instance.accountModel;
    return local$accountModel == null
        ? CopyWith$Input$AccountModelSortInput.stub(_then(_instance))
        : CopyWith$Input$AccountModelSortInput(
            local$accountModel, (e) => call(accountModel: e));
  }

  CopyWith$Input$BankAccountModelSortInput<TRes> get selectedBankAccount {
    final local$selectedBankAccount = _instance.selectedBankAccount;
    return local$selectedBankAccount == null
        ? CopyWith$Input$BankAccountModelSortInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelSortInput(
            local$selectedBankAccount, (e) => call(selectedBankAccount: e));
  }
}

class _CopyWithStubImpl$Input$BatchQuoteModelSortInput<TRes>
    implements CopyWith$Input$BatchQuoteModelSortInput<TRes> {
  _CopyWithStubImpl$Input$BatchQuoteModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? id,
    Input$YardModelSortInput? yard,
    Input$AccountModelSortInput? accountModel,
    Enum$SortEnumType? acquisition,
    Enum$SortEnumType? expires,
    Enum$SortEnumType? hasExpired,
    Enum$SortEnumType? created,
    Enum$SortEnumType? paymentMethod,
    Enum$SortEnumType? sentForPayment,
    Enum$SortEnumType? quoteStatus,
    Input$BankAccountModelSortInput? selectedBankAccount,
    Enum$SortEnumType? quoteSource,
    Enum$SortEnumType? appointmentDate,
    Enum$SortEnumType? postCode,
    Enum$SortEnumType? batchQuoteBundleId,
    Enum$SortEnumType? createdBy,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? territoryCode,
    Enum$SortEnumType? referenceNumber,
  }) =>
      _res;

  CopyWith$Input$YardModelSortInput<TRes> get yard =>
      CopyWith$Input$YardModelSortInput.stub(_res);

  CopyWith$Input$AccountModelSortInput<TRes> get accountModel =>
      CopyWith$Input$AccountModelSortInput.stub(_res);

  CopyWith$Input$BankAccountModelSortInput<TRes> get selectedBankAccount =>
      CopyWith$Input$BankAccountModelSortInput.stub(_res);
}

class Input$BooleanOperationFilterInput {
  factory Input$BooleanOperationFilterInput({
    bool? eq,
    bool? neq,
  }) =>
      Input$BooleanOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
      });

  Input$BooleanOperationFilterInput._(this._$data);

  factory Input$BooleanOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as bool?);
    }
    return Input$BooleanOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get eq => (_$data['eq'] as bool?);

  bool? get neq => (_$data['neq'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    return result$data;
  }

  CopyWith$Input$BooleanOperationFilterInput<Input$BooleanOperationFilterInput>
      get copyWith => CopyWith$Input$BooleanOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BooleanOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanOperationFilterInput<TRes> {
  factory CopyWith$Input$BooleanOperationFilterInput(
    Input$BooleanOperationFilterInput instance,
    TRes Function(Input$BooleanOperationFilterInput) then,
  ) = _CopyWithImpl$Input$BooleanOperationFilterInput;

  factory CopyWith$Input$BooleanOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanOperationFilterInput;

  TRes call({
    bool? eq,
    bool? neq,
  });
}

class _CopyWithImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithImpl$Input$BooleanOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$BooleanOperationFilterInput _instance;

  final TRes Function(Input$BooleanOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
  }) =>
      _then(Input$BooleanOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as bool?),
        if (neq != _undefined) 'neq': (neq as bool?),
      }));
}

class _CopyWithStubImpl$Input$BooleanOperationFilterInput<TRes>
    implements CopyWith$Input$BooleanOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$BooleanOperationFilterInput(this._res);

  TRes _res;

  call({
    bool? eq,
    bool? neq,
  }) =>
      _res;
}

class Input$DateTimeOperationFilterInput {
  factory Input$DateTimeOperationFilterInput({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      Input$DateTimeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$DateTimeOperationFilterInput._(this._$data);

  factory Input$DateTimeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : DateTime.parse((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => e == null ? null : DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] =
          l$ngt == null ? null : DateTime.parse((l$ngt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] =
          l$ngte == null ? null : DateTime.parse((l$ngte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] =
          l$nlt == null ? null : DateTime.parse((l$nlt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] =
          l$nlte == null ? null : DateTime.parse((l$nlte as String));
    }
    return Input$DateTimeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get neq => (_$data['neq'] as DateTime?);

  List<DateTime?>? get $in => (_$data['in'] as List<DateTime?>?);

  List<DateTime?>? get nin => (_$data['nin'] as List<DateTime?>?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get ngt => (_$data['ngt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  DateTime? get ngte => (_$data['ngte'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get nlt => (_$data['nlt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  DateTime? get nlte => (_$data['nlte'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e?.toIso8601String()).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte?.toIso8601String();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$DateTimeOperationFilterInput<
          Input$DateTimeOperationFilterInput>
      get copyWith => CopyWith$Input$DateTimeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateTimeOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  factory CopyWith$Input$DateTimeOperationFilterInput(
    Input$DateTimeOperationFilterInput instance,
    TRes Function(Input$DateTimeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DateTimeOperationFilterInput;

  factory CopyWith$Input$DateTimeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DateTimeOperationFilterInput;

  TRes call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  });
}

class _CopyWithImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DateTimeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DateTimeOperationFilterInput _instance;

  final TRes Function(Input$DateTimeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$DateTimeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime?>?),
        if (nin != _undefined) 'nin': (nin as List<DateTime?>?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (ngt != _undefined) 'ngt': (ngt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (ngte != _undefined) 'ngte': (ngte as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (nlt != _undefined) 'nlt': (nlt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (nlte != _undefined) 'nlte': (nlte as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$DateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$DateTimeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DateTimeOperationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? eq,
    DateTime? neq,
    List<DateTime?>? $in,
    List<DateTime?>? nin,
    DateTime? gt,
    DateTime? ngt,
    DateTime? gte,
    DateTime? ngte,
    DateTime? lt,
    DateTime? nlt,
    DateTime? lte,
    DateTime? nlte,
  }) =>
      _res;
}

class Input$DayOfWeekOperationFilterInput {
  factory Input$DayOfWeekOperationFilterInput({
    Enum$DayOfWeek? eq,
    Enum$DayOfWeek? neq,
    List<Enum$DayOfWeek>? $in,
    List<Enum$DayOfWeek>? nin,
  }) =>
      Input$DayOfWeekOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$DayOfWeekOperationFilterInput._(this._$data);

  factory Input$DayOfWeekOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$DayOfWeek((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$DayOfWeek((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DayOfWeek((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DayOfWeek((e as String)))
          .toList();
    }
    return Input$DayOfWeekOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DayOfWeek? get eq => (_$data['eq'] as Enum$DayOfWeek?);

  Enum$DayOfWeek? get neq => (_$data['neq'] as Enum$DayOfWeek?);

  List<Enum$DayOfWeek>? get $in => (_$data['in'] as List<Enum$DayOfWeek>?);

  List<Enum$DayOfWeek>? get nin => (_$data['nin'] as List<Enum$DayOfWeek>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$DayOfWeek(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq == null ? null : toJson$Enum$DayOfWeek(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => toJson$Enum$DayOfWeek(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => toJson$Enum$DayOfWeek(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$DayOfWeekOperationFilterInput<
          Input$DayOfWeekOperationFilterInput>
      get copyWith => CopyWith$Input$DayOfWeekOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DayOfWeekOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DayOfWeekOperationFilterInput<TRes> {
  factory CopyWith$Input$DayOfWeekOperationFilterInput(
    Input$DayOfWeekOperationFilterInput instance,
    TRes Function(Input$DayOfWeekOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DayOfWeekOperationFilterInput;

  factory CopyWith$Input$DayOfWeekOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DayOfWeekOperationFilterInput;

  TRes call({
    Enum$DayOfWeek? eq,
    Enum$DayOfWeek? neq,
    List<Enum$DayOfWeek>? $in,
    List<Enum$DayOfWeek>? nin,
  });
}

class _CopyWithImpl$Input$DayOfWeekOperationFilterInput<TRes>
    implements CopyWith$Input$DayOfWeekOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DayOfWeekOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DayOfWeekOperationFilterInput _instance;

  final TRes Function(Input$DayOfWeekOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$DayOfWeekOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$DayOfWeek?),
        if (neq != _undefined) 'neq': (neq as Enum$DayOfWeek?),
        if ($in != _undefined) 'in': ($in as List<Enum$DayOfWeek>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$DayOfWeek>?),
      }));
}

class _CopyWithStubImpl$Input$DayOfWeekOperationFilterInput<TRes>
    implements CopyWith$Input$DayOfWeekOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DayOfWeekOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$DayOfWeek? eq,
    Enum$DayOfWeek? neq,
    List<Enum$DayOfWeek>? $in,
    List<Enum$DayOfWeek>? nin,
  }) =>
      _res;
}

class Input$DecimalOperationFilterInput {
  factory Input$DecimalOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      Input$DecimalOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$DecimalOperationFilterInput._(this._$data);

  factory Input$DecimalOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$DecimalOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$DecimalOperationFilterInput<Input$DecimalOperationFilterInput>
      get copyWith => CopyWith$Input$DecimalOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DecimalOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$DecimalOperationFilterInput<TRes> {
  factory CopyWith$Input$DecimalOperationFilterInput(
    Input$DecimalOperationFilterInput instance,
    TRes Function(Input$DecimalOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DecimalOperationFilterInput;

  factory CopyWith$Input$DecimalOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DecimalOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DecimalOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DecimalOperationFilterInput _instance;

  final TRes Function(Input$DecimalOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$DecimalOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (nin != _undefined) 'nin': (nin as List<double?>?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (ngt != _undefined) 'ngt': (ngt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (ngte != _undefined) 'ngte': (ngte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (nlt != _undefined) 'nlt': (nlt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (nlte != _undefined) 'nlte': (nlte as double?),
      }));
}

class _CopyWithStubImpl$Input$DecimalOperationFilterInput<TRes>
    implements CopyWith$Input$DecimalOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DecimalOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      _res;
}

class Input$DistanceModelFilterInput {
  factory Input$DistanceModelFilterInput({
    List<Input$DistanceModelFilterInput>? and,
    List<Input$DistanceModelFilterInput>? or,
    Input$FloatOperationFilterInput? miles,
    Input$FloatOperationFilterInput? kilometers,
  }) =>
      Input$DistanceModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (miles != null) r'miles': miles,
        if (kilometers != null) r'kilometers': kilometers,
      });

  Input$DistanceModelFilterInput._(this._$data);

  factory Input$DistanceModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DistanceModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DistanceModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('miles')) {
      final l$miles = data['miles'];
      result$data['miles'] = l$miles == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$miles as Map<String, dynamic>));
    }
    if (data.containsKey('kilometers')) {
      final l$kilometers = data['kilometers'];
      result$data['kilometers'] = l$kilometers == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$kilometers as Map<String, dynamic>));
    }
    return Input$DistanceModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DistanceModelFilterInput>? get and =>
      (_$data['and'] as List<Input$DistanceModelFilterInput>?);

  List<Input$DistanceModelFilterInput>? get or =>
      (_$data['or'] as List<Input$DistanceModelFilterInput>?);

  Input$FloatOperationFilterInput? get miles =>
      (_$data['miles'] as Input$FloatOperationFilterInput?);

  Input$FloatOperationFilterInput? get kilometers =>
      (_$data['kilometers'] as Input$FloatOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('miles')) {
      final l$miles = miles;
      result$data['miles'] = l$miles?.toJson();
    }
    if (_$data.containsKey('kilometers')) {
      final l$kilometers = kilometers;
      result$data['kilometers'] = l$kilometers?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DistanceModelFilterInput<Input$DistanceModelFilterInput>
      get copyWith => CopyWith$Input$DistanceModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DistanceModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$miles = miles;
    final lOther$miles = other.miles;
    if (_$data.containsKey('miles') != other._$data.containsKey('miles')) {
      return false;
    }
    if (l$miles != lOther$miles) {
      return false;
    }
    final l$kilometers = kilometers;
    final lOther$kilometers = other.kilometers;
    if (_$data.containsKey('kilometers') !=
        other._$data.containsKey('kilometers')) {
      return false;
    }
    if (l$kilometers != lOther$kilometers) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$miles = miles;
    final l$kilometers = kilometers;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('miles') ? l$miles : const {},
      _$data.containsKey('kilometers') ? l$kilometers : const {},
    ]);
  }
}

abstract class CopyWith$Input$DistanceModelFilterInput<TRes> {
  factory CopyWith$Input$DistanceModelFilterInput(
    Input$DistanceModelFilterInput instance,
    TRes Function(Input$DistanceModelFilterInput) then,
  ) = _CopyWithImpl$Input$DistanceModelFilterInput;

  factory CopyWith$Input$DistanceModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DistanceModelFilterInput;

  TRes call({
    List<Input$DistanceModelFilterInput>? and,
    List<Input$DistanceModelFilterInput>? or,
    Input$FloatOperationFilterInput? miles,
    Input$FloatOperationFilterInput? kilometers,
  });
  TRes and(
      Iterable<Input$DistanceModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DistanceModelFilterInput<
                      Input$DistanceModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$DistanceModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DistanceModelFilterInput<
                      Input$DistanceModelFilterInput>>?)
          _fn);
  CopyWith$Input$FloatOperationFilterInput<TRes> get miles;
  CopyWith$Input$FloatOperationFilterInput<TRes> get kilometers;
}

class _CopyWithImpl$Input$DistanceModelFilterInput<TRes>
    implements CopyWith$Input$DistanceModelFilterInput<TRes> {
  _CopyWithImpl$Input$DistanceModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$DistanceModelFilterInput _instance;

  final TRes Function(Input$DistanceModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? miles = _undefined,
    Object? kilometers = _undefined,
  }) =>
      _then(Input$DistanceModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DistanceModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$DistanceModelFilterInput>?),
        if (miles != _undefined)
          'miles': (miles as Input$FloatOperationFilterInput?),
        if (kilometers != _undefined)
          'kilometers': (kilometers as Input$FloatOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$DistanceModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DistanceModelFilterInput<
                          Input$DistanceModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DistanceModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DistanceModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DistanceModelFilterInput<
                          Input$DistanceModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$DistanceModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$FloatOperationFilterInput<TRes> get miles {
    final local$miles = _instance.miles;
    return local$miles == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$miles, (e) => call(miles: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get kilometers {
    final local$kilometers = _instance.kilometers;
    return local$kilometers == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$kilometers, (e) => call(kilometers: e));
  }
}

class _CopyWithStubImpl$Input$DistanceModelFilterInput<TRes>
    implements CopyWith$Input$DistanceModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$DistanceModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DistanceModelFilterInput>? and,
    List<Input$DistanceModelFilterInput>? or,
    Input$FloatOperationFilterInput? miles,
    Input$FloatOperationFilterInput? kilometers,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$FloatOperationFilterInput<TRes> get miles =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get kilometers =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);
}

class Input$DistanceModelSortInput {
  factory Input$DistanceModelSortInput({
    Enum$SortEnumType? miles,
    Enum$SortEnumType? kilometers,
  }) =>
      Input$DistanceModelSortInput._({
        if (miles != null) r'miles': miles,
        if (kilometers != null) r'kilometers': kilometers,
      });

  Input$DistanceModelSortInput._(this._$data);

  factory Input$DistanceModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('miles')) {
      final l$miles = data['miles'];
      result$data['miles'] = l$miles == null
          ? null
          : fromJson$Enum$SortEnumType((l$miles as String));
    }
    if (data.containsKey('kilometers')) {
      final l$kilometers = data['kilometers'];
      result$data['kilometers'] = l$kilometers == null
          ? null
          : fromJson$Enum$SortEnumType((l$kilometers as String));
    }
    return Input$DistanceModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get miles => (_$data['miles'] as Enum$SortEnumType?);

  Enum$SortEnumType? get kilometers =>
      (_$data['kilometers'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('miles')) {
      final l$miles = miles;
      result$data['miles'] =
          l$miles == null ? null : toJson$Enum$SortEnumType(l$miles);
    }
    if (_$data.containsKey('kilometers')) {
      final l$kilometers = kilometers;
      result$data['kilometers'] =
          l$kilometers == null ? null : toJson$Enum$SortEnumType(l$kilometers);
    }
    return result$data;
  }

  CopyWith$Input$DistanceModelSortInput<Input$DistanceModelSortInput>
      get copyWith => CopyWith$Input$DistanceModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DistanceModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$miles = miles;
    final lOther$miles = other.miles;
    if (_$data.containsKey('miles') != other._$data.containsKey('miles')) {
      return false;
    }
    if (l$miles != lOther$miles) {
      return false;
    }
    final l$kilometers = kilometers;
    final lOther$kilometers = other.kilometers;
    if (_$data.containsKey('kilometers') !=
        other._$data.containsKey('kilometers')) {
      return false;
    }
    if (l$kilometers != lOther$kilometers) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$miles = miles;
    final l$kilometers = kilometers;
    return Object.hashAll([
      _$data.containsKey('miles') ? l$miles : const {},
      _$data.containsKey('kilometers') ? l$kilometers : const {},
    ]);
  }
}

abstract class CopyWith$Input$DistanceModelSortInput<TRes> {
  factory CopyWith$Input$DistanceModelSortInput(
    Input$DistanceModelSortInput instance,
    TRes Function(Input$DistanceModelSortInput) then,
  ) = _CopyWithImpl$Input$DistanceModelSortInput;

  factory CopyWith$Input$DistanceModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DistanceModelSortInput;

  TRes call({
    Enum$SortEnumType? miles,
    Enum$SortEnumType? kilometers,
  });
}

class _CopyWithImpl$Input$DistanceModelSortInput<TRes>
    implements CopyWith$Input$DistanceModelSortInput<TRes> {
  _CopyWithImpl$Input$DistanceModelSortInput(
    this._instance,
    this._then,
  );

  final Input$DistanceModelSortInput _instance;

  final TRes Function(Input$DistanceModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? miles = _undefined,
    Object? kilometers = _undefined,
  }) =>
      _then(Input$DistanceModelSortInput._({
        ..._instance._$data,
        if (miles != _undefined) 'miles': (miles as Enum$SortEnumType?),
        if (kilometers != _undefined)
          'kilometers': (kilometers as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$DistanceModelSortInput<TRes>
    implements CopyWith$Input$DistanceModelSortInput<TRes> {
  _CopyWithStubImpl$Input$DistanceModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? miles,
    Enum$SortEnumType? kilometers,
  }) =>
      _res;
}

class Input$DocumentModelFilterInput {
  factory Input$DocumentModelFilterInput({
    List<Input$DocumentModelFilterInput>? and,
    List<Input$DocumentModelFilterInput>? or,
    Input$DocumentTypeEnumOperationFilterInput? type,
    Input$DocumentSubTypeEnumOperationFilterInput? subType,
    Input$StringOperationFilterInput? mediaUrl,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? expirationDate,
  }) =>
      Input$DocumentModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (type != null) r'type': type,
        if (subType != null) r'subType': subType,
        if (mediaUrl != null) r'mediaUrl': mediaUrl,
        if (id != null) r'id': id,
        if (expirationDate != null) r'expirationDate': expirationDate,
      });

  Input$DocumentModelFilterInput._(this._$data);

  factory Input$DocumentModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DocumentModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DocumentModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : Input$DocumentTypeEnumOperationFilterInput.fromJson(
              (l$type as Map<String, dynamic>));
    }
    if (data.containsKey('subType')) {
      final l$subType = data['subType'];
      result$data['subType'] = l$subType == null
          ? null
          : Input$DocumentSubTypeEnumOperationFilterInput.fromJson(
              (l$subType as Map<String, dynamic>));
    }
    if (data.containsKey('mediaUrl')) {
      final l$mediaUrl = data['mediaUrl'];
      result$data['mediaUrl'] = l$mediaUrl == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$mediaUrl as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('expirationDate')) {
      final l$expirationDate = data['expirationDate'];
      result$data['expirationDate'] = l$expirationDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$expirationDate as Map<String, dynamic>));
    }
    return Input$DocumentModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DocumentModelFilterInput>? get and =>
      (_$data['and'] as List<Input$DocumentModelFilterInput>?);

  List<Input$DocumentModelFilterInput>? get or =>
      (_$data['or'] as List<Input$DocumentModelFilterInput>?);

  Input$DocumentTypeEnumOperationFilterInput? get type =>
      (_$data['type'] as Input$DocumentTypeEnumOperationFilterInput?);

  Input$DocumentSubTypeEnumOperationFilterInput? get subType =>
      (_$data['subType'] as Input$DocumentSubTypeEnumOperationFilterInput?);

  Input$StringOperationFilterInput? get mediaUrl =>
      (_$data['mediaUrl'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get id =>
      (_$data['id'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get expirationDate =>
      (_$data['expirationDate'] as Input$DateTimeOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type?.toJson();
    }
    if (_$data.containsKey('subType')) {
      final l$subType = subType;
      result$data['subType'] = l$subType?.toJson();
    }
    if (_$data.containsKey('mediaUrl')) {
      final l$mediaUrl = mediaUrl;
      result$data['mediaUrl'] = l$mediaUrl?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('expirationDate')) {
      final l$expirationDate = expirationDate;
      result$data['expirationDate'] = l$expirationDate?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DocumentModelFilterInput<Input$DocumentModelFilterInput>
      get copyWith => CopyWith$Input$DocumentModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (_$data.containsKey('subType') != other._$data.containsKey('subType')) {
      return false;
    }
    if (l$subType != lOther$subType) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (_$data.containsKey('mediaUrl') !=
        other._$data.containsKey('mediaUrl')) {
      return false;
    }
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$expirationDate = expirationDate;
    final lOther$expirationDate = other.expirationDate;
    if (_$data.containsKey('expirationDate') !=
        other._$data.containsKey('expirationDate')) {
      return false;
    }
    if (l$expirationDate != lOther$expirationDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$type = type;
    final l$subType = subType;
    final l$mediaUrl = mediaUrl;
    final l$id = id;
    final l$expirationDate = expirationDate;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('subType') ? l$subType : const {},
      _$data.containsKey('mediaUrl') ? l$mediaUrl : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('expirationDate') ? l$expirationDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$DocumentModelFilterInput<TRes> {
  factory CopyWith$Input$DocumentModelFilterInput(
    Input$DocumentModelFilterInput instance,
    TRes Function(Input$DocumentModelFilterInput) then,
  ) = _CopyWithImpl$Input$DocumentModelFilterInput;

  factory CopyWith$Input$DocumentModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DocumentModelFilterInput;

  TRes call({
    List<Input$DocumentModelFilterInput>? and,
    List<Input$DocumentModelFilterInput>? or,
    Input$DocumentTypeEnumOperationFilterInput? type,
    Input$DocumentSubTypeEnumOperationFilterInput? subType,
    Input$StringOperationFilterInput? mediaUrl,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? expirationDate,
  });
  TRes and(
      Iterable<Input$DocumentModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DocumentModelFilterInput<
                      Input$DocumentModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$DocumentModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$DocumentModelFilterInput<
                      Input$DocumentModelFilterInput>>?)
          _fn);
  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get type;
  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> get subType;
  CopyWith$Input$StringOperationFilterInput<TRes> get mediaUrl;
  CopyWith$Input$StringOperationFilterInput<TRes> get id;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expirationDate;
}

class _CopyWithImpl$Input$DocumentModelFilterInput<TRes>
    implements CopyWith$Input$DocumentModelFilterInput<TRes> {
  _CopyWithImpl$Input$DocumentModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$DocumentModelFilterInput _instance;

  final TRes Function(Input$DocumentModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? mediaUrl = _undefined,
    Object? id = _undefined,
    Object? expirationDate = _undefined,
  }) =>
      _then(Input$DocumentModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DocumentModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$DocumentModelFilterInput>?),
        if (type != _undefined)
          'type': (type as Input$DocumentTypeEnumOperationFilterInput?),
        if (subType != _undefined)
          'subType':
              (subType as Input$DocumentSubTypeEnumOperationFilterInput?),
        if (mediaUrl != _undefined)
          'mediaUrl': (mediaUrl as Input$StringOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$StringOperationFilterInput?),
        if (expirationDate != _undefined)
          'expirationDate':
              (expirationDate as Input$DateTimeOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$DocumentModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DocumentModelFilterInput<
                          Input$DocumentModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DocumentModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DocumentModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$DocumentModelFilterInput<
                          Input$DocumentModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$DocumentModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$DocumentTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$DocumentTypeEnumOperationFilterInput(
            local$type, (e) => call(type: e));
  }

  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> get subType {
    final local$subType = _instance.subType;
    return local$subType == null
        ? CopyWith$Input$DocumentSubTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$DocumentSubTypeEnumOperationFilterInput(
            local$subType, (e) => call(subType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get mediaUrl {
    final local$mediaUrl = _instance.mediaUrl;
    return local$mediaUrl == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$mediaUrl, (e) => call(mediaUrl: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expirationDate {
    final local$expirationDate = _instance.expirationDate;
    return local$expirationDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$expirationDate, (e) => call(expirationDate: e));
  }
}

class _CopyWithStubImpl$Input$DocumentModelFilterInput<TRes>
    implements CopyWith$Input$DocumentModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$DocumentModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$DocumentModelFilterInput>? and,
    List<Input$DocumentModelFilterInput>? or,
    Input$DocumentTypeEnumOperationFilterInput? type,
    Input$DocumentSubTypeEnumOperationFilterInput? subType,
    Input$StringOperationFilterInput? mediaUrl,
    Input$StringOperationFilterInput? id,
    Input$DateTimeOperationFilterInput? expirationDate,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get type =>
      CopyWith$Input$DocumentTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> get subType =>
      CopyWith$Input$DocumentSubTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get mediaUrl =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get id =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get expirationDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);
}

class Input$DocumentSubTypeEnumOperationFilterInput {
  factory Input$DocumentSubTypeEnumOperationFilterInput({
    Enum$DocumentSubTypeEnum? eq,
    Enum$DocumentSubTypeEnum? neq,
    List<Enum$DocumentSubTypeEnum>? $in,
    List<Enum$DocumentSubTypeEnum>? nin,
  }) =>
      Input$DocumentSubTypeEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$DocumentSubTypeEnumOperationFilterInput._(this._$data);

  factory Input$DocumentSubTypeEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$DocumentSubTypeEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$DocumentSubTypeEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentSubTypeEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentSubTypeEnum((e as String)))
          .toList();
    }
    return Input$DocumentSubTypeEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DocumentSubTypeEnum? get eq =>
      (_$data['eq'] as Enum$DocumentSubTypeEnum?);

  Enum$DocumentSubTypeEnum? get neq =>
      (_$data['neq'] as Enum$DocumentSubTypeEnum?);

  List<Enum$DocumentSubTypeEnum>? get $in =>
      (_$data['in'] as List<Enum$DocumentSubTypeEnum>?);

  List<Enum$DocumentSubTypeEnum>? get nin =>
      (_$data['nin'] as List<Enum$DocumentSubTypeEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$DocumentSubTypeEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$DocumentSubTypeEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$DocumentSubTypeEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$DocumentSubTypeEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<
          Input$DocumentSubTypeEnumOperationFilterInput>
      get copyWith => CopyWith$Input$DocumentSubTypeEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentSubTypeEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$DocumentSubTypeEnumOperationFilterInput(
    Input$DocumentSubTypeEnumOperationFilterInput instance,
    TRes Function(Input$DocumentSubTypeEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DocumentSubTypeEnumOperationFilterInput;

  factory CopyWith$Input$DocumentSubTypeEnumOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$DocumentSubTypeEnumOperationFilterInput;

  TRes call({
    Enum$DocumentSubTypeEnum? eq,
    Enum$DocumentSubTypeEnum? neq,
    List<Enum$DocumentSubTypeEnum>? $in,
    List<Enum$DocumentSubTypeEnum>? nin,
  });
}

class _CopyWithImpl$Input$DocumentSubTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DocumentSubTypeEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DocumentSubTypeEnumOperationFilterInput _instance;

  final TRes Function(Input$DocumentSubTypeEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$DocumentSubTypeEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$DocumentSubTypeEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$DocumentSubTypeEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$DocumentSubTypeEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$DocumentSubTypeEnum>?),
      }));
}

class _CopyWithStubImpl$Input$DocumentSubTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DocumentSubTypeEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$DocumentSubTypeEnum? eq,
    Enum$DocumentSubTypeEnum? neq,
    List<Enum$DocumentSubTypeEnum>? $in,
    List<Enum$DocumentSubTypeEnum>? nin,
  }) =>
      _res;
}

class Input$DocumentTypeEnumOperationFilterInput {
  factory Input$DocumentTypeEnumOperationFilterInput({
    Enum$DocumentTypeEnum? eq,
    Enum$DocumentTypeEnum? neq,
    List<Enum$DocumentTypeEnum>? $in,
    List<Enum$DocumentTypeEnum>? nin,
  }) =>
      Input$DocumentTypeEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$DocumentTypeEnumOperationFilterInput._(this._$data);

  factory Input$DocumentTypeEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$DocumentTypeEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$DocumentTypeEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentTypeEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentTypeEnum((e as String)))
          .toList();
    }
    return Input$DocumentTypeEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DocumentTypeEnum? get eq => (_$data['eq'] as Enum$DocumentTypeEnum?);

  Enum$DocumentTypeEnum? get neq => (_$data['neq'] as Enum$DocumentTypeEnum?);

  List<Enum$DocumentTypeEnum>? get $in =>
      (_$data['in'] as List<Enum$DocumentTypeEnum>?);

  List<Enum$DocumentTypeEnum>? get nin =>
      (_$data['nin'] as List<Enum$DocumentTypeEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$DocumentTypeEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$DocumentTypeEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$DocumentTypeEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$DocumentTypeEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$DocumentTypeEnumOperationFilterInput<
          Input$DocumentTypeEnumOperationFilterInput>
      get copyWith => CopyWith$Input$DocumentTypeEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentTypeEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$DocumentTypeEnumOperationFilterInput(
    Input$DocumentTypeEnumOperationFilterInput instance,
    TRes Function(Input$DocumentTypeEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DocumentTypeEnumOperationFilterInput;

  factory CopyWith$Input$DocumentTypeEnumOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DocumentTypeEnumOperationFilterInput;

  TRes call({
    Enum$DocumentTypeEnum? eq,
    Enum$DocumentTypeEnum? neq,
    List<Enum$DocumentTypeEnum>? $in,
    List<Enum$DocumentTypeEnum>? nin,
  });
}

class _CopyWithImpl$Input$DocumentTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DocumentTypeEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DocumentTypeEnumOperationFilterInput _instance;

  final TRes Function(Input$DocumentTypeEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$DocumentTypeEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$DocumentTypeEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$DocumentTypeEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$DocumentTypeEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$DocumentTypeEnum>?),
      }));
}

class _CopyWithStubImpl$Input$DocumentTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DocumentTypeEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$DocumentTypeEnum? eq,
    Enum$DocumentTypeEnum? neq,
    List<Enum$DocumentTypeEnum>? $in,
    List<Enum$DocumentTypeEnum>? nin,
  }) =>
      _res;
}

class Input$DocumentUploadRequestInput {
  factory Input$DocumentUploadRequestInput({
    required String mediaPath,
    required int batchQuoteId,
    required int vehicleId,
    required int quoteId,
  }) =>
      Input$DocumentUploadRequestInput._({
        r'mediaPath': mediaPath,
        r'batchQuoteId': batchQuoteId,
        r'vehicleId': vehicleId,
        r'quoteId': quoteId,
      });

  Input$DocumentUploadRequestInput._(this._$data);

  factory Input$DocumentUploadRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaPath = data['mediaPath'];
    result$data['mediaPath'] = (l$mediaPath as String);
    final l$batchQuoteId = data['batchQuoteId'];
    result$data['batchQuoteId'] = (l$batchQuoteId as int);
    final l$vehicleId = data['vehicleId'];
    result$data['vehicleId'] = (l$vehicleId as int);
    final l$quoteId = data['quoteId'];
    result$data['quoteId'] = (l$quoteId as int);
    return Input$DocumentUploadRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaPath => (_$data['mediaPath'] as String);

  int get batchQuoteId => (_$data['batchQuoteId'] as int);

  int get vehicleId => (_$data['vehicleId'] as int);

  int get quoteId => (_$data['quoteId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaPath = mediaPath;
    result$data['mediaPath'] = l$mediaPath;
    final l$batchQuoteId = batchQuoteId;
    result$data['batchQuoteId'] = l$batchQuoteId;
    final l$vehicleId = vehicleId;
    result$data['vehicleId'] = l$vehicleId;
    final l$quoteId = quoteId;
    result$data['quoteId'] = l$quoteId;
    return result$data;
  }

  CopyWith$Input$DocumentUploadRequestInput<Input$DocumentUploadRequestInput>
      get copyWith => CopyWith$Input$DocumentUploadRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentUploadRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaPath = mediaPath;
    final lOther$mediaPath = other.mediaPath;
    if (l$mediaPath != lOther$mediaPath) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaPath = mediaPath;
    final l$batchQuoteId = batchQuoteId;
    final l$vehicleId = vehicleId;
    final l$quoteId = quoteId;
    return Object.hashAll([
      l$mediaPath,
      l$batchQuoteId,
      l$vehicleId,
      l$quoteId,
    ]);
  }
}

abstract class CopyWith$Input$DocumentUploadRequestInput<TRes> {
  factory CopyWith$Input$DocumentUploadRequestInput(
    Input$DocumentUploadRequestInput instance,
    TRes Function(Input$DocumentUploadRequestInput) then,
  ) = _CopyWithImpl$Input$DocumentUploadRequestInput;

  factory CopyWith$Input$DocumentUploadRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DocumentUploadRequestInput;

  TRes call({
    String? mediaPath,
    int? batchQuoteId,
    int? vehicleId,
    int? quoteId,
  });
}

class _CopyWithImpl$Input$DocumentUploadRequestInput<TRes>
    implements CopyWith$Input$DocumentUploadRequestInput<TRes> {
  _CopyWithImpl$Input$DocumentUploadRequestInput(
    this._instance,
    this._then,
  );

  final Input$DocumentUploadRequestInput _instance;

  final TRes Function(Input$DocumentUploadRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaPath = _undefined,
    Object? batchQuoteId = _undefined,
    Object? vehicleId = _undefined,
    Object? quoteId = _undefined,
  }) =>
      _then(Input$DocumentUploadRequestInput._({
        ..._instance._$data,
        if (mediaPath != _undefined && mediaPath != null)
          'mediaPath': (mediaPath as String),
        if (batchQuoteId != _undefined && batchQuoteId != null)
          'batchQuoteId': (batchQuoteId as int),
        if (vehicleId != _undefined && vehicleId != null)
          'vehicleId': (vehicleId as int),
        if (quoteId != _undefined && quoteId != null)
          'quoteId': (quoteId as int),
      }));
}

class _CopyWithStubImpl$Input$DocumentUploadRequestInput<TRes>
    implements CopyWith$Input$DocumentUploadRequestInput<TRes> {
  _CopyWithStubImpl$Input$DocumentUploadRequestInput(this._res);

  TRes _res;

  call({
    String? mediaPath,
    int? batchQuoteId,
    int? vehicleId,
    int? quoteId,
  }) =>
      _res;
}

class Input$DocumentUploadTypeEnumOperationFilterInput {
  factory Input$DocumentUploadTypeEnumOperationFilterInput({
    Enum$DocumentUploadTypeEnum? eq,
    Enum$DocumentUploadTypeEnum? neq,
    List<Enum$DocumentUploadTypeEnum>? $in,
    List<Enum$DocumentUploadTypeEnum>? nin,
  }) =>
      Input$DocumentUploadTypeEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$DocumentUploadTypeEnumOperationFilterInput._(this._$data);

  factory Input$DocumentUploadTypeEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$DocumentUploadTypeEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$DocumentUploadTypeEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentUploadTypeEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$DocumentUploadTypeEnum((e as String)))
          .toList();
    }
    return Input$DocumentUploadTypeEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DocumentUploadTypeEnum? get eq =>
      (_$data['eq'] as Enum$DocumentUploadTypeEnum?);

  Enum$DocumentUploadTypeEnum? get neq =>
      (_$data['neq'] as Enum$DocumentUploadTypeEnum?);

  List<Enum$DocumentUploadTypeEnum>? get $in =>
      (_$data['in'] as List<Enum$DocumentUploadTypeEnum>?);

  List<Enum$DocumentUploadTypeEnum>? get nin =>
      (_$data['nin'] as List<Enum$DocumentUploadTypeEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$DocumentUploadTypeEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$DocumentUploadTypeEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$DocumentUploadTypeEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$DocumentUploadTypeEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<
          Input$DocumentUploadTypeEnumOperationFilterInput>
      get copyWith => CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DocumentUploadTypeEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput(
    Input$DocumentUploadTypeEnumOperationFilterInput instance,
    TRes Function(Input$DocumentUploadTypeEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$DocumentUploadTypeEnumOperationFilterInput;

  factory CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$DocumentUploadTypeEnumOperationFilterInput;

  TRes call({
    Enum$DocumentUploadTypeEnum? eq,
    Enum$DocumentUploadTypeEnum? neq,
    List<Enum$DocumentUploadTypeEnum>? $in,
    List<Enum$DocumentUploadTypeEnum>? nin,
  });
}

class _CopyWithImpl$Input$DocumentUploadTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$DocumentUploadTypeEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$DocumentUploadTypeEnumOperationFilterInput _instance;

  final TRes Function(Input$DocumentUploadTypeEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$DocumentUploadTypeEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$DocumentUploadTypeEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$DocumentUploadTypeEnum?),
        if ($in != _undefined)
          'in': ($in as List<Enum$DocumentUploadTypeEnum>?),
        if (nin != _undefined)
          'nin': (nin as List<Enum$DocumentUploadTypeEnum>?),
      }));
}

class _CopyWithStubImpl$Input$DocumentUploadTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$DocumentUploadTypeEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$DocumentUploadTypeEnum? eq,
    Enum$DocumentUploadTypeEnum? neq,
    List<Enum$DocumentUploadTypeEnum>? $in,
    List<Enum$DocumentUploadTypeEnum>? nin,
  }) =>
      _res;
}

class Input$FloatOperationFilterInput {
  factory Input$FloatOperationFilterInput({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      Input$FloatOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$FloatOperationFilterInput._(this._$data);

  factory Input$FloatOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as num?)?.toDouble();
    }
    return Input$FloatOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  List<double?>? get $in => (_$data['in'] as List<double?>?);

  List<double?>? get nin => (_$data['nin'] as List<double?>?);

  double? get gt => (_$data['gt'] as double?);

  double? get ngt => (_$data['ngt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get ngte => (_$data['ngte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get nlt => (_$data['nlt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  double? get nlte => (_$data['nlte'] as double?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$FloatOperationFilterInput<Input$FloatOperationFilterInput>
      get copyWith => CopyWith$Input$FloatOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FloatOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$FloatOperationFilterInput<TRes> {
  factory CopyWith$Input$FloatOperationFilterInput(
    Input$FloatOperationFilterInput instance,
    TRes Function(Input$FloatOperationFilterInput) then,
  ) = _CopyWithImpl$Input$FloatOperationFilterInput;

  factory CopyWith$Input$FloatOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatOperationFilterInput;

  TRes call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  });
}

class _CopyWithImpl$Input$FloatOperationFilterInput<TRes>
    implements CopyWith$Input$FloatOperationFilterInput<TRes> {
  _CopyWithImpl$Input$FloatOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$FloatOperationFilterInput _instance;

  final TRes Function(Input$FloatOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$FloatOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if ($in != _undefined) 'in': ($in as List<double?>?),
        if (nin != _undefined) 'nin': (nin as List<double?>?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (ngt != _undefined) 'ngt': (ngt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (ngte != _undefined) 'ngte': (ngte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (nlt != _undefined) 'nlt': (nlt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if (nlte != _undefined) 'nlte': (nlte as double?),
      }));
}

class _CopyWithStubImpl$Input$FloatOperationFilterInput<TRes>
    implements CopyWith$Input$FloatOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$FloatOperationFilterInput(this._res);

  TRes _res;

  call({
    double? eq,
    double? neq,
    List<double?>? $in,
    List<double?>? nin,
    double? gt,
    double? ngt,
    double? gte,
    double? ngte,
    double? lt,
    double? nlt,
    double? lte,
    double? nlte,
  }) =>
      _res;
}

class Input$GeoCoordinatesModelFilterInput {
  factory Input$GeoCoordinatesModelFilterInput({
    List<Input$GeoCoordinatesModelFilterInput>? and,
    List<Input$GeoCoordinatesModelFilterInput>? or,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
  }) =>
      Input$GeoCoordinatesModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
      });

  Input$GeoCoordinatesModelFilterInput._(this._$data);

  factory Input$GeoCoordinatesModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$GeoCoordinatesModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$GeoCoordinatesModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$latitude as Map<String, dynamic>));
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$longitude as Map<String, dynamic>));
    }
    return Input$GeoCoordinatesModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$GeoCoordinatesModelFilterInput>? get and =>
      (_$data['and'] as List<Input$GeoCoordinatesModelFilterInput>?);

  List<Input$GeoCoordinatesModelFilterInput>? get or =>
      (_$data['or'] as List<Input$GeoCoordinatesModelFilterInput>?);

  Input$FloatOperationFilterInput? get latitude =>
      (_$data['latitude'] as Input$FloatOperationFilterInput?);

  Input$FloatOperationFilterInput? get longitude =>
      (_$data['longitude'] as Input$FloatOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude?.toJson();
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GeoCoordinatesModelFilterInput<
          Input$GeoCoordinatesModelFilterInput>
      get copyWith => CopyWith$Input$GeoCoordinatesModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GeoCoordinatesModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> {
  factory CopyWith$Input$GeoCoordinatesModelFilterInput(
    Input$GeoCoordinatesModelFilterInput instance,
    TRes Function(Input$GeoCoordinatesModelFilterInput) then,
  ) = _CopyWithImpl$Input$GeoCoordinatesModelFilterInput;

  factory CopyWith$Input$GeoCoordinatesModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoCoordinatesModelFilterInput;

  TRes call({
    List<Input$GeoCoordinatesModelFilterInput>? and,
    List<Input$GeoCoordinatesModelFilterInput>? or,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
  });
  TRes and(
      Iterable<Input$GeoCoordinatesModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$GeoCoordinatesModelFilterInput<
                      Input$GeoCoordinatesModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$GeoCoordinatesModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$GeoCoordinatesModelFilterInput<
                      Input$GeoCoordinatesModelFilterInput>>?)
          _fn);
  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude;
  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude;
}

class _CopyWithImpl$Input$GeoCoordinatesModelFilterInput<TRes>
    implements CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> {
  _CopyWithImpl$Input$GeoCoordinatesModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$GeoCoordinatesModelFilterInput _instance;

  final TRes Function(Input$GeoCoordinatesModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Input$GeoCoordinatesModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$GeoCoordinatesModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$GeoCoordinatesModelFilterInput>?),
        if (latitude != _undefined)
          'latitude': (latitude as Input$FloatOperationFilterInput?),
        if (longitude != _undefined)
          'longitude': (longitude as Input$FloatOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$GeoCoordinatesModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$GeoCoordinatesModelFilterInput<
                          Input$GeoCoordinatesModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$GeoCoordinatesModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$GeoCoordinatesModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$GeoCoordinatesModelFilterInput<
                          Input$GeoCoordinatesModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$GeoCoordinatesModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude {
    final local$latitude = _instance.latitude;
    return local$latitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$latitude, (e) => call(latitude: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude {
    final local$longitude = _instance.longitude;
    return local$longitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$longitude, (e) => call(longitude: e));
  }
}

class _CopyWithStubImpl$Input$GeoCoordinatesModelFilterInput<TRes>
    implements CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$GeoCoordinatesModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$GeoCoordinatesModelFilterInput>? and,
    List<Input$GeoCoordinatesModelFilterInput>? or,
    Input$FloatOperationFilterInput? latitude,
    Input$FloatOperationFilterInput? longitude,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);
}

class Input$GeoCoordinatesModelSortInput {
  factory Input$GeoCoordinatesModelSortInput({
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
  }) =>
      Input$GeoCoordinatesModelSortInput._({
        if (latitude != null) r'latitude': latitude,
        if (longitude != null) r'longitude': longitude,
      });

  Input$GeoCoordinatesModelSortInput._(this._$data);

  factory Input$GeoCoordinatesModelSortInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$latitude as String));
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$longitude as String));
    }
    return Input$GeoCoordinatesModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get latitude => (_$data['latitude'] as Enum$SortEnumType?);

  Enum$SortEnumType? get longitude =>
      (_$data['longitude'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] =
          l$latitude == null ? null : toJson$Enum$SortEnumType(l$latitude);
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] =
          l$longitude == null ? null : toJson$Enum$SortEnumType(l$longitude);
    }
    return result$data;
  }

  CopyWith$Input$GeoCoordinatesModelSortInput<
          Input$GeoCoordinatesModelSortInput>
      get copyWith => CopyWith$Input$GeoCoordinatesModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GeoCoordinatesModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      _$data.containsKey('latitude') ? l$latitude : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoCoordinatesModelSortInput<TRes> {
  factory CopyWith$Input$GeoCoordinatesModelSortInput(
    Input$GeoCoordinatesModelSortInput instance,
    TRes Function(Input$GeoCoordinatesModelSortInput) then,
  ) = _CopyWithImpl$Input$GeoCoordinatesModelSortInput;

  factory CopyWith$Input$GeoCoordinatesModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoCoordinatesModelSortInput;

  TRes call({
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
  });
}

class _CopyWithImpl$Input$GeoCoordinatesModelSortInput<TRes>
    implements CopyWith$Input$GeoCoordinatesModelSortInput<TRes> {
  _CopyWithImpl$Input$GeoCoordinatesModelSortInput(
    this._instance,
    this._then,
  );

  final Input$GeoCoordinatesModelSortInput _instance;

  final TRes Function(Input$GeoCoordinatesModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Input$GeoCoordinatesModelSortInput._({
        ..._instance._$data,
        if (latitude != _undefined)
          'latitude': (latitude as Enum$SortEnumType?),
        if (longitude != _undefined)
          'longitude': (longitude as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$GeoCoordinatesModelSortInput<TRes>
    implements CopyWith$Input$GeoCoordinatesModelSortInput<TRes> {
  _CopyWithStubImpl$Input$GeoCoordinatesModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? latitude,
    Enum$SortEnumType? longitude,
  }) =>
      _res;
}

class Input$GeoLocationModelFilterInput {
  factory Input$GeoLocationModelFilterInput({
    List<Input$GeoLocationModelFilterInput>? and,
    List<Input$GeoLocationModelFilterInput>? or,
    Input$FloatOperationFilterInput? longitude,
    Input$FloatOperationFilterInput? latitude,
  }) =>
      Input$GeoLocationModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (longitude != null) r'longitude': longitude,
        if (latitude != null) r'latitude': latitude,
      });

  Input$GeoLocationModelFilterInput._(this._$data);

  factory Input$GeoLocationModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$GeoLocationModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$GeoLocationModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$longitude as Map<String, dynamic>));
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$latitude as Map<String, dynamic>));
    }
    return Input$GeoLocationModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$GeoLocationModelFilterInput>? get and =>
      (_$data['and'] as List<Input$GeoLocationModelFilterInput>?);

  List<Input$GeoLocationModelFilterInput>? get or =>
      (_$data['or'] as List<Input$GeoLocationModelFilterInput>?);

  Input$FloatOperationFilterInput? get longitude =>
      (_$data['longitude'] as Input$FloatOperationFilterInput?);

  Input$FloatOperationFilterInput? get latitude =>
      (_$data['latitude'] as Input$FloatOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] = l$longitude?.toJson();
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] = l$latitude?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GeoLocationModelFilterInput<Input$GeoLocationModelFilterInput>
      get copyWith => CopyWith$Input$GeoLocationModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GeoLocationModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$longitude = longitude;
    final l$latitude = latitude;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoLocationModelFilterInput<TRes> {
  factory CopyWith$Input$GeoLocationModelFilterInput(
    Input$GeoLocationModelFilterInput instance,
    TRes Function(Input$GeoLocationModelFilterInput) then,
  ) = _CopyWithImpl$Input$GeoLocationModelFilterInput;

  factory CopyWith$Input$GeoLocationModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoLocationModelFilterInput;

  TRes call({
    List<Input$GeoLocationModelFilterInput>? and,
    List<Input$GeoLocationModelFilterInput>? or,
    Input$FloatOperationFilterInput? longitude,
    Input$FloatOperationFilterInput? latitude,
  });
  TRes and(
      Iterable<Input$GeoLocationModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$GeoLocationModelFilterInput<
                      Input$GeoLocationModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$GeoLocationModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$GeoLocationModelFilterInput<
                      Input$GeoLocationModelFilterInput>>?)
          _fn);
  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude;
  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude;
}

class _CopyWithImpl$Input$GeoLocationModelFilterInput<TRes>
    implements CopyWith$Input$GeoLocationModelFilterInput<TRes> {
  _CopyWithImpl$Input$GeoLocationModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$GeoLocationModelFilterInput _instance;

  final TRes Function(Input$GeoLocationModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? longitude = _undefined,
    Object? latitude = _undefined,
  }) =>
      _then(Input$GeoLocationModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$GeoLocationModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$GeoLocationModelFilterInput>?),
        if (longitude != _undefined)
          'longitude': (longitude as Input$FloatOperationFilterInput?),
        if (latitude != _undefined)
          'latitude': (latitude as Input$FloatOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$GeoLocationModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$GeoLocationModelFilterInput<
                          Input$GeoLocationModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$GeoLocationModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$GeoLocationModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$GeoLocationModelFilterInput<
                          Input$GeoLocationModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$GeoLocationModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude {
    final local$longitude = _instance.longitude;
    return local$longitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$longitude, (e) => call(longitude: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude {
    final local$latitude = _instance.latitude;
    return local$latitude == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$latitude, (e) => call(latitude: e));
  }
}

class _CopyWithStubImpl$Input$GeoLocationModelFilterInput<TRes>
    implements CopyWith$Input$GeoLocationModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$GeoLocationModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$GeoLocationModelFilterInput>? and,
    List<Input$GeoLocationModelFilterInput>? or,
    Input$FloatOperationFilterInput? longitude,
    Input$FloatOperationFilterInput? latitude,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$FloatOperationFilterInput<TRes> get longitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get latitude =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);
}

class Input$GeoLocationModelSortInput {
  factory Input$GeoLocationModelSortInput({
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? latitude,
  }) =>
      Input$GeoLocationModelSortInput._({
        if (longitude != null) r'longitude': longitude,
        if (latitude != null) r'latitude': latitude,
      });

  Input$GeoLocationModelSortInput._(this._$data);

  factory Input$GeoLocationModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('longitude')) {
      final l$longitude = data['longitude'];
      result$data['longitude'] = l$longitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$longitude as String));
    }
    if (data.containsKey('latitude')) {
      final l$latitude = data['latitude'];
      result$data['latitude'] = l$latitude == null
          ? null
          : fromJson$Enum$SortEnumType((l$latitude as String));
    }
    return Input$GeoLocationModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get longitude =>
      (_$data['longitude'] as Enum$SortEnumType?);

  Enum$SortEnumType? get latitude => (_$data['latitude'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('longitude')) {
      final l$longitude = longitude;
      result$data['longitude'] =
          l$longitude == null ? null : toJson$Enum$SortEnumType(l$longitude);
    }
    if (_$data.containsKey('latitude')) {
      final l$latitude = latitude;
      result$data['latitude'] =
          l$latitude == null ? null : toJson$Enum$SortEnumType(l$latitude);
    }
    return result$data;
  }

  CopyWith$Input$GeoLocationModelSortInput<Input$GeoLocationModelSortInput>
      get copyWith => CopyWith$Input$GeoLocationModelSortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GeoLocationModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (_$data.containsKey('longitude') !=
        other._$data.containsKey('longitude')) {
      return false;
    }
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (_$data.containsKey('latitude') !=
        other._$data.containsKey('latitude')) {
      return false;
    }
    if (l$latitude != lOther$latitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    return Object.hashAll([
      _$data.containsKey('longitude') ? l$longitude : const {},
      _$data.containsKey('latitude') ? l$latitude : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoLocationModelSortInput<TRes> {
  factory CopyWith$Input$GeoLocationModelSortInput(
    Input$GeoLocationModelSortInput instance,
    TRes Function(Input$GeoLocationModelSortInput) then,
  ) = _CopyWithImpl$Input$GeoLocationModelSortInput;

  factory CopyWith$Input$GeoLocationModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoLocationModelSortInput;

  TRes call({
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? latitude,
  });
}

class _CopyWithImpl$Input$GeoLocationModelSortInput<TRes>
    implements CopyWith$Input$GeoLocationModelSortInput<TRes> {
  _CopyWithImpl$Input$GeoLocationModelSortInput(
    this._instance,
    this._then,
  );

  final Input$GeoLocationModelSortInput _instance;

  final TRes Function(Input$GeoLocationModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
  }) =>
      _then(Input$GeoLocationModelSortInput._({
        ..._instance._$data,
        if (longitude != _undefined)
          'longitude': (longitude as Enum$SortEnumType?),
        if (latitude != _undefined)
          'latitude': (latitude as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$GeoLocationModelSortInput<TRes>
    implements CopyWith$Input$GeoLocationModelSortInput<TRes> {
  _CopyWithStubImpl$Input$GeoLocationModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? longitude,
    Enum$SortEnumType? latitude,
  }) =>
      _res;
}

class Input$InspectionQuoteResponseFilterInput {
  factory Input$InspectionQuoteResponseFilterInput({
    List<Input$InspectionQuoteResponseFilterInput>? and,
    List<Input$InspectionQuoteResponseFilterInput>? or,
    Input$IntOperationFilterInput? quoteId,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
  }) =>
      Input$InspectionQuoteResponseFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (quoteId != null) r'quoteId': quoteId,
        if (createdDate != null) r'createdDate': createdDate,
        if (quoteType != null) r'quoteType': quoteType,
        if (hasBattery != null) r'hasBattery': hasBattery,
        if (hasOriginalCat != null) r'hasOriginalCat': hasOriginalCat,
        if (alloyWheels != null) r'alloyWheels': alloyWheels,
        if (steelWheels != null) r'steelWheels': steelWheels,
        if (chromeWheels != null) r'chromeWheels': chromeWheels,
      });

  Input$InspectionQuoteResponseFilterInput._(this._$data);

  factory Input$InspectionQuoteResponseFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$InspectionQuoteResponseFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$InspectionQuoteResponseFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('quoteId')) {
      final l$quoteId = data['quoteId'];
      result$data['quoteId'] = l$quoteId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$quoteId as Map<String, dynamic>));
    }
    if (data.containsKey('createdDate')) {
      final l$createdDate = data['createdDate'];
      result$data['createdDate'] = l$createdDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdDate as Map<String, dynamic>));
    }
    if (data.containsKey('quoteType')) {
      final l$quoteType = data['quoteType'];
      result$data['quoteType'] = l$quoteType == null
          ? null
          : Input$QuoteTypeEnumOperationFilterInput.fromJson(
              (l$quoteType as Map<String, dynamic>));
    }
    if (data.containsKey('hasBattery')) {
      final l$hasBattery = data['hasBattery'];
      result$data['hasBattery'] = l$hasBattery == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasBattery as Map<String, dynamic>));
    }
    if (data.containsKey('hasOriginalCat')) {
      final l$hasOriginalCat = data['hasOriginalCat'];
      result$data['hasOriginalCat'] = l$hasOriginalCat == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasOriginalCat as Map<String, dynamic>));
    }
    if (data.containsKey('alloyWheels')) {
      final l$alloyWheels = data['alloyWheels'];
      result$data['alloyWheels'] = l$alloyWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$alloyWheels as Map<String, dynamic>));
    }
    if (data.containsKey('steelWheels')) {
      final l$steelWheels = data['steelWheels'];
      result$data['steelWheels'] = l$steelWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$steelWheels as Map<String, dynamic>));
    }
    if (data.containsKey('chromeWheels')) {
      final l$chromeWheels = data['chromeWheels'];
      result$data['chromeWheels'] = l$chromeWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$chromeWheels as Map<String, dynamic>));
    }
    return Input$InspectionQuoteResponseFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$InspectionQuoteResponseFilterInput>? get and =>
      (_$data['and'] as List<Input$InspectionQuoteResponseFilterInput>?);

  List<Input$InspectionQuoteResponseFilterInput>? get or =>
      (_$data['or'] as List<Input$InspectionQuoteResponseFilterInput>?);

  Input$IntOperationFilterInput? get quoteId =>
      (_$data['quoteId'] as Input$IntOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdDate =>
      (_$data['createdDate'] as Input$DateTimeOperationFilterInput?);

  Input$QuoteTypeEnumOperationFilterInput? get quoteType =>
      (_$data['quoteType'] as Input$QuoteTypeEnumOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasBattery =>
      (_$data['hasBattery'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasOriginalCat =>
      (_$data['hasOriginalCat'] as Input$BooleanOperationFilterInput?);

  Input$IntOperationFilterInput? get alloyWheels =>
      (_$data['alloyWheels'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get steelWheels =>
      (_$data['steelWheels'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get chromeWheels =>
      (_$data['chromeWheels'] as Input$IntOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('quoteId')) {
      final l$quoteId = quoteId;
      result$data['quoteId'] = l$quoteId?.toJson();
    }
    if (_$data.containsKey('createdDate')) {
      final l$createdDate = createdDate;
      result$data['createdDate'] = l$createdDate?.toJson();
    }
    if (_$data.containsKey('quoteType')) {
      final l$quoteType = quoteType;
      result$data['quoteType'] = l$quoteType?.toJson();
    }
    if (_$data.containsKey('hasBattery')) {
      final l$hasBattery = hasBattery;
      result$data['hasBattery'] = l$hasBattery?.toJson();
    }
    if (_$data.containsKey('hasOriginalCat')) {
      final l$hasOriginalCat = hasOriginalCat;
      result$data['hasOriginalCat'] = l$hasOriginalCat?.toJson();
    }
    if (_$data.containsKey('alloyWheels')) {
      final l$alloyWheels = alloyWheels;
      result$data['alloyWheels'] = l$alloyWheels?.toJson();
    }
    if (_$data.containsKey('steelWheels')) {
      final l$steelWheels = steelWheels;
      result$data['steelWheels'] = l$steelWheels?.toJson();
    }
    if (_$data.containsKey('chromeWheels')) {
      final l$chromeWheels = chromeWheels;
      result$data['chromeWheels'] = l$chromeWheels?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$InspectionQuoteResponseFilterInput<
          Input$InspectionQuoteResponseFilterInput>
      get copyWith => CopyWith$Input$InspectionQuoteResponseFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InspectionQuoteResponseFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (_$data.containsKey('quoteId') != other._$data.containsKey('quoteId')) {
      return false;
    }
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (_$data.containsKey('createdDate') !=
        other._$data.containsKey('createdDate')) {
      return false;
    }
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$quoteType = quoteType;
    final lOther$quoteType = other.quoteType;
    if (_$data.containsKey('quoteType') !=
        other._$data.containsKey('quoteType')) {
      return false;
    }
    if (l$quoteType != lOther$quoteType) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (_$data.containsKey('hasBattery') !=
        other._$data.containsKey('hasBattery')) {
      return false;
    }
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$hasOriginalCat = hasOriginalCat;
    final lOther$hasOriginalCat = other.hasOriginalCat;
    if (_$data.containsKey('hasOriginalCat') !=
        other._$data.containsKey('hasOriginalCat')) {
      return false;
    }
    if (l$hasOriginalCat != lOther$hasOriginalCat) {
      return false;
    }
    final l$alloyWheels = alloyWheels;
    final lOther$alloyWheels = other.alloyWheels;
    if (_$data.containsKey('alloyWheels') !=
        other._$data.containsKey('alloyWheels')) {
      return false;
    }
    if (l$alloyWheels != lOther$alloyWheels) {
      return false;
    }
    final l$steelWheels = steelWheels;
    final lOther$steelWheels = other.steelWheels;
    if (_$data.containsKey('steelWheels') !=
        other._$data.containsKey('steelWheels')) {
      return false;
    }
    if (l$steelWheels != lOther$steelWheels) {
      return false;
    }
    final l$chromeWheels = chromeWheels;
    final lOther$chromeWheels = other.chromeWheels;
    if (_$data.containsKey('chromeWheels') !=
        other._$data.containsKey('chromeWheels')) {
      return false;
    }
    if (l$chromeWheels != lOther$chromeWheels) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$quoteId = quoteId;
    final l$createdDate = createdDate;
    final l$quoteType = quoteType;
    final l$hasBattery = hasBattery;
    final l$hasOriginalCat = hasOriginalCat;
    final l$alloyWheels = alloyWheels;
    final l$steelWheels = steelWheels;
    final l$chromeWheels = chromeWheels;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('quoteId') ? l$quoteId : const {},
      _$data.containsKey('createdDate') ? l$createdDate : const {},
      _$data.containsKey('quoteType') ? l$quoteType : const {},
      _$data.containsKey('hasBattery') ? l$hasBattery : const {},
      _$data.containsKey('hasOriginalCat') ? l$hasOriginalCat : const {},
      _$data.containsKey('alloyWheels') ? l$alloyWheels : const {},
      _$data.containsKey('steelWheels') ? l$steelWheels : const {},
      _$data.containsKey('chromeWheels') ? l$chromeWheels : const {},
    ]);
  }
}

abstract class CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> {
  factory CopyWith$Input$InspectionQuoteResponseFilterInput(
    Input$InspectionQuoteResponseFilterInput instance,
    TRes Function(Input$InspectionQuoteResponseFilterInput) then,
  ) = _CopyWithImpl$Input$InspectionQuoteResponseFilterInput;

  factory CopyWith$Input$InspectionQuoteResponseFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InspectionQuoteResponseFilterInput;

  TRes call({
    List<Input$InspectionQuoteResponseFilterInput>? and,
    List<Input$InspectionQuoteResponseFilterInput>? or,
    Input$IntOperationFilterInput? quoteId,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
  });
  TRes and(
      Iterable<Input$InspectionQuoteResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InspectionQuoteResponseFilterInput<
                      Input$InspectionQuoteResponseFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$InspectionQuoteResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InspectionQuoteResponseFilterInput<
                      Input$InspectionQuoteResponseFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate;
  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat;
  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels;
  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels;
  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels;
}

class _CopyWithImpl$Input$InspectionQuoteResponseFilterInput<TRes>
    implements CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> {
  _CopyWithImpl$Input$InspectionQuoteResponseFilterInput(
    this._instance,
    this._then,
  );

  final Input$InspectionQuoteResponseFilterInput _instance;

  final TRes Function(Input$InspectionQuoteResponseFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? quoteId = _undefined,
    Object? createdDate = _undefined,
    Object? quoteType = _undefined,
    Object? hasBattery = _undefined,
    Object? hasOriginalCat = _undefined,
    Object? alloyWheels = _undefined,
    Object? steelWheels = _undefined,
    Object? chromeWheels = _undefined,
  }) =>
      _then(Input$InspectionQuoteResponseFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$InspectionQuoteResponseFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$InspectionQuoteResponseFilterInput>?),
        if (quoteId != _undefined)
          'quoteId': (quoteId as Input$IntOperationFilterInput?),
        if (createdDate != _undefined)
          'createdDate': (createdDate as Input$DateTimeOperationFilterInput?),
        if (quoteType != _undefined)
          'quoteType': (quoteType as Input$QuoteTypeEnumOperationFilterInput?),
        if (hasBattery != _undefined)
          'hasBattery': (hasBattery as Input$BooleanOperationFilterInput?),
        if (hasOriginalCat != _undefined)
          'hasOriginalCat':
              (hasOriginalCat as Input$BooleanOperationFilterInput?),
        if (alloyWheels != _undefined)
          'alloyWheels': (alloyWheels as Input$IntOperationFilterInput?),
        if (steelWheels != _undefined)
          'steelWheels': (steelWheels as Input$IntOperationFilterInput?),
        if (chromeWheels != _undefined)
          'chromeWheels': (chromeWheels as Input$IntOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$InspectionQuoteResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InspectionQuoteResponseFilterInput<
                          Input$InspectionQuoteResponseFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$InspectionQuoteResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$InspectionQuoteResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InspectionQuoteResponseFilterInput<
                          Input$InspectionQuoteResponseFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$InspectionQuoteResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId {
    final local$quoteId = _instance.quoteId;
    return local$quoteId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$quoteId, (e) => call(quoteId: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate {
    final local$createdDate = _instance.createdDate;
    return local$createdDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdDate, (e) => call(createdDate: e));
  }

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType {
    final local$quoteType = _instance.quoteType;
    return local$quoteType == null
        ? CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteTypeEnumOperationFilterInput(
            local$quoteType, (e) => call(quoteType: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery {
    final local$hasBattery = _instance.hasBattery;
    return local$hasBattery == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasBattery, (e) => call(hasBattery: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat {
    final local$hasOriginalCat = _instance.hasOriginalCat;
    return local$hasOriginalCat == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasOriginalCat, (e) => call(hasOriginalCat: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels {
    final local$alloyWheels = _instance.alloyWheels;
    return local$alloyWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$alloyWheels, (e) => call(alloyWheels: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels {
    final local$steelWheels = _instance.steelWheels;
    return local$steelWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$steelWheels, (e) => call(steelWheels: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels {
    final local$chromeWheels = _instance.chromeWheels;
    return local$chromeWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$chromeWheels, (e) => call(chromeWheels: e));
  }
}

class _CopyWithStubImpl$Input$InspectionQuoteResponseFilterInput<TRes>
    implements CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> {
  _CopyWithStubImpl$Input$InspectionQuoteResponseFilterInput(this._res);

  TRes _res;

  call({
    List<Input$InspectionQuoteResponseFilterInput>? and,
    List<Input$InspectionQuoteResponseFilterInput>? or,
    Input$IntOperationFilterInput? quoteId,
    Input$DateTimeOperationFilterInput? createdDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get quoteId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType =>
      CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);
}

class Input$InspectionVehicleDetailResponseFilterInput {
  factory Input$InspectionVehicleDetailResponseFilterInput({
    List<Input$InspectionVehicleDetailResponseFilterInput>? and,
    List<Input$InspectionVehicleDetailResponseFilterInput>? or,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? vehicleReg,
    Input$IntOperationFilterInput? year,
  }) =>
      Input$InspectionVehicleDetailResponseFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (vin != null) r'vin': vin,
        if (vehicleReg != null) r'vehicleReg': vehicleReg,
        if (year != null) r'year': year,
      });

  Input$InspectionVehicleDetailResponseFilterInput._(this._$data);

  factory Input$InspectionVehicleDetailResponseFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$InspectionVehicleDetailResponseFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$InspectionVehicleDetailResponseFilterInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] = l$make == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$make as Map<String, dynamic>));
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = l$model == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$model as Map<String, dynamic>));
    }
    if (data.containsKey('vin')) {
      final l$vin = data['vin'];
      result$data['vin'] = l$vin == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$vin as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleReg')) {
      final l$vehicleReg = data['vehicleReg'];
      result$data['vehicleReg'] = l$vehicleReg == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$vehicleReg as Map<String, dynamic>));
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = l$year == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$year as Map<String, dynamic>));
    }
    return Input$InspectionVehicleDetailResponseFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$InspectionVehicleDetailResponseFilterInput>? get and =>
      (_$data['and']
          as List<Input$InspectionVehicleDetailResponseFilterInput>?);

  List<Input$InspectionVehicleDetailResponseFilterInput>? get or =>
      (_$data['or'] as List<Input$InspectionVehicleDetailResponseFilterInput>?);

  Input$StringOperationFilterInput? get make =>
      (_$data['make'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get model =>
      (_$data['model'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get vin =>
      (_$data['vin'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get vehicleReg =>
      (_$data['vehicleReg'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get year =>
      (_$data['year'] as Input$IntOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] = l$make?.toJson();
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] = l$model?.toJson();
    }
    if (_$data.containsKey('vin')) {
      final l$vin = vin;
      result$data['vin'] = l$vin?.toJson();
    }
    if (_$data.containsKey('vehicleReg')) {
      final l$vehicleReg = vehicleReg;
      result$data['vehicleReg'] = l$vehicleReg?.toJson();
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<
          Input$InspectionVehicleDetailResponseFilterInput>
      get copyWith => CopyWith$Input$InspectionVehicleDetailResponseFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InspectionVehicleDetailResponseFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (_$data.containsKey('vin') != other._$data.containsKey('vin')) {
      return false;
    }
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (_$data.containsKey('vehicleReg') !=
        other._$data.containsKey('vehicleReg')) {
      return false;
    }
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$make = make;
    final l$model = model;
    final l$vin = vin;
    final l$vehicleReg = vehicleReg;
    final l$year = year;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('make') ? l$make : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('vin') ? l$vin : const {},
      _$data.containsKey('vehicleReg') ? l$vehicleReg : const {},
      _$data.containsKey('year') ? l$year : const {},
    ]);
  }
}

abstract class CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes> {
  factory CopyWith$Input$InspectionVehicleDetailResponseFilterInput(
    Input$InspectionVehicleDetailResponseFilterInput instance,
    TRes Function(Input$InspectionVehicleDetailResponseFilterInput) then,
  ) = _CopyWithImpl$Input$InspectionVehicleDetailResponseFilterInput;

  factory CopyWith$Input$InspectionVehicleDetailResponseFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$InspectionVehicleDetailResponseFilterInput;

  TRes call({
    List<Input$InspectionVehicleDetailResponseFilterInput>? and,
    List<Input$InspectionVehicleDetailResponseFilterInput>? or,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? vehicleReg,
    Input$IntOperationFilterInput? year,
  });
  TRes and(
      Iterable<Input$InspectionVehicleDetailResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<
                      Input$InspectionVehicleDetailResponseFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$InspectionVehicleDetailResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<
                      Input$InspectionVehicleDetailResponseFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get make;
  CopyWith$Input$StringOperationFilterInput<TRes> get model;
  CopyWith$Input$StringOperationFilterInput<TRes> get vin;
  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg;
  CopyWith$Input$IntOperationFilterInput<TRes> get year;
}

class _CopyWithImpl$Input$InspectionVehicleDetailResponseFilterInput<TRes>
    implements CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes> {
  _CopyWithImpl$Input$InspectionVehicleDetailResponseFilterInput(
    this._instance,
    this._then,
  );

  final Input$InspectionVehicleDetailResponseFilterInput _instance;

  final TRes Function(Input$InspectionVehicleDetailResponseFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? vin = _undefined,
    Object? vehicleReg = _undefined,
    Object? year = _undefined,
  }) =>
      _then(Input$InspectionVehicleDetailResponseFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and':
              (and as List<Input$InspectionVehicleDetailResponseFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$InspectionVehicleDetailResponseFilterInput>?),
        if (make != _undefined)
          'make': (make as Input$StringOperationFilterInput?),
        if (model != _undefined)
          'model': (model as Input$StringOperationFilterInput?),
        if (vin != _undefined)
          'vin': (vin as Input$StringOperationFilterInput?),
        if (vehicleReg != _undefined)
          'vehicleReg': (vehicleReg as Input$StringOperationFilterInput?),
        if (year != _undefined)
          'year': (year as Input$IntOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$InspectionVehicleDetailResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InspectionVehicleDetailResponseFilterInput<
                          Input$InspectionVehicleDetailResponseFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map(
              (e) => CopyWith$Input$InspectionVehicleDetailResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$InspectionVehicleDetailResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InspectionVehicleDetailResponseFilterInput<
                          Input$InspectionVehicleDetailResponseFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map(
              (e) => CopyWith$Input$InspectionVehicleDetailResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get make {
    final local$make = _instance.make;
    return local$make == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$make, (e) => call(make: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get model {
    final local$model = _instance.model;
    return local$model == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$model, (e) => call(model: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get vin {
    final local$vin = _instance.vin;
    return local$vin == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$vin, (e) => call(vin: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg {
    final local$vehicleReg = _instance.vehicleReg;
    return local$vehicleReg == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$vehicleReg, (e) => call(vehicleReg: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get year {
    final local$year = _instance.year;
    return local$year == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$year, (e) => call(year: e));
  }
}

class _CopyWithStubImpl$Input$InspectionVehicleDetailResponseFilterInput<TRes>
    implements CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes> {
  _CopyWithStubImpl$Input$InspectionVehicleDetailResponseFilterInput(this._res);

  TRes _res;

  call({
    List<Input$InspectionVehicleDetailResponseFilterInput>? and,
    List<Input$InspectionVehicleDetailResponseFilterInput>? or,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? vehicleReg,
    Input$IntOperationFilterInput? year,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get make =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get model =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get vin =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get year =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);
}

class Input$IntOperationFilterInput {
  factory Input$IntOperationFilterInput({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      Input$IntOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$IntOperationFilterInput._(this._$data);

  factory Input$IntOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$IntOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  List<int?>? get nin => (_$data['nin'] as List<int?>?);

  int? get gt => (_$data['gt'] as int?);

  int? get ngt => (_$data['ngt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get ngte => (_$data['ngte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get nlt => (_$data['nlt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  int? get nlte => (_$data['nlte'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$IntOperationFilterInput<Input$IntOperationFilterInput>
      get copyWith => CopyWith$Input$IntOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$IntOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntOperationFilterInput<TRes> {
  factory CopyWith$Input$IntOperationFilterInput(
    Input$IntOperationFilterInput instance,
    TRes Function(Input$IntOperationFilterInput) then,
  ) = _CopyWithImpl$Input$IntOperationFilterInput;

  factory CopyWith$Input$IntOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$IntOperationFilterInput;

  TRes call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  });
}

class _CopyWithImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithImpl$Input$IntOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$IntOperationFilterInput _instance;

  final TRes Function(Input$IntOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$IntOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if ($in != _undefined) 'in': ($in as List<int?>?),
        if (nin != _undefined) 'nin': (nin as List<int?>?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (ngt != _undefined) 'ngt': (ngt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (ngte != _undefined) 'ngte': (ngte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (nlt != _undefined) 'nlt': (nlt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (nlte != _undefined) 'nlte': (nlte as int?),
      }));
}

class _CopyWithStubImpl$Input$IntOperationFilterInput<TRes>
    implements CopyWith$Input$IntOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$IntOperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? neq,
    List<int?>? $in,
    List<int?>? nin,
    int? gt,
    int? ngt,
    int? gte,
    int? ngte,
    int? lt,
    int? nlt,
    int? lte,
    int? nlte,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfActiveQuoteModelFilterInput {
  factory Input$ListFilterInputTypeOfActiveQuoteModelFilterInput({
    Input$ActiveQuoteModelFilterInput? all,
    Input$ActiveQuoteModelFilterInput? none,
    Input$ActiveQuoteModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfActiveQuoteModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfActiveQuoteModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfActiveQuoteModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$ActiveQuoteModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$ActiveQuoteModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$ActiveQuoteModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfActiveQuoteModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$ActiveQuoteModelFilterInput? get all =>
      (_$data['all'] as Input$ActiveQuoteModelFilterInput?);

  Input$ActiveQuoteModelFilterInput? get none =>
      (_$data['none'] as Input$ActiveQuoteModelFilterInput?);

  Input$ActiveQuoteModelFilterInput? get some =>
      (_$data['some'] as Input$ActiveQuoteModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<
          Input$ListFilterInputTypeOfActiveQuoteModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfActiveQuoteModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput(
    Input$ListFilterInputTypeOfActiveQuoteModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfActiveQuoteModelFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput;

  TRes call({
    Input$ActiveQuoteModelFilterInput? all,
    Input$ActiveQuoteModelFilterInput? none,
    Input$ActiveQuoteModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get all;
  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get none;
  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfActiveQuoteModelFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfActiveQuoteModelFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfActiveQuoteModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$ActiveQuoteModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$ActiveQuoteModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$ActiveQuoteModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$ActiveQuoteModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$ActiveQuoteModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$ActiveQuoteModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$ActiveQuoteModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$ActiveQuoteModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$ActiveQuoteModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfActiveQuoteModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$ActiveQuoteModelFilterInput? all,
    Input$ActiveQuoteModelFilterInput? none,
    Input$ActiveQuoteModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get all =>
      CopyWith$Input$ActiveQuoteModelFilterInput.stub(_res);

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get none =>
      CopyWith$Input$ActiveQuoteModelFilterInput.stub(_res);

  CopyWith$Input$ActiveQuoteModelFilterInput<TRes> get some =>
      CopyWith$Input$ActiveQuoteModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfBankAccountModelFilterInput {
  factory Input$ListFilterInputTypeOfBankAccountModelFilterInput({
    Input$BankAccountModelFilterInput? all,
    Input$BankAccountModelFilterInput? none,
    Input$BankAccountModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfBankAccountModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfBankAccountModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfBankAccountModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$BankAccountModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$BankAccountModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$BankAccountModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfBankAccountModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$BankAccountModelFilterInput? get all =>
      (_$data['all'] as Input$BankAccountModelFilterInput?);

  Input$BankAccountModelFilterInput? get none =>
      (_$data['none'] as Input$BankAccountModelFilterInput?);

  Input$BankAccountModelFilterInput? get some =>
      (_$data['some'] as Input$BankAccountModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<
          Input$ListFilterInputTypeOfBankAccountModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfBankAccountModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput(
    Input$ListFilterInputTypeOfBankAccountModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfBankAccountModelFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput;

  TRes call({
    Input$BankAccountModelFilterInput? all,
    Input$BankAccountModelFilterInput? none,
    Input$BankAccountModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$BankAccountModelFilterInput<TRes> get all;
  CopyWith$Input$BankAccountModelFilterInput<TRes> get none;
  CopyWith$Input$BankAccountModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfBankAccountModelFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfBankAccountModelFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfBankAccountModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$BankAccountModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$BankAccountModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$BankAccountModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$BankAccountModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$BankAccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$BankAccountModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$BankAccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$BankAccountModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$BankAccountModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$BankAccountModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfBankAccountModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfBankAccountModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$BankAccountModelFilterInput? all,
    Input$BankAccountModelFilterInput? none,
    Input$BankAccountModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$BankAccountModelFilterInput<TRes> get all =>
      CopyWith$Input$BankAccountModelFilterInput.stub(_res);

  CopyWith$Input$BankAccountModelFilterInput<TRes> get none =>
      CopyWith$Input$BankAccountModelFilterInput.stub(_res);

  CopyWith$Input$BankAccountModelFilterInput<TRes> get some =>
      CopyWith$Input$BankAccountModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfDocumentModelFilterInput {
  factory Input$ListFilterInputTypeOfDocumentModelFilterInput({
    Input$DocumentModelFilterInput? all,
    Input$DocumentModelFilterInput? none,
    Input$DocumentModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfDocumentModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfDocumentModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfDocumentModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$DocumentModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$DocumentModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$DocumentModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfDocumentModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DocumentModelFilterInput? get all =>
      (_$data['all'] as Input$DocumentModelFilterInput?);

  Input$DocumentModelFilterInput? get none =>
      (_$data['none'] as Input$DocumentModelFilterInput?);

  Input$DocumentModelFilterInput? get some =>
      (_$data['some'] as Input$DocumentModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<
          Input$ListFilterInputTypeOfDocumentModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfDocumentModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput(
    Input$ListFilterInputTypeOfDocumentModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfDocumentModelFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput;

  TRes call({
    Input$DocumentModelFilterInput? all,
    Input$DocumentModelFilterInput? none,
    Input$DocumentModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$DocumentModelFilterInput<TRes> get all;
  CopyWith$Input$DocumentModelFilterInput<TRes> get none;
  CopyWith$Input$DocumentModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfDocumentModelFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfDocumentModelFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfDocumentModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined) 'all': (all as Input$DocumentModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$DocumentModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$DocumentModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$DocumentModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$DocumentModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$DocumentModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$DocumentModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$DocumentModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$DocumentModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$DocumentModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$DocumentModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$DocumentModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfDocumentModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfDocumentModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$DocumentModelFilterInput? all,
    Input$DocumentModelFilterInput? none,
    Input$DocumentModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$DocumentModelFilterInput<TRes> get all =>
      CopyWith$Input$DocumentModelFilterInput.stub(_res);

  CopyWith$Input$DocumentModelFilterInput<TRes> get none =>
      CopyWith$Input$DocumentModelFilterInput.stub(_res);

  CopyWith$Input$DocumentModelFilterInput<TRes> get some =>
      CopyWith$Input$DocumentModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfNonConformingPartModelFilterInput {
  factory Input$ListFilterInputTypeOfNonConformingPartModelFilterInput({
    Input$NonConformingPartModelFilterInput? all,
    Input$NonConformingPartModelFilterInput? none,
    Input$NonConformingPartModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfNonConformingPartModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfNonConformingPartModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfNonConformingPartModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$NonConformingPartModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$NonConformingPartModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$NonConformingPartModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfNonConformingPartModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$NonConformingPartModelFilterInput? get all =>
      (_$data['all'] as Input$NonConformingPartModelFilterInput?);

  Input$NonConformingPartModelFilterInput? get none =>
      (_$data['none'] as Input$NonConformingPartModelFilterInput?);

  Input$NonConformingPartModelFilterInput? get some =>
      (_$data['some'] as Input$NonConformingPartModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
          Input$ListFilterInputTypeOfNonConformingPartModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input$ListFilterInputTypeOfNonConformingPartModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput(
    Input$ListFilterInputTypeOfNonConformingPartModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfNonConformingPartModelFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput;

  TRes call({
    Input$NonConformingPartModelFilterInput? all,
    Input$NonConformingPartModelFilterInput? none,
    Input$NonConformingPartModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get all;
  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get none;
  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfNonConformingPartModelFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfNonConformingPartModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfNonConformingPartModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$NonConformingPartModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$NonConformingPartModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$NonConformingPartModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$NonConformingPartModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NonConformingPartModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$NonConformingPartModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NonConformingPartModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$NonConformingPartModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NonConformingPartModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$NonConformingPartModelFilterInput? all,
    Input$NonConformingPartModelFilterInput? none,
    Input$NonConformingPartModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get all =>
      CopyWith$Input$NonConformingPartModelFilterInput.stub(_res);

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get none =>
      CopyWith$Input$NonConformingPartModelFilterInput.stub(_res);

  CopyWith$Input$NonConformingPartModelFilterInput<TRes> get some =>
      CopyWith$Input$NonConformingPartModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput {
  factory Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput({
    Input$PriceAdjustmentComponentModelFilterInput? all,
    Input$PriceAdjustmentComponentModelFilterInput? none,
    Input$PriceAdjustmentComponentModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput._(
      this._$data);

  factory Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$PriceAdjustmentComponentModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$PriceAdjustmentComponentModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$PriceAdjustmentComponentModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
        ._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PriceAdjustmentComponentModelFilterInput? get all =>
      (_$data['all'] as Input$PriceAdjustmentComponentModelFilterInput?);

  Input$PriceAdjustmentComponentModelFilterInput? get none =>
      (_$data['none'] as Input$PriceAdjustmentComponentModelFilterInput?);

  Input$PriceAdjustmentComponentModelFilterInput? get some =>
      (_$data['some'] as Input$PriceAdjustmentComponentModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
          Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput(
    Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
        instance,
    TRes Function(
            Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput;

  TRes call({
    Input$PriceAdjustmentComponentModelFilterInput? all,
    Input$PriceAdjustmentComponentModelFilterInput? none,
    Input$PriceAdjustmentComponentModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get all;
  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get none;
  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
      _instance;

  final TRes Function(
          Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
          ._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$PriceAdjustmentComponentModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$PriceAdjustmentComponentModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$PriceAdjustmentComponentModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$PriceAdjustmentComponentModelFilterInput? all,
    Input$PriceAdjustmentComponentModelFilterInput? none,
    Input$PriceAdjustmentComponentModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get all =>
      CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(_res);

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get none =>
      CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(_res);

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> get some =>
      CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfQuoteLineFilterInput {
  factory Input$ListFilterInputTypeOfQuoteLineFilterInput({
    Input$QuoteLineFilterInput? all,
    Input$QuoteLineFilterInput? none,
    Input$QuoteLineFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfQuoteLineFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfQuoteLineFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfQuoteLineFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$QuoteLineFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$QuoteLineFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$QuoteLineFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfQuoteLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$QuoteLineFilterInput? get all =>
      (_$data['all'] as Input$QuoteLineFilterInput?);

  Input$QuoteLineFilterInput? get none =>
      (_$data['none'] as Input$QuoteLineFilterInput?);

  Input$QuoteLineFilterInput? get some =>
      (_$data['some'] as Input$QuoteLineFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<
          Input$ListFilterInputTypeOfQuoteLineFilterInput>
      get copyWith => CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfQuoteLineFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput(
    Input$ListFilterInputTypeOfQuoteLineFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfQuoteLineFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput;

  TRes call({
    Input$QuoteLineFilterInput? all,
    Input$QuoteLineFilterInput? none,
    Input$QuoteLineFilterInput? some,
    bool? any,
  });
  CopyWith$Input$QuoteLineFilterInput<TRes> get all;
  CopyWith$Input$QuoteLineFilterInput<TRes> get none;
  CopyWith$Input$QuoteLineFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfQuoteLineFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfQuoteLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfQuoteLineFilterInput._({
        ..._instance._$data,
        if (all != _undefined) 'all': (all as Input$QuoteLineFilterInput?),
        if (none != _undefined) 'none': (none as Input$QuoteLineFilterInput?),
        if (some != _undefined) 'some': (some as Input$QuoteLineFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$QuoteLineFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$QuoteLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$QuoteLineFilterInput(local$all, (e) => call(all: e));
  }

  CopyWith$Input$QuoteLineFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$QuoteLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$QuoteLineFilterInput(local$none, (e) => call(none: e));
  }

  CopyWith$Input$QuoteLineFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$QuoteLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$QuoteLineFilterInput(local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfQuoteLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfQuoteLineFilterInput(this._res);

  TRes _res;

  call({
    Input$QuoteLineFilterInput? all,
    Input$QuoteLineFilterInput? none,
    Input$QuoteLineFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$QuoteLineFilterInput<TRes> get all =>
      CopyWith$Input$QuoteLineFilterInput.stub(_res);

  CopyWith$Input$QuoteLineFilterInput<TRes> get none =>
      CopyWith$Input$QuoteLineFilterInput.stub(_res);

  CopyWith$Input$QuoteLineFilterInput<TRes> get some =>
      CopyWith$Input$QuoteLineFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput {
  factory Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput({
    Input$VehicleBatchQuoteModelFilterInput? all,
    Input$VehicleBatchQuoteModelFilterInput? none,
    Input$VehicleBatchQuoteModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$VehicleBatchQuoteModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$VehicleBatchQuoteModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$VehicleBatchQuoteModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$VehicleBatchQuoteModelFilterInput? get all =>
      (_$data['all'] as Input$VehicleBatchQuoteModelFilterInput?);

  Input$VehicleBatchQuoteModelFilterInput? get none =>
      (_$data['none'] as Input$VehicleBatchQuoteModelFilterInput?);

  Input$VehicleBatchQuoteModelFilterInput? get some =>
      (_$data['some'] as Input$VehicleBatchQuoteModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
          Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput(
    Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput;

  TRes call({
    Input$VehicleBatchQuoteModelFilterInput? all,
    Input$VehicleBatchQuoteModelFilterInput? none,
    Input$VehicleBatchQuoteModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get all;
  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get none;
  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$VehicleBatchQuoteModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$VehicleBatchQuoteModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$VehicleBatchQuoteModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleBatchQuoteModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleBatchQuoteModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleBatchQuoteModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$VehicleBatchQuoteModelFilterInput? all,
    Input$VehicleBatchQuoteModelFilterInput? none,
    Input$VehicleBatchQuoteModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get all =>
      CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(_res);

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get none =>
      CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(_res);

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> get some =>
      CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput {
  factory Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput({
    Input$VehicleCatDetailRequestFilterInput? all,
    Input$VehicleCatDetailRequestFilterInput? none,
    Input$VehicleCatDetailRequestFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$VehicleCatDetailRequestFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$VehicleCatDetailRequestFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$VehicleCatDetailRequestFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$VehicleCatDetailRequestFilterInput? get all =>
      (_$data['all'] as Input$VehicleCatDetailRequestFilterInput?);

  Input$VehicleCatDetailRequestFilterInput? get none =>
      (_$data['none'] as Input$VehicleCatDetailRequestFilterInput?);

  Input$VehicleCatDetailRequestFilterInput? get some =>
      (_$data['some'] as Input$VehicleCatDetailRequestFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
          Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput(
    Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput;

  TRes call({
    Input$VehicleCatDetailRequestFilterInput? all,
    Input$VehicleCatDetailRequestFilterInput? none,
    Input$VehicleCatDetailRequestFilterInput? some,
    bool? any,
  });
  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get all;
  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get none;
  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$VehicleCatDetailRequestFilterInput?),
        if (none != _undefined)
          'none': (none as Input$VehicleCatDetailRequestFilterInput?),
        if (some != _undefined)
          'some': (some as Input$VehicleCatDetailRequestFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleCatDetailRequestFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleCatDetailRequestFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$VehicleCatDetailRequestFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput(
      this._res);

  TRes _res;

  call({
    Input$VehicleCatDetailRequestFilterInput? all,
    Input$VehicleCatDetailRequestFilterInput? none,
    Input$VehicleCatDetailRequestFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get all =>
      CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(_res);

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get none =>
      CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(_res);

  CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> get some =>
      CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput {
  factory Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput({
    Input$VehicleDocumentsModelFilterInput? all,
    Input$VehicleDocumentsModelFilterInput? none,
    Input$VehicleDocumentsModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$VehicleDocumentsModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$VehicleDocumentsModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$VehicleDocumentsModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$VehicleDocumentsModelFilterInput? get all =>
      (_$data['all'] as Input$VehicleDocumentsModelFilterInput?);

  Input$VehicleDocumentsModelFilterInput? get none =>
      (_$data['none'] as Input$VehicleDocumentsModelFilterInput?);

  Input$VehicleDocumentsModelFilterInput? get some =>
      (_$data['some'] as Input$VehicleDocumentsModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
          Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput(
    Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput;

  TRes call({
    Input$VehicleDocumentsModelFilterInput? all,
    Input$VehicleDocumentsModelFilterInput? none,
    Input$VehicleDocumentsModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get all;
  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get none;
  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$VehicleDocumentsModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$VehicleDocumentsModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$VehicleDocumentsModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$VehicleDocumentsModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$VehicleDocumentsModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$VehicleDocumentsModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$VehicleDocumentsModelFilterInput? all,
    Input$VehicleDocumentsModelFilterInput? none,
    Input$VehicleDocumentsModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get all =>
      CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_res);

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get none =>
      CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_res);

  CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> get some =>
      CopyWith$Input$VehicleDocumentsModelFilterInput.stub(_res);
}

class Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput {
  factory Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput({
    Input$YardOpeningTimesModelFilterInput? all,
    Input$YardOpeningTimesModelFilterInput? none,
    Input$YardOpeningTimesModelFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput._({
        if (all != null) r'all': all,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('all')) {
      final l$all = data['all'];
      result$data['all'] = l$all == null
          ? null
          : Input$YardOpeningTimesModelFilterInput.fromJson(
              (l$all as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$YardOpeningTimesModelFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$YardOpeningTimesModelFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$YardOpeningTimesModelFilterInput? get all =>
      (_$data['all'] as Input$YardOpeningTimesModelFilterInput?);

  Input$YardOpeningTimesModelFilterInput? get none =>
      (_$data['none'] as Input$YardOpeningTimesModelFilterInput?);

  Input$YardOpeningTimesModelFilterInput? get some =>
      (_$data['some'] as Input$YardOpeningTimesModelFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('all')) {
      final l$all = all;
      result$data['all'] = l$all?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    if (_$data.containsKey('any')) {
      final l$any = any;
      result$data['any'] = l$any;
    }
    return result$data;
  }

  CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
          Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (_$data.containsKey('all') != other._$data.containsKey('all')) {
      return false;
    }
    if (l$all != lOther$all) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    final l$any = any;
    final lOther$any = other.any;
    if (_$data.containsKey('any') != other._$data.containsKey('any')) {
      return false;
    }
    if (l$any != lOther$any) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('all') ? l$all : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput(
    Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput;

  TRes call({
    Input$YardOpeningTimesModelFilterInput? all,
    Input$YardOpeningTimesModelFilterInput? none,
    Input$YardOpeningTimesModelFilterInput? some,
    bool? any,
  });
  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get all;
  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get none;
  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput _instance;

  final TRes Function(
      Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput._({
        ..._instance._$data,
        if (all != _undefined)
          'all': (all as Input$YardOpeningTimesModelFilterInput?),
        if (none != _undefined)
          'none': (none as Input$YardOpeningTimesModelFilterInput?),
        if (some != _undefined)
          'some': (some as Input$YardOpeningTimesModelFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get all {
    final local$all = _instance.all;
    return local$all == null
        ? CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$YardOpeningTimesModelFilterInput(
            local$all, (e) => call(all: e));
  }

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$YardOpeningTimesModelFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$YardOpeningTimesModelFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput(
      this._res);

  TRes _res;

  call({
    Input$YardOpeningTimesModelFilterInput? all,
    Input$YardOpeningTimesModelFilterInput? none,
    Input$YardOpeningTimesModelFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get all =>
      CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_res);

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get none =>
      CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_res);

  CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> get some =>
      CopyWith$Input$YardOpeningTimesModelFilterInput.stub(_res);
}

class Input$NonConformingPartModelFilterInput {
  factory Input$NonConformingPartModelFilterInput({
    List<Input$NonConformingPartModelFilterInput>? and,
    List<Input$NonConformingPartModelFilterInput>? or,
    Input$StringOperationFilterInput? partName,
    Input$StringOperationFilterInput? path,
  }) =>
      Input$NonConformingPartModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (partName != null) r'partName': partName,
        if (path != null) r'path': path,
      });

  Input$NonConformingPartModelFilterInput._(this._$data);

  factory Input$NonConformingPartModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$NonConformingPartModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$NonConformingPartModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('partName')) {
      final l$partName = data['partName'];
      result$data['partName'] = l$partName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partName as Map<String, dynamic>));
    }
    if (data.containsKey('path')) {
      final l$path = data['path'];
      result$data['path'] = l$path == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$path as Map<String, dynamic>));
    }
    return Input$NonConformingPartModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$NonConformingPartModelFilterInput>? get and =>
      (_$data['and'] as List<Input$NonConformingPartModelFilterInput>?);

  List<Input$NonConformingPartModelFilterInput>? get or =>
      (_$data['or'] as List<Input$NonConformingPartModelFilterInput>?);

  Input$StringOperationFilterInput? get partName =>
      (_$data['partName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get path =>
      (_$data['path'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('partName')) {
      final l$partName = partName;
      result$data['partName'] = l$partName?.toJson();
    }
    if (_$data.containsKey('path')) {
      final l$path = path;
      result$data['path'] = l$path?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$NonConformingPartModelFilterInput<
          Input$NonConformingPartModelFilterInput>
      get copyWith => CopyWith$Input$NonConformingPartModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NonConformingPartModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (_$data.containsKey('partName') !=
        other._$data.containsKey('partName')) {
      return false;
    }
    if (l$partName != lOther$partName) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (_$data.containsKey('path') != other._$data.containsKey('path')) {
      return false;
    }
    if (l$path != lOther$path) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$partName = partName;
    final l$path = path;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('partName') ? l$partName : const {},
      _$data.containsKey('path') ? l$path : const {},
    ]);
  }
}

abstract class CopyWith$Input$NonConformingPartModelFilterInput<TRes> {
  factory CopyWith$Input$NonConformingPartModelFilterInput(
    Input$NonConformingPartModelFilterInput instance,
    TRes Function(Input$NonConformingPartModelFilterInput) then,
  ) = _CopyWithImpl$Input$NonConformingPartModelFilterInput;

  factory CopyWith$Input$NonConformingPartModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NonConformingPartModelFilterInput;

  TRes call({
    List<Input$NonConformingPartModelFilterInput>? and,
    List<Input$NonConformingPartModelFilterInput>? or,
    Input$StringOperationFilterInput? partName,
    Input$StringOperationFilterInput? path,
  });
  TRes and(
      Iterable<Input$NonConformingPartModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$NonConformingPartModelFilterInput<
                      Input$NonConformingPartModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$NonConformingPartModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$NonConformingPartModelFilterInput<
                      Input$NonConformingPartModelFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get partName;
  CopyWith$Input$StringOperationFilterInput<TRes> get path;
}

class _CopyWithImpl$Input$NonConformingPartModelFilterInput<TRes>
    implements CopyWith$Input$NonConformingPartModelFilterInput<TRes> {
  _CopyWithImpl$Input$NonConformingPartModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$NonConformingPartModelFilterInput _instance;

  final TRes Function(Input$NonConformingPartModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? partName = _undefined,
    Object? path = _undefined,
  }) =>
      _then(Input$NonConformingPartModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$NonConformingPartModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$NonConformingPartModelFilterInput>?),
        if (partName != _undefined)
          'partName': (partName as Input$StringOperationFilterInput?),
        if (path != _undefined)
          'path': (path as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$NonConformingPartModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$NonConformingPartModelFilterInput<
                          Input$NonConformingPartModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$NonConformingPartModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$NonConformingPartModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$NonConformingPartModelFilterInput<
                          Input$NonConformingPartModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$NonConformingPartModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get partName {
    final local$partName = _instance.partName;
    return local$partName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partName, (e) => call(partName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get path {
    final local$path = _instance.path;
    return local$path == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$path, (e) => call(path: e));
  }
}

class _CopyWithStubImpl$Input$NonConformingPartModelFilterInput<TRes>
    implements CopyWith$Input$NonConformingPartModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$NonConformingPartModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$NonConformingPartModelFilterInput>? and,
    List<Input$NonConformingPartModelFilterInput>? or,
    Input$StringOperationFilterInput? partName,
    Input$StringOperationFilterInput? path,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get partName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get path =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$NonConformingPartModelInput {
  factory Input$NonConformingPartModelInput({
    required String partName,
    String? path,
  }) =>
      Input$NonConformingPartModelInput._({
        r'partName': partName,
        if (path != null) r'path': path,
      });

  Input$NonConformingPartModelInput._(this._$data);

  factory Input$NonConformingPartModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partName = data['partName'];
    result$data['partName'] = (l$partName as String);
    if (data.containsKey('path')) {
      final l$path = data['path'];
      result$data['path'] = (l$path as String?);
    }
    return Input$NonConformingPartModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partName => (_$data['partName'] as String);

  String? get path => (_$data['path'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partName = partName;
    result$data['partName'] = l$partName;
    if (_$data.containsKey('path')) {
      final l$path = path;
      result$data['path'] = l$path;
    }
    return result$data;
  }

  CopyWith$Input$NonConformingPartModelInput<Input$NonConformingPartModelInput>
      get copyWith => CopyWith$Input$NonConformingPartModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NonConformingPartModelInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partName = partName;
    final lOther$partName = other.partName;
    if (l$partName != lOther$partName) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (_$data.containsKey('path') != other._$data.containsKey('path')) {
      return false;
    }
    if (l$path != lOther$path) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partName = partName;
    final l$path = path;
    return Object.hashAll([
      l$partName,
      _$data.containsKey('path') ? l$path : const {},
    ]);
  }
}

abstract class CopyWith$Input$NonConformingPartModelInput<TRes> {
  factory CopyWith$Input$NonConformingPartModelInput(
    Input$NonConformingPartModelInput instance,
    TRes Function(Input$NonConformingPartModelInput) then,
  ) = _CopyWithImpl$Input$NonConformingPartModelInput;

  factory CopyWith$Input$NonConformingPartModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NonConformingPartModelInput;

  TRes call({
    String? partName,
    String? path,
  });
}

class _CopyWithImpl$Input$NonConformingPartModelInput<TRes>
    implements CopyWith$Input$NonConformingPartModelInput<TRes> {
  _CopyWithImpl$Input$NonConformingPartModelInput(
    this._instance,
    this._then,
  );

  final Input$NonConformingPartModelInput _instance;

  final TRes Function(Input$NonConformingPartModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partName = _undefined,
    Object? path = _undefined,
  }) =>
      _then(Input$NonConformingPartModelInput._({
        ..._instance._$data,
        if (partName != _undefined && partName != null)
          'partName': (partName as String),
        if (path != _undefined) 'path': (path as String?),
      }));
}

class _CopyWithStubImpl$Input$NonConformingPartModelInput<TRes>
    implements CopyWith$Input$NonConformingPartModelInput<TRes> {
  _CopyWithStubImpl$Input$NonConformingPartModelInput(this._res);

  TRes _res;

  call({
    String? partName,
    String? path,
  }) =>
      _res;
}

class Input$NullableOfLeadSourceEnumOperationFilterInput {
  factory Input$NullableOfLeadSourceEnumOperationFilterInput({
    Enum$LeadSourceEnum? eq,
    Enum$LeadSourceEnum? neq,
    List<Enum$LeadSourceEnum?>? $in,
    List<Enum$LeadSourceEnum?>? nin,
  }) =>
      Input$NullableOfLeadSourceEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$NullableOfLeadSourceEnumOperationFilterInput._(this._$data);

  factory Input$NullableOfLeadSourceEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$LeadSourceEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$LeadSourceEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$LeadSourceEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$LeadSourceEnum((e as String)))
          .toList();
    }
    return Input$NullableOfLeadSourceEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$LeadSourceEnum? get eq => (_$data['eq'] as Enum$LeadSourceEnum?);

  Enum$LeadSourceEnum? get neq => (_$data['neq'] as Enum$LeadSourceEnum?);

  List<Enum$LeadSourceEnum?>? get $in =>
      (_$data['in'] as List<Enum$LeadSourceEnum?>?);

  List<Enum$LeadSourceEnum?>? get nin =>
      (_$data['nin'] as List<Enum$LeadSourceEnum?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$LeadSourceEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$LeadSourceEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : toJson$Enum$LeadSourceEnum(e))
          .toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin
          ?.map((e) => e == null ? null : toJson$Enum$LeadSourceEnum(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<
          Input$NullableOfLeadSourceEnumOperationFilterInput>
      get copyWith =>
          CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NullableOfLeadSourceEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<
    TRes> {
  factory CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput(
    Input$NullableOfLeadSourceEnumOperationFilterInput instance,
    TRes Function(Input$NullableOfLeadSourceEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$NullableOfLeadSourceEnumOperationFilterInput;

  factory CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$NullableOfLeadSourceEnumOperationFilterInput;

  TRes call({
    Enum$LeadSourceEnum? eq,
    Enum$LeadSourceEnum? neq,
    List<Enum$LeadSourceEnum?>? $in,
    List<Enum$LeadSourceEnum?>? nin,
  });
}

class _CopyWithImpl$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes>
    implements
        CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$NullableOfLeadSourceEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$NullableOfLeadSourceEnumOperationFilterInput _instance;

  final TRes Function(Input$NullableOfLeadSourceEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$NullableOfLeadSourceEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$LeadSourceEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$LeadSourceEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$LeadSourceEnum?>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$LeadSourceEnum?>?),
      }));
}

class _CopyWithStubImpl$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes>
    implements
        CopyWith$Input$NullableOfLeadSourceEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$NullableOfLeadSourceEnumOperationFilterInput(
      this._res);

  TRes _res;

  call({
    Enum$LeadSourceEnum? eq,
    Enum$LeadSourceEnum? neq,
    List<Enum$LeadSourceEnum?>? $in,
    List<Enum$LeadSourceEnum?>? nin,
  }) =>
      _res;
}

class Input$NullableOfQuoteStatusEnumOperationFilterInput {
  factory Input$NullableOfQuoteStatusEnumOperationFilterInput({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum?>? $in,
    List<Enum$QuoteStatusEnum?>? nin,
  }) =>
      Input$NullableOfQuoteStatusEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$NullableOfQuoteStatusEnumOperationFilterInput._(this._$data);

  factory Input$NullableOfQuoteStatusEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$QuoteStatusEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$QuoteStatusEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$QuoteStatusEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$QuoteStatusEnum((e as String)))
          .toList();
    }
    return Input$NullableOfQuoteStatusEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$QuoteStatusEnum? get eq => (_$data['eq'] as Enum$QuoteStatusEnum?);

  Enum$QuoteStatusEnum? get neq => (_$data['neq'] as Enum$QuoteStatusEnum?);

  List<Enum$QuoteStatusEnum?>? get $in =>
      (_$data['in'] as List<Enum$QuoteStatusEnum?>?);

  List<Enum$QuoteStatusEnum?>? get nin =>
      (_$data['nin'] as List<Enum$QuoteStatusEnum?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$QuoteStatusEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$QuoteStatusEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : toJson$Enum$QuoteStatusEnum(e))
          .toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin
          ?.map((e) => e == null ? null : toJson$Enum$QuoteStatusEnum(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<
          Input$NullableOfQuoteStatusEnumOperationFilterInput>
      get copyWith =>
          CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NullableOfQuoteStatusEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<
    TRes> {
  factory CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput(
    Input$NullableOfQuoteStatusEnumOperationFilterInput instance,
    TRes Function(Input$NullableOfQuoteStatusEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput;

  factory CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput;

  TRes call({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum?>? $in,
    List<Enum$QuoteStatusEnum?>? nin,
  });
}

class _CopyWithImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes>
    implements
        CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$NullableOfQuoteStatusEnumOperationFilterInput _instance;

  final TRes Function(Input$NullableOfQuoteStatusEnumOperationFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$NullableOfQuoteStatusEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$QuoteStatusEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$QuoteStatusEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$QuoteStatusEnum?>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$QuoteStatusEnum?>?),
      }));
}

class _CopyWithStubImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput<
        TRes>
    implements
        CopyWith$Input$NullableOfQuoteStatusEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$NullableOfQuoteStatusEnumOperationFilterInput(
      this._res);

  TRes _res;

  call({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum?>? $in,
    List<Enum$QuoteStatusEnum?>? nin,
  }) =>
      _res;
}

class Input$NullableOfUomCodeOperationFilterInput {
  factory Input$NullableOfUomCodeOperationFilterInput({
    Enum$UomCode? eq,
    Enum$UomCode? neq,
    List<Enum$UomCode?>? $in,
    List<Enum$UomCode?>? nin,
  }) =>
      Input$NullableOfUomCodeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$NullableOfUomCodeOperationFilterInput._(this._$data);

  factory Input$NullableOfUomCodeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$UomCode((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$UomCode((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$UomCode((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$UomCode((e as String)))
          .toList();
    }
    return Input$NullableOfUomCodeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$UomCode? get eq => (_$data['eq'] as Enum$UomCode?);

  Enum$UomCode? get neq => (_$data['neq'] as Enum$UomCode?);

  List<Enum$UomCode?>? get $in => (_$data['in'] as List<Enum$UomCode?>?);

  List<Enum$UomCode?>? get nin => (_$data['nin'] as List<Enum$UomCode?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$UomCode(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq == null ? null : toJson$Enum$UomCode(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => e == null ? null : toJson$Enum$UomCode(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => e == null ? null : toJson$Enum$UomCode(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$NullableOfUomCodeOperationFilterInput<
          Input$NullableOfUomCodeOperationFilterInput>
      get copyWith => CopyWith$Input$NullableOfUomCodeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NullableOfUomCodeOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes> {
  factory CopyWith$Input$NullableOfUomCodeOperationFilterInput(
    Input$NullableOfUomCodeOperationFilterInput instance,
    TRes Function(Input$NullableOfUomCodeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$NullableOfUomCodeOperationFilterInput;

  factory CopyWith$Input$NullableOfUomCodeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NullableOfUomCodeOperationFilterInput;

  TRes call({
    Enum$UomCode? eq,
    Enum$UomCode? neq,
    List<Enum$UomCode?>? $in,
    List<Enum$UomCode?>? nin,
  });
}

class _CopyWithImpl$Input$NullableOfUomCodeOperationFilterInput<TRes>
    implements CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$NullableOfUomCodeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$NullableOfUomCodeOperationFilterInput _instance;

  final TRes Function(Input$NullableOfUomCodeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$NullableOfUomCodeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$UomCode?),
        if (neq != _undefined) 'neq': (neq as Enum$UomCode?),
        if ($in != _undefined) 'in': ($in as List<Enum$UomCode?>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$UomCode?>?),
      }));
}

class _CopyWithStubImpl$Input$NullableOfUomCodeOperationFilterInput<TRes>
    implements CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$NullableOfUomCodeOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$UomCode? eq,
    Enum$UomCode? neq,
    List<Enum$UomCode?>? $in,
    List<Enum$UomCode?>? nin,
  }) =>
      _res;
}

class Input$PaymentMethodEnumOperationFilterInput {
  factory Input$PaymentMethodEnumOperationFilterInput({
    Enum$PaymentMethodEnum? eq,
    Enum$PaymentMethodEnum? neq,
    List<Enum$PaymentMethodEnum>? $in,
    List<Enum$PaymentMethodEnum>? nin,
  }) =>
      Input$PaymentMethodEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$PaymentMethodEnumOperationFilterInput._(this._$data);

  factory Input$PaymentMethodEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$PaymentMethodEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$PaymentMethodEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PaymentMethodEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$PaymentMethodEnum((e as String)))
          .toList();
    }
    return Input$PaymentMethodEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PaymentMethodEnum? get eq => (_$data['eq'] as Enum$PaymentMethodEnum?);

  Enum$PaymentMethodEnum? get neq => (_$data['neq'] as Enum$PaymentMethodEnum?);

  List<Enum$PaymentMethodEnum>? get $in =>
      (_$data['in'] as List<Enum$PaymentMethodEnum>?);

  List<Enum$PaymentMethodEnum>? get nin =>
      (_$data['nin'] as List<Enum$PaymentMethodEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$PaymentMethodEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$PaymentMethodEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$PaymentMethodEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$PaymentMethodEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$PaymentMethodEnumOperationFilterInput<
          Input$PaymentMethodEnumOperationFilterInput>
      get copyWith => CopyWith$Input$PaymentMethodEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentMethodEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$PaymentMethodEnumOperationFilterInput(
    Input$PaymentMethodEnumOperationFilterInput instance,
    TRes Function(Input$PaymentMethodEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$PaymentMethodEnumOperationFilterInput;

  factory CopyWith$Input$PaymentMethodEnumOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentMethodEnumOperationFilterInput;

  TRes call({
    Enum$PaymentMethodEnum? eq,
    Enum$PaymentMethodEnum? neq,
    List<Enum$PaymentMethodEnum>? $in,
    List<Enum$PaymentMethodEnum>? nin,
  });
}

class _CopyWithImpl$Input$PaymentMethodEnumOperationFilterInput<TRes>
    implements CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$PaymentMethodEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$PaymentMethodEnumOperationFilterInput _instance;

  final TRes Function(Input$PaymentMethodEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$PaymentMethodEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$PaymentMethodEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$PaymentMethodEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$PaymentMethodEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$PaymentMethodEnum>?),
      }));
}

class _CopyWithStubImpl$Input$PaymentMethodEnumOperationFilterInput<TRes>
    implements CopyWith$Input$PaymentMethodEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$PaymentMethodEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$PaymentMethodEnum? eq,
    Enum$PaymentMethodEnum? neq,
    List<Enum$PaymentMethodEnum>? $in,
    List<Enum$PaymentMethodEnum>? nin,
  }) =>
      _res;
}

class Input$PriceAdjustmentComponentModelFilterInput {
  factory Input$PriceAdjustmentComponentModelFilterInput({
    List<Input$PriceAdjustmentComponentModelFilterInput>? and,
    List<Input$PriceAdjustmentComponentModelFilterInput>? or,
    Input$StringOperationFilterInput? componentName,
    Input$FloatOperationFilterInput? value,
    Input$StringOperationFilterInput? reason,
  }) =>
      Input$PriceAdjustmentComponentModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (componentName != null) r'componentName': componentName,
        if (value != null) r'value': value,
        if (reason != null) r'reason': reason,
      });

  Input$PriceAdjustmentComponentModelFilterInput._(this._$data);

  factory Input$PriceAdjustmentComponentModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$PriceAdjustmentComponentModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$PriceAdjustmentComponentModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('componentName')) {
      final l$componentName = data['componentName'];
      result$data['componentName'] = l$componentName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$componentName as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('reason')) {
      final l$reason = data['reason'];
      result$data['reason'] = l$reason == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$reason as Map<String, dynamic>));
    }
    return Input$PriceAdjustmentComponentModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PriceAdjustmentComponentModelFilterInput>? get and =>
      (_$data['and'] as List<Input$PriceAdjustmentComponentModelFilterInput>?);

  List<Input$PriceAdjustmentComponentModelFilterInput>? get or =>
      (_$data['or'] as List<Input$PriceAdjustmentComponentModelFilterInput>?);

  Input$StringOperationFilterInput? get componentName =>
      (_$data['componentName'] as Input$StringOperationFilterInput?);

  Input$FloatOperationFilterInput? get value =>
      (_$data['value'] as Input$FloatOperationFilterInput?);

  Input$StringOperationFilterInput? get reason =>
      (_$data['reason'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('componentName')) {
      final l$componentName = componentName;
      result$data['componentName'] = l$componentName?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('reason')) {
      final l$reason = reason;
      result$data['reason'] = l$reason?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<
          Input$PriceAdjustmentComponentModelFilterInput>
      get copyWith => CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PriceAdjustmentComponentModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$componentName = componentName;
    final lOther$componentName = other.componentName;
    if (_$data.containsKey('componentName') !=
        other._$data.containsKey('componentName')) {
      return false;
    }
    if (l$componentName != lOther$componentName) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (_$data.containsKey('reason') != other._$data.containsKey('reason')) {
      return false;
    }
    if (l$reason != lOther$reason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$componentName = componentName;
    final l$value = value;
    final l$reason = reason;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('componentName') ? l$componentName : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('reason') ? l$reason : const {},
    ]);
  }
}

abstract class CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> {
  factory CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
    Input$PriceAdjustmentComponentModelFilterInput instance,
    TRes Function(Input$PriceAdjustmentComponentModelFilterInput) then,
  ) = _CopyWithImpl$Input$PriceAdjustmentComponentModelFilterInput;

  factory CopyWith$Input$PriceAdjustmentComponentModelFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$PriceAdjustmentComponentModelFilterInput;

  TRes call({
    List<Input$PriceAdjustmentComponentModelFilterInput>? and,
    List<Input$PriceAdjustmentComponentModelFilterInput>? or,
    Input$StringOperationFilterInput? componentName,
    Input$FloatOperationFilterInput? value,
    Input$StringOperationFilterInput? reason,
  });
  TRes and(
      Iterable<Input$PriceAdjustmentComponentModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<
                      Input$PriceAdjustmentComponentModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PriceAdjustmentComponentModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PriceAdjustmentComponentModelFilterInput<
                      Input$PriceAdjustmentComponentModelFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get componentName;
  CopyWith$Input$FloatOperationFilterInput<TRes> get value;
  CopyWith$Input$StringOperationFilterInput<TRes> get reason;
}

class _CopyWithImpl$Input$PriceAdjustmentComponentModelFilterInput<TRes>
    implements CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> {
  _CopyWithImpl$Input$PriceAdjustmentComponentModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$PriceAdjustmentComponentModelFilterInput _instance;

  final TRes Function(Input$PriceAdjustmentComponentModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? componentName = _undefined,
    Object? value = _undefined,
    Object? reason = _undefined,
  }) =>
      _then(Input$PriceAdjustmentComponentModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PriceAdjustmentComponentModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$PriceAdjustmentComponentModelFilterInput>?),
        if (componentName != _undefined)
          'componentName': (componentName as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$FloatOperationFilterInput?),
        if (reason != _undefined)
          'reason': (reason as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$PriceAdjustmentComponentModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PriceAdjustmentComponentModelFilterInput<
                          Input$PriceAdjustmentComponentModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map(
              (e) => CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PriceAdjustmentComponentModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PriceAdjustmentComponentModelFilterInput<
                          Input$PriceAdjustmentComponentModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map(
              (e) => CopyWith$Input$PriceAdjustmentComponentModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get componentName {
    final local$componentName = _instance.componentName;
    return local$componentName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$componentName, (e) => call(componentName: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get reason {
    final local$reason = _instance.reason;
    return local$reason == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$reason, (e) => call(reason: e));
  }
}

class _CopyWithStubImpl$Input$PriceAdjustmentComponentModelFilterInput<TRes>
    implements CopyWith$Input$PriceAdjustmentComponentModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$PriceAdjustmentComponentModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$PriceAdjustmentComponentModelFilterInput>? and,
    List<Input$PriceAdjustmentComponentModelFilterInput>? or,
    Input$StringOperationFilterInput? componentName,
    Input$FloatOperationFilterInput? value,
    Input$StringOperationFilterInput? reason,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get componentName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get value =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get reason =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$PriceAdjustmentComponentModelInput {
  factory Input$PriceAdjustmentComponentModelInput({
    required String componentName,
    required double value,
    String? reason,
  }) =>
      Input$PriceAdjustmentComponentModelInput._({
        r'componentName': componentName,
        r'value': value,
        if (reason != null) r'reason': reason,
      });

  Input$PriceAdjustmentComponentModelInput._(this._$data);

  factory Input$PriceAdjustmentComponentModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$componentName = data['componentName'];
    result$data['componentName'] = (l$componentName as String);
    final l$value = data['value'];
    result$data['value'] = (l$value as num).toDouble();
    if (data.containsKey('reason')) {
      final l$reason = data['reason'];
      result$data['reason'] = (l$reason as String?);
    }
    return Input$PriceAdjustmentComponentModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get componentName => (_$data['componentName'] as String);

  double get value => (_$data['value'] as double);

  String? get reason => (_$data['reason'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$componentName = componentName;
    result$data['componentName'] = l$componentName;
    final l$value = value;
    result$data['value'] = l$value;
    if (_$data.containsKey('reason')) {
      final l$reason = reason;
      result$data['reason'] = l$reason;
    }
    return result$data;
  }

  CopyWith$Input$PriceAdjustmentComponentModelInput<
          Input$PriceAdjustmentComponentModelInput>
      get copyWith => CopyWith$Input$PriceAdjustmentComponentModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PriceAdjustmentComponentModelInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$componentName = componentName;
    final lOther$componentName = other.componentName;
    if (l$componentName != lOther$componentName) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (_$data.containsKey('reason') != other._$data.containsKey('reason')) {
      return false;
    }
    if (l$reason != lOther$reason) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$componentName = componentName;
    final l$value = value;
    final l$reason = reason;
    return Object.hashAll([
      l$componentName,
      l$value,
      _$data.containsKey('reason') ? l$reason : const {},
    ]);
  }
}

abstract class CopyWith$Input$PriceAdjustmentComponentModelInput<TRes> {
  factory CopyWith$Input$PriceAdjustmentComponentModelInput(
    Input$PriceAdjustmentComponentModelInput instance,
    TRes Function(Input$PriceAdjustmentComponentModelInput) then,
  ) = _CopyWithImpl$Input$PriceAdjustmentComponentModelInput;

  factory CopyWith$Input$PriceAdjustmentComponentModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PriceAdjustmentComponentModelInput;

  TRes call({
    String? componentName,
    double? value,
    String? reason,
  });
}

class _CopyWithImpl$Input$PriceAdjustmentComponentModelInput<TRes>
    implements CopyWith$Input$PriceAdjustmentComponentModelInput<TRes> {
  _CopyWithImpl$Input$PriceAdjustmentComponentModelInput(
    this._instance,
    this._then,
  );

  final Input$PriceAdjustmentComponentModelInput _instance;

  final TRes Function(Input$PriceAdjustmentComponentModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? componentName = _undefined,
    Object? value = _undefined,
    Object? reason = _undefined,
  }) =>
      _then(Input$PriceAdjustmentComponentModelInput._({
        ..._instance._$data,
        if (componentName != _undefined && componentName != null)
          'componentName': (componentName as String),
        if (value != _undefined && value != null) 'value': (value as double),
        if (reason != _undefined) 'reason': (reason as String?),
      }));
}

class _CopyWithStubImpl$Input$PriceAdjustmentComponentModelInput<TRes>
    implements CopyWith$Input$PriceAdjustmentComponentModelInput<TRes> {
  _CopyWithStubImpl$Input$PriceAdjustmentComponentModelInput(this._res);

  TRes _res;

  call({
    String? componentName,
    double? value,
    String? reason,
  }) =>
      _res;
}

class Input$QuoteAccountTypeOperationFilterInput {
  factory Input$QuoteAccountTypeOperationFilterInput({
    Enum$QuoteAccountType? eq,
    Enum$QuoteAccountType? neq,
    List<Enum$QuoteAccountType>? $in,
    List<Enum$QuoteAccountType>? nin,
  }) =>
      Input$QuoteAccountTypeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$QuoteAccountTypeOperationFilterInput._(this._$data);

  factory Input$QuoteAccountTypeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$QuoteAccountType((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$QuoteAccountType((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteAccountType((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteAccountType((e as String)))
          .toList();
    }
    return Input$QuoteAccountTypeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$QuoteAccountType? get eq => (_$data['eq'] as Enum$QuoteAccountType?);

  Enum$QuoteAccountType? get neq => (_$data['neq'] as Enum$QuoteAccountType?);

  List<Enum$QuoteAccountType>? get $in =>
      (_$data['in'] as List<Enum$QuoteAccountType>?);

  List<Enum$QuoteAccountType>? get nin =>
      (_$data['nin'] as List<Enum$QuoteAccountType>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$QuoteAccountType(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$QuoteAccountType(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$QuoteAccountType(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$QuoteAccountType(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$QuoteAccountTypeOperationFilterInput<
          Input$QuoteAccountTypeOperationFilterInput>
      get copyWith => CopyWith$Input$QuoteAccountTypeOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteAccountTypeOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> {
  factory CopyWith$Input$QuoteAccountTypeOperationFilterInput(
    Input$QuoteAccountTypeOperationFilterInput instance,
    TRes Function(Input$QuoteAccountTypeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteAccountTypeOperationFilterInput;

  factory CopyWith$Input$QuoteAccountTypeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteAccountTypeOperationFilterInput;

  TRes call({
    Enum$QuoteAccountType? eq,
    Enum$QuoteAccountType? neq,
    List<Enum$QuoteAccountType>? $in,
    List<Enum$QuoteAccountType>? nin,
  });
}

class _CopyWithImpl$Input$QuoteAccountTypeOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteAccountTypeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteAccountTypeOperationFilterInput _instance;

  final TRes Function(Input$QuoteAccountTypeOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$QuoteAccountTypeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$QuoteAccountType?),
        if (neq != _undefined) 'neq': (neq as Enum$QuoteAccountType?),
        if ($in != _undefined) 'in': ($in as List<Enum$QuoteAccountType>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$QuoteAccountType>?),
      }));
}

class _CopyWithStubImpl$Input$QuoteAccountTypeOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteAccountTypeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteAccountTypeOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$QuoteAccountType? eq,
    Enum$QuoteAccountType? neq,
    List<Enum$QuoteAccountType>? $in,
    List<Enum$QuoteAccountType>? nin,
  }) =>
      _res;
}

class Input$QuoteForInspectionResponseFilterInput {
  factory Input$QuoteForInspectionResponseFilterInput({
    List<Input$QuoteForInspectionResponseFilterInput>? and,
    List<Input$QuoteForInspectionResponseFilterInput>? or,
    Input$InspectionVehicleDetailResponseFilterInput? vehicleDetail,
    Input$InspectionQuoteResponseFilterInput? quote,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
  }) =>
      Input$QuoteForInspectionResponseFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (vehicleDetail != null) r'vehicleDetail': vehicleDetail,
        if (quote != null) r'quote': quote,
        if (batchQuoteId != null) r'batchQuoteId': batchQuoteId,
        if (quoteStatus != null) r'quoteStatus': quoteStatus,
      });

  Input$QuoteForInspectionResponseFilterInput._(this._$data);

  factory Input$QuoteForInspectionResponseFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$QuoteForInspectionResponseFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$QuoteForInspectionResponseFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('vehicleDetail')) {
      final l$vehicleDetail = data['vehicleDetail'];
      result$data['vehicleDetail'] = l$vehicleDetail == null
          ? null
          : Input$InspectionVehicleDetailResponseFilterInput.fromJson(
              (l$vehicleDetail as Map<String, dynamic>));
    }
    if (data.containsKey('quote')) {
      final l$quote = data['quote'];
      result$data['quote'] = l$quote == null
          ? null
          : Input$InspectionQuoteResponseFilterInput.fromJson(
              (l$quote as Map<String, dynamic>));
    }
    if (data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = data['batchQuoteId'];
      result$data['batchQuoteId'] = l$batchQuoteId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$batchQuoteId as Map<String, dynamic>));
    }
    if (data.containsKey('quoteStatus')) {
      final l$quoteStatus = data['quoteStatus'];
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : Input$QuoteStatusEnumOperationFilterInput.fromJson(
              (l$quoteStatus as Map<String, dynamic>));
    }
    return Input$QuoteForInspectionResponseFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$QuoteForInspectionResponseFilterInput>? get and =>
      (_$data['and'] as List<Input$QuoteForInspectionResponseFilterInput>?);

  List<Input$QuoteForInspectionResponseFilterInput>? get or =>
      (_$data['or'] as List<Input$QuoteForInspectionResponseFilterInput>?);

  Input$InspectionVehicleDetailResponseFilterInput? get vehicleDetail =>
      (_$data['vehicleDetail']
          as Input$InspectionVehicleDetailResponseFilterInput?);

  Input$InspectionQuoteResponseFilterInput? get quote =>
      (_$data['quote'] as Input$InspectionQuoteResponseFilterInput?);

  Input$IntOperationFilterInput? get batchQuoteId =>
      (_$data['batchQuoteId'] as Input$IntOperationFilterInput?);

  Input$QuoteStatusEnumOperationFilterInput? get quoteStatus =>
      (_$data['quoteStatus'] as Input$QuoteStatusEnumOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('vehicleDetail')) {
      final l$vehicleDetail = vehicleDetail;
      result$data['vehicleDetail'] = l$vehicleDetail?.toJson();
    }
    if (_$data.containsKey('quote')) {
      final l$quote = quote;
      result$data['quote'] = l$quote?.toJson();
    }
    if (_$data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = batchQuoteId;
      result$data['batchQuoteId'] = l$batchQuoteId?.toJson();
    }
    if (_$data.containsKey('quoteStatus')) {
      final l$quoteStatus = quoteStatus;
      result$data['quoteStatus'] = l$quoteStatus?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$QuoteForInspectionResponseFilterInput<
          Input$QuoteForInspectionResponseFilterInput>
      get copyWith => CopyWith$Input$QuoteForInspectionResponseFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteForInspectionResponseFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$vehicleDetail = vehicleDetail;
    final lOther$vehicleDetail = other.vehicleDetail;
    if (_$data.containsKey('vehicleDetail') !=
        other._$data.containsKey('vehicleDetail')) {
      return false;
    }
    if (l$vehicleDetail != lOther$vehicleDetail) {
      return false;
    }
    final l$quote = quote;
    final lOther$quote = other.quote;
    if (_$data.containsKey('quote') != other._$data.containsKey('quote')) {
      return false;
    }
    if (l$quote != lOther$quote) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (_$data.containsKey('batchQuoteId') !=
        other._$data.containsKey('batchQuoteId')) {
      return false;
    }
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (_$data.containsKey('quoteStatus') !=
        other._$data.containsKey('quoteStatus')) {
      return false;
    }
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$vehicleDetail = vehicleDetail;
    final l$quote = quote;
    final l$batchQuoteId = batchQuoteId;
    final l$quoteStatus = quoteStatus;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('vehicleDetail') ? l$vehicleDetail : const {},
      _$data.containsKey('quote') ? l$quote : const {},
      _$data.containsKey('batchQuoteId') ? l$batchQuoteId : const {},
      _$data.containsKey('quoteStatus') ? l$quoteStatus : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteForInspectionResponseFilterInput<TRes> {
  factory CopyWith$Input$QuoteForInspectionResponseFilterInput(
    Input$QuoteForInspectionResponseFilterInput instance,
    TRes Function(Input$QuoteForInspectionResponseFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteForInspectionResponseFilterInput;

  factory CopyWith$Input$QuoteForInspectionResponseFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteForInspectionResponseFilterInput;

  TRes call({
    List<Input$QuoteForInspectionResponseFilterInput>? and,
    List<Input$QuoteForInspectionResponseFilterInput>? or,
    Input$InspectionVehicleDetailResponseFilterInput? vehicleDetail,
    Input$InspectionQuoteResponseFilterInput? quote,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
  });
  TRes and(
      Iterable<Input$QuoteForInspectionResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$QuoteForInspectionResponseFilterInput<
                      Input$QuoteForInspectionResponseFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$QuoteForInspectionResponseFilterInput>? Function(
              Iterable<
                  CopyWith$Input$QuoteForInspectionResponseFilterInput<
                      Input$QuoteForInspectionResponseFilterInput>>?)
          _fn);
  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes>
      get vehicleDetail;
  CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> get quote;
  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId;
  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus;
}

class _CopyWithImpl$Input$QuoteForInspectionResponseFilterInput<TRes>
    implements CopyWith$Input$QuoteForInspectionResponseFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteForInspectionResponseFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteForInspectionResponseFilterInput _instance;

  final TRes Function(Input$QuoteForInspectionResponseFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? vehicleDetail = _undefined,
    Object? quote = _undefined,
    Object? batchQuoteId = _undefined,
    Object? quoteStatus = _undefined,
  }) =>
      _then(Input$QuoteForInspectionResponseFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$QuoteForInspectionResponseFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$QuoteForInspectionResponseFilterInput>?),
        if (vehicleDetail != _undefined)
          'vehicleDetail': (vehicleDetail
              as Input$InspectionVehicleDetailResponseFilterInput?),
        if (quote != _undefined)
          'quote': (quote as Input$InspectionQuoteResponseFilterInput?),
        if (batchQuoteId != _undefined)
          'batchQuoteId': (batchQuoteId as Input$IntOperationFilterInput?),
        if (quoteStatus != _undefined)
          'quoteStatus':
              (quoteStatus as Input$QuoteStatusEnumOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$QuoteForInspectionResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$QuoteForInspectionResponseFilterInput<
                          Input$QuoteForInspectionResponseFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$QuoteForInspectionResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$QuoteForInspectionResponseFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$QuoteForInspectionResponseFilterInput<
                          Input$QuoteForInspectionResponseFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$QuoteForInspectionResponseFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes>
      get vehicleDetail {
    final local$vehicleDetail = _instance.vehicleDetail;
    return local$vehicleDetail == null
        ? CopyWith$Input$InspectionVehicleDetailResponseFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$InspectionVehicleDetailResponseFilterInput(
            local$vehicleDetail, (e) => call(vehicleDetail: e));
  }

  CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> get quote {
    final local$quote = _instance.quote;
    return local$quote == null
        ? CopyWith$Input$InspectionQuoteResponseFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$InspectionQuoteResponseFilterInput(
            local$quote, (e) => call(quote: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId {
    final local$batchQuoteId = _instance.batchQuoteId;
    return local$batchQuoteId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$batchQuoteId, (e) => call(batchQuoteId: e));
  }

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus {
    final local$quoteStatus = _instance.quoteStatus;
    return local$quoteStatus == null
        ? CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteStatusEnumOperationFilterInput(
            local$quoteStatus, (e) => call(quoteStatus: e));
  }
}

class _CopyWithStubImpl$Input$QuoteForInspectionResponseFilterInput<TRes>
    implements CopyWith$Input$QuoteForInspectionResponseFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteForInspectionResponseFilterInput(this._res);

  TRes _res;

  call({
    List<Input$QuoteForInspectionResponseFilterInput>? and,
    List<Input$QuoteForInspectionResponseFilterInput>? or,
    Input$InspectionVehicleDetailResponseFilterInput? vehicleDetail,
    Input$InspectionQuoteResponseFilterInput? quote,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$InspectionVehicleDetailResponseFilterInput<TRes>
      get vehicleDetail =>
          CopyWith$Input$InspectionVehicleDetailResponseFilterInput.stub(_res);

  CopyWith$Input$InspectionQuoteResponseFilterInput<TRes> get quote =>
      CopyWith$Input$InspectionQuoteResponseFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus =>
      CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(_res);
}

class Input$QuoteLineFilterInput {
  factory Input$QuoteLineFilterInput({
    List<Input$QuoteLineFilterInput>? and,
    List<Input$QuoteLineFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$FloatOperationFilterInput? price,
    Input$FloatOperationFilterInput? weightKG,
  }) =>
      Input$QuoteLineFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (description != null) r'description': description,
        if (price != null) r'price': price,
        if (weightKG != null) r'weightKG': weightKG,
      });

  Input$QuoteLineFilterInput._(this._$data);

  factory Input$QuoteLineFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$QuoteLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$QuoteLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$description as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('weightKG')) {
      final l$weightKG = data['weightKG'];
      result$data['weightKG'] = l$weightKG == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$weightKG as Map<String, dynamic>));
    }
    return Input$QuoteLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$QuoteLineFilterInput>? get and =>
      (_$data['and'] as List<Input$QuoteLineFilterInput>?);

  List<Input$QuoteLineFilterInput>? get or =>
      (_$data['or'] as List<Input$QuoteLineFilterInput>?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$FloatOperationFilterInput? get price =>
      (_$data['price'] as Input$FloatOperationFilterInput?);

  Input$FloatOperationFilterInput? get weightKG =>
      (_$data['weightKG'] as Input$FloatOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    if (_$data.containsKey('weightKG')) {
      final l$weightKG = weightKG;
      result$data['weightKG'] = l$weightKG?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$QuoteLineFilterInput<Input$QuoteLineFilterInput>
      get copyWith => CopyWith$Input$QuoteLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteLineFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$weightKG = weightKG;
    final lOther$weightKG = other.weightKG;
    if (_$data.containsKey('weightKG') !=
        other._$data.containsKey('weightKG')) {
      return false;
    }
    if (l$weightKG != lOther$weightKG) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$description = description;
    final l$price = price;
    final l$weightKG = weightKG;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('weightKG') ? l$weightKG : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteLineFilterInput<TRes> {
  factory CopyWith$Input$QuoteLineFilterInput(
    Input$QuoteLineFilterInput instance,
    TRes Function(Input$QuoteLineFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteLineFilterInput;

  factory CopyWith$Input$QuoteLineFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteLineFilterInput;

  TRes call({
    List<Input$QuoteLineFilterInput>? and,
    List<Input$QuoteLineFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$FloatOperationFilterInput? price,
    Input$FloatOperationFilterInput? weightKG,
  });
  TRes and(
      Iterable<Input$QuoteLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$QuoteLineFilterInput<
                      Input$QuoteLineFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$QuoteLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$QuoteLineFilterInput<
                      Input$QuoteLineFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$FloatOperationFilterInput<TRes> get price;
  CopyWith$Input$FloatOperationFilterInput<TRes> get weightKG;
}

class _CopyWithImpl$Input$QuoteLineFilterInput<TRes>
    implements CopyWith$Input$QuoteLineFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteLineFilterInput _instance;

  final TRes Function(Input$QuoteLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? description = _undefined,
    Object? price = _undefined,
    Object? weightKG = _undefined,
  }) =>
      _then(Input$QuoteLineFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$QuoteLineFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$QuoteLineFilterInput>?),
        if (description != _undefined)
          'description': (description as Input$StringOperationFilterInput?),
        if (price != _undefined)
          'price': (price as Input$FloatOperationFilterInput?),
        if (weightKG != _undefined)
          'weightKG': (weightKG as Input$FloatOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$QuoteLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$QuoteLineFilterInput<
                          Input$QuoteLineFilterInput>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$QuoteLineFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$QuoteLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$QuoteLineFilterInput<
                          Input$QuoteLineFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$QuoteLineFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$description, (e) => call(description: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$price, (e) => call(price: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get weightKG {
    final local$weightKG = _instance.weightKG;
    return local$weightKG == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$weightKG, (e) => call(weightKG: e));
  }
}

class _CopyWithStubImpl$Input$QuoteLineFilterInput<TRes>
    implements CopyWith$Input$QuoteLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteLineFilterInput(this._res);

  TRes _res;

  call({
    List<Input$QuoteLineFilterInput>? and,
    List<Input$QuoteLineFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$FloatOperationFilterInput? price,
    Input$FloatOperationFilterInput? weightKG,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get price =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get weightKG =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);
}

class Input$QuoteSourceEnumOperationFilterInput {
  factory Input$QuoteSourceEnumOperationFilterInput({
    Enum$QuoteSourceEnum? eq,
    Enum$QuoteSourceEnum? neq,
    List<Enum$QuoteSourceEnum>? $in,
    List<Enum$QuoteSourceEnum>? nin,
  }) =>
      Input$QuoteSourceEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$QuoteSourceEnumOperationFilterInput._(this._$data);

  factory Input$QuoteSourceEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$QuoteSourceEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$QuoteSourceEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteSourceEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteSourceEnum((e as String)))
          .toList();
    }
    return Input$QuoteSourceEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$QuoteSourceEnum? get eq => (_$data['eq'] as Enum$QuoteSourceEnum?);

  Enum$QuoteSourceEnum? get neq => (_$data['neq'] as Enum$QuoteSourceEnum?);

  List<Enum$QuoteSourceEnum>? get $in =>
      (_$data['in'] as List<Enum$QuoteSourceEnum>?);

  List<Enum$QuoteSourceEnum>? get nin =>
      (_$data['nin'] as List<Enum$QuoteSourceEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$QuoteSourceEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$QuoteSourceEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$QuoteSourceEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$QuoteSourceEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$QuoteSourceEnumOperationFilterInput<
          Input$QuoteSourceEnumOperationFilterInput>
      get copyWith => CopyWith$Input$QuoteSourceEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteSourceEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$QuoteSourceEnumOperationFilterInput(
    Input$QuoteSourceEnumOperationFilterInput instance,
    TRes Function(Input$QuoteSourceEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteSourceEnumOperationFilterInput;

  factory CopyWith$Input$QuoteSourceEnumOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteSourceEnumOperationFilterInput;

  TRes call({
    Enum$QuoteSourceEnum? eq,
    Enum$QuoteSourceEnum? neq,
    List<Enum$QuoteSourceEnum>? $in,
    List<Enum$QuoteSourceEnum>? nin,
  });
}

class _CopyWithImpl$Input$QuoteSourceEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteSourceEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteSourceEnumOperationFilterInput _instance;

  final TRes Function(Input$QuoteSourceEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$QuoteSourceEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$QuoteSourceEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$QuoteSourceEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$QuoteSourceEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$QuoteSourceEnum>?),
      }));
}

class _CopyWithStubImpl$Input$QuoteSourceEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteSourceEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteSourceEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$QuoteSourceEnum? eq,
    Enum$QuoteSourceEnum? neq,
    List<Enum$QuoteSourceEnum>? $in,
    List<Enum$QuoteSourceEnum>? nin,
  }) =>
      _res;
}

class Input$QuoteStatusEnumOperationFilterInput {
  factory Input$QuoteStatusEnumOperationFilterInput({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum>? $in,
    List<Enum$QuoteStatusEnum>? nin,
  }) =>
      Input$QuoteStatusEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$QuoteStatusEnumOperationFilterInput._(this._$data);

  factory Input$QuoteStatusEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$QuoteStatusEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$QuoteStatusEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteStatusEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteStatusEnum((e as String)))
          .toList();
    }
    return Input$QuoteStatusEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$QuoteStatusEnum? get eq => (_$data['eq'] as Enum$QuoteStatusEnum?);

  Enum$QuoteStatusEnum? get neq => (_$data['neq'] as Enum$QuoteStatusEnum?);

  List<Enum$QuoteStatusEnum>? get $in =>
      (_$data['in'] as List<Enum$QuoteStatusEnum>?);

  List<Enum$QuoteStatusEnum>? get nin =>
      (_$data['nin'] as List<Enum$QuoteStatusEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$QuoteStatusEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$QuoteStatusEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$QuoteStatusEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$QuoteStatusEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<
          Input$QuoteStatusEnumOperationFilterInput>
      get copyWith => CopyWith$Input$QuoteStatusEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteStatusEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$QuoteStatusEnumOperationFilterInput(
    Input$QuoteStatusEnumOperationFilterInput instance,
    TRes Function(Input$QuoteStatusEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteStatusEnumOperationFilterInput;

  factory CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteStatusEnumOperationFilterInput;

  TRes call({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum>? $in,
    List<Enum$QuoteStatusEnum>? nin,
  });
}

class _CopyWithImpl$Input$QuoteStatusEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteStatusEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteStatusEnumOperationFilterInput _instance;

  final TRes Function(Input$QuoteStatusEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$QuoteStatusEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$QuoteStatusEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$QuoteStatusEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$QuoteStatusEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$QuoteStatusEnum>?),
      }));
}

class _CopyWithStubImpl$Input$QuoteStatusEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteStatusEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$QuoteStatusEnum? eq,
    Enum$QuoteStatusEnum? neq,
    List<Enum$QuoteStatusEnum>? $in,
    List<Enum$QuoteStatusEnum>? nin,
  }) =>
      _res;
}

class Input$QuoteTypeEnumOperationFilterInput {
  factory Input$QuoteTypeEnumOperationFilterInput({
    Enum$QuoteTypeEnum? eq,
    Enum$QuoteTypeEnum? neq,
    List<Enum$QuoteTypeEnum>? $in,
    List<Enum$QuoteTypeEnum>? nin,
  }) =>
      Input$QuoteTypeEnumOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$QuoteTypeEnumOperationFilterInput._(this._$data);

  factory Input$QuoteTypeEnumOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$QuoteTypeEnum((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$QuoteTypeEnum((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteTypeEnum((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$QuoteTypeEnum((e as String)))
          .toList();
    }
    return Input$QuoteTypeEnumOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$QuoteTypeEnum? get eq => (_$data['eq'] as Enum$QuoteTypeEnum?);

  Enum$QuoteTypeEnum? get neq => (_$data['neq'] as Enum$QuoteTypeEnum?);

  List<Enum$QuoteTypeEnum>? get $in =>
      (_$data['in'] as List<Enum$QuoteTypeEnum>?);

  List<Enum$QuoteTypeEnum>? get nin =>
      (_$data['nin'] as List<Enum$QuoteTypeEnum>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$QuoteTypeEnum(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$QuoteTypeEnum(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$QuoteTypeEnum(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$QuoteTypeEnum(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<
          Input$QuoteTypeEnumOperationFilterInput>
      get copyWith => CopyWith$Input$QuoteTypeEnumOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$QuoteTypeEnumOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> {
  factory CopyWith$Input$QuoteTypeEnumOperationFilterInput(
    Input$QuoteTypeEnumOperationFilterInput instance,
    TRes Function(Input$QuoteTypeEnumOperationFilterInput) then,
  ) = _CopyWithImpl$Input$QuoteTypeEnumOperationFilterInput;

  factory CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$QuoteTypeEnumOperationFilterInput;

  TRes call({
    Enum$QuoteTypeEnum? eq,
    Enum$QuoteTypeEnum? neq,
    List<Enum$QuoteTypeEnum>? $in,
    List<Enum$QuoteTypeEnum>? nin,
  });
}

class _CopyWithImpl$Input$QuoteTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> {
  _CopyWithImpl$Input$QuoteTypeEnumOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$QuoteTypeEnumOperationFilterInput _instance;

  final TRes Function(Input$QuoteTypeEnumOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$QuoteTypeEnumOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$QuoteTypeEnum?),
        if (neq != _undefined) 'neq': (neq as Enum$QuoteTypeEnum?),
        if ($in != _undefined) 'in': ($in as List<Enum$QuoteTypeEnum>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$QuoteTypeEnum>?),
      }));
}

class _CopyWithStubImpl$Input$QuoteTypeEnumOperationFilterInput<TRes>
    implements CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$QuoteTypeEnumOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$QuoteTypeEnum? eq,
    Enum$QuoteTypeEnum? neq,
    List<Enum$QuoteTypeEnum>? $in,
    List<Enum$QuoteTypeEnum>? nin,
  }) =>
      _res;
}

class Input$StringOperationFilterInput {
  factory Input$StringOperationFilterInput({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      Input$StringOperationFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (contains != null) r'contains': contains,
        if (ncontains != null) r'ncontains': ncontains,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (startsWith != null) r'startsWith': startsWith,
        if (nstartsWith != null) r'nstartsWith': nstartsWith,
        if (endsWith != null) r'endsWith': endsWith,
        if (nendsWith != null) r'nendsWith': nendsWith,
      });

  Input$StringOperationFilterInput._(this._$data);

  factory Input$StringOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$StringOperationFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('ncontains')) {
      final l$ncontains = data['ncontains'];
      result$data['ncontains'] = (l$ncontains as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    if (data.containsKey('nstartsWith')) {
      final l$nstartsWith = data['nstartsWith'];
      result$data['nstartsWith'] = (l$nstartsWith as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('nendsWith')) {
      final l$nendsWith = data['nendsWith'];
      result$data['nendsWith'] = (l$nendsWith as String?);
    }
    return Input$StringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StringOperationFilterInput>? get and =>
      (_$data['and'] as List<Input$StringOperationFilterInput>?);

  List<Input$StringOperationFilterInput>? get or =>
      (_$data['or'] as List<Input$StringOperationFilterInput>?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get ncontains => (_$data['ncontains'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get startsWith => (_$data['startsWith'] as String?);

  String? get nstartsWith => (_$data['nstartsWith'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  String? get nendsWith => (_$data['nendsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('ncontains')) {
      final l$ncontains = ncontains;
      result$data['ncontains'] = l$ncontains;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    if (_$data.containsKey('nstartsWith')) {
      final l$nstartsWith = nstartsWith;
      result$data['nstartsWith'] = l$nstartsWith;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('nendsWith')) {
      final l$nendsWith = nendsWith;
      result$data['nendsWith'] = l$nendsWith;
    }
    return result$data;
  }

  CopyWith$Input$StringOperationFilterInput<Input$StringOperationFilterInput>
      get copyWith => CopyWith$Input$StringOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$StringOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$ncontains = ncontains;
    final lOther$ncontains = other.ncontains;
    if (_$data.containsKey('ncontains') !=
        other._$data.containsKey('ncontains')) {
      return false;
    }
    if (l$ncontains != lOther$ncontains) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    final l$nstartsWith = nstartsWith;
    final lOther$nstartsWith = other.nstartsWith;
    if (_$data.containsKey('nstartsWith') !=
        other._$data.containsKey('nstartsWith')) {
      return false;
    }
    if (l$nstartsWith != lOther$nstartsWith) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$nendsWith = nendsWith;
    final lOther$nendsWith = other.nendsWith;
    if (_$data.containsKey('nendsWith') !=
        other._$data.containsKey('nendsWith')) {
      return false;
    }
    if (l$nendsWith != lOther$nendsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$eq = eq;
    final l$neq = neq;
    final l$contains = contains;
    final l$ncontains = ncontains;
    final l$$in = $in;
    final l$nin = nin;
    final l$startsWith = startsWith;
    final l$nstartsWith = nstartsWith;
    final l$endsWith = endsWith;
    final l$nendsWith = nendsWith;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('ncontains') ? l$ncontains : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
      _$data.containsKey('nstartsWith') ? l$nstartsWith : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('nendsWith') ? l$nendsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringOperationFilterInput<TRes> {
  factory CopyWith$Input$StringOperationFilterInput(
    Input$StringOperationFilterInput instance,
    TRes Function(Input$StringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$StringOperationFilterInput;

  factory CopyWith$Input$StringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$StringOperationFilterInput;

  TRes call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  });
  TRes and(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$StringOperationFilterInput>? Function(
              Iterable<
                  CopyWith$Input$StringOperationFilterInput<
                      Input$StringOperationFilterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$StringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$StringOperationFilterInput _instance;

  final TRes Function(Input$StringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? contains = _undefined,
    Object? ncontains = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? startsWith = _undefined,
    Object? nstartsWith = _undefined,
    Object? endsWith = _undefined,
    Object? nendsWith = _undefined,
  }) =>
      _then(Input$StringOperationFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$StringOperationFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$StringOperationFilterInput>?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (contains != _undefined) 'contains': (contains as String?),
        if (ncontains != _undefined) 'ncontains': (ncontains as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (nin != _undefined) 'nin': (nin as List<String?>?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
        if (nstartsWith != _undefined) 'nstartsWith': (nstartsWith as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (nendsWith != _undefined) 'nendsWith': (nendsWith as String?),
      }));

  TRes and(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$StringOperationFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$StringOperationFilterInput<
                          Input$StringOperationFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$StringOperationFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$StringOperationFilterInput<TRes>
    implements CopyWith$Input$StringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$StringOperationFilterInput(this._res);

  TRes _res;

  call({
    List<Input$StringOperationFilterInput>? and,
    List<Input$StringOperationFilterInput>? or,
    String? eq,
    String? neq,
    String? contains,
    String? ncontains,
    List<String?>? $in,
    List<String?>? nin,
    String? startsWith,
    String? nstartsWith,
    String? endsWith,
    String? nendsWith,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;
}

class Input$UuidOperationFilterInput {
  factory Input$UuidOperationFilterInput({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  }) =>
      Input$UuidOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
        if (gt != null) r'gt': gt,
        if (ngt != null) r'ngt': ngt,
        if (gte != null) r'gte': gte,
        if (ngte != null) r'ngte': ngte,
        if (lt != null) r'lt': lt,
        if (nlt != null) r'nlt': nlt,
        if (lte != null) r'lte': lte,
        if (nlte != null) r'nlte': nlte,
      });

  Input$UuidOperationFilterInput._(this._$data);

  factory Input$UuidOperationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as String?);
    }
    return Input$UuidOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  List<String?>? get nin => (_$data['nin'] as List<String?>?);

  String? get gt => (_$data['gt'] as String?);

  String? get ngt => (_$data['ngt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get ngte => (_$data['ngte'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get nlt => (_$data['nlt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get nlte => (_$data['nlte'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$UuidOperationFilterInput<Input$UuidOperationFilterInput>
      get copyWith => CopyWith$Input$UuidOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UuidOperationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$neq = neq;
    final l$$in = $in;
    final l$nin = nin;
    final l$gt = gt;
    final l$ngt = ngt;
    final l$gte = gte;
    final l$ngte = ngte;
    final l$lt = lt;
    final l$nlt = nlt;
    final l$lte = lte;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$UuidOperationFilterInput<TRes> {
  factory CopyWith$Input$UuidOperationFilterInput(
    Input$UuidOperationFilterInput instance,
    TRes Function(Input$UuidOperationFilterInput) then,
  ) = _CopyWithImpl$Input$UuidOperationFilterInput;

  factory CopyWith$Input$UuidOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UuidOperationFilterInput;

  TRes call({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  });
}

class _CopyWithImpl$Input$UuidOperationFilterInput<TRes>
    implements CopyWith$Input$UuidOperationFilterInput<TRes> {
  _CopyWithImpl$Input$UuidOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$UuidOperationFilterInput _instance;

  final TRes Function(Input$UuidOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
    Object? gt = _undefined,
    Object? ngt = _undefined,
    Object? gte = _undefined,
    Object? ngte = _undefined,
    Object? lt = _undefined,
    Object? nlt = _undefined,
    Object? lte = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$UuidOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if ($in != _undefined) 'in': ($in as List<String?>?),
        if (nin != _undefined) 'nin': (nin as List<String?>?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (ngt != _undefined) 'ngt': (ngt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (ngte != _undefined) 'ngte': (ngte as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (nlt != _undefined) 'nlt': (nlt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (nlte != _undefined) 'nlte': (nlte as String?),
      }));
}

class _CopyWithStubImpl$Input$UuidOperationFilterInput<TRes>
    implements CopyWith$Input$UuidOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$UuidOperationFilterInput(this._res);

  TRes _res;

  call({
    String? eq,
    String? neq,
    List<String?>? $in,
    List<String?>? nin,
    String? gt,
    String? ngt,
    String? gte,
    String? ngte,
    String? lt,
    String? nlt,
    String? lte,
    String? nlte,
  }) =>
      _res;
}

class Input$VehicleBatchQuoteModelFilterInput {
  factory Input$VehicleBatchQuoteModelFilterInput({
    List<Input$VehicleBatchQuoteModelFilterInput>? and,
    List<Input$VehicleBatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? vehicleId,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$StringOperationFilterInput? accountCode,
    Input$DateTimeOperationFilterInput? quoteLastModifiedDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
  }) =>
      Input$VehicleBatchQuoteModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (vehicleId != null) r'vehicleId': vehicleId,
        if (batchQuoteId != null) r'batchQuoteId': batchQuoteId,
        if (accountCode != null) r'accountCode': accountCode,
        if (quoteLastModifiedDate != null)
          r'quoteLastModifiedDate': quoteLastModifiedDate,
        if (quoteType != null) r'quoteType': quoteType,
        if (quoteStatus != null) r'quoteStatus': quoteStatus,
        if (batchQuoteBundleId != null)
          r'batchQuoteBundleId': batchQuoteBundleId,
      });

  Input$VehicleBatchQuoteModelFilterInput._(this._$data);

  factory Input$VehicleBatchQuoteModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$VehicleBatchQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$VehicleBatchQuoteModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('vehicleId')) {
      final l$vehicleId = data['vehicleId'];
      result$data['vehicleId'] = l$vehicleId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$vehicleId as Map<String, dynamic>));
    }
    if (data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = data['batchQuoteId'];
      result$data['batchQuoteId'] = l$batchQuoteId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$batchQuoteId as Map<String, dynamic>));
    }
    if (data.containsKey('accountCode')) {
      final l$accountCode = data['accountCode'];
      result$data['accountCode'] = l$accountCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accountCode as Map<String, dynamic>));
    }
    if (data.containsKey('quoteLastModifiedDate')) {
      final l$quoteLastModifiedDate = data['quoteLastModifiedDate'];
      result$data['quoteLastModifiedDate'] = l$quoteLastModifiedDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$quoteLastModifiedDate as Map<String, dynamic>));
    }
    if (data.containsKey('quoteType')) {
      final l$quoteType = data['quoteType'];
      result$data['quoteType'] = l$quoteType == null
          ? null
          : Input$QuoteTypeEnumOperationFilterInput.fromJson(
              (l$quoteType as Map<String, dynamic>));
    }
    if (data.containsKey('quoteStatus')) {
      final l$quoteStatus = data['quoteStatus'];
      result$data['quoteStatus'] = l$quoteStatus == null
          ? null
          : Input$QuoteStatusEnumOperationFilterInput.fromJson(
              (l$quoteStatus as Map<String, dynamic>));
    }
    if (data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = data['batchQuoteBundleId'];
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId == null
          ? null
          : Input$UuidOperationFilterInput.fromJson(
              (l$batchQuoteBundleId as Map<String, dynamic>));
    }
    return Input$VehicleBatchQuoteModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$VehicleBatchQuoteModelFilterInput>? get and =>
      (_$data['and'] as List<Input$VehicleBatchQuoteModelFilterInput>?);

  List<Input$VehicleBatchQuoteModelFilterInput>? get or =>
      (_$data['or'] as List<Input$VehicleBatchQuoteModelFilterInput>?);

  Input$IntOperationFilterInput? get vehicleId =>
      (_$data['vehicleId'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get batchQuoteId =>
      (_$data['batchQuoteId'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get accountCode =>
      (_$data['accountCode'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get quoteLastModifiedDate =>
      (_$data['quoteLastModifiedDate'] as Input$DateTimeOperationFilterInput?);

  Input$QuoteTypeEnumOperationFilterInput? get quoteType =>
      (_$data['quoteType'] as Input$QuoteTypeEnumOperationFilterInput?);

  Input$QuoteStatusEnumOperationFilterInput? get quoteStatus =>
      (_$data['quoteStatus'] as Input$QuoteStatusEnumOperationFilterInput?);

  Input$UuidOperationFilterInput? get batchQuoteBundleId =>
      (_$data['batchQuoteBundleId'] as Input$UuidOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('vehicleId')) {
      final l$vehicleId = vehicleId;
      result$data['vehicleId'] = l$vehicleId?.toJson();
    }
    if (_$data.containsKey('batchQuoteId')) {
      final l$batchQuoteId = batchQuoteId;
      result$data['batchQuoteId'] = l$batchQuoteId?.toJson();
    }
    if (_$data.containsKey('accountCode')) {
      final l$accountCode = accountCode;
      result$data['accountCode'] = l$accountCode?.toJson();
    }
    if (_$data.containsKey('quoteLastModifiedDate')) {
      final l$quoteLastModifiedDate = quoteLastModifiedDate;
      result$data['quoteLastModifiedDate'] = l$quoteLastModifiedDate?.toJson();
    }
    if (_$data.containsKey('quoteType')) {
      final l$quoteType = quoteType;
      result$data['quoteType'] = l$quoteType?.toJson();
    }
    if (_$data.containsKey('quoteStatus')) {
      final l$quoteStatus = quoteStatus;
      result$data['quoteStatus'] = l$quoteStatus?.toJson();
    }
    if (_$data.containsKey('batchQuoteBundleId')) {
      final l$batchQuoteBundleId = batchQuoteBundleId;
      result$data['batchQuoteBundleId'] = l$batchQuoteBundleId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VehicleBatchQuoteModelFilterInput<
          Input$VehicleBatchQuoteModelFilterInput>
      get copyWith => CopyWith$Input$VehicleBatchQuoteModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleBatchQuoteModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$vehicleId = vehicleId;
    final lOther$vehicleId = other.vehicleId;
    if (_$data.containsKey('vehicleId') !=
        other._$data.containsKey('vehicleId')) {
      return false;
    }
    if (l$vehicleId != lOther$vehicleId) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (_$data.containsKey('batchQuoteId') !=
        other._$data.containsKey('batchQuoteId')) {
      return false;
    }
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (_$data.containsKey('accountCode') !=
        other._$data.containsKey('accountCode')) {
      return false;
    }
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    final l$quoteLastModifiedDate = quoteLastModifiedDate;
    final lOther$quoteLastModifiedDate = other.quoteLastModifiedDate;
    if (_$data.containsKey('quoteLastModifiedDate') !=
        other._$data.containsKey('quoteLastModifiedDate')) {
      return false;
    }
    if (l$quoteLastModifiedDate != lOther$quoteLastModifiedDate) {
      return false;
    }
    final l$quoteType = quoteType;
    final lOther$quoteType = other.quoteType;
    if (_$data.containsKey('quoteType') !=
        other._$data.containsKey('quoteType')) {
      return false;
    }
    if (l$quoteType != lOther$quoteType) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (_$data.containsKey('quoteStatus') !=
        other._$data.containsKey('quoteStatus')) {
      return false;
    }
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$batchQuoteBundleId = batchQuoteBundleId;
    final lOther$batchQuoteBundleId = other.batchQuoteBundleId;
    if (_$data.containsKey('batchQuoteBundleId') !=
        other._$data.containsKey('batchQuoteBundleId')) {
      return false;
    }
    if (l$batchQuoteBundleId != lOther$batchQuoteBundleId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$vehicleId = vehicleId;
    final l$batchQuoteId = batchQuoteId;
    final l$accountCode = accountCode;
    final l$quoteLastModifiedDate = quoteLastModifiedDate;
    final l$quoteType = quoteType;
    final l$quoteStatus = quoteStatus;
    final l$batchQuoteBundleId = batchQuoteBundleId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('vehicleId') ? l$vehicleId : const {},
      _$data.containsKey('batchQuoteId') ? l$batchQuoteId : const {},
      _$data.containsKey('accountCode') ? l$accountCode : const {},
      _$data.containsKey('quoteLastModifiedDate')
          ? l$quoteLastModifiedDate
          : const {},
      _$data.containsKey('quoteType') ? l$quoteType : const {},
      _$data.containsKey('quoteStatus') ? l$quoteStatus : const {},
      _$data.containsKey('batchQuoteBundleId')
          ? l$batchQuoteBundleId
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> {
  factory CopyWith$Input$VehicleBatchQuoteModelFilterInput(
    Input$VehicleBatchQuoteModelFilterInput instance,
    TRes Function(Input$VehicleBatchQuoteModelFilterInput) then,
  ) = _CopyWithImpl$Input$VehicleBatchQuoteModelFilterInput;

  factory CopyWith$Input$VehicleBatchQuoteModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleBatchQuoteModelFilterInput;

  TRes call({
    List<Input$VehicleBatchQuoteModelFilterInput>? and,
    List<Input$VehicleBatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? vehicleId,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$StringOperationFilterInput? accountCode,
    Input$DateTimeOperationFilterInput? quoteLastModifiedDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
  });
  TRes and(
      Iterable<Input$VehicleBatchQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleBatchQuoteModelFilterInput<
                      Input$VehicleBatchQuoteModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$VehicleBatchQuoteModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleBatchQuoteModelFilterInput<
                      Input$VehicleBatchQuoteModelFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleId;
  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId;
  CopyWith$Input$StringOperationFilterInput<TRes> get accountCode;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get quoteLastModifiedDate;
  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType;
  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus;
  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId;
}

class _CopyWithImpl$Input$VehicleBatchQuoteModelFilterInput<TRes>
    implements CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> {
  _CopyWithImpl$Input$VehicleBatchQuoteModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$VehicleBatchQuoteModelFilterInput _instance;

  final TRes Function(Input$VehicleBatchQuoteModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? vehicleId = _undefined,
    Object? batchQuoteId = _undefined,
    Object? accountCode = _undefined,
    Object? quoteLastModifiedDate = _undefined,
    Object? quoteType = _undefined,
    Object? quoteStatus = _undefined,
    Object? batchQuoteBundleId = _undefined,
  }) =>
      _then(Input$VehicleBatchQuoteModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$VehicleBatchQuoteModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$VehicleBatchQuoteModelFilterInput>?),
        if (vehicleId != _undefined)
          'vehicleId': (vehicleId as Input$IntOperationFilterInput?),
        if (batchQuoteId != _undefined)
          'batchQuoteId': (batchQuoteId as Input$IntOperationFilterInput?),
        if (accountCode != _undefined)
          'accountCode': (accountCode as Input$StringOperationFilterInput?),
        if (quoteLastModifiedDate != _undefined)
          'quoteLastModifiedDate':
              (quoteLastModifiedDate as Input$DateTimeOperationFilterInput?),
        if (quoteType != _undefined)
          'quoteType': (quoteType as Input$QuoteTypeEnumOperationFilterInput?),
        if (quoteStatus != _undefined)
          'quoteStatus':
              (quoteStatus as Input$QuoteStatusEnumOperationFilterInput?),
        if (batchQuoteBundleId != _undefined)
          'batchQuoteBundleId':
              (batchQuoteBundleId as Input$UuidOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$VehicleBatchQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleBatchQuoteModelFilterInput<
                          Input$VehicleBatchQuoteModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$VehicleBatchQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$VehicleBatchQuoteModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleBatchQuoteModelFilterInput<
                          Input$VehicleBatchQuoteModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$VehicleBatchQuoteModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleId {
    final local$vehicleId = _instance.vehicleId;
    return local$vehicleId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$vehicleId, (e) => call(vehicleId: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId {
    final local$batchQuoteId = _instance.batchQuoteId;
    return local$batchQuoteId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$batchQuoteId, (e) => call(batchQuoteId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accountCode {
    final local$accountCode = _instance.accountCode;
    return local$accountCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accountCode, (e) => call(accountCode: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get quoteLastModifiedDate {
    final local$quoteLastModifiedDate = _instance.quoteLastModifiedDate;
    return local$quoteLastModifiedDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$quoteLastModifiedDate, (e) => call(quoteLastModifiedDate: e));
  }

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType {
    final local$quoteType = _instance.quoteType;
    return local$quoteType == null
        ? CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteTypeEnumOperationFilterInput(
            local$quoteType, (e) => call(quoteType: e));
  }

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus {
    final local$quoteStatus = _instance.quoteStatus;
    return local$quoteStatus == null
        ? CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$QuoteStatusEnumOperationFilterInput(
            local$quoteStatus, (e) => call(quoteStatus: e));
  }

  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId {
    final local$batchQuoteBundleId = _instance.batchQuoteBundleId;
    return local$batchQuoteBundleId == null
        ? CopyWith$Input$UuidOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$UuidOperationFilterInput(
            local$batchQuoteBundleId, (e) => call(batchQuoteBundleId: e));
  }
}

class _CopyWithStubImpl$Input$VehicleBatchQuoteModelFilterInput<TRes>
    implements CopyWith$Input$VehicleBatchQuoteModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$VehicleBatchQuoteModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$VehicleBatchQuoteModelFilterInput>? and,
    List<Input$VehicleBatchQuoteModelFilterInput>? or,
    Input$IntOperationFilterInput? vehicleId,
    Input$IntOperationFilterInput? batchQuoteId,
    Input$StringOperationFilterInput? accountCode,
    Input$DateTimeOperationFilterInput? quoteLastModifiedDate,
    Input$QuoteTypeEnumOperationFilterInput? quoteType,
    Input$QuoteStatusEnumOperationFilterInput? quoteStatus,
    Input$UuidOperationFilterInput? batchQuoteBundleId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get batchQuoteId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accountCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get quoteLastModifiedDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteTypeEnumOperationFilterInput<TRes> get quoteType =>
      CopyWith$Input$QuoteTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$QuoteStatusEnumOperationFilterInput<TRes> get quoteStatus =>
      CopyWith$Input$QuoteStatusEnumOperationFilterInput.stub(_res);

  CopyWith$Input$UuidOperationFilterInput<TRes> get batchQuoteBundleId =>
      CopyWith$Input$UuidOperationFilterInput.stub(_res);
}

class Input$VehicleCatDetailRequestFilterInput {
  factory Input$VehicleCatDetailRequestFilterInput({
    List<Input$VehicleCatDetailRequestFilterInput>? and,
    List<Input$VehicleCatDetailRequestFilterInput>? or,
    Input$IntOperationFilterInput? vehicleCatId,
    Input$StringOperationFilterInput? location,
    Input$StringOperationFilterInput? catClassification,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? sealNumber,
    Input$DecimalOperationFilterInput? catValue,
    Input$IntOperationFilterInput? matchProbability,
    Input$FloatOperationFilterInput? catalyticFill,
    Input$StringOperationFilterInput? imagePath,
    Input$StringOperationFilterInput? catId,
    Input$BooleanOperationFilterInput? isManual,
    Input$IntOperationFilterInput? techemetPriceCountSheetDetailId,
  }) =>
      Input$VehicleCatDetailRequestFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (vehicleCatId != null) r'vehicleCatId': vehicleCatId,
        if (location != null) r'location': location,
        if (catClassification != null) r'catClassification': catClassification,
        if (serialNumber != null) r'serialNumber': serialNumber,
        if (sealNumber != null) r'sealNumber': sealNumber,
        if (catValue != null) r'catValue': catValue,
        if (matchProbability != null) r'matchProbability': matchProbability,
        if (catalyticFill != null) r'catalyticFill': catalyticFill,
        if (imagePath != null) r'imagePath': imagePath,
        if (catId != null) r'catId': catId,
        if (isManual != null) r'isManual': isManual,
        if (techemetPriceCountSheetDetailId != null)
          r'techemetPriceCountSheetDetailId': techemetPriceCountSheetDetailId,
      });

  Input$VehicleCatDetailRequestFilterInput._(this._$data);

  factory Input$VehicleCatDetailRequestFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$VehicleCatDetailRequestFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$VehicleCatDetailRequestFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('vehicleCatId')) {
      final l$vehicleCatId = data['vehicleCatId'];
      result$data['vehicleCatId'] = l$vehicleCatId == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$vehicleCatId as Map<String, dynamic>));
    }
    if (data.containsKey('location')) {
      final l$location = data['location'];
      result$data['location'] = l$location == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$location as Map<String, dynamic>));
    }
    if (data.containsKey('catClassification')) {
      final l$catClassification = data['catClassification'];
      result$data['catClassification'] = l$catClassification == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$catClassification as Map<String, dynamic>));
    }
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = l$serialNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$serialNumber as Map<String, dynamic>));
    }
    if (data.containsKey('sealNumber')) {
      final l$sealNumber = data['sealNumber'];
      result$data['sealNumber'] = l$sealNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$sealNumber as Map<String, dynamic>));
    }
    if (data.containsKey('catValue')) {
      final l$catValue = data['catValue'];
      result$data['catValue'] = l$catValue == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$catValue as Map<String, dynamic>));
    }
    if (data.containsKey('matchProbability')) {
      final l$matchProbability = data['matchProbability'];
      result$data['matchProbability'] = l$matchProbability == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$matchProbability as Map<String, dynamic>));
    }
    if (data.containsKey('catalyticFill')) {
      final l$catalyticFill = data['catalyticFill'];
      result$data['catalyticFill'] = l$catalyticFill == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$catalyticFill as Map<String, dynamic>));
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = l$imagePath == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$imagePath as Map<String, dynamic>));
    }
    if (data.containsKey('catId')) {
      final l$catId = data['catId'];
      result$data['catId'] = l$catId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$catId as Map<String, dynamic>));
    }
    if (data.containsKey('isManual')) {
      final l$isManual = data['isManual'];
      result$data['isManual'] = l$isManual == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$isManual as Map<String, dynamic>));
    }
    if (data.containsKey('techemetPriceCountSheetDetailId')) {
      final l$techemetPriceCountSheetDetailId =
          data['techemetPriceCountSheetDetailId'];
      result$data['techemetPriceCountSheetDetailId'] =
          l$techemetPriceCountSheetDetailId == null
              ? null
              : Input$IntOperationFilterInput.fromJson(
                  (l$techemetPriceCountSheetDetailId as Map<String, dynamic>));
    }
    return Input$VehicleCatDetailRequestFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$VehicleCatDetailRequestFilterInput>? get and =>
      (_$data['and'] as List<Input$VehicleCatDetailRequestFilterInput>?);

  List<Input$VehicleCatDetailRequestFilterInput>? get or =>
      (_$data['or'] as List<Input$VehicleCatDetailRequestFilterInput>?);

  Input$IntOperationFilterInput? get vehicleCatId =>
      (_$data['vehicleCatId'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get location =>
      (_$data['location'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get catClassification =>
      (_$data['catClassification'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get serialNumber =>
      (_$data['serialNumber'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get sealNumber =>
      (_$data['sealNumber'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get catValue =>
      (_$data['catValue'] as Input$DecimalOperationFilterInput?);

  Input$IntOperationFilterInput? get matchProbability =>
      (_$data['matchProbability'] as Input$IntOperationFilterInput?);

  Input$FloatOperationFilterInput? get catalyticFill =>
      (_$data['catalyticFill'] as Input$FloatOperationFilterInput?);

  Input$StringOperationFilterInput? get imagePath =>
      (_$data['imagePath'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get catId =>
      (_$data['catId'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get isManual =>
      (_$data['isManual'] as Input$BooleanOperationFilterInput?);

  Input$IntOperationFilterInput? get techemetPriceCountSheetDetailId =>
      (_$data['techemetPriceCountSheetDetailId']
          as Input$IntOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('vehicleCatId')) {
      final l$vehicleCatId = vehicleCatId;
      result$data['vehicleCatId'] = l$vehicleCatId?.toJson();
    }
    if (_$data.containsKey('location')) {
      final l$location = location;
      result$data['location'] = l$location?.toJson();
    }
    if (_$data.containsKey('catClassification')) {
      final l$catClassification = catClassification;
      result$data['catClassification'] = l$catClassification?.toJson();
    }
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber?.toJson();
    }
    if (_$data.containsKey('sealNumber')) {
      final l$sealNumber = sealNumber;
      result$data['sealNumber'] = l$sealNumber?.toJson();
    }
    if (_$data.containsKey('catValue')) {
      final l$catValue = catValue;
      result$data['catValue'] = l$catValue?.toJson();
    }
    if (_$data.containsKey('matchProbability')) {
      final l$matchProbability = matchProbability;
      result$data['matchProbability'] = l$matchProbability?.toJson();
    }
    if (_$data.containsKey('catalyticFill')) {
      final l$catalyticFill = catalyticFill;
      result$data['catalyticFill'] = l$catalyticFill?.toJson();
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath?.toJson();
    }
    if (_$data.containsKey('catId')) {
      final l$catId = catId;
      result$data['catId'] = l$catId?.toJson();
    }
    if (_$data.containsKey('isManual')) {
      final l$isManual = isManual;
      result$data['isManual'] = l$isManual?.toJson();
    }
    if (_$data.containsKey('techemetPriceCountSheetDetailId')) {
      final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
      result$data['techemetPriceCountSheetDetailId'] =
          l$techemetPriceCountSheetDetailId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VehicleCatDetailRequestFilterInput<
          Input$VehicleCatDetailRequestFilterInput>
      get copyWith => CopyWith$Input$VehicleCatDetailRequestFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleCatDetailRequestFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$vehicleCatId = vehicleCatId;
    final lOther$vehicleCatId = other.vehicleCatId;
    if (_$data.containsKey('vehicleCatId') !=
        other._$data.containsKey('vehicleCatId')) {
      return false;
    }
    if (l$vehicleCatId != lOther$vehicleCatId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (_$data.containsKey('location') !=
        other._$data.containsKey('location')) {
      return false;
    }
    if (l$location != lOther$location) {
      return false;
    }
    final l$catClassification = catClassification;
    final lOther$catClassification = other.catClassification;
    if (_$data.containsKey('catClassification') !=
        other._$data.containsKey('catClassification')) {
      return false;
    }
    if (l$catClassification != lOther$catClassification) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$sealNumber = sealNumber;
    final lOther$sealNumber = other.sealNumber;
    if (_$data.containsKey('sealNumber') !=
        other._$data.containsKey('sealNumber')) {
      return false;
    }
    if (l$sealNumber != lOther$sealNumber) {
      return false;
    }
    final l$catValue = catValue;
    final lOther$catValue = other.catValue;
    if (_$data.containsKey('catValue') !=
        other._$data.containsKey('catValue')) {
      return false;
    }
    if (l$catValue != lOther$catValue) {
      return false;
    }
    final l$matchProbability = matchProbability;
    final lOther$matchProbability = other.matchProbability;
    if (_$data.containsKey('matchProbability') !=
        other._$data.containsKey('matchProbability')) {
      return false;
    }
    if (l$matchProbability != lOther$matchProbability) {
      return false;
    }
    final l$catalyticFill = catalyticFill;
    final lOther$catalyticFill = other.catalyticFill;
    if (_$data.containsKey('catalyticFill') !=
        other._$data.containsKey('catalyticFill')) {
      return false;
    }
    if (l$catalyticFill != lOther$catalyticFill) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$catId = catId;
    final lOther$catId = other.catId;
    if (_$data.containsKey('catId') != other._$data.containsKey('catId')) {
      return false;
    }
    if (l$catId != lOther$catId) {
      return false;
    }
    final l$isManual = isManual;
    final lOther$isManual = other.isManual;
    if (_$data.containsKey('isManual') !=
        other._$data.containsKey('isManual')) {
      return false;
    }
    if (l$isManual != lOther$isManual) {
      return false;
    }
    final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
    final lOther$techemetPriceCountSheetDetailId =
        other.techemetPriceCountSheetDetailId;
    if (_$data.containsKey('techemetPriceCountSheetDetailId') !=
        other._$data.containsKey('techemetPriceCountSheetDetailId')) {
      return false;
    }
    if (l$techemetPriceCountSheetDetailId !=
        lOther$techemetPriceCountSheetDetailId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$vehicleCatId = vehicleCatId;
    final l$location = location;
    final l$catClassification = catClassification;
    final l$serialNumber = serialNumber;
    final l$sealNumber = sealNumber;
    final l$catValue = catValue;
    final l$matchProbability = matchProbability;
    final l$catalyticFill = catalyticFill;
    final l$imagePath = imagePath;
    final l$catId = catId;
    final l$isManual = isManual;
    final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('vehicleCatId') ? l$vehicleCatId : const {},
      _$data.containsKey('location') ? l$location : const {},
      _$data.containsKey('catClassification') ? l$catClassification : const {},
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      _$data.containsKey('sealNumber') ? l$sealNumber : const {},
      _$data.containsKey('catValue') ? l$catValue : const {},
      _$data.containsKey('matchProbability') ? l$matchProbability : const {},
      _$data.containsKey('catalyticFill') ? l$catalyticFill : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('catId') ? l$catId : const {},
      _$data.containsKey('isManual') ? l$isManual : const {},
      _$data.containsKey('techemetPriceCountSheetDetailId')
          ? l$techemetPriceCountSheetDetailId
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> {
  factory CopyWith$Input$VehicleCatDetailRequestFilterInput(
    Input$VehicleCatDetailRequestFilterInput instance,
    TRes Function(Input$VehicleCatDetailRequestFilterInput) then,
  ) = _CopyWithImpl$Input$VehicleCatDetailRequestFilterInput;

  factory CopyWith$Input$VehicleCatDetailRequestFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleCatDetailRequestFilterInput;

  TRes call({
    List<Input$VehicleCatDetailRequestFilterInput>? and,
    List<Input$VehicleCatDetailRequestFilterInput>? or,
    Input$IntOperationFilterInput? vehicleCatId,
    Input$StringOperationFilterInput? location,
    Input$StringOperationFilterInput? catClassification,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? sealNumber,
    Input$DecimalOperationFilterInput? catValue,
    Input$IntOperationFilterInput? matchProbability,
    Input$FloatOperationFilterInput? catalyticFill,
    Input$StringOperationFilterInput? imagePath,
    Input$StringOperationFilterInput? catId,
    Input$BooleanOperationFilterInput? isManual,
    Input$IntOperationFilterInput? techemetPriceCountSheetDetailId,
  });
  TRes and(
      Iterable<Input$VehicleCatDetailRequestFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleCatDetailRequestFilterInput<
                      Input$VehicleCatDetailRequestFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$VehicleCatDetailRequestFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleCatDetailRequestFilterInput<
                      Input$VehicleCatDetailRequestFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleCatId;
  CopyWith$Input$StringOperationFilterInput<TRes> get location;
  CopyWith$Input$StringOperationFilterInput<TRes> get catClassification;
  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get sealNumber;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue;
  CopyWith$Input$IntOperationFilterInput<TRes> get matchProbability;
  CopyWith$Input$FloatOperationFilterInput<TRes> get catalyticFill;
  CopyWith$Input$StringOperationFilterInput<TRes> get imagePath;
  CopyWith$Input$StringOperationFilterInput<TRes> get catId;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get isManual;
  CopyWith$Input$IntOperationFilterInput<TRes>
      get techemetPriceCountSheetDetailId;
}

class _CopyWithImpl$Input$VehicleCatDetailRequestFilterInput<TRes>
    implements CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> {
  _CopyWithImpl$Input$VehicleCatDetailRequestFilterInput(
    this._instance,
    this._then,
  );

  final Input$VehicleCatDetailRequestFilterInput _instance;

  final TRes Function(Input$VehicleCatDetailRequestFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? vehicleCatId = _undefined,
    Object? location = _undefined,
    Object? catClassification = _undefined,
    Object? serialNumber = _undefined,
    Object? sealNumber = _undefined,
    Object? catValue = _undefined,
    Object? matchProbability = _undefined,
    Object? catalyticFill = _undefined,
    Object? imagePath = _undefined,
    Object? catId = _undefined,
    Object? isManual = _undefined,
    Object? techemetPriceCountSheetDetailId = _undefined,
  }) =>
      _then(Input$VehicleCatDetailRequestFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$VehicleCatDetailRequestFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$VehicleCatDetailRequestFilterInput>?),
        if (vehicleCatId != _undefined)
          'vehicleCatId': (vehicleCatId as Input$IntOperationFilterInput?),
        if (location != _undefined)
          'location': (location as Input$StringOperationFilterInput?),
        if (catClassification != _undefined)
          'catClassification':
              (catClassification as Input$StringOperationFilterInput?),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as Input$StringOperationFilterInput?),
        if (sealNumber != _undefined)
          'sealNumber': (sealNumber as Input$StringOperationFilterInput?),
        if (catValue != _undefined)
          'catValue': (catValue as Input$DecimalOperationFilterInput?),
        if (matchProbability != _undefined)
          'matchProbability':
              (matchProbability as Input$IntOperationFilterInput?),
        if (catalyticFill != _undefined)
          'catalyticFill': (catalyticFill as Input$FloatOperationFilterInput?),
        if (imagePath != _undefined)
          'imagePath': (imagePath as Input$StringOperationFilterInput?),
        if (catId != _undefined)
          'catId': (catId as Input$StringOperationFilterInput?),
        if (isManual != _undefined)
          'isManual': (isManual as Input$BooleanOperationFilterInput?),
        if (techemetPriceCountSheetDetailId != _undefined)
          'techemetPriceCountSheetDetailId': (techemetPriceCountSheetDetailId
              as Input$IntOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$VehicleCatDetailRequestFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleCatDetailRequestFilterInput<
                          Input$VehicleCatDetailRequestFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$VehicleCatDetailRequestFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$VehicleCatDetailRequestFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleCatDetailRequestFilterInput<
                          Input$VehicleCatDetailRequestFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$VehicleCatDetailRequestFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleCatId {
    final local$vehicleCatId = _instance.vehicleCatId;
    return local$vehicleCatId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$vehicleCatId, (e) => call(vehicleCatId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$location, (e) => call(location: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get catClassification {
    final local$catClassification = _instance.catClassification;
    return local$catClassification == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$catClassification, (e) => call(catClassification: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber {
    final local$serialNumber = _instance.serialNumber;
    return local$serialNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$serialNumber, (e) => call(serialNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get sealNumber {
    final local$sealNumber = _instance.sealNumber;
    return local$sealNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$sealNumber, (e) => call(sealNumber: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue {
    final local$catValue = _instance.catValue;
    return local$catValue == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$catValue, (e) => call(catValue: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get matchProbability {
    final local$matchProbability = _instance.matchProbability;
    return local$matchProbability == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$matchProbability, (e) => call(matchProbability: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get catalyticFill {
    final local$catalyticFill = _instance.catalyticFill;
    return local$catalyticFill == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$catalyticFill, (e) => call(catalyticFill: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get imagePath {
    final local$imagePath = _instance.imagePath;
    return local$imagePath == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$imagePath, (e) => call(imagePath: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get catId {
    final local$catId = _instance.catId;
    return local$catId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$catId, (e) => call(catId: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isManual {
    final local$isManual = _instance.isManual;
    return local$isManual == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$isManual, (e) => call(isManual: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes>
      get techemetPriceCountSheetDetailId {
    final local$techemetPriceCountSheetDetailId =
        _instance.techemetPriceCountSheetDetailId;
    return local$techemetPriceCountSheetDetailId == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$techemetPriceCountSheetDetailId,
            (e) => call(techemetPriceCountSheetDetailId: e));
  }
}

class _CopyWithStubImpl$Input$VehicleCatDetailRequestFilterInput<TRes>
    implements CopyWith$Input$VehicleCatDetailRequestFilterInput<TRes> {
  _CopyWithStubImpl$Input$VehicleCatDetailRequestFilterInput(this._res);

  TRes _res;

  call({
    List<Input$VehicleCatDetailRequestFilterInput>? and,
    List<Input$VehicleCatDetailRequestFilterInput>? or,
    Input$IntOperationFilterInput? vehicleCatId,
    Input$StringOperationFilterInput? location,
    Input$StringOperationFilterInput? catClassification,
    Input$StringOperationFilterInput? serialNumber,
    Input$StringOperationFilterInput? sealNumber,
    Input$DecimalOperationFilterInput? catValue,
    Input$IntOperationFilterInput? matchProbability,
    Input$FloatOperationFilterInput? catalyticFill,
    Input$StringOperationFilterInput? imagePath,
    Input$StringOperationFilterInput? catId,
    Input$BooleanOperationFilterInput? isManual,
    Input$IntOperationFilterInput? techemetPriceCountSheetDetailId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get vehicleCatId =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get location =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get catClassification =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get serialNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get sealNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get catValue =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get matchProbability =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get catalyticFill =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get imagePath =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get catId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get isManual =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes>
      get techemetPriceCountSheetDetailId =>
          CopyWith$Input$IntOperationFilterInput.stub(_res);
}

class Input$VehicleCatDetailRequestInput {
  factory Input$VehicleCatDetailRequestInput({
    int? vehicleCatId,
    required String location,
    required String catClassification,
    String? serialNumber,
    String? sealNumber,
    required double catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    String? catId,
    required bool isManual,
    int? techemetPriceCountSheetDetailId,
  }) =>
      Input$VehicleCatDetailRequestInput._({
        if (vehicleCatId != null) r'vehicleCatId': vehicleCatId,
        r'location': location,
        r'catClassification': catClassification,
        if (serialNumber != null) r'serialNumber': serialNumber,
        if (sealNumber != null) r'sealNumber': sealNumber,
        r'catValue': catValue,
        if (matchProbability != null) r'matchProbability': matchProbability,
        if (catalyticFill != null) r'catalyticFill': catalyticFill,
        if (imagePath != null) r'imagePath': imagePath,
        if (catId != null) r'catId': catId,
        r'isManual': isManual,
        if (techemetPriceCountSheetDetailId != null)
          r'techemetPriceCountSheetDetailId': techemetPriceCountSheetDetailId,
      });

  Input$VehicleCatDetailRequestInput._(this._$data);

  factory Input$VehicleCatDetailRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('vehicleCatId')) {
      final l$vehicleCatId = data['vehicleCatId'];
      result$data['vehicleCatId'] = (l$vehicleCatId as int?);
    }
    final l$location = data['location'];
    result$data['location'] = (l$location as String);
    final l$catClassification = data['catClassification'];
    result$data['catClassification'] = (l$catClassification as String);
    if (data.containsKey('serialNumber')) {
      final l$serialNumber = data['serialNumber'];
      result$data['serialNumber'] = (l$serialNumber as String?);
    }
    if (data.containsKey('sealNumber')) {
      final l$sealNumber = data['sealNumber'];
      result$data['sealNumber'] = (l$sealNumber as String?);
    }
    final l$catValue = data['catValue'];
    result$data['catValue'] = (l$catValue as num).toDouble();
    if (data.containsKey('matchProbability')) {
      final l$matchProbability = data['matchProbability'];
      result$data['matchProbability'] = (l$matchProbability as int?);
    }
    if (data.containsKey('catalyticFill')) {
      final l$catalyticFill = data['catalyticFill'];
      result$data['catalyticFill'] = (l$catalyticFill as num?)?.toDouble();
    }
    if (data.containsKey('imagePath')) {
      final l$imagePath = data['imagePath'];
      result$data['imagePath'] = (l$imagePath as String?);
    }
    if (data.containsKey('catId')) {
      final l$catId = data['catId'];
      result$data['catId'] = (l$catId as String?);
    }
    final l$isManual = data['isManual'];
    result$data['isManual'] = (l$isManual as bool);
    if (data.containsKey('techemetPriceCountSheetDetailId')) {
      final l$techemetPriceCountSheetDetailId =
          data['techemetPriceCountSheetDetailId'];
      result$data['techemetPriceCountSheetDetailId'] =
          (l$techemetPriceCountSheetDetailId as int?);
    }
    return Input$VehicleCatDetailRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get vehicleCatId => (_$data['vehicleCatId'] as int?);

  String get location => (_$data['location'] as String);

  String get catClassification => (_$data['catClassification'] as String);

  String? get serialNumber => (_$data['serialNumber'] as String?);

  String? get sealNumber => (_$data['sealNumber'] as String?);

  double get catValue => (_$data['catValue'] as double);

  int? get matchProbability => (_$data['matchProbability'] as int?);

  double? get catalyticFill => (_$data['catalyticFill'] as double?);

  String? get imagePath => (_$data['imagePath'] as String?);

  String? get catId => (_$data['catId'] as String?);

  bool get isManual => (_$data['isManual'] as bool);

  int? get techemetPriceCountSheetDetailId =>
      (_$data['techemetPriceCountSheetDetailId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('vehicleCatId')) {
      final l$vehicleCatId = vehicleCatId;
      result$data['vehicleCatId'] = l$vehicleCatId;
    }
    final l$location = location;
    result$data['location'] = l$location;
    final l$catClassification = catClassification;
    result$data['catClassification'] = l$catClassification;
    if (_$data.containsKey('serialNumber')) {
      final l$serialNumber = serialNumber;
      result$data['serialNumber'] = l$serialNumber;
    }
    if (_$data.containsKey('sealNumber')) {
      final l$sealNumber = sealNumber;
      result$data['sealNumber'] = l$sealNumber;
    }
    final l$catValue = catValue;
    result$data['catValue'] = l$catValue;
    if (_$data.containsKey('matchProbability')) {
      final l$matchProbability = matchProbability;
      result$data['matchProbability'] = l$matchProbability;
    }
    if (_$data.containsKey('catalyticFill')) {
      final l$catalyticFill = catalyticFill;
      result$data['catalyticFill'] = l$catalyticFill;
    }
    if (_$data.containsKey('imagePath')) {
      final l$imagePath = imagePath;
      result$data['imagePath'] = l$imagePath;
    }
    if (_$data.containsKey('catId')) {
      final l$catId = catId;
      result$data['catId'] = l$catId;
    }
    final l$isManual = isManual;
    result$data['isManual'] = l$isManual;
    if (_$data.containsKey('techemetPriceCountSheetDetailId')) {
      final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
      result$data['techemetPriceCountSheetDetailId'] =
          l$techemetPriceCountSheetDetailId;
    }
    return result$data;
  }

  CopyWith$Input$VehicleCatDetailRequestInput<
          Input$VehicleCatDetailRequestInput>
      get copyWith => CopyWith$Input$VehicleCatDetailRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleCatDetailRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vehicleCatId = vehicleCatId;
    final lOther$vehicleCatId = other.vehicleCatId;
    if (_$data.containsKey('vehicleCatId') !=
        other._$data.containsKey('vehicleCatId')) {
      return false;
    }
    if (l$vehicleCatId != lOther$vehicleCatId) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$catClassification = catClassification;
    final lOther$catClassification = other.catClassification;
    if (l$catClassification != lOther$catClassification) {
      return false;
    }
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (_$data.containsKey('serialNumber') !=
        other._$data.containsKey('serialNumber')) {
      return false;
    }
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$sealNumber = sealNumber;
    final lOther$sealNumber = other.sealNumber;
    if (_$data.containsKey('sealNumber') !=
        other._$data.containsKey('sealNumber')) {
      return false;
    }
    if (l$sealNumber != lOther$sealNumber) {
      return false;
    }
    final l$catValue = catValue;
    final lOther$catValue = other.catValue;
    if (l$catValue != lOther$catValue) {
      return false;
    }
    final l$matchProbability = matchProbability;
    final lOther$matchProbability = other.matchProbability;
    if (_$data.containsKey('matchProbability') !=
        other._$data.containsKey('matchProbability')) {
      return false;
    }
    if (l$matchProbability != lOther$matchProbability) {
      return false;
    }
    final l$catalyticFill = catalyticFill;
    final lOther$catalyticFill = other.catalyticFill;
    if (_$data.containsKey('catalyticFill') !=
        other._$data.containsKey('catalyticFill')) {
      return false;
    }
    if (l$catalyticFill != lOther$catalyticFill) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (_$data.containsKey('imagePath') !=
        other._$data.containsKey('imagePath')) {
      return false;
    }
    if (l$imagePath != lOther$imagePath) {
      return false;
    }
    final l$catId = catId;
    final lOther$catId = other.catId;
    if (_$data.containsKey('catId') != other._$data.containsKey('catId')) {
      return false;
    }
    if (l$catId != lOther$catId) {
      return false;
    }
    final l$isManual = isManual;
    final lOther$isManual = other.isManual;
    if (l$isManual != lOther$isManual) {
      return false;
    }
    final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
    final lOther$techemetPriceCountSheetDetailId =
        other.techemetPriceCountSheetDetailId;
    if (_$data.containsKey('techemetPriceCountSheetDetailId') !=
        other._$data.containsKey('techemetPriceCountSheetDetailId')) {
      return false;
    }
    if (l$techemetPriceCountSheetDetailId !=
        lOther$techemetPriceCountSheetDetailId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$vehicleCatId = vehicleCatId;
    final l$location = location;
    final l$catClassification = catClassification;
    final l$serialNumber = serialNumber;
    final l$sealNumber = sealNumber;
    final l$catValue = catValue;
    final l$matchProbability = matchProbability;
    final l$catalyticFill = catalyticFill;
    final l$imagePath = imagePath;
    final l$catId = catId;
    final l$isManual = isManual;
    final l$techemetPriceCountSheetDetailId = techemetPriceCountSheetDetailId;
    return Object.hashAll([
      _$data.containsKey('vehicleCatId') ? l$vehicleCatId : const {},
      l$location,
      l$catClassification,
      _$data.containsKey('serialNumber') ? l$serialNumber : const {},
      _$data.containsKey('sealNumber') ? l$sealNumber : const {},
      l$catValue,
      _$data.containsKey('matchProbability') ? l$matchProbability : const {},
      _$data.containsKey('catalyticFill') ? l$catalyticFill : const {},
      _$data.containsKey('imagePath') ? l$imagePath : const {},
      _$data.containsKey('catId') ? l$catId : const {},
      l$isManual,
      _$data.containsKey('techemetPriceCountSheetDetailId')
          ? l$techemetPriceCountSheetDetailId
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleCatDetailRequestInput<TRes> {
  factory CopyWith$Input$VehicleCatDetailRequestInput(
    Input$VehicleCatDetailRequestInput instance,
    TRes Function(Input$VehicleCatDetailRequestInput) then,
  ) = _CopyWithImpl$Input$VehicleCatDetailRequestInput;

  factory CopyWith$Input$VehicleCatDetailRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleCatDetailRequestInput;

  TRes call({
    int? vehicleCatId,
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    String? catId,
    bool? isManual,
    int? techemetPriceCountSheetDetailId,
  });
}

class _CopyWithImpl$Input$VehicleCatDetailRequestInput<TRes>
    implements CopyWith$Input$VehicleCatDetailRequestInput<TRes> {
  _CopyWithImpl$Input$VehicleCatDetailRequestInput(
    this._instance,
    this._then,
  );

  final Input$VehicleCatDetailRequestInput _instance;

  final TRes Function(Input$VehicleCatDetailRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vehicleCatId = _undefined,
    Object? location = _undefined,
    Object? catClassification = _undefined,
    Object? serialNumber = _undefined,
    Object? sealNumber = _undefined,
    Object? catValue = _undefined,
    Object? matchProbability = _undefined,
    Object? catalyticFill = _undefined,
    Object? imagePath = _undefined,
    Object? catId = _undefined,
    Object? isManual = _undefined,
    Object? techemetPriceCountSheetDetailId = _undefined,
  }) =>
      _then(Input$VehicleCatDetailRequestInput._({
        ..._instance._$data,
        if (vehicleCatId != _undefined) 'vehicleCatId': (vehicleCatId as int?),
        if (location != _undefined && location != null)
          'location': (location as String),
        if (catClassification != _undefined && catClassification != null)
          'catClassification': (catClassification as String),
        if (serialNumber != _undefined)
          'serialNumber': (serialNumber as String?),
        if (sealNumber != _undefined) 'sealNumber': (sealNumber as String?),
        if (catValue != _undefined && catValue != null)
          'catValue': (catValue as double),
        if (matchProbability != _undefined)
          'matchProbability': (matchProbability as int?),
        if (catalyticFill != _undefined)
          'catalyticFill': (catalyticFill as double?),
        if (imagePath != _undefined) 'imagePath': (imagePath as String?),
        if (catId != _undefined) 'catId': (catId as String?),
        if (isManual != _undefined && isManual != null)
          'isManual': (isManual as bool),
        if (techemetPriceCountSheetDetailId != _undefined)
          'techemetPriceCountSheetDetailId':
              (techemetPriceCountSheetDetailId as int?),
      }));
}

class _CopyWithStubImpl$Input$VehicleCatDetailRequestInput<TRes>
    implements CopyWith$Input$VehicleCatDetailRequestInput<TRes> {
  _CopyWithStubImpl$Input$VehicleCatDetailRequestInput(this._res);

  TRes _res;

  call({
    int? vehicleCatId,
    String? location,
    String? catClassification,
    String? serialNumber,
    String? sealNumber,
    double? catValue,
    int? matchProbability,
    double? catalyticFill,
    String? imagePath,
    String? catId,
    bool? isManual,
    int? techemetPriceCountSheetDetailId,
  }) =>
      _res;
}

class Input$VehicleConfigurationModelFilterInput {
  factory Input$VehicleConfigurationModelFilterInput({
    List<Input$VehicleConfigurationModelFilterInput>? and,
    List<Input$VehicleConfigurationModelFilterInput>? or,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$StringOperationFilterInput? batteryImage,
    Input$BooleanOperationFilterInput? hasEngine,
    Input$BooleanOperationFilterInput? hasLockingWheelNut,
    Input$BooleanOperationFilterInput? vehicleRolls,
    Input$BooleanOperationFilterInput? engineRuns,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput? catDetails,
    Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?
        nonConformingParts,
    Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?
        vehicleDocuments,
    Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?
        priceAdjustment,
    Input$BooleanOperationFilterInput? vinUnreadable,
  }) =>
      Input$VehicleConfigurationModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (alloyWheels != null) r'alloyWheels': alloyWheels,
        if (steelWheels != null) r'steelWheels': steelWheels,
        if (chromeWheels != null) r'chromeWheels': chromeWheels,
        if (hasOriginalCat != null) r'hasOriginalCat': hasOriginalCat,
        if (hasBattery != null) r'hasBattery': hasBattery,
        if (batteryImage != null) r'batteryImage': batteryImage,
        if (hasEngine != null) r'hasEngine': hasEngine,
        if (hasLockingWheelNut != null)
          r'hasLockingWheelNut': hasLockingWheelNut,
        if (vehicleRolls != null) r'vehicleRolls': vehicleRolls,
        if (engineRuns != null) r'engineRuns': engineRuns,
        if (hasTechemetCat != null) r'hasTechemetCat': hasTechemetCat,
        if (catDetails != null) r'catDetails': catDetails,
        if (nonConformingParts != null)
          r'nonConformingParts': nonConformingParts,
        if (vehicleDocuments != null) r'vehicleDocuments': vehicleDocuments,
        if (priceAdjustment != null) r'priceAdjustment': priceAdjustment,
        if (vinUnreadable != null) r'vinUnreadable': vinUnreadable,
      });

  Input$VehicleConfigurationModelFilterInput._(this._$data);

  factory Input$VehicleConfigurationModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$VehicleConfigurationModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$VehicleConfigurationModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('alloyWheels')) {
      final l$alloyWheels = data['alloyWheels'];
      result$data['alloyWheels'] = l$alloyWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$alloyWheels as Map<String, dynamic>));
    }
    if (data.containsKey('steelWheels')) {
      final l$steelWheels = data['steelWheels'];
      result$data['steelWheels'] = l$steelWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$steelWheels as Map<String, dynamic>));
    }
    if (data.containsKey('chromeWheels')) {
      final l$chromeWheels = data['chromeWheels'];
      result$data['chromeWheels'] = l$chromeWheels == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$chromeWheels as Map<String, dynamic>));
    }
    if (data.containsKey('hasOriginalCat')) {
      final l$hasOriginalCat = data['hasOriginalCat'];
      result$data['hasOriginalCat'] = l$hasOriginalCat == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasOriginalCat as Map<String, dynamic>));
    }
    if (data.containsKey('hasBattery')) {
      final l$hasBattery = data['hasBattery'];
      result$data['hasBattery'] = l$hasBattery == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasBattery as Map<String, dynamic>));
    }
    if (data.containsKey('batteryImage')) {
      final l$batteryImage = data['batteryImage'];
      result$data['batteryImage'] = l$batteryImage == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$batteryImage as Map<String, dynamic>));
    }
    if (data.containsKey('hasEngine')) {
      final l$hasEngine = data['hasEngine'];
      result$data['hasEngine'] = l$hasEngine == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasEngine as Map<String, dynamic>));
    }
    if (data.containsKey('hasLockingWheelNut')) {
      final l$hasLockingWheelNut = data['hasLockingWheelNut'];
      result$data['hasLockingWheelNut'] = l$hasLockingWheelNut == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasLockingWheelNut as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleRolls')) {
      final l$vehicleRolls = data['vehicleRolls'];
      result$data['vehicleRolls'] = l$vehicleRolls == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$vehicleRolls as Map<String, dynamic>));
    }
    if (data.containsKey('engineRuns')) {
      final l$engineRuns = data['engineRuns'];
      result$data['engineRuns'] = l$engineRuns == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$engineRuns as Map<String, dynamic>));
    }
    if (data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = data['hasTechemetCat'];
      result$data['hasTechemetCat'] = l$hasTechemetCat == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$hasTechemetCat as Map<String, dynamic>));
    }
    if (data.containsKey('catDetails')) {
      final l$catDetails = data['catDetails'];
      result$data['catDetails'] = l$catDetails == null
          ? null
          : Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput
              .fromJson((l$catDetails as Map<String, dynamic>));
    }
    if (data.containsKey('nonConformingParts')) {
      final l$nonConformingParts = data['nonConformingParts'];
      result$data['nonConformingParts'] = l$nonConformingParts == null
          ? null
          : Input$ListFilterInputTypeOfNonConformingPartModelFilterInput
              .fromJson((l$nonConformingParts as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleDocuments')) {
      final l$vehicleDocuments = data['vehicleDocuments'];
      result$data['vehicleDocuments'] = l$vehicleDocuments == null
          ? null
          : Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput
              .fromJson((l$vehicleDocuments as Map<String, dynamic>));
    }
    if (data.containsKey('priceAdjustment')) {
      final l$priceAdjustment = data['priceAdjustment'];
      result$data['priceAdjustment'] = l$priceAdjustment == null
          ? null
          : Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
              .fromJson((l$priceAdjustment as Map<String, dynamic>));
    }
    if (data.containsKey('vinUnreadable')) {
      final l$vinUnreadable = data['vinUnreadable'];
      result$data['vinUnreadable'] = l$vinUnreadable == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$vinUnreadable as Map<String, dynamic>));
    }
    return Input$VehicleConfigurationModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$VehicleConfigurationModelFilterInput>? get and =>
      (_$data['and'] as List<Input$VehicleConfigurationModelFilterInput>?);

  List<Input$VehicleConfigurationModelFilterInput>? get or =>
      (_$data['or'] as List<Input$VehicleConfigurationModelFilterInput>?);

  Input$IntOperationFilterInput? get alloyWheels =>
      (_$data['alloyWheels'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get steelWheels =>
      (_$data['steelWheels'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get chromeWheels =>
      (_$data['chromeWheels'] as Input$IntOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasOriginalCat =>
      (_$data['hasOriginalCat'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasBattery =>
      (_$data['hasBattery'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get batteryImage =>
      (_$data['batteryImage'] as Input$StringOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasEngine =>
      (_$data['hasEngine'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasLockingWheelNut =>
      (_$data['hasLockingWheelNut'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get vehicleRolls =>
      (_$data['vehicleRolls'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get engineRuns =>
      (_$data['engineRuns'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get hasTechemetCat =>
      (_$data['hasTechemetCat'] as Input$BooleanOperationFilterInput?);

  Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput?
      get catDetails => (_$data['catDetails']
          as Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput?);

  Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?
      get nonConformingParts => (_$data['nonConformingParts']
          as Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?);

  Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?
      get vehicleDocuments => (_$data['vehicleDocuments']
          as Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?);

  Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?
      get priceAdjustment => (_$data['priceAdjustment']
          as Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?);

  Input$BooleanOperationFilterInput? get vinUnreadable =>
      (_$data['vinUnreadable'] as Input$BooleanOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('alloyWheels')) {
      final l$alloyWheels = alloyWheels;
      result$data['alloyWheels'] = l$alloyWheels?.toJson();
    }
    if (_$data.containsKey('steelWheels')) {
      final l$steelWheels = steelWheels;
      result$data['steelWheels'] = l$steelWheels?.toJson();
    }
    if (_$data.containsKey('chromeWheels')) {
      final l$chromeWheels = chromeWheels;
      result$data['chromeWheels'] = l$chromeWheels?.toJson();
    }
    if (_$data.containsKey('hasOriginalCat')) {
      final l$hasOriginalCat = hasOriginalCat;
      result$data['hasOriginalCat'] = l$hasOriginalCat?.toJson();
    }
    if (_$data.containsKey('hasBattery')) {
      final l$hasBattery = hasBattery;
      result$data['hasBattery'] = l$hasBattery?.toJson();
    }
    if (_$data.containsKey('batteryImage')) {
      final l$batteryImage = batteryImage;
      result$data['batteryImage'] = l$batteryImage?.toJson();
    }
    if (_$data.containsKey('hasEngine')) {
      final l$hasEngine = hasEngine;
      result$data['hasEngine'] = l$hasEngine?.toJson();
    }
    if (_$data.containsKey('hasLockingWheelNut')) {
      final l$hasLockingWheelNut = hasLockingWheelNut;
      result$data['hasLockingWheelNut'] = l$hasLockingWheelNut?.toJson();
    }
    if (_$data.containsKey('vehicleRolls')) {
      final l$vehicleRolls = vehicleRolls;
      result$data['vehicleRolls'] = l$vehicleRolls?.toJson();
    }
    if (_$data.containsKey('engineRuns')) {
      final l$engineRuns = engineRuns;
      result$data['engineRuns'] = l$engineRuns?.toJson();
    }
    if (_$data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = hasTechemetCat;
      result$data['hasTechemetCat'] = l$hasTechemetCat?.toJson();
    }
    if (_$data.containsKey('catDetails')) {
      final l$catDetails = catDetails;
      result$data['catDetails'] = l$catDetails?.toJson();
    }
    if (_$data.containsKey('nonConformingParts')) {
      final l$nonConformingParts = nonConformingParts;
      result$data['nonConformingParts'] = l$nonConformingParts?.toJson();
    }
    if (_$data.containsKey('vehicleDocuments')) {
      final l$vehicleDocuments = vehicleDocuments;
      result$data['vehicleDocuments'] = l$vehicleDocuments?.toJson();
    }
    if (_$data.containsKey('priceAdjustment')) {
      final l$priceAdjustment = priceAdjustment;
      result$data['priceAdjustment'] = l$priceAdjustment?.toJson();
    }
    if (_$data.containsKey('vinUnreadable')) {
      final l$vinUnreadable = vinUnreadable;
      result$data['vinUnreadable'] = l$vinUnreadable?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VehicleConfigurationModelFilterInput<
          Input$VehicleConfigurationModelFilterInput>
      get copyWith => CopyWith$Input$VehicleConfigurationModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleConfigurationModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$alloyWheels = alloyWheels;
    final lOther$alloyWheels = other.alloyWheels;
    if (_$data.containsKey('alloyWheels') !=
        other._$data.containsKey('alloyWheels')) {
      return false;
    }
    if (l$alloyWheels != lOther$alloyWheels) {
      return false;
    }
    final l$steelWheels = steelWheels;
    final lOther$steelWheels = other.steelWheels;
    if (_$data.containsKey('steelWheels') !=
        other._$data.containsKey('steelWheels')) {
      return false;
    }
    if (l$steelWheels != lOther$steelWheels) {
      return false;
    }
    final l$chromeWheels = chromeWheels;
    final lOther$chromeWheels = other.chromeWheels;
    if (_$data.containsKey('chromeWheels') !=
        other._$data.containsKey('chromeWheels')) {
      return false;
    }
    if (l$chromeWheels != lOther$chromeWheels) {
      return false;
    }
    final l$hasOriginalCat = hasOriginalCat;
    final lOther$hasOriginalCat = other.hasOriginalCat;
    if (_$data.containsKey('hasOriginalCat') !=
        other._$data.containsKey('hasOriginalCat')) {
      return false;
    }
    if (l$hasOriginalCat != lOther$hasOriginalCat) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (_$data.containsKey('hasBattery') !=
        other._$data.containsKey('hasBattery')) {
      return false;
    }
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$batteryImage = batteryImage;
    final lOther$batteryImage = other.batteryImage;
    if (_$data.containsKey('batteryImage') !=
        other._$data.containsKey('batteryImage')) {
      return false;
    }
    if (l$batteryImage != lOther$batteryImage) {
      return false;
    }
    final l$hasEngine = hasEngine;
    final lOther$hasEngine = other.hasEngine;
    if (_$data.containsKey('hasEngine') !=
        other._$data.containsKey('hasEngine')) {
      return false;
    }
    if (l$hasEngine != lOther$hasEngine) {
      return false;
    }
    final l$hasLockingWheelNut = hasLockingWheelNut;
    final lOther$hasLockingWheelNut = other.hasLockingWheelNut;
    if (_$data.containsKey('hasLockingWheelNut') !=
        other._$data.containsKey('hasLockingWheelNut')) {
      return false;
    }
    if (l$hasLockingWheelNut != lOther$hasLockingWheelNut) {
      return false;
    }
    final l$vehicleRolls = vehicleRolls;
    final lOther$vehicleRolls = other.vehicleRolls;
    if (_$data.containsKey('vehicleRolls') !=
        other._$data.containsKey('vehicleRolls')) {
      return false;
    }
    if (l$vehicleRolls != lOther$vehicleRolls) {
      return false;
    }
    final l$engineRuns = engineRuns;
    final lOther$engineRuns = other.engineRuns;
    if (_$data.containsKey('engineRuns') !=
        other._$data.containsKey('engineRuns')) {
      return false;
    }
    if (l$engineRuns != lOther$engineRuns) {
      return false;
    }
    final l$hasTechemetCat = hasTechemetCat;
    final lOther$hasTechemetCat = other.hasTechemetCat;
    if (_$data.containsKey('hasTechemetCat') !=
        other._$data.containsKey('hasTechemetCat')) {
      return false;
    }
    if (l$hasTechemetCat != lOther$hasTechemetCat) {
      return false;
    }
    final l$catDetails = catDetails;
    final lOther$catDetails = other.catDetails;
    if (_$data.containsKey('catDetails') !=
        other._$data.containsKey('catDetails')) {
      return false;
    }
    if (l$catDetails != lOther$catDetails) {
      return false;
    }
    final l$nonConformingParts = nonConformingParts;
    final lOther$nonConformingParts = other.nonConformingParts;
    if (_$data.containsKey('nonConformingParts') !=
        other._$data.containsKey('nonConformingParts')) {
      return false;
    }
    if (l$nonConformingParts != lOther$nonConformingParts) {
      return false;
    }
    final l$vehicleDocuments = vehicleDocuments;
    final lOther$vehicleDocuments = other.vehicleDocuments;
    if (_$data.containsKey('vehicleDocuments') !=
        other._$data.containsKey('vehicleDocuments')) {
      return false;
    }
    if (l$vehicleDocuments != lOther$vehicleDocuments) {
      return false;
    }
    final l$priceAdjustment = priceAdjustment;
    final lOther$priceAdjustment = other.priceAdjustment;
    if (_$data.containsKey('priceAdjustment') !=
        other._$data.containsKey('priceAdjustment')) {
      return false;
    }
    if (l$priceAdjustment != lOther$priceAdjustment) {
      return false;
    }
    final l$vinUnreadable = vinUnreadable;
    final lOther$vinUnreadable = other.vinUnreadable;
    if (_$data.containsKey('vinUnreadable') !=
        other._$data.containsKey('vinUnreadable')) {
      return false;
    }
    if (l$vinUnreadable != lOther$vinUnreadable) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$alloyWheels = alloyWheels;
    final l$steelWheels = steelWheels;
    final l$chromeWheels = chromeWheels;
    final l$hasOriginalCat = hasOriginalCat;
    final l$hasBattery = hasBattery;
    final l$batteryImage = batteryImage;
    final l$hasEngine = hasEngine;
    final l$hasLockingWheelNut = hasLockingWheelNut;
    final l$vehicleRolls = vehicleRolls;
    final l$engineRuns = engineRuns;
    final l$hasTechemetCat = hasTechemetCat;
    final l$catDetails = catDetails;
    final l$nonConformingParts = nonConformingParts;
    final l$vehicleDocuments = vehicleDocuments;
    final l$priceAdjustment = priceAdjustment;
    final l$vinUnreadable = vinUnreadable;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('alloyWheels') ? l$alloyWheels : const {},
      _$data.containsKey('steelWheels') ? l$steelWheels : const {},
      _$data.containsKey('chromeWheels') ? l$chromeWheels : const {},
      _$data.containsKey('hasOriginalCat') ? l$hasOriginalCat : const {},
      _$data.containsKey('hasBattery') ? l$hasBattery : const {},
      _$data.containsKey('batteryImage') ? l$batteryImage : const {},
      _$data.containsKey('hasEngine') ? l$hasEngine : const {},
      _$data.containsKey('hasLockingWheelNut')
          ? l$hasLockingWheelNut
          : const {},
      _$data.containsKey('vehicleRolls') ? l$vehicleRolls : const {},
      _$data.containsKey('engineRuns') ? l$engineRuns : const {},
      _$data.containsKey('hasTechemetCat') ? l$hasTechemetCat : const {},
      _$data.containsKey('catDetails') ? l$catDetails : const {},
      _$data.containsKey('nonConformingParts')
          ? l$nonConformingParts
          : const {},
      _$data.containsKey('vehicleDocuments') ? l$vehicleDocuments : const {},
      _$data.containsKey('priceAdjustment') ? l$priceAdjustment : const {},
      _$data.containsKey('vinUnreadable') ? l$vinUnreadable : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleConfigurationModelFilterInput<TRes> {
  factory CopyWith$Input$VehicleConfigurationModelFilterInput(
    Input$VehicleConfigurationModelFilterInput instance,
    TRes Function(Input$VehicleConfigurationModelFilterInput) then,
  ) = _CopyWithImpl$Input$VehicleConfigurationModelFilterInput;

  factory CopyWith$Input$VehicleConfigurationModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleConfigurationModelFilterInput;

  TRes call({
    List<Input$VehicleConfigurationModelFilterInput>? and,
    List<Input$VehicleConfigurationModelFilterInput>? or,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$StringOperationFilterInput? batteryImage,
    Input$BooleanOperationFilterInput? hasEngine,
    Input$BooleanOperationFilterInput? hasLockingWheelNut,
    Input$BooleanOperationFilterInput? vehicleRolls,
    Input$BooleanOperationFilterInput? engineRuns,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput? catDetails,
    Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?
        nonConformingParts,
    Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?
        vehicleDocuments,
    Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?
        priceAdjustment,
    Input$BooleanOperationFilterInput? vinUnreadable,
  });
  TRes and(
      Iterable<Input$VehicleConfigurationModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleConfigurationModelFilterInput<
                      Input$VehicleConfigurationModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$VehicleConfigurationModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleConfigurationModelFilterInput<
                      Input$VehicleConfigurationModelFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels;
  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels;
  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery;
  CopyWith$Input$StringOperationFilterInput<TRes> get batteryImage;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasEngine;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasLockingWheelNut;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get vehicleRolls;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get engineRuns;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat;
  CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<TRes>
      get catDetails;
  CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<TRes>
      get nonConformingParts;
  CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<TRes>
      get vehicleDocuments;
  CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
      TRes> get priceAdjustment;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get vinUnreadable;
}

class _CopyWithImpl$Input$VehicleConfigurationModelFilterInput<TRes>
    implements CopyWith$Input$VehicleConfigurationModelFilterInput<TRes> {
  _CopyWithImpl$Input$VehicleConfigurationModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$VehicleConfigurationModelFilterInput _instance;

  final TRes Function(Input$VehicleConfigurationModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? alloyWheels = _undefined,
    Object? steelWheels = _undefined,
    Object? chromeWheels = _undefined,
    Object? hasOriginalCat = _undefined,
    Object? hasBattery = _undefined,
    Object? batteryImage = _undefined,
    Object? hasEngine = _undefined,
    Object? hasLockingWheelNut = _undefined,
    Object? vehicleRolls = _undefined,
    Object? engineRuns = _undefined,
    Object? hasTechemetCat = _undefined,
    Object? catDetails = _undefined,
    Object? nonConformingParts = _undefined,
    Object? vehicleDocuments = _undefined,
    Object? priceAdjustment = _undefined,
    Object? vinUnreadable = _undefined,
  }) =>
      _then(Input$VehicleConfigurationModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$VehicleConfigurationModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$VehicleConfigurationModelFilterInput>?),
        if (alloyWheels != _undefined)
          'alloyWheels': (alloyWheels as Input$IntOperationFilterInput?),
        if (steelWheels != _undefined)
          'steelWheels': (steelWheels as Input$IntOperationFilterInput?),
        if (chromeWheels != _undefined)
          'chromeWheels': (chromeWheels as Input$IntOperationFilterInput?),
        if (hasOriginalCat != _undefined)
          'hasOriginalCat':
              (hasOriginalCat as Input$BooleanOperationFilterInput?),
        if (hasBattery != _undefined)
          'hasBattery': (hasBattery as Input$BooleanOperationFilterInput?),
        if (batteryImage != _undefined)
          'batteryImage': (batteryImage as Input$StringOperationFilterInput?),
        if (hasEngine != _undefined)
          'hasEngine': (hasEngine as Input$BooleanOperationFilterInput?),
        if (hasLockingWheelNut != _undefined)
          'hasLockingWheelNut':
              (hasLockingWheelNut as Input$BooleanOperationFilterInput?),
        if (vehicleRolls != _undefined)
          'vehicleRolls': (vehicleRolls as Input$BooleanOperationFilterInput?),
        if (engineRuns != _undefined)
          'engineRuns': (engineRuns as Input$BooleanOperationFilterInput?),
        if (hasTechemetCat != _undefined)
          'hasTechemetCat':
              (hasTechemetCat as Input$BooleanOperationFilterInput?),
        if (catDetails != _undefined)
          'catDetails': (catDetails
              as Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput?),
        if (nonConformingParts != _undefined)
          'nonConformingParts': (nonConformingParts
              as Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?),
        if (vehicleDocuments != _undefined)
          'vehicleDocuments': (vehicleDocuments
              as Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?),
        if (priceAdjustment != _undefined)
          'priceAdjustment': (priceAdjustment
              as Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?),
        if (vinUnreadable != _undefined)
          'vinUnreadable':
              (vinUnreadable as Input$BooleanOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$VehicleConfigurationModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleConfigurationModelFilterInput<
                          Input$VehicleConfigurationModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$VehicleConfigurationModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$VehicleConfigurationModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleConfigurationModelFilterInput<
                          Input$VehicleConfigurationModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$VehicleConfigurationModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels {
    final local$alloyWheels = _instance.alloyWheels;
    return local$alloyWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$alloyWheels, (e) => call(alloyWheels: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels {
    final local$steelWheels = _instance.steelWheels;
    return local$steelWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$steelWheels, (e) => call(steelWheels: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels {
    final local$chromeWheels = _instance.chromeWheels;
    return local$chromeWheels == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$chromeWheels, (e) => call(chromeWheels: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat {
    final local$hasOriginalCat = _instance.hasOriginalCat;
    return local$hasOriginalCat == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasOriginalCat, (e) => call(hasOriginalCat: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery {
    final local$hasBattery = _instance.hasBattery;
    return local$hasBattery == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasBattery, (e) => call(hasBattery: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get batteryImage {
    final local$batteryImage = _instance.batteryImage;
    return local$batteryImage == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$batteryImage, (e) => call(batteryImage: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasEngine {
    final local$hasEngine = _instance.hasEngine;
    return local$hasEngine == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasEngine, (e) => call(hasEngine: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasLockingWheelNut {
    final local$hasLockingWheelNut = _instance.hasLockingWheelNut;
    return local$hasLockingWheelNut == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasLockingWheelNut, (e) => call(hasLockingWheelNut: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get vehicleRolls {
    final local$vehicleRolls = _instance.vehicleRolls;
    return local$vehicleRolls == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$vehicleRolls, (e) => call(vehicleRolls: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get engineRuns {
    final local$engineRuns = _instance.engineRuns;
    return local$engineRuns == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$engineRuns, (e) => call(engineRuns: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat {
    final local$hasTechemetCat = _instance.hasTechemetCat;
    return local$hasTechemetCat == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$hasTechemetCat, (e) => call(hasTechemetCat: e));
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<TRes>
      get catDetails {
    final local$catDetails = _instance.catDetails;
    return local$catDetails == null
        ? CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput(
            local$catDetails, (e) => call(catDetails: e));
  }

  CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<TRes>
      get nonConformingParts {
    final local$nonConformingParts = _instance.nonConformingParts;
    return local$nonConformingParts == null
        ? CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput(
            local$nonConformingParts, (e) => call(nonConformingParts: e));
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<TRes>
      get vehicleDocuments {
    final local$vehicleDocuments = _instance.vehicleDocuments;
    return local$vehicleDocuments == null
        ? CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput(
            local$vehicleDocuments, (e) => call(vehicleDocuments: e));
  }

  CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
      TRes> get priceAdjustment {
    final local$priceAdjustment = _instance.priceAdjustment;
    return local$priceAdjustment == null
        ? CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput(
            local$priceAdjustment, (e) => call(priceAdjustment: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get vinUnreadable {
    final local$vinUnreadable = _instance.vinUnreadable;
    return local$vinUnreadable == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$vinUnreadable, (e) => call(vinUnreadable: e));
  }
}

class _CopyWithStubImpl$Input$VehicleConfigurationModelFilterInput<TRes>
    implements CopyWith$Input$VehicleConfigurationModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$VehicleConfigurationModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$VehicleConfigurationModelFilterInput>? and,
    List<Input$VehicleConfigurationModelFilterInput>? or,
    Input$IntOperationFilterInput? alloyWheels,
    Input$IntOperationFilterInput? steelWheels,
    Input$IntOperationFilterInput? chromeWheels,
    Input$BooleanOperationFilterInput? hasOriginalCat,
    Input$BooleanOperationFilterInput? hasBattery,
    Input$StringOperationFilterInput? batteryImage,
    Input$BooleanOperationFilterInput? hasEngine,
    Input$BooleanOperationFilterInput? hasLockingWheelNut,
    Input$BooleanOperationFilterInput? vehicleRolls,
    Input$BooleanOperationFilterInput? engineRuns,
    Input$BooleanOperationFilterInput? hasTechemetCat,
    Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput? catDetails,
    Input$ListFilterInputTypeOfNonConformingPartModelFilterInput?
        nonConformingParts,
    Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput?
        vehicleDocuments,
    Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput?
        priceAdjustment,
    Input$BooleanOperationFilterInput? vinUnreadable,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get alloyWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get steelWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get chromeWheels =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasOriginalCat =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasBattery =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get batteryImage =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasEngine =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasLockingWheelNut =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get vehicleRolls =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get engineRuns =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get hasTechemetCat =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput<TRes>
      get catDetails =>
          CopyWith$Input$ListFilterInputTypeOfVehicleCatDetailRequestFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput<TRes>
      get nonConformingParts =>
          CopyWith$Input$ListFilterInputTypeOfNonConformingPartModelFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput<TRes>
      get vehicleDocuments =>
          CopyWith$Input$ListFilterInputTypeOfVehicleDocumentsModelFilterInput
              .stub(_res);

  CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput<
          TRes>
      get priceAdjustment =>
          CopyWith$Input$ListFilterInputTypeOfPriceAdjustmentComponentModelFilterInput
              .stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get vinUnreadable =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);
}

class Input$VehicleConfigurationModelInput {
  factory Input$VehicleConfigurationModelInput({
    required int alloyWheels,
    required int steelWheels,
    required int chromeWheels,
    required bool hasOriginalCat,
    required bool hasBattery,
    String? batteryImage,
    bool? hasEngine,
    bool? hasLockingWheelNut,
    bool? vehicleRolls,
    bool? engineRuns,
    bool? hasTechemetCat,
    required List<Input$VehicleCatDetailRequestInput> catDetails,
    required List<Input$NonConformingPartModelInput> nonConformingParts,
    required List<Input$VehicleDocumentsModelInput> vehicleDocuments,
    List<Input$PriceAdjustmentComponentModelInput>? priceAdjustment,
    required bool vinUnreadable,
  }) =>
      Input$VehicleConfigurationModelInput._({
        r'alloyWheels': alloyWheels,
        r'steelWheels': steelWheels,
        r'chromeWheels': chromeWheels,
        r'hasOriginalCat': hasOriginalCat,
        r'hasBattery': hasBattery,
        if (batteryImage != null) r'batteryImage': batteryImage,
        if (hasEngine != null) r'hasEngine': hasEngine,
        if (hasLockingWheelNut != null)
          r'hasLockingWheelNut': hasLockingWheelNut,
        if (vehicleRolls != null) r'vehicleRolls': vehicleRolls,
        if (engineRuns != null) r'engineRuns': engineRuns,
        if (hasTechemetCat != null) r'hasTechemetCat': hasTechemetCat,
        r'catDetails': catDetails,
        r'nonConformingParts': nonConformingParts,
        r'vehicleDocuments': vehicleDocuments,
        if (priceAdjustment != null) r'priceAdjustment': priceAdjustment,
        r'vinUnreadable': vinUnreadable,
      });

  Input$VehicleConfigurationModelInput._(this._$data);

  factory Input$VehicleConfigurationModelInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$alloyWheels = data['alloyWheels'];
    result$data['alloyWheels'] = (l$alloyWheels as int);
    final l$steelWheels = data['steelWheels'];
    result$data['steelWheels'] = (l$steelWheels as int);
    final l$chromeWheels = data['chromeWheels'];
    result$data['chromeWheels'] = (l$chromeWheels as int);
    final l$hasOriginalCat = data['hasOriginalCat'];
    result$data['hasOriginalCat'] = (l$hasOriginalCat as bool);
    final l$hasBattery = data['hasBattery'];
    result$data['hasBattery'] = (l$hasBattery as bool);
    if (data.containsKey('batteryImage')) {
      final l$batteryImage = data['batteryImage'];
      result$data['batteryImage'] = (l$batteryImage as String?);
    }
    if (data.containsKey('hasEngine')) {
      final l$hasEngine = data['hasEngine'];
      result$data['hasEngine'] = (l$hasEngine as bool?);
    }
    if (data.containsKey('hasLockingWheelNut')) {
      final l$hasLockingWheelNut = data['hasLockingWheelNut'];
      result$data['hasLockingWheelNut'] = (l$hasLockingWheelNut as bool?);
    }
    if (data.containsKey('vehicleRolls')) {
      final l$vehicleRolls = data['vehicleRolls'];
      result$data['vehicleRolls'] = (l$vehicleRolls as bool?);
    }
    if (data.containsKey('engineRuns')) {
      final l$engineRuns = data['engineRuns'];
      result$data['engineRuns'] = (l$engineRuns as bool?);
    }
    if (data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = data['hasTechemetCat'];
      result$data['hasTechemetCat'] = (l$hasTechemetCat as bool?);
    }
    final l$catDetails = data['catDetails'];
    result$data['catDetails'] = (l$catDetails as List<dynamic>)
        .map((e) => Input$VehicleCatDetailRequestInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$nonConformingParts = data['nonConformingParts'];
    result$data['nonConformingParts'] = (l$nonConformingParts as List<dynamic>)
        .map((e) => Input$NonConformingPartModelInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$vehicleDocuments = data['vehicleDocuments'];
    result$data['vehicleDocuments'] = (l$vehicleDocuments as List<dynamic>)
        .map((e) => Input$VehicleDocumentsModelInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('priceAdjustment')) {
      final l$priceAdjustment = data['priceAdjustment'];
      result$data['priceAdjustment'] = (l$priceAdjustment as List<dynamic>?)
          ?.map((e) => Input$PriceAdjustmentComponentModelInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    final l$vinUnreadable = data['vinUnreadable'];
    result$data['vinUnreadable'] = (l$vinUnreadable as bool);
    return Input$VehicleConfigurationModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get alloyWheels => (_$data['alloyWheels'] as int);

  int get steelWheels => (_$data['steelWheels'] as int);

  int get chromeWheels => (_$data['chromeWheels'] as int);

  bool get hasOriginalCat => (_$data['hasOriginalCat'] as bool);

  bool get hasBattery => (_$data['hasBattery'] as bool);

  String? get batteryImage => (_$data['batteryImage'] as String?);

  bool? get hasEngine => (_$data['hasEngine'] as bool?);

  bool? get hasLockingWheelNut => (_$data['hasLockingWheelNut'] as bool?);

  bool? get vehicleRolls => (_$data['vehicleRolls'] as bool?);

  bool? get engineRuns => (_$data['engineRuns'] as bool?);

  bool? get hasTechemetCat => (_$data['hasTechemetCat'] as bool?);

  List<Input$VehicleCatDetailRequestInput> get catDetails =>
      (_$data['catDetails'] as List<Input$VehicleCatDetailRequestInput>);

  List<Input$NonConformingPartModelInput> get nonConformingParts =>
      (_$data['nonConformingParts'] as List<Input$NonConformingPartModelInput>);

  List<Input$VehicleDocumentsModelInput> get vehicleDocuments =>
      (_$data['vehicleDocuments'] as List<Input$VehicleDocumentsModelInput>);

  List<Input$PriceAdjustmentComponentModelInput>? get priceAdjustment =>
      (_$data['priceAdjustment']
          as List<Input$PriceAdjustmentComponentModelInput>?);

  bool get vinUnreadable => (_$data['vinUnreadable'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$alloyWheels = alloyWheels;
    result$data['alloyWheels'] = l$alloyWheels;
    final l$steelWheels = steelWheels;
    result$data['steelWheels'] = l$steelWheels;
    final l$chromeWheels = chromeWheels;
    result$data['chromeWheels'] = l$chromeWheels;
    final l$hasOriginalCat = hasOriginalCat;
    result$data['hasOriginalCat'] = l$hasOriginalCat;
    final l$hasBattery = hasBattery;
    result$data['hasBattery'] = l$hasBattery;
    if (_$data.containsKey('batteryImage')) {
      final l$batteryImage = batteryImage;
      result$data['batteryImage'] = l$batteryImage;
    }
    if (_$data.containsKey('hasEngine')) {
      final l$hasEngine = hasEngine;
      result$data['hasEngine'] = l$hasEngine;
    }
    if (_$data.containsKey('hasLockingWheelNut')) {
      final l$hasLockingWheelNut = hasLockingWheelNut;
      result$data['hasLockingWheelNut'] = l$hasLockingWheelNut;
    }
    if (_$data.containsKey('vehicleRolls')) {
      final l$vehicleRolls = vehicleRolls;
      result$data['vehicleRolls'] = l$vehicleRolls;
    }
    if (_$data.containsKey('engineRuns')) {
      final l$engineRuns = engineRuns;
      result$data['engineRuns'] = l$engineRuns;
    }
    if (_$data.containsKey('hasTechemetCat')) {
      final l$hasTechemetCat = hasTechemetCat;
      result$data['hasTechemetCat'] = l$hasTechemetCat;
    }
    final l$catDetails = catDetails;
    result$data['catDetails'] = l$catDetails.map((e) => e.toJson()).toList();
    final l$nonConformingParts = nonConformingParts;
    result$data['nonConformingParts'] =
        l$nonConformingParts.map((e) => e.toJson()).toList();
    final l$vehicleDocuments = vehicleDocuments;
    result$data['vehicleDocuments'] =
        l$vehicleDocuments.map((e) => e.toJson()).toList();
    if (_$data.containsKey('priceAdjustment')) {
      final l$priceAdjustment = priceAdjustment;
      result$data['priceAdjustment'] =
          l$priceAdjustment?.map((e) => e.toJson()).toList();
    }
    final l$vinUnreadable = vinUnreadable;
    result$data['vinUnreadable'] = l$vinUnreadable;
    return result$data;
  }

  CopyWith$Input$VehicleConfigurationModelInput<
          Input$VehicleConfigurationModelInput>
      get copyWith => CopyWith$Input$VehicleConfigurationModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleConfigurationModelInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$alloyWheels = alloyWheels;
    final lOther$alloyWheels = other.alloyWheels;
    if (l$alloyWheels != lOther$alloyWheels) {
      return false;
    }
    final l$steelWheels = steelWheels;
    final lOther$steelWheels = other.steelWheels;
    if (l$steelWheels != lOther$steelWheels) {
      return false;
    }
    final l$chromeWheels = chromeWheels;
    final lOther$chromeWheels = other.chromeWheels;
    if (l$chromeWheels != lOther$chromeWheels) {
      return false;
    }
    final l$hasOriginalCat = hasOriginalCat;
    final lOther$hasOriginalCat = other.hasOriginalCat;
    if (l$hasOriginalCat != lOther$hasOriginalCat) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$batteryImage = batteryImage;
    final lOther$batteryImage = other.batteryImage;
    if (_$data.containsKey('batteryImage') !=
        other._$data.containsKey('batteryImage')) {
      return false;
    }
    if (l$batteryImage != lOther$batteryImage) {
      return false;
    }
    final l$hasEngine = hasEngine;
    final lOther$hasEngine = other.hasEngine;
    if (_$data.containsKey('hasEngine') !=
        other._$data.containsKey('hasEngine')) {
      return false;
    }
    if (l$hasEngine != lOther$hasEngine) {
      return false;
    }
    final l$hasLockingWheelNut = hasLockingWheelNut;
    final lOther$hasLockingWheelNut = other.hasLockingWheelNut;
    if (_$data.containsKey('hasLockingWheelNut') !=
        other._$data.containsKey('hasLockingWheelNut')) {
      return false;
    }
    if (l$hasLockingWheelNut != lOther$hasLockingWheelNut) {
      return false;
    }
    final l$vehicleRolls = vehicleRolls;
    final lOther$vehicleRolls = other.vehicleRolls;
    if (_$data.containsKey('vehicleRolls') !=
        other._$data.containsKey('vehicleRolls')) {
      return false;
    }
    if (l$vehicleRolls != lOther$vehicleRolls) {
      return false;
    }
    final l$engineRuns = engineRuns;
    final lOther$engineRuns = other.engineRuns;
    if (_$data.containsKey('engineRuns') !=
        other._$data.containsKey('engineRuns')) {
      return false;
    }
    if (l$engineRuns != lOther$engineRuns) {
      return false;
    }
    final l$hasTechemetCat = hasTechemetCat;
    final lOther$hasTechemetCat = other.hasTechemetCat;
    if (_$data.containsKey('hasTechemetCat') !=
        other._$data.containsKey('hasTechemetCat')) {
      return false;
    }
    if (l$hasTechemetCat != lOther$hasTechemetCat) {
      return false;
    }
    final l$catDetails = catDetails;
    final lOther$catDetails = other.catDetails;
    if (l$catDetails.length != lOther$catDetails.length) {
      return false;
    }
    for (int i = 0; i < l$catDetails.length; i++) {
      final l$catDetails$entry = l$catDetails[i];
      final lOther$catDetails$entry = lOther$catDetails[i];
      if (l$catDetails$entry != lOther$catDetails$entry) {
        return false;
      }
    }
    final l$nonConformingParts = nonConformingParts;
    final lOther$nonConformingParts = other.nonConformingParts;
    if (l$nonConformingParts.length != lOther$nonConformingParts.length) {
      return false;
    }
    for (int i = 0; i < l$nonConformingParts.length; i++) {
      final l$nonConformingParts$entry = l$nonConformingParts[i];
      final lOther$nonConformingParts$entry = lOther$nonConformingParts[i];
      if (l$nonConformingParts$entry != lOther$nonConformingParts$entry) {
        return false;
      }
    }
    final l$vehicleDocuments = vehicleDocuments;
    final lOther$vehicleDocuments = other.vehicleDocuments;
    if (l$vehicleDocuments.length != lOther$vehicleDocuments.length) {
      return false;
    }
    for (int i = 0; i < l$vehicleDocuments.length; i++) {
      final l$vehicleDocuments$entry = l$vehicleDocuments[i];
      final lOther$vehicleDocuments$entry = lOther$vehicleDocuments[i];
      if (l$vehicleDocuments$entry != lOther$vehicleDocuments$entry) {
        return false;
      }
    }
    final l$priceAdjustment = priceAdjustment;
    final lOther$priceAdjustment = other.priceAdjustment;
    if (_$data.containsKey('priceAdjustment') !=
        other._$data.containsKey('priceAdjustment')) {
      return false;
    }
    if (l$priceAdjustment != null && lOther$priceAdjustment != null) {
      if (l$priceAdjustment.length != lOther$priceAdjustment.length) {
        return false;
      }
      for (int i = 0; i < l$priceAdjustment.length; i++) {
        final l$priceAdjustment$entry = l$priceAdjustment[i];
        final lOther$priceAdjustment$entry = lOther$priceAdjustment[i];
        if (l$priceAdjustment$entry != lOther$priceAdjustment$entry) {
          return false;
        }
      }
    } else if (l$priceAdjustment != lOther$priceAdjustment) {
      return false;
    }
    final l$vinUnreadable = vinUnreadable;
    final lOther$vinUnreadable = other.vinUnreadable;
    if (l$vinUnreadable != lOther$vinUnreadable) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$alloyWheels = alloyWheels;
    final l$steelWheels = steelWheels;
    final l$chromeWheels = chromeWheels;
    final l$hasOriginalCat = hasOriginalCat;
    final l$hasBattery = hasBattery;
    final l$batteryImage = batteryImage;
    final l$hasEngine = hasEngine;
    final l$hasLockingWheelNut = hasLockingWheelNut;
    final l$vehicleRolls = vehicleRolls;
    final l$engineRuns = engineRuns;
    final l$hasTechemetCat = hasTechemetCat;
    final l$catDetails = catDetails;
    final l$nonConformingParts = nonConformingParts;
    final l$vehicleDocuments = vehicleDocuments;
    final l$priceAdjustment = priceAdjustment;
    final l$vinUnreadable = vinUnreadable;
    return Object.hashAll([
      l$alloyWheels,
      l$steelWheels,
      l$chromeWheels,
      l$hasOriginalCat,
      l$hasBattery,
      _$data.containsKey('batteryImage') ? l$batteryImage : const {},
      _$data.containsKey('hasEngine') ? l$hasEngine : const {},
      _$data.containsKey('hasLockingWheelNut')
          ? l$hasLockingWheelNut
          : const {},
      _$data.containsKey('vehicleRolls') ? l$vehicleRolls : const {},
      _$data.containsKey('engineRuns') ? l$engineRuns : const {},
      _$data.containsKey('hasTechemetCat') ? l$hasTechemetCat : const {},
      Object.hashAll(l$catDetails.map((v) => v)),
      Object.hashAll(l$nonConformingParts.map((v) => v)),
      Object.hashAll(l$vehicleDocuments.map((v) => v)),
      _$data.containsKey('priceAdjustment')
          ? l$priceAdjustment == null
              ? null
              : Object.hashAll(l$priceAdjustment.map((v) => v))
          : const {},
      l$vinUnreadable,
    ]);
  }
}

abstract class CopyWith$Input$VehicleConfigurationModelInput<TRes> {
  factory CopyWith$Input$VehicleConfigurationModelInput(
    Input$VehicleConfigurationModelInput instance,
    TRes Function(Input$VehicleConfigurationModelInput) then,
  ) = _CopyWithImpl$Input$VehicleConfigurationModelInput;

  factory CopyWith$Input$VehicleConfigurationModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleConfigurationModelInput;

  TRes call({
    int? alloyWheels,
    int? steelWheels,
    int? chromeWheels,
    bool? hasOriginalCat,
    bool? hasBattery,
    String? batteryImage,
    bool? hasEngine,
    bool? hasLockingWheelNut,
    bool? vehicleRolls,
    bool? engineRuns,
    bool? hasTechemetCat,
    List<Input$VehicleCatDetailRequestInput>? catDetails,
    List<Input$NonConformingPartModelInput>? nonConformingParts,
    List<Input$VehicleDocumentsModelInput>? vehicleDocuments,
    List<Input$PriceAdjustmentComponentModelInput>? priceAdjustment,
    bool? vinUnreadable,
  });
  TRes catDetails(
      Iterable<Input$VehicleCatDetailRequestInput> Function(
              Iterable<
                  CopyWith$Input$VehicleCatDetailRequestInput<
                      Input$VehicleCatDetailRequestInput>>)
          _fn);
  TRes nonConformingParts(
      Iterable<Input$NonConformingPartModelInput> Function(
              Iterable<
                  CopyWith$Input$NonConformingPartModelInput<
                      Input$NonConformingPartModelInput>>)
          _fn);
  TRes vehicleDocuments(
      Iterable<Input$VehicleDocumentsModelInput> Function(
              Iterable<
                  CopyWith$Input$VehicleDocumentsModelInput<
                      Input$VehicleDocumentsModelInput>>)
          _fn);
  TRes priceAdjustment(
      Iterable<Input$PriceAdjustmentComponentModelInput>? Function(
              Iterable<
                  CopyWith$Input$PriceAdjustmentComponentModelInput<
                      Input$PriceAdjustmentComponentModelInput>>?)
          _fn);
}

class _CopyWithImpl$Input$VehicleConfigurationModelInput<TRes>
    implements CopyWith$Input$VehicleConfigurationModelInput<TRes> {
  _CopyWithImpl$Input$VehicleConfigurationModelInput(
    this._instance,
    this._then,
  );

  final Input$VehicleConfigurationModelInput _instance;

  final TRes Function(Input$VehicleConfigurationModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? alloyWheels = _undefined,
    Object? steelWheels = _undefined,
    Object? chromeWheels = _undefined,
    Object? hasOriginalCat = _undefined,
    Object? hasBattery = _undefined,
    Object? batteryImage = _undefined,
    Object? hasEngine = _undefined,
    Object? hasLockingWheelNut = _undefined,
    Object? vehicleRolls = _undefined,
    Object? engineRuns = _undefined,
    Object? hasTechemetCat = _undefined,
    Object? catDetails = _undefined,
    Object? nonConformingParts = _undefined,
    Object? vehicleDocuments = _undefined,
    Object? priceAdjustment = _undefined,
    Object? vinUnreadable = _undefined,
  }) =>
      _then(Input$VehicleConfigurationModelInput._({
        ..._instance._$data,
        if (alloyWheels != _undefined && alloyWheels != null)
          'alloyWheels': (alloyWheels as int),
        if (steelWheels != _undefined && steelWheels != null)
          'steelWheels': (steelWheels as int),
        if (chromeWheels != _undefined && chromeWheels != null)
          'chromeWheels': (chromeWheels as int),
        if (hasOriginalCat != _undefined && hasOriginalCat != null)
          'hasOriginalCat': (hasOriginalCat as bool),
        if (hasBattery != _undefined && hasBattery != null)
          'hasBattery': (hasBattery as bool),
        if (batteryImage != _undefined)
          'batteryImage': (batteryImage as String?),
        if (hasEngine != _undefined) 'hasEngine': (hasEngine as bool?),
        if (hasLockingWheelNut != _undefined)
          'hasLockingWheelNut': (hasLockingWheelNut as bool?),
        if (vehicleRolls != _undefined) 'vehicleRolls': (vehicleRolls as bool?),
        if (engineRuns != _undefined) 'engineRuns': (engineRuns as bool?),
        if (hasTechemetCat != _undefined)
          'hasTechemetCat': (hasTechemetCat as bool?),
        if (catDetails != _undefined && catDetails != null)
          'catDetails':
              (catDetails as List<Input$VehicleCatDetailRequestInput>),
        if (nonConformingParts != _undefined && nonConformingParts != null)
          'nonConformingParts':
              (nonConformingParts as List<Input$NonConformingPartModelInput>),
        if (vehicleDocuments != _undefined && vehicleDocuments != null)
          'vehicleDocuments':
              (vehicleDocuments as List<Input$VehicleDocumentsModelInput>),
        if (priceAdjustment != _undefined)
          'priceAdjustment': (priceAdjustment
              as List<Input$PriceAdjustmentComponentModelInput>?),
        if (vinUnreadable != _undefined && vinUnreadable != null)
          'vinUnreadable': (vinUnreadable as bool),
      }));

  TRes catDetails(
          Iterable<Input$VehicleCatDetailRequestInput> Function(
                  Iterable<
                      CopyWith$Input$VehicleCatDetailRequestInput<
                          Input$VehicleCatDetailRequestInput>>)
              _fn) =>
      call(
          catDetails: _fn(_instance.catDetails
              .map((e) => CopyWith$Input$VehicleCatDetailRequestInput(
                    e,
                    (i) => i,
                  ))).toList());

  TRes nonConformingParts(
          Iterable<Input$NonConformingPartModelInput> Function(
                  Iterable<
                      CopyWith$Input$NonConformingPartModelInput<
                          Input$NonConformingPartModelInput>>)
              _fn) =>
      call(
          nonConformingParts: _fn(_instance.nonConformingParts
              .map((e) => CopyWith$Input$NonConformingPartModelInput(
                    e,
                    (i) => i,
                  ))).toList());

  TRes vehicleDocuments(
          Iterable<Input$VehicleDocumentsModelInput> Function(
                  Iterable<
                      CopyWith$Input$VehicleDocumentsModelInput<
                          Input$VehicleDocumentsModelInput>>)
              _fn) =>
      call(
          vehicleDocuments: _fn(_instance.vehicleDocuments
              .map((e) => CopyWith$Input$VehicleDocumentsModelInput(
                    e,
                    (i) => i,
                  ))).toList());

  TRes priceAdjustment(
          Iterable<Input$PriceAdjustmentComponentModelInput>? Function(
                  Iterable<
                      CopyWith$Input$PriceAdjustmentComponentModelInput<
                          Input$PriceAdjustmentComponentModelInput>>?)
              _fn) =>
      call(
          priceAdjustment: _fn(_instance.priceAdjustment
              ?.map((e) => CopyWith$Input$PriceAdjustmentComponentModelInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$VehicleConfigurationModelInput<TRes>
    implements CopyWith$Input$VehicleConfigurationModelInput<TRes> {
  _CopyWithStubImpl$Input$VehicleConfigurationModelInput(this._res);

  TRes _res;

  call({
    int? alloyWheels,
    int? steelWheels,
    int? chromeWheels,
    bool? hasOriginalCat,
    bool? hasBattery,
    String? batteryImage,
    bool? hasEngine,
    bool? hasLockingWheelNut,
    bool? vehicleRolls,
    bool? engineRuns,
    bool? hasTechemetCat,
    List<Input$VehicleCatDetailRequestInput>? catDetails,
    List<Input$NonConformingPartModelInput>? nonConformingParts,
    List<Input$VehicleDocumentsModelInput>? vehicleDocuments,
    List<Input$PriceAdjustmentComponentModelInput>? priceAdjustment,
    bool? vinUnreadable,
  }) =>
      _res;

  catDetails(_fn) => _res;

  nonConformingParts(_fn) => _res;

  vehicleDocuments(_fn) => _res;

  priceAdjustment(_fn) => _res;
}

class Input$VehicleDescriptionModelFilterInput {
  factory Input$VehicleDescriptionModelFilterInput({
    List<Input$VehicleDescriptionModelFilterInput>? and,
    List<Input$VehicleDescriptionModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? vehicleReg,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? fuelType,
    Input$StringOperationFilterInput? transmission,
    Input$StringOperationFilterInput? variant,
    Input$StringOperationFilterInput? bodyType,
    Input$IntOperationFilterInput? doors,
    Input$IntOperationFilterInput? year,
    Input$DecimalOperationFilterInput? engineSize,
    Input$DecimalOperationFilterInput? curbWeight,
    Input$NullableOfUomCodeOperationFilterInput? curbWeightUom,
    Input$DecimalOperationFilterInput? overrideCurbWeight,
    Input$NullableOfUomCodeOperationFilterInput? overrideCurbWeightUom,
    Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?
        vehicleBatchQuotes,
    Input$StringOperationFilterInput? trim,
    Input$StringOperationFilterInput? v5Url,
    Input$StringOperationFilterInput? vehicleIdentifier,
  }) =>
      Input$VehicleDescriptionModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (vehicleReg != null) r'vehicleReg': vehicleReg,
        if (vin != null) r'vin': vin,
        if (make != null) r'make': make,
        if (model != null) r'model': model,
        if (fuelType != null) r'fuelType': fuelType,
        if (transmission != null) r'transmission': transmission,
        if (variant != null) r'variant': variant,
        if (bodyType != null) r'bodyType': bodyType,
        if (doors != null) r'doors': doors,
        if (year != null) r'year': year,
        if (engineSize != null) r'engineSize': engineSize,
        if (curbWeight != null) r'curbWeight': curbWeight,
        if (curbWeightUom != null) r'curbWeightUom': curbWeightUom,
        if (overrideCurbWeight != null)
          r'overrideCurbWeight': overrideCurbWeight,
        if (overrideCurbWeightUom != null)
          r'overrideCurbWeightUom': overrideCurbWeightUom,
        if (vehicleBatchQuotes != null)
          r'vehicleBatchQuotes': vehicleBatchQuotes,
        if (trim != null) r'trim': trim,
        if (v5Url != null) r'v5Url': v5Url,
        if (vehicleIdentifier != null) r'vehicleIdentifier': vehicleIdentifier,
      });

  Input$VehicleDescriptionModelFilterInput._(this._$data);

  factory Input$VehicleDescriptionModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$VehicleDescriptionModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$VehicleDescriptionModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleReg')) {
      final l$vehicleReg = data['vehicleReg'];
      result$data['vehicleReg'] = l$vehicleReg == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$vehicleReg as Map<String, dynamic>));
    }
    if (data.containsKey('vin')) {
      final l$vin = data['vin'];
      result$data['vin'] = l$vin == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$vin as Map<String, dynamic>));
    }
    if (data.containsKey('make')) {
      final l$make = data['make'];
      result$data['make'] = l$make == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$make as Map<String, dynamic>));
    }
    if (data.containsKey('model')) {
      final l$model = data['model'];
      result$data['model'] = l$model == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$model as Map<String, dynamic>));
    }
    if (data.containsKey('fuelType')) {
      final l$fuelType = data['fuelType'];
      result$data['fuelType'] = l$fuelType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$fuelType as Map<String, dynamic>));
    }
    if (data.containsKey('transmission')) {
      final l$transmission = data['transmission'];
      result$data['transmission'] = l$transmission == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$transmission as Map<String, dynamic>));
    }
    if (data.containsKey('variant')) {
      final l$variant = data['variant'];
      result$data['variant'] = l$variant == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$variant as Map<String, dynamic>));
    }
    if (data.containsKey('bodyType')) {
      final l$bodyType = data['bodyType'];
      result$data['bodyType'] = l$bodyType == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$bodyType as Map<String, dynamic>));
    }
    if (data.containsKey('doors')) {
      final l$doors = data['doors'];
      result$data['doors'] = l$doors == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$doors as Map<String, dynamic>));
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = l$year == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$year as Map<String, dynamic>));
    }
    if (data.containsKey('engineSize')) {
      final l$engineSize = data['engineSize'];
      result$data['engineSize'] = l$engineSize == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$engineSize as Map<String, dynamic>));
    }
    if (data.containsKey('curbWeight')) {
      final l$curbWeight = data['curbWeight'];
      result$data['curbWeight'] = l$curbWeight == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$curbWeight as Map<String, dynamic>));
    }
    if (data.containsKey('curbWeightUom')) {
      final l$curbWeightUom = data['curbWeightUom'];
      result$data['curbWeightUom'] = l$curbWeightUom == null
          ? null
          : Input$NullableOfUomCodeOperationFilterInput.fromJson(
              (l$curbWeightUom as Map<String, dynamic>));
    }
    if (data.containsKey('overrideCurbWeight')) {
      final l$overrideCurbWeight = data['overrideCurbWeight'];
      result$data['overrideCurbWeight'] = l$overrideCurbWeight == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$overrideCurbWeight as Map<String, dynamic>));
    }
    if (data.containsKey('overrideCurbWeightUom')) {
      final l$overrideCurbWeightUom = data['overrideCurbWeightUom'];
      result$data['overrideCurbWeightUom'] = l$overrideCurbWeightUom == null
          ? null
          : Input$NullableOfUomCodeOperationFilterInput.fromJson(
              (l$overrideCurbWeightUom as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleBatchQuotes')) {
      final l$vehicleBatchQuotes = data['vehicleBatchQuotes'];
      result$data['vehicleBatchQuotes'] = l$vehicleBatchQuotes == null
          ? null
          : Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput
              .fromJson((l$vehicleBatchQuotes as Map<String, dynamic>));
    }
    if (data.containsKey('trim')) {
      final l$trim = data['trim'];
      result$data['trim'] = l$trim == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$trim as Map<String, dynamic>));
    }
    if (data.containsKey('v5Url')) {
      final l$v5Url = data['v5Url'];
      result$data['v5Url'] = l$v5Url == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$v5Url as Map<String, dynamic>));
    }
    if (data.containsKey('vehicleIdentifier')) {
      final l$vehicleIdentifier = data['vehicleIdentifier'];
      result$data['vehicleIdentifier'] = l$vehicleIdentifier == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$vehicleIdentifier as Map<String, dynamic>));
    }
    return Input$VehicleDescriptionModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$VehicleDescriptionModelFilterInput>? get and =>
      (_$data['and'] as List<Input$VehicleDescriptionModelFilterInput>?);

  List<Input$VehicleDescriptionModelFilterInput>? get or =>
      (_$data['or'] as List<Input$VehicleDescriptionModelFilterInput>?);

  Input$IntOperationFilterInput? get id =>
      (_$data['id'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get vehicleReg =>
      (_$data['vehicleReg'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get vin =>
      (_$data['vin'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get make =>
      (_$data['make'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get model =>
      (_$data['model'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get fuelType =>
      (_$data['fuelType'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get transmission =>
      (_$data['transmission'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get variant =>
      (_$data['variant'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get bodyType =>
      (_$data['bodyType'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get doors =>
      (_$data['doors'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get year =>
      (_$data['year'] as Input$IntOperationFilterInput?);

  Input$DecimalOperationFilterInput? get engineSize =>
      (_$data['engineSize'] as Input$DecimalOperationFilterInput?);

  Input$DecimalOperationFilterInput? get curbWeight =>
      (_$data['curbWeight'] as Input$DecimalOperationFilterInput?);

  Input$NullableOfUomCodeOperationFilterInput? get curbWeightUom =>
      (_$data['curbWeightUom'] as Input$NullableOfUomCodeOperationFilterInput?);

  Input$DecimalOperationFilterInput? get overrideCurbWeight =>
      (_$data['overrideCurbWeight'] as Input$DecimalOperationFilterInput?);

  Input$NullableOfUomCodeOperationFilterInput? get overrideCurbWeightUom =>
      (_$data['overrideCurbWeightUom']
          as Input$NullableOfUomCodeOperationFilterInput?);

  Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?
      get vehicleBatchQuotes => (_$data['vehicleBatchQuotes']
          as Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?);

  Input$StringOperationFilterInput? get trim =>
      (_$data['trim'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get v5Url =>
      (_$data['v5Url'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get vehicleIdentifier =>
      (_$data['vehicleIdentifier'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('vehicleReg')) {
      final l$vehicleReg = vehicleReg;
      result$data['vehicleReg'] = l$vehicleReg?.toJson();
    }
    if (_$data.containsKey('vin')) {
      final l$vin = vin;
      result$data['vin'] = l$vin?.toJson();
    }
    if (_$data.containsKey('make')) {
      final l$make = make;
      result$data['make'] = l$make?.toJson();
    }
    if (_$data.containsKey('model')) {
      final l$model = model;
      result$data['model'] = l$model?.toJson();
    }
    if (_$data.containsKey('fuelType')) {
      final l$fuelType = fuelType;
      result$data['fuelType'] = l$fuelType?.toJson();
    }
    if (_$data.containsKey('transmission')) {
      final l$transmission = transmission;
      result$data['transmission'] = l$transmission?.toJson();
    }
    if (_$data.containsKey('variant')) {
      final l$variant = variant;
      result$data['variant'] = l$variant?.toJson();
    }
    if (_$data.containsKey('bodyType')) {
      final l$bodyType = bodyType;
      result$data['bodyType'] = l$bodyType?.toJson();
    }
    if (_$data.containsKey('doors')) {
      final l$doors = doors;
      result$data['doors'] = l$doors?.toJson();
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year?.toJson();
    }
    if (_$data.containsKey('engineSize')) {
      final l$engineSize = engineSize;
      result$data['engineSize'] = l$engineSize?.toJson();
    }
    if (_$data.containsKey('curbWeight')) {
      final l$curbWeight = curbWeight;
      result$data['curbWeight'] = l$curbWeight?.toJson();
    }
    if (_$data.containsKey('curbWeightUom')) {
      final l$curbWeightUom = curbWeightUom;
      result$data['curbWeightUom'] = l$curbWeightUom?.toJson();
    }
    if (_$data.containsKey('overrideCurbWeight')) {
      final l$overrideCurbWeight = overrideCurbWeight;
      result$data['overrideCurbWeight'] = l$overrideCurbWeight?.toJson();
    }
    if (_$data.containsKey('overrideCurbWeightUom')) {
      final l$overrideCurbWeightUom = overrideCurbWeightUom;
      result$data['overrideCurbWeightUom'] = l$overrideCurbWeightUom?.toJson();
    }
    if (_$data.containsKey('vehicleBatchQuotes')) {
      final l$vehicleBatchQuotes = vehicleBatchQuotes;
      result$data['vehicleBatchQuotes'] = l$vehicleBatchQuotes?.toJson();
    }
    if (_$data.containsKey('trim')) {
      final l$trim = trim;
      result$data['trim'] = l$trim?.toJson();
    }
    if (_$data.containsKey('v5Url')) {
      final l$v5Url = v5Url;
      result$data['v5Url'] = l$v5Url?.toJson();
    }
    if (_$data.containsKey('vehicleIdentifier')) {
      final l$vehicleIdentifier = vehicleIdentifier;
      result$data['vehicleIdentifier'] = l$vehicleIdentifier?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VehicleDescriptionModelFilterInput<
          Input$VehicleDescriptionModelFilterInput>
      get copyWith => CopyWith$Input$VehicleDescriptionModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleDescriptionModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (_$data.containsKey('vehicleReg') !=
        other._$data.containsKey('vehicleReg')) {
      return false;
    }
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (_$data.containsKey('vin') != other._$data.containsKey('vin')) {
      return false;
    }
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (_$data.containsKey('make') != other._$data.containsKey('make')) {
      return false;
    }
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (_$data.containsKey('model') != other._$data.containsKey('model')) {
      return false;
    }
    if (l$model != lOther$model) {
      return false;
    }
    final l$fuelType = fuelType;
    final lOther$fuelType = other.fuelType;
    if (_$data.containsKey('fuelType') !=
        other._$data.containsKey('fuelType')) {
      return false;
    }
    if (l$fuelType != lOther$fuelType) {
      return false;
    }
    final l$transmission = transmission;
    final lOther$transmission = other.transmission;
    if (_$data.containsKey('transmission') !=
        other._$data.containsKey('transmission')) {
      return false;
    }
    if (l$transmission != lOther$transmission) {
      return false;
    }
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (_$data.containsKey('variant') != other._$data.containsKey('variant')) {
      return false;
    }
    if (l$variant != lOther$variant) {
      return false;
    }
    final l$bodyType = bodyType;
    final lOther$bodyType = other.bodyType;
    if (_$data.containsKey('bodyType') !=
        other._$data.containsKey('bodyType')) {
      return false;
    }
    if (l$bodyType != lOther$bodyType) {
      return false;
    }
    final l$doors = doors;
    final lOther$doors = other.doors;
    if (_$data.containsKey('doors') != other._$data.containsKey('doors')) {
      return false;
    }
    if (l$doors != lOther$doors) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$engineSize = engineSize;
    final lOther$engineSize = other.engineSize;
    if (_$data.containsKey('engineSize') !=
        other._$data.containsKey('engineSize')) {
      return false;
    }
    if (l$engineSize != lOther$engineSize) {
      return false;
    }
    final l$curbWeight = curbWeight;
    final lOther$curbWeight = other.curbWeight;
    if (_$data.containsKey('curbWeight') !=
        other._$data.containsKey('curbWeight')) {
      return false;
    }
    if (l$curbWeight != lOther$curbWeight) {
      return false;
    }
    final l$curbWeightUom = curbWeightUom;
    final lOther$curbWeightUom = other.curbWeightUom;
    if (_$data.containsKey('curbWeightUom') !=
        other._$data.containsKey('curbWeightUom')) {
      return false;
    }
    if (l$curbWeightUom != lOther$curbWeightUom) {
      return false;
    }
    final l$overrideCurbWeight = overrideCurbWeight;
    final lOther$overrideCurbWeight = other.overrideCurbWeight;
    if (_$data.containsKey('overrideCurbWeight') !=
        other._$data.containsKey('overrideCurbWeight')) {
      return false;
    }
    if (l$overrideCurbWeight != lOther$overrideCurbWeight) {
      return false;
    }
    final l$overrideCurbWeightUom = overrideCurbWeightUom;
    final lOther$overrideCurbWeightUom = other.overrideCurbWeightUom;
    if (_$data.containsKey('overrideCurbWeightUom') !=
        other._$data.containsKey('overrideCurbWeightUom')) {
      return false;
    }
    if (l$overrideCurbWeightUom != lOther$overrideCurbWeightUom) {
      return false;
    }
    final l$vehicleBatchQuotes = vehicleBatchQuotes;
    final lOther$vehicleBatchQuotes = other.vehicleBatchQuotes;
    if (_$data.containsKey('vehicleBatchQuotes') !=
        other._$data.containsKey('vehicleBatchQuotes')) {
      return false;
    }
    if (l$vehicleBatchQuotes != lOther$vehicleBatchQuotes) {
      return false;
    }
    final l$trim = trim;
    final lOther$trim = other.trim;
    if (_$data.containsKey('trim') != other._$data.containsKey('trim')) {
      return false;
    }
    if (l$trim != lOther$trim) {
      return false;
    }
    final l$v5Url = v5Url;
    final lOther$v5Url = other.v5Url;
    if (_$data.containsKey('v5Url') != other._$data.containsKey('v5Url')) {
      return false;
    }
    if (l$v5Url != lOther$v5Url) {
      return false;
    }
    final l$vehicleIdentifier = vehicleIdentifier;
    final lOther$vehicleIdentifier = other.vehicleIdentifier;
    if (_$data.containsKey('vehicleIdentifier') !=
        other._$data.containsKey('vehicleIdentifier')) {
      return false;
    }
    if (l$vehicleIdentifier != lOther$vehicleIdentifier) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$vehicleReg = vehicleReg;
    final l$vin = vin;
    final l$make = make;
    final l$model = model;
    final l$fuelType = fuelType;
    final l$transmission = transmission;
    final l$variant = variant;
    final l$bodyType = bodyType;
    final l$doors = doors;
    final l$year = year;
    final l$engineSize = engineSize;
    final l$curbWeight = curbWeight;
    final l$curbWeightUom = curbWeightUom;
    final l$overrideCurbWeight = overrideCurbWeight;
    final l$overrideCurbWeightUom = overrideCurbWeightUom;
    final l$vehicleBatchQuotes = vehicleBatchQuotes;
    final l$trim = trim;
    final l$v5Url = v5Url;
    final l$vehicleIdentifier = vehicleIdentifier;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('vehicleReg') ? l$vehicleReg : const {},
      _$data.containsKey('vin') ? l$vin : const {},
      _$data.containsKey('make') ? l$make : const {},
      _$data.containsKey('model') ? l$model : const {},
      _$data.containsKey('fuelType') ? l$fuelType : const {},
      _$data.containsKey('transmission') ? l$transmission : const {},
      _$data.containsKey('variant') ? l$variant : const {},
      _$data.containsKey('bodyType') ? l$bodyType : const {},
      _$data.containsKey('doors') ? l$doors : const {},
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('engineSize') ? l$engineSize : const {},
      _$data.containsKey('curbWeight') ? l$curbWeight : const {},
      _$data.containsKey('curbWeightUom') ? l$curbWeightUom : const {},
      _$data.containsKey('overrideCurbWeight')
          ? l$overrideCurbWeight
          : const {},
      _$data.containsKey('overrideCurbWeightUom')
          ? l$overrideCurbWeightUom
          : const {},
      _$data.containsKey('vehicleBatchQuotes')
          ? l$vehicleBatchQuotes
          : const {},
      _$data.containsKey('trim') ? l$trim : const {},
      _$data.containsKey('v5Url') ? l$v5Url : const {},
      _$data.containsKey('vehicleIdentifier') ? l$vehicleIdentifier : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleDescriptionModelFilterInput<TRes> {
  factory CopyWith$Input$VehicleDescriptionModelFilterInput(
    Input$VehicleDescriptionModelFilterInput instance,
    TRes Function(Input$VehicleDescriptionModelFilterInput) then,
  ) = _CopyWithImpl$Input$VehicleDescriptionModelFilterInput;

  factory CopyWith$Input$VehicleDescriptionModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleDescriptionModelFilterInput;

  TRes call({
    List<Input$VehicleDescriptionModelFilterInput>? and,
    List<Input$VehicleDescriptionModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? vehicleReg,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? fuelType,
    Input$StringOperationFilterInput? transmission,
    Input$StringOperationFilterInput? variant,
    Input$StringOperationFilterInput? bodyType,
    Input$IntOperationFilterInput? doors,
    Input$IntOperationFilterInput? year,
    Input$DecimalOperationFilterInput? engineSize,
    Input$DecimalOperationFilterInput? curbWeight,
    Input$NullableOfUomCodeOperationFilterInput? curbWeightUom,
    Input$DecimalOperationFilterInput? overrideCurbWeight,
    Input$NullableOfUomCodeOperationFilterInput? overrideCurbWeightUom,
    Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?
        vehicleBatchQuotes,
    Input$StringOperationFilterInput? trim,
    Input$StringOperationFilterInput? v5Url,
    Input$StringOperationFilterInput? vehicleIdentifier,
  });
  TRes and(
      Iterable<Input$VehicleDescriptionModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleDescriptionModelFilterInput<
                      Input$VehicleDescriptionModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$VehicleDescriptionModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleDescriptionModelFilterInput<
                      Input$VehicleDescriptionModelFilterInput>>?)
          _fn);
  CopyWith$Input$IntOperationFilterInput<TRes> get id;
  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg;
  CopyWith$Input$StringOperationFilterInput<TRes> get vin;
  CopyWith$Input$StringOperationFilterInput<TRes> get make;
  CopyWith$Input$StringOperationFilterInput<TRes> get model;
  CopyWith$Input$StringOperationFilterInput<TRes> get fuelType;
  CopyWith$Input$StringOperationFilterInput<TRes> get transmission;
  CopyWith$Input$StringOperationFilterInput<TRes> get variant;
  CopyWith$Input$StringOperationFilterInput<TRes> get bodyType;
  CopyWith$Input$IntOperationFilterInput<TRes> get doors;
  CopyWith$Input$IntOperationFilterInput<TRes> get year;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get engineSize;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get curbWeight;
  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes> get curbWeightUom;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get overrideCurbWeight;
  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes>
      get overrideCurbWeightUom;
  CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<TRes>
      get vehicleBatchQuotes;
  CopyWith$Input$StringOperationFilterInput<TRes> get trim;
  CopyWith$Input$StringOperationFilterInput<TRes> get v5Url;
  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleIdentifier;
}

class _CopyWithImpl$Input$VehicleDescriptionModelFilterInput<TRes>
    implements CopyWith$Input$VehicleDescriptionModelFilterInput<TRes> {
  _CopyWithImpl$Input$VehicleDescriptionModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$VehicleDescriptionModelFilterInput _instance;

  final TRes Function(Input$VehicleDescriptionModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? vehicleReg = _undefined,
    Object? vin = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? fuelType = _undefined,
    Object? transmission = _undefined,
    Object? variant = _undefined,
    Object? bodyType = _undefined,
    Object? doors = _undefined,
    Object? year = _undefined,
    Object? engineSize = _undefined,
    Object? curbWeight = _undefined,
    Object? curbWeightUom = _undefined,
    Object? overrideCurbWeight = _undefined,
    Object? overrideCurbWeightUom = _undefined,
    Object? vehicleBatchQuotes = _undefined,
    Object? trim = _undefined,
    Object? v5Url = _undefined,
    Object? vehicleIdentifier = _undefined,
  }) =>
      _then(Input$VehicleDescriptionModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$VehicleDescriptionModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$VehicleDescriptionModelFilterInput>?),
        if (id != _undefined) 'id': (id as Input$IntOperationFilterInput?),
        if (vehicleReg != _undefined)
          'vehicleReg': (vehicleReg as Input$StringOperationFilterInput?),
        if (vin != _undefined)
          'vin': (vin as Input$StringOperationFilterInput?),
        if (make != _undefined)
          'make': (make as Input$StringOperationFilterInput?),
        if (model != _undefined)
          'model': (model as Input$StringOperationFilterInput?),
        if (fuelType != _undefined)
          'fuelType': (fuelType as Input$StringOperationFilterInput?),
        if (transmission != _undefined)
          'transmission': (transmission as Input$StringOperationFilterInput?),
        if (variant != _undefined)
          'variant': (variant as Input$StringOperationFilterInput?),
        if (bodyType != _undefined)
          'bodyType': (bodyType as Input$StringOperationFilterInput?),
        if (doors != _undefined)
          'doors': (doors as Input$IntOperationFilterInput?),
        if (year != _undefined)
          'year': (year as Input$IntOperationFilterInput?),
        if (engineSize != _undefined)
          'engineSize': (engineSize as Input$DecimalOperationFilterInput?),
        if (curbWeight != _undefined)
          'curbWeight': (curbWeight as Input$DecimalOperationFilterInput?),
        if (curbWeightUom != _undefined)
          'curbWeightUom':
              (curbWeightUom as Input$NullableOfUomCodeOperationFilterInput?),
        if (overrideCurbWeight != _undefined)
          'overrideCurbWeight':
              (overrideCurbWeight as Input$DecimalOperationFilterInput?),
        if (overrideCurbWeightUom != _undefined)
          'overrideCurbWeightUom': (overrideCurbWeightUom
              as Input$NullableOfUomCodeOperationFilterInput?),
        if (vehicleBatchQuotes != _undefined)
          'vehicleBatchQuotes': (vehicleBatchQuotes
              as Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?),
        if (trim != _undefined)
          'trim': (trim as Input$StringOperationFilterInput?),
        if (v5Url != _undefined)
          'v5Url': (v5Url as Input$StringOperationFilterInput?),
        if (vehicleIdentifier != _undefined)
          'vehicleIdentifier':
              (vehicleIdentifier as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$VehicleDescriptionModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleDescriptionModelFilterInput<
                          Input$VehicleDescriptionModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$VehicleDescriptionModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$VehicleDescriptionModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleDescriptionModelFilterInput<
                          Input$VehicleDescriptionModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$VehicleDescriptionModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IntOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg {
    final local$vehicleReg = _instance.vehicleReg;
    return local$vehicleReg == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$vehicleReg, (e) => call(vehicleReg: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get vin {
    final local$vin = _instance.vin;
    return local$vin == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$vin, (e) => call(vin: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get make {
    final local$make = _instance.make;
    return local$make == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$make, (e) => call(make: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get model {
    final local$model = _instance.model;
    return local$model == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$model, (e) => call(model: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get fuelType {
    final local$fuelType = _instance.fuelType;
    return local$fuelType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$fuelType, (e) => call(fuelType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get transmission {
    final local$transmission = _instance.transmission;
    return local$transmission == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$transmission, (e) => call(transmission: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get variant {
    final local$variant = _instance.variant;
    return local$variant == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$variant, (e) => call(variant: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get bodyType {
    final local$bodyType = _instance.bodyType;
    return local$bodyType == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$bodyType, (e) => call(bodyType: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get doors {
    final local$doors = _instance.doors;
    return local$doors == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$doors, (e) => call(doors: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get year {
    final local$year = _instance.year;
    return local$year == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$year, (e) => call(year: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get engineSize {
    final local$engineSize = _instance.engineSize;
    return local$engineSize == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$engineSize, (e) => call(engineSize: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get curbWeight {
    final local$curbWeight = _instance.curbWeight;
    return local$curbWeight == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$curbWeight, (e) => call(curbWeight: e));
  }

  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes> get curbWeightUom {
    final local$curbWeightUom = _instance.curbWeightUom;
    return local$curbWeightUom == null
        ? CopyWith$Input$NullableOfUomCodeOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableOfUomCodeOperationFilterInput(
            local$curbWeightUom, (e) => call(curbWeightUom: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get overrideCurbWeight {
    final local$overrideCurbWeight = _instance.overrideCurbWeight;
    return local$overrideCurbWeight == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$overrideCurbWeight, (e) => call(overrideCurbWeight: e));
  }

  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes>
      get overrideCurbWeightUom {
    final local$overrideCurbWeightUom = _instance.overrideCurbWeightUom;
    return local$overrideCurbWeightUom == null
        ? CopyWith$Input$NullableOfUomCodeOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableOfUomCodeOperationFilterInput(
            local$overrideCurbWeightUom, (e) => call(overrideCurbWeightUom: e));
  }

  CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<TRes>
      get vehicleBatchQuotes {
    final local$vehicleBatchQuotes = _instance.vehicleBatchQuotes;
    return local$vehicleBatchQuotes == null
        ? CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput(
            local$vehicleBatchQuotes, (e) => call(vehicleBatchQuotes: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get trim {
    final local$trim = _instance.trim;
    return local$trim == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$trim, (e) => call(trim: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get v5Url {
    final local$v5Url = _instance.v5Url;
    return local$v5Url == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$v5Url, (e) => call(v5Url: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleIdentifier {
    final local$vehicleIdentifier = _instance.vehicleIdentifier;
    return local$vehicleIdentifier == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$vehicleIdentifier, (e) => call(vehicleIdentifier: e));
  }
}

class _CopyWithStubImpl$Input$VehicleDescriptionModelFilterInput<TRes>
    implements CopyWith$Input$VehicleDescriptionModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$VehicleDescriptionModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$VehicleDescriptionModelFilterInput>? and,
    List<Input$VehicleDescriptionModelFilterInput>? or,
    Input$IntOperationFilterInput? id,
    Input$StringOperationFilterInput? vehicleReg,
    Input$StringOperationFilterInput? vin,
    Input$StringOperationFilterInput? make,
    Input$StringOperationFilterInput? model,
    Input$StringOperationFilterInput? fuelType,
    Input$StringOperationFilterInput? transmission,
    Input$StringOperationFilterInput? variant,
    Input$StringOperationFilterInput? bodyType,
    Input$IntOperationFilterInput? doors,
    Input$IntOperationFilterInput? year,
    Input$DecimalOperationFilterInput? engineSize,
    Input$DecimalOperationFilterInput? curbWeight,
    Input$NullableOfUomCodeOperationFilterInput? curbWeightUom,
    Input$DecimalOperationFilterInput? overrideCurbWeight,
    Input$NullableOfUomCodeOperationFilterInput? overrideCurbWeightUom,
    Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput?
        vehicleBatchQuotes,
    Input$StringOperationFilterInput? trim,
    Input$StringOperationFilterInput? v5Url,
    Input$StringOperationFilterInput? vehicleIdentifier,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IntOperationFilterInput<TRes> get id =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleReg =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get vin =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get make =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get model =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get fuelType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get transmission =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get variant =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get bodyType =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get doors =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get year =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get engineSize =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get curbWeight =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes>
      get curbWeightUom =>
          CopyWith$Input$NullableOfUomCodeOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get overrideCurbWeight =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfUomCodeOperationFilterInput<TRes>
      get overrideCurbWeightUom =>
          CopyWith$Input$NullableOfUomCodeOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput<TRes>
      get vehicleBatchQuotes =>
          CopyWith$Input$ListFilterInputTypeOfVehicleBatchQuoteModelFilterInput
              .stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get trim =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get v5Url =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get vehicleIdentifier =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$VehicleDocumentsModelFilterInput {
  factory Input$VehicleDocumentsModelFilterInput({
    List<Input$VehicleDocumentsModelFilterInput>? and,
    List<Input$VehicleDocumentsModelFilterInput>? or,
    Input$DocumentUploadTypeEnumOperationFilterInput? imageType,
    Input$StringOperationFilterInput? path,
    Input$DocumentTypeEnumOperationFilterInput? documentType,
    Input$DocumentSubTypeEnumOperationFilterInput? documentSubType,
  }) =>
      Input$VehicleDocumentsModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (imageType != null) r'imageType': imageType,
        if (path != null) r'path': path,
        if (documentType != null) r'documentType': documentType,
        if (documentSubType != null) r'documentSubType': documentSubType,
      });

  Input$VehicleDocumentsModelFilterInput._(this._$data);

  factory Input$VehicleDocumentsModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$VehicleDocumentsModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$VehicleDocumentsModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('imageType')) {
      final l$imageType = data['imageType'];
      result$data['imageType'] = l$imageType == null
          ? null
          : Input$DocumentUploadTypeEnumOperationFilterInput.fromJson(
              (l$imageType as Map<String, dynamic>));
    }
    if (data.containsKey('path')) {
      final l$path = data['path'];
      result$data['path'] = l$path == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$path as Map<String, dynamic>));
    }
    if (data.containsKey('documentType')) {
      final l$documentType = data['documentType'];
      result$data['documentType'] = l$documentType == null
          ? null
          : Input$DocumentTypeEnumOperationFilterInput.fromJson(
              (l$documentType as Map<String, dynamic>));
    }
    if (data.containsKey('documentSubType')) {
      final l$documentSubType = data['documentSubType'];
      result$data['documentSubType'] = l$documentSubType == null
          ? null
          : Input$DocumentSubTypeEnumOperationFilterInput.fromJson(
              (l$documentSubType as Map<String, dynamic>));
    }
    return Input$VehicleDocumentsModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$VehicleDocumentsModelFilterInput>? get and =>
      (_$data['and'] as List<Input$VehicleDocumentsModelFilterInput>?);

  List<Input$VehicleDocumentsModelFilterInput>? get or =>
      (_$data['or'] as List<Input$VehicleDocumentsModelFilterInput>?);

  Input$DocumentUploadTypeEnumOperationFilterInput? get imageType =>
      (_$data['imageType']
          as Input$DocumentUploadTypeEnumOperationFilterInput?);

  Input$StringOperationFilterInput? get path =>
      (_$data['path'] as Input$StringOperationFilterInput?);

  Input$DocumentTypeEnumOperationFilterInput? get documentType =>
      (_$data['documentType'] as Input$DocumentTypeEnumOperationFilterInput?);

  Input$DocumentSubTypeEnumOperationFilterInput? get documentSubType =>
      (_$data['documentSubType']
          as Input$DocumentSubTypeEnumOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('imageType')) {
      final l$imageType = imageType;
      result$data['imageType'] = l$imageType?.toJson();
    }
    if (_$data.containsKey('path')) {
      final l$path = path;
      result$data['path'] = l$path?.toJson();
    }
    if (_$data.containsKey('documentType')) {
      final l$documentType = documentType;
      result$data['documentType'] = l$documentType?.toJson();
    }
    if (_$data.containsKey('documentSubType')) {
      final l$documentSubType = documentSubType;
      result$data['documentSubType'] = l$documentSubType?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$VehicleDocumentsModelFilterInput<
          Input$VehicleDocumentsModelFilterInput>
      get copyWith => CopyWith$Input$VehicleDocumentsModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleDocumentsModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$imageType = imageType;
    final lOther$imageType = other.imageType;
    if (_$data.containsKey('imageType') !=
        other._$data.containsKey('imageType')) {
      return false;
    }
    if (l$imageType != lOther$imageType) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (_$data.containsKey('path') != other._$data.containsKey('path')) {
      return false;
    }
    if (l$path != lOther$path) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (_$data.containsKey('documentType') !=
        other._$data.containsKey('documentType')) {
      return false;
    }
    if (l$documentType != lOther$documentType) {
      return false;
    }
    final l$documentSubType = documentSubType;
    final lOther$documentSubType = other.documentSubType;
    if (_$data.containsKey('documentSubType') !=
        other._$data.containsKey('documentSubType')) {
      return false;
    }
    if (l$documentSubType != lOther$documentSubType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$imageType = imageType;
    final l$path = path;
    final l$documentType = documentType;
    final l$documentSubType = documentSubType;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('imageType') ? l$imageType : const {},
      _$data.containsKey('path') ? l$path : const {},
      _$data.containsKey('documentType') ? l$documentType : const {},
      _$data.containsKey('documentSubType') ? l$documentSubType : const {},
    ]);
  }
}

abstract class CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> {
  factory CopyWith$Input$VehicleDocumentsModelFilterInput(
    Input$VehicleDocumentsModelFilterInput instance,
    TRes Function(Input$VehicleDocumentsModelFilterInput) then,
  ) = _CopyWithImpl$Input$VehicleDocumentsModelFilterInput;

  factory CopyWith$Input$VehicleDocumentsModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleDocumentsModelFilterInput;

  TRes call({
    List<Input$VehicleDocumentsModelFilterInput>? and,
    List<Input$VehicleDocumentsModelFilterInput>? or,
    Input$DocumentUploadTypeEnumOperationFilterInput? imageType,
    Input$StringOperationFilterInput? path,
    Input$DocumentTypeEnumOperationFilterInput? documentType,
    Input$DocumentSubTypeEnumOperationFilterInput? documentSubType,
  });
  TRes and(
      Iterable<Input$VehicleDocumentsModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleDocumentsModelFilterInput<
                      Input$VehicleDocumentsModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$VehicleDocumentsModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$VehicleDocumentsModelFilterInput<
                      Input$VehicleDocumentsModelFilterInput>>?)
          _fn);
  CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes> get imageType;
  CopyWith$Input$StringOperationFilterInput<TRes> get path;
  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get documentType;
  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes>
      get documentSubType;
}

class _CopyWithImpl$Input$VehicleDocumentsModelFilterInput<TRes>
    implements CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> {
  _CopyWithImpl$Input$VehicleDocumentsModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$VehicleDocumentsModelFilterInput _instance;

  final TRes Function(Input$VehicleDocumentsModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? imageType = _undefined,
    Object? path = _undefined,
    Object? documentType = _undefined,
    Object? documentSubType = _undefined,
  }) =>
      _then(Input$VehicleDocumentsModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$VehicleDocumentsModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$VehicleDocumentsModelFilterInput>?),
        if (imageType != _undefined)
          'imageType':
              (imageType as Input$DocumentUploadTypeEnumOperationFilterInput?),
        if (path != _undefined)
          'path': (path as Input$StringOperationFilterInput?),
        if (documentType != _undefined)
          'documentType':
              (documentType as Input$DocumentTypeEnumOperationFilterInput?),
        if (documentSubType != _undefined)
          'documentSubType': (documentSubType
              as Input$DocumentSubTypeEnumOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$VehicleDocumentsModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleDocumentsModelFilterInput<
                          Input$VehicleDocumentsModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$VehicleDocumentsModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$VehicleDocumentsModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$VehicleDocumentsModelFilterInput<
                          Input$VehicleDocumentsModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$VehicleDocumentsModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes>
      get imageType {
    final local$imageType = _instance.imageType;
    return local$imageType == null
        ? CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput(
            local$imageType, (e) => call(imageType: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get path {
    final local$path = _instance.path;
    return local$path == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$path, (e) => call(path: e));
  }

  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get documentType {
    final local$documentType = _instance.documentType;
    return local$documentType == null
        ? CopyWith$Input$DocumentTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$DocumentTypeEnumOperationFilterInput(
            local$documentType, (e) => call(documentType: e));
  }

  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes>
      get documentSubType {
    final local$documentSubType = _instance.documentSubType;
    return local$documentSubType == null
        ? CopyWith$Input$DocumentSubTypeEnumOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$DocumentSubTypeEnumOperationFilterInput(
            local$documentSubType, (e) => call(documentSubType: e));
  }
}

class _CopyWithStubImpl$Input$VehicleDocumentsModelFilterInput<TRes>
    implements CopyWith$Input$VehicleDocumentsModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$VehicleDocumentsModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$VehicleDocumentsModelFilterInput>? and,
    List<Input$VehicleDocumentsModelFilterInput>? or,
    Input$DocumentUploadTypeEnumOperationFilterInput? imageType,
    Input$StringOperationFilterInput? path,
    Input$DocumentTypeEnumOperationFilterInput? documentType,
    Input$DocumentSubTypeEnumOperationFilterInput? documentSubType,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput<TRes>
      get imageType =>
          CopyWith$Input$DocumentUploadTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get path =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DocumentTypeEnumOperationFilterInput<TRes> get documentType =>
      CopyWith$Input$DocumentTypeEnumOperationFilterInput.stub(_res);

  CopyWith$Input$DocumentSubTypeEnumOperationFilterInput<TRes>
      get documentSubType =>
          CopyWith$Input$DocumentSubTypeEnumOperationFilterInput.stub(_res);
}

class Input$VehicleDocumentsModelInput {
  factory Input$VehicleDocumentsModelInput({
    required Enum$DocumentUploadTypeEnum imageType,
    String? path,
    required Enum$DocumentTypeEnum documentType,
    required Enum$DocumentSubTypeEnum documentSubType,
  }) =>
      Input$VehicleDocumentsModelInput._({
        r'imageType': imageType,
        if (path != null) r'path': path,
        r'documentType': documentType,
        r'documentSubType': documentSubType,
      });

  Input$VehicleDocumentsModelInput._(this._$data);

  factory Input$VehicleDocumentsModelInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$imageType = data['imageType'];
    result$data['imageType'] =
        fromJson$Enum$DocumentUploadTypeEnum((l$imageType as String));
    if (data.containsKey('path')) {
      final l$path = data['path'];
      result$data['path'] = (l$path as String?);
    }
    final l$documentType = data['documentType'];
    result$data['documentType'] =
        fromJson$Enum$DocumentTypeEnum((l$documentType as String));
    final l$documentSubType = data['documentSubType'];
    result$data['documentSubType'] =
        fromJson$Enum$DocumentSubTypeEnum((l$documentSubType as String));
    return Input$VehicleDocumentsModelInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DocumentUploadTypeEnum get imageType =>
      (_$data['imageType'] as Enum$DocumentUploadTypeEnum);

  String? get path => (_$data['path'] as String?);

  Enum$DocumentTypeEnum get documentType =>
      (_$data['documentType'] as Enum$DocumentTypeEnum);

  Enum$DocumentSubTypeEnum get documentSubType =>
      (_$data['documentSubType'] as Enum$DocumentSubTypeEnum);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$imageType = imageType;
    result$data['imageType'] = toJson$Enum$DocumentUploadTypeEnum(l$imageType);
    if (_$data.containsKey('path')) {
      final l$path = path;
      result$data['path'] = l$path;
    }
    final l$documentType = documentType;
    result$data['documentType'] = toJson$Enum$DocumentTypeEnum(l$documentType);
    final l$documentSubType = documentSubType;
    result$data['documentSubType'] =
        toJson$Enum$DocumentSubTypeEnum(l$documentSubType);
    return result$data;
  }

  CopyWith$Input$VehicleDocumentsModelInput<Input$VehicleDocumentsModelInput>
      get copyWith => CopyWith$Input$VehicleDocumentsModelInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$VehicleDocumentsModelInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$imageType = imageType;
    final lOther$imageType = other.imageType;
    if (l$imageType != lOther$imageType) {
      return false;
    }
    final l$path = path;
    final lOther$path = other.path;
    if (_$data.containsKey('path') != other._$data.containsKey('path')) {
      return false;
    }
    if (l$path != lOther$path) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
      return false;
    }
    final l$documentSubType = documentSubType;
    final lOther$documentSubType = other.documentSubType;
    if (l$documentSubType != lOther$documentSubType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$imageType = imageType;
    final l$path = path;
    final l$documentType = documentType;
    final l$documentSubType = documentSubType;
    return Object.hashAll([
      l$imageType,
      _$data.containsKey('path') ? l$path : const {},
      l$documentType,
      l$documentSubType,
    ]);
  }
}

abstract class CopyWith$Input$VehicleDocumentsModelInput<TRes> {
  factory CopyWith$Input$VehicleDocumentsModelInput(
    Input$VehicleDocumentsModelInput instance,
    TRes Function(Input$VehicleDocumentsModelInput) then,
  ) = _CopyWithImpl$Input$VehicleDocumentsModelInput;

  factory CopyWith$Input$VehicleDocumentsModelInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VehicleDocumentsModelInput;

  TRes call({
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
  });
}

class _CopyWithImpl$Input$VehicleDocumentsModelInput<TRes>
    implements CopyWith$Input$VehicleDocumentsModelInput<TRes> {
  _CopyWithImpl$Input$VehicleDocumentsModelInput(
    this._instance,
    this._then,
  );

  final Input$VehicleDocumentsModelInput _instance;

  final TRes Function(Input$VehicleDocumentsModelInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? imageType = _undefined,
    Object? path = _undefined,
    Object? documentType = _undefined,
    Object? documentSubType = _undefined,
  }) =>
      _then(Input$VehicleDocumentsModelInput._({
        ..._instance._$data,
        if (imageType != _undefined && imageType != null)
          'imageType': (imageType as Enum$DocumentUploadTypeEnum),
        if (path != _undefined) 'path': (path as String?),
        if (documentType != _undefined && documentType != null)
          'documentType': (documentType as Enum$DocumentTypeEnum),
        if (documentSubType != _undefined && documentSubType != null)
          'documentSubType': (documentSubType as Enum$DocumentSubTypeEnum),
      }));
}

class _CopyWithStubImpl$Input$VehicleDocumentsModelInput<TRes>
    implements CopyWith$Input$VehicleDocumentsModelInput<TRes> {
  _CopyWithStubImpl$Input$VehicleDocumentsModelInput(this._res);

  TRes _res;

  call({
    Enum$DocumentUploadTypeEnum? imageType,
    String? path,
    Enum$DocumentTypeEnum? documentType,
    Enum$DocumentSubTypeEnum? documentSubType,
  }) =>
      _res;
}

class Input$YardModelFilterInput {
  factory Input$YardModelFilterInput({
    List<Input$YardModelFilterInput>? and,
    List<Input$YardModelFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? code,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? telephone1,
    Input$StringOperationFilterInput? telephone2,
    Input$StringOperationFilterInput? fax,
    Input$StringOperationFilterInput? website,
    Input$StringOperationFilterInput? notes,
    Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput? openingTimes,
    Input$DistanceModelFilterInput? drivingDistance,
    Input$DistanceModelFilterInput? geodeticDistance,
    Input$BooleanOperationFilterInput? canCollect,
    Input$BooleanOperationFilterInput? canDeliver,
    Input$GeoCoordinatesModelFilterInput? geoCoordinates,
    Input$StringOperationFilterInput? territoryCode,
  }) =>
      Input$YardModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (name != null) r'name': name,
        if (code != null) r'code': code,
        if (address != null) r'address': address,
        if (telephone1 != null) r'telephone1': telephone1,
        if (telephone2 != null) r'telephone2': telephone2,
        if (fax != null) r'fax': fax,
        if (website != null) r'website': website,
        if (notes != null) r'notes': notes,
        if (openingTimes != null) r'openingTimes': openingTimes,
        if (drivingDistance != null) r'drivingDistance': drivingDistance,
        if (geodeticDistance != null) r'geodeticDistance': geodeticDistance,
        if (canCollect != null) r'canCollect': canCollect,
        if (canDeliver != null) r'canDeliver': canDeliver,
        if (geoCoordinates != null) r'geoCoordinates': geoCoordinates,
        if (territoryCode != null) r'territoryCode': territoryCode,
      });

  Input$YardModelFilterInput._(this._$data);

  factory Input$YardModelFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$YardModelFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$YardModelFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$code as Map<String, dynamic>));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressModelFilterInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('telephone1')) {
      final l$telephone1 = data['telephone1'];
      result$data['telephone1'] = l$telephone1 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$telephone1 as Map<String, dynamic>));
    }
    if (data.containsKey('telephone2')) {
      final l$telephone2 = data['telephone2'];
      result$data['telephone2'] = l$telephone2 == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$telephone2 as Map<String, dynamic>));
    }
    if (data.containsKey('fax')) {
      final l$fax = data['fax'];
      result$data['fax'] = l$fax == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$fax as Map<String, dynamic>));
    }
    if (data.containsKey('website')) {
      final l$website = data['website'];
      result$data['website'] = l$website == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$website as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$notes as Map<String, dynamic>));
    }
    if (data.containsKey('openingTimes')) {
      final l$openingTimes = data['openingTimes'];
      result$data['openingTimes'] = l$openingTimes == null
          ? null
          : Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput
              .fromJson((l$openingTimes as Map<String, dynamic>));
    }
    if (data.containsKey('drivingDistance')) {
      final l$drivingDistance = data['drivingDistance'];
      result$data['drivingDistance'] = l$drivingDistance == null
          ? null
          : Input$DistanceModelFilterInput.fromJson(
              (l$drivingDistance as Map<String, dynamic>));
    }
    if (data.containsKey('geodeticDistance')) {
      final l$geodeticDistance = data['geodeticDistance'];
      result$data['geodeticDistance'] = l$geodeticDistance == null
          ? null
          : Input$DistanceModelFilterInput.fromJson(
              (l$geodeticDistance as Map<String, dynamic>));
    }
    if (data.containsKey('canCollect')) {
      final l$canCollect = data['canCollect'];
      result$data['canCollect'] = l$canCollect == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$canCollect as Map<String, dynamic>));
    }
    if (data.containsKey('canDeliver')) {
      final l$canDeliver = data['canDeliver'];
      result$data['canDeliver'] = l$canDeliver == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$canDeliver as Map<String, dynamic>));
    }
    if (data.containsKey('geoCoordinates')) {
      final l$geoCoordinates = data['geoCoordinates'];
      result$data['geoCoordinates'] = l$geoCoordinates == null
          ? null
          : Input$GeoCoordinatesModelFilterInput.fromJson(
              (l$geoCoordinates as Map<String, dynamic>));
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$territoryCode as Map<String, dynamic>));
    }
    return Input$YardModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$YardModelFilterInput>? get and =>
      (_$data['and'] as List<Input$YardModelFilterInput>?);

  List<Input$YardModelFilterInput>? get or =>
      (_$data['or'] as List<Input$YardModelFilterInput>?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get code =>
      (_$data['code'] as Input$StringOperationFilterInput?);

  Input$AddressModelFilterInput? get address =>
      (_$data['address'] as Input$AddressModelFilterInput?);

  Input$StringOperationFilterInput? get telephone1 =>
      (_$data['telephone1'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get telephone2 =>
      (_$data['telephone2'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get fax =>
      (_$data['fax'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get website =>
      (_$data['website'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get notes =>
      (_$data['notes'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput?
      get openingTimes => (_$data['openingTimes']
          as Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput?);

  Input$DistanceModelFilterInput? get drivingDistance =>
      (_$data['drivingDistance'] as Input$DistanceModelFilterInput?);

  Input$DistanceModelFilterInput? get geodeticDistance =>
      (_$data['geodeticDistance'] as Input$DistanceModelFilterInput?);

  Input$BooleanOperationFilterInput? get canCollect =>
      (_$data['canCollect'] as Input$BooleanOperationFilterInput?);

  Input$BooleanOperationFilterInput? get canDeliver =>
      (_$data['canDeliver'] as Input$BooleanOperationFilterInput?);

  Input$GeoCoordinatesModelFilterInput? get geoCoordinates =>
      (_$data['geoCoordinates'] as Input$GeoCoordinatesModelFilterInput?);

  Input$StringOperationFilterInput? get territoryCode =>
      (_$data['territoryCode'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code?.toJson();
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('telephone1')) {
      final l$telephone1 = telephone1;
      result$data['telephone1'] = l$telephone1?.toJson();
    }
    if (_$data.containsKey('telephone2')) {
      final l$telephone2 = telephone2;
      result$data['telephone2'] = l$telephone2?.toJson();
    }
    if (_$data.containsKey('fax')) {
      final l$fax = fax;
      result$data['fax'] = l$fax?.toJson();
    }
    if (_$data.containsKey('website')) {
      final l$website = website;
      result$data['website'] = l$website?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('openingTimes')) {
      final l$openingTimes = openingTimes;
      result$data['openingTimes'] = l$openingTimes?.toJson();
    }
    if (_$data.containsKey('drivingDistance')) {
      final l$drivingDistance = drivingDistance;
      result$data['drivingDistance'] = l$drivingDistance?.toJson();
    }
    if (_$data.containsKey('geodeticDistance')) {
      final l$geodeticDistance = geodeticDistance;
      result$data['geodeticDistance'] = l$geodeticDistance?.toJson();
    }
    if (_$data.containsKey('canCollect')) {
      final l$canCollect = canCollect;
      result$data['canCollect'] = l$canCollect?.toJson();
    }
    if (_$data.containsKey('canDeliver')) {
      final l$canDeliver = canDeliver;
      result$data['canDeliver'] = l$canDeliver?.toJson();
    }
    if (_$data.containsKey('geoCoordinates')) {
      final l$geoCoordinates = geoCoordinates;
      result$data['geoCoordinates'] = l$geoCoordinates?.toJson();
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$YardModelFilterInput<Input$YardModelFilterInput>
      get copyWith => CopyWith$Input$YardModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$YardModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$telephone1 = telephone1;
    final lOther$telephone1 = other.telephone1;
    if (_$data.containsKey('telephone1') !=
        other._$data.containsKey('telephone1')) {
      return false;
    }
    if (l$telephone1 != lOther$telephone1) {
      return false;
    }
    final l$telephone2 = telephone2;
    final lOther$telephone2 = other.telephone2;
    if (_$data.containsKey('telephone2') !=
        other._$data.containsKey('telephone2')) {
      return false;
    }
    if (l$telephone2 != lOther$telephone2) {
      return false;
    }
    final l$fax = fax;
    final lOther$fax = other.fax;
    if (_$data.containsKey('fax') != other._$data.containsKey('fax')) {
      return false;
    }
    if (l$fax != lOther$fax) {
      return false;
    }
    final l$website = website;
    final lOther$website = other.website;
    if (_$data.containsKey('website') != other._$data.containsKey('website')) {
      return false;
    }
    if (l$website != lOther$website) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$openingTimes = openingTimes;
    final lOther$openingTimes = other.openingTimes;
    if (_$data.containsKey('openingTimes') !=
        other._$data.containsKey('openingTimes')) {
      return false;
    }
    if (l$openingTimes != lOther$openingTimes) {
      return false;
    }
    final l$drivingDistance = drivingDistance;
    final lOther$drivingDistance = other.drivingDistance;
    if (_$data.containsKey('drivingDistance') !=
        other._$data.containsKey('drivingDistance')) {
      return false;
    }
    if (l$drivingDistance != lOther$drivingDistance) {
      return false;
    }
    final l$geodeticDistance = geodeticDistance;
    final lOther$geodeticDistance = other.geodeticDistance;
    if (_$data.containsKey('geodeticDistance') !=
        other._$data.containsKey('geodeticDistance')) {
      return false;
    }
    if (l$geodeticDistance != lOther$geodeticDistance) {
      return false;
    }
    final l$canCollect = canCollect;
    final lOther$canCollect = other.canCollect;
    if (_$data.containsKey('canCollect') !=
        other._$data.containsKey('canCollect')) {
      return false;
    }
    if (l$canCollect != lOther$canCollect) {
      return false;
    }
    final l$canDeliver = canDeliver;
    final lOther$canDeliver = other.canDeliver;
    if (_$data.containsKey('canDeliver') !=
        other._$data.containsKey('canDeliver')) {
      return false;
    }
    if (l$canDeliver != lOther$canDeliver) {
      return false;
    }
    final l$geoCoordinates = geoCoordinates;
    final lOther$geoCoordinates = other.geoCoordinates;
    if (_$data.containsKey('geoCoordinates') !=
        other._$data.containsKey('geoCoordinates')) {
      return false;
    }
    if (l$geoCoordinates != lOther$geoCoordinates) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$name = name;
    final l$code = code;
    final l$address = address;
    final l$telephone1 = telephone1;
    final l$telephone2 = telephone2;
    final l$fax = fax;
    final l$website = website;
    final l$notes = notes;
    final l$openingTimes = openingTimes;
    final l$drivingDistance = drivingDistance;
    final l$geodeticDistance = geodeticDistance;
    final l$canCollect = canCollect;
    final l$canDeliver = canDeliver;
    final l$geoCoordinates = geoCoordinates;
    final l$territoryCode = territoryCode;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('telephone1') ? l$telephone1 : const {},
      _$data.containsKey('telephone2') ? l$telephone2 : const {},
      _$data.containsKey('fax') ? l$fax : const {},
      _$data.containsKey('website') ? l$website : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('openingTimes') ? l$openingTimes : const {},
      _$data.containsKey('drivingDistance') ? l$drivingDistance : const {},
      _$data.containsKey('geodeticDistance') ? l$geodeticDistance : const {},
      _$data.containsKey('canCollect') ? l$canCollect : const {},
      _$data.containsKey('canDeliver') ? l$canDeliver : const {},
      _$data.containsKey('geoCoordinates') ? l$geoCoordinates : const {},
      _$data.containsKey('territoryCode') ? l$territoryCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$YardModelFilterInput<TRes> {
  factory CopyWith$Input$YardModelFilterInput(
    Input$YardModelFilterInput instance,
    TRes Function(Input$YardModelFilterInput) then,
  ) = _CopyWithImpl$Input$YardModelFilterInput;

  factory CopyWith$Input$YardModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$YardModelFilterInput;

  TRes call({
    List<Input$YardModelFilterInput>? and,
    List<Input$YardModelFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? code,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? telephone1,
    Input$StringOperationFilterInput? telephone2,
    Input$StringOperationFilterInput? fax,
    Input$StringOperationFilterInput? website,
    Input$StringOperationFilterInput? notes,
    Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput? openingTimes,
    Input$DistanceModelFilterInput? drivingDistance,
    Input$DistanceModelFilterInput? geodeticDistance,
    Input$BooleanOperationFilterInput? canCollect,
    Input$BooleanOperationFilterInput? canDeliver,
    Input$GeoCoordinatesModelFilterInput? geoCoordinates,
    Input$StringOperationFilterInput? territoryCode,
  });
  TRes and(
      Iterable<Input$YardModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardModelFilterInput<
                      Input$YardModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$YardModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardModelFilterInput<
                      Input$YardModelFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get code;
  CopyWith$Input$AddressModelFilterInput<TRes> get address;
  CopyWith$Input$StringOperationFilterInput<TRes> get telephone1;
  CopyWith$Input$StringOperationFilterInput<TRes> get telephone2;
  CopyWith$Input$StringOperationFilterInput<TRes> get fax;
  CopyWith$Input$StringOperationFilterInput<TRes> get website;
  CopyWith$Input$StringOperationFilterInput<TRes> get notes;
  CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<TRes>
      get openingTimes;
  CopyWith$Input$DistanceModelFilterInput<TRes> get drivingDistance;
  CopyWith$Input$DistanceModelFilterInput<TRes> get geodeticDistance;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get canCollect;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get canDeliver;
  CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> get geoCoordinates;
  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode;
}

class _CopyWithImpl$Input$YardModelFilterInput<TRes>
    implements CopyWith$Input$YardModelFilterInput<TRes> {
  _CopyWithImpl$Input$YardModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$YardModelFilterInput _instance;

  final TRes Function(Input$YardModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? address = _undefined,
    Object? telephone1 = _undefined,
    Object? telephone2 = _undefined,
    Object? fax = _undefined,
    Object? website = _undefined,
    Object? notes = _undefined,
    Object? openingTimes = _undefined,
    Object? drivingDistance = _undefined,
    Object? geodeticDistance = _undefined,
    Object? canCollect = _undefined,
    Object? canDeliver = _undefined,
    Object? geoCoordinates = _undefined,
    Object? territoryCode = _undefined,
  }) =>
      _then(Input$YardModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$YardModelFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$YardModelFilterInput>?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (code != _undefined)
          'code': (code as Input$StringOperationFilterInput?),
        if (address != _undefined)
          'address': (address as Input$AddressModelFilterInput?),
        if (telephone1 != _undefined)
          'telephone1': (telephone1 as Input$StringOperationFilterInput?),
        if (telephone2 != _undefined)
          'telephone2': (telephone2 as Input$StringOperationFilterInput?),
        if (fax != _undefined)
          'fax': (fax as Input$StringOperationFilterInput?),
        if (website != _undefined)
          'website': (website as Input$StringOperationFilterInput?),
        if (notes != _undefined)
          'notes': (notes as Input$StringOperationFilterInput?),
        if (openingTimes != _undefined)
          'openingTimes': (openingTimes
              as Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput?),
        if (drivingDistance != _undefined)
          'drivingDistance':
              (drivingDistance as Input$DistanceModelFilterInput?),
        if (geodeticDistance != _undefined)
          'geodeticDistance':
              (geodeticDistance as Input$DistanceModelFilterInput?),
        if (canCollect != _undefined)
          'canCollect': (canCollect as Input$BooleanOperationFilterInput?),
        if (canDeliver != _undefined)
          'canDeliver': (canDeliver as Input$BooleanOperationFilterInput?),
        if (geoCoordinates != _undefined)
          'geoCoordinates':
              (geoCoordinates as Input$GeoCoordinatesModelFilterInput?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$YardModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardModelFilterInput<
                          Input$YardModelFilterInput>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$YardModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$YardModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardModelFilterInput<
                          Input$YardModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$YardModelFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$code, (e) => call(code: e));
  }

  CopyWith$Input$AddressModelFilterInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$AddressModelFilterInput(
            local$address, (e) => call(address: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get telephone1 {
    final local$telephone1 = _instance.telephone1;
    return local$telephone1 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$telephone1, (e) => call(telephone1: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get telephone2 {
    final local$telephone2 = _instance.telephone2;
    return local$telephone2 == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$telephone2, (e) => call(telephone2: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get fax {
    final local$fax = _instance.fax;
    return local$fax == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$fax, (e) => call(fax: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get website {
    final local$website = _instance.website;
    return local$website == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$website, (e) => call(website: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$notes, (e) => call(notes: e));
  }

  CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<TRes>
      get openingTimes {
    final local$openingTimes = _instance.openingTimes;
    return local$openingTimes == null
        ? CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput(
            local$openingTimes, (e) => call(openingTimes: e));
  }

  CopyWith$Input$DistanceModelFilterInput<TRes> get drivingDistance {
    final local$drivingDistance = _instance.drivingDistance;
    return local$drivingDistance == null
        ? CopyWith$Input$DistanceModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$DistanceModelFilterInput(
            local$drivingDistance, (e) => call(drivingDistance: e));
  }

  CopyWith$Input$DistanceModelFilterInput<TRes> get geodeticDistance {
    final local$geodeticDistance = _instance.geodeticDistance;
    return local$geodeticDistance == null
        ? CopyWith$Input$DistanceModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$DistanceModelFilterInput(
            local$geodeticDistance, (e) => call(geodeticDistance: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get canCollect {
    final local$canCollect = _instance.canCollect;
    return local$canCollect == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$canCollect, (e) => call(canCollect: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get canDeliver {
    final local$canDeliver = _instance.canDeliver;
    return local$canDeliver == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$canDeliver, (e) => call(canDeliver: e));
  }

  CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> get geoCoordinates {
    final local$geoCoordinates = _instance.geoCoordinates;
    return local$geoCoordinates == null
        ? CopyWith$Input$GeoCoordinatesModelFilterInput.stub(_then(_instance))
        : CopyWith$Input$GeoCoordinatesModelFilterInput(
            local$geoCoordinates, (e) => call(geoCoordinates: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode {
    final local$territoryCode = _instance.territoryCode;
    return local$territoryCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$territoryCode, (e) => call(territoryCode: e));
  }
}

class _CopyWithStubImpl$Input$YardModelFilterInput<TRes>
    implements CopyWith$Input$YardModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$YardModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$YardModelFilterInput>? and,
    List<Input$YardModelFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? code,
    Input$AddressModelFilterInput? address,
    Input$StringOperationFilterInput? telephone1,
    Input$StringOperationFilterInput? telephone2,
    Input$StringOperationFilterInput? fax,
    Input$StringOperationFilterInput? website,
    Input$StringOperationFilterInput? notes,
    Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput? openingTimes,
    Input$DistanceModelFilterInput? drivingDistance,
    Input$DistanceModelFilterInput? geodeticDistance,
    Input$BooleanOperationFilterInput? canCollect,
    Input$BooleanOperationFilterInput? canDeliver,
    Input$GeoCoordinatesModelFilterInput? geoCoordinates,
    Input$StringOperationFilterInput? territoryCode,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get code =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$AddressModelFilterInput<TRes> get address =>
      CopyWith$Input$AddressModelFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get telephone1 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get telephone2 =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get fax =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get website =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get notes =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput<TRes>
      get openingTimes =>
          CopyWith$Input$ListFilterInputTypeOfYardOpeningTimesModelFilterInput
              .stub(_res);

  CopyWith$Input$DistanceModelFilterInput<TRes> get drivingDistance =>
      CopyWith$Input$DistanceModelFilterInput.stub(_res);

  CopyWith$Input$DistanceModelFilterInput<TRes> get geodeticDistance =>
      CopyWith$Input$DistanceModelFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get canCollect =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get canDeliver =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$GeoCoordinatesModelFilterInput<TRes> get geoCoordinates =>
      CopyWith$Input$GeoCoordinatesModelFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get territoryCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$YardModelSortInput {
  factory Input$YardModelSortInput({
    Enum$SortEnumType? name,
    Enum$SortEnumType? code,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? telephone1,
    Enum$SortEnumType? telephone2,
    Enum$SortEnumType? fax,
    Enum$SortEnumType? website,
    Enum$SortEnumType? notes,
    Input$DistanceModelSortInput? drivingDistance,
    Input$DistanceModelSortInput? geodeticDistance,
    Enum$SortEnumType? canCollect,
    Enum$SortEnumType? canDeliver,
    Input$GeoCoordinatesModelSortInput? geoCoordinates,
    Enum$SortEnumType? territoryCode,
  }) =>
      Input$YardModelSortInput._({
        if (name != null) r'name': name,
        if (code != null) r'code': code,
        if (address != null) r'address': address,
        if (telephone1 != null) r'telephone1': telephone1,
        if (telephone2 != null) r'telephone2': telephone2,
        if (fax != null) r'fax': fax,
        if (website != null) r'website': website,
        if (notes != null) r'notes': notes,
        if (drivingDistance != null) r'drivingDistance': drivingDistance,
        if (geodeticDistance != null) r'geodeticDistance': geodeticDistance,
        if (canCollect != null) r'canCollect': canCollect,
        if (canDeliver != null) r'canDeliver': canDeliver,
        if (geoCoordinates != null) r'geoCoordinates': geoCoordinates,
        if (territoryCode != null) r'territoryCode': territoryCode,
      });

  Input$YardModelSortInput._(this._$data);

  factory Input$YardModelSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson$Enum$SortEnumType((l$name as String));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : fromJson$Enum$SortEnumType((l$code as String));
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = l$address == null
          ? null
          : Input$AddressModelSortInput.fromJson(
              (l$address as Map<String, dynamic>));
    }
    if (data.containsKey('telephone1')) {
      final l$telephone1 = data['telephone1'];
      result$data['telephone1'] = l$telephone1 == null
          ? null
          : fromJson$Enum$SortEnumType((l$telephone1 as String));
    }
    if (data.containsKey('telephone2')) {
      final l$telephone2 = data['telephone2'];
      result$data['telephone2'] = l$telephone2 == null
          ? null
          : fromJson$Enum$SortEnumType((l$telephone2 as String));
    }
    if (data.containsKey('fax')) {
      final l$fax = data['fax'];
      result$data['fax'] =
          l$fax == null ? null : fromJson$Enum$SortEnumType((l$fax as String));
    }
    if (data.containsKey('website')) {
      final l$website = data['website'];
      result$data['website'] = l$website == null
          ? null
          : fromJson$Enum$SortEnumType((l$website as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson$Enum$SortEnumType((l$notes as String));
    }
    if (data.containsKey('drivingDistance')) {
      final l$drivingDistance = data['drivingDistance'];
      result$data['drivingDistance'] = l$drivingDistance == null
          ? null
          : Input$DistanceModelSortInput.fromJson(
              (l$drivingDistance as Map<String, dynamic>));
    }
    if (data.containsKey('geodeticDistance')) {
      final l$geodeticDistance = data['geodeticDistance'];
      result$data['geodeticDistance'] = l$geodeticDistance == null
          ? null
          : Input$DistanceModelSortInput.fromJson(
              (l$geodeticDistance as Map<String, dynamic>));
    }
    if (data.containsKey('canCollect')) {
      final l$canCollect = data['canCollect'];
      result$data['canCollect'] = l$canCollect == null
          ? null
          : fromJson$Enum$SortEnumType((l$canCollect as String));
    }
    if (data.containsKey('canDeliver')) {
      final l$canDeliver = data['canDeliver'];
      result$data['canDeliver'] = l$canDeliver == null
          ? null
          : fromJson$Enum$SortEnumType((l$canDeliver as String));
    }
    if (data.containsKey('geoCoordinates')) {
      final l$geoCoordinates = data['geoCoordinates'];
      result$data['geoCoordinates'] = l$geoCoordinates == null
          ? null
          : Input$GeoCoordinatesModelSortInput.fromJson(
              (l$geoCoordinates as Map<String, dynamic>));
    }
    if (data.containsKey('territoryCode')) {
      final l$territoryCode = data['territoryCode'];
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$territoryCode as String));
    }
    return Input$YardModelSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get name => (_$data['name'] as Enum$SortEnumType?);

  Enum$SortEnumType? get code => (_$data['code'] as Enum$SortEnumType?);

  Input$AddressModelSortInput? get address =>
      (_$data['address'] as Input$AddressModelSortInput?);

  Enum$SortEnumType? get telephone1 =>
      (_$data['telephone1'] as Enum$SortEnumType?);

  Enum$SortEnumType? get telephone2 =>
      (_$data['telephone2'] as Enum$SortEnumType?);

  Enum$SortEnumType? get fax => (_$data['fax'] as Enum$SortEnumType?);

  Enum$SortEnumType? get website => (_$data['website'] as Enum$SortEnumType?);

  Enum$SortEnumType? get notes => (_$data['notes'] as Enum$SortEnumType?);

  Input$DistanceModelSortInput? get drivingDistance =>
      (_$data['drivingDistance'] as Input$DistanceModelSortInput?);

  Input$DistanceModelSortInput? get geodeticDistance =>
      (_$data['geodeticDistance'] as Input$DistanceModelSortInput?);

  Enum$SortEnumType? get canCollect =>
      (_$data['canCollect'] as Enum$SortEnumType?);

  Enum$SortEnumType? get canDeliver =>
      (_$data['canDeliver'] as Enum$SortEnumType?);

  Input$GeoCoordinatesModelSortInput? get geoCoordinates =>
      (_$data['geoCoordinates'] as Input$GeoCoordinatesModelSortInput?);

  Enum$SortEnumType? get territoryCode =>
      (_$data['territoryCode'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$SortEnumType(l$name);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] =
          l$code == null ? null : toJson$Enum$SortEnumType(l$code);
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address?.toJson();
    }
    if (_$data.containsKey('telephone1')) {
      final l$telephone1 = telephone1;
      result$data['telephone1'] =
          l$telephone1 == null ? null : toJson$Enum$SortEnumType(l$telephone1);
    }
    if (_$data.containsKey('telephone2')) {
      final l$telephone2 = telephone2;
      result$data['telephone2'] =
          l$telephone2 == null ? null : toJson$Enum$SortEnumType(l$telephone2);
    }
    if (_$data.containsKey('fax')) {
      final l$fax = fax;
      result$data['fax'] =
          l$fax == null ? null : toJson$Enum$SortEnumType(l$fax);
    }
    if (_$data.containsKey('website')) {
      final l$website = website;
      result$data['website'] =
          l$website == null ? null : toJson$Enum$SortEnumType(l$website);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] =
          l$notes == null ? null : toJson$Enum$SortEnumType(l$notes);
    }
    if (_$data.containsKey('drivingDistance')) {
      final l$drivingDistance = drivingDistance;
      result$data['drivingDistance'] = l$drivingDistance?.toJson();
    }
    if (_$data.containsKey('geodeticDistance')) {
      final l$geodeticDistance = geodeticDistance;
      result$data['geodeticDistance'] = l$geodeticDistance?.toJson();
    }
    if (_$data.containsKey('canCollect')) {
      final l$canCollect = canCollect;
      result$data['canCollect'] =
          l$canCollect == null ? null : toJson$Enum$SortEnumType(l$canCollect);
    }
    if (_$data.containsKey('canDeliver')) {
      final l$canDeliver = canDeliver;
      result$data['canDeliver'] =
          l$canDeliver == null ? null : toJson$Enum$SortEnumType(l$canDeliver);
    }
    if (_$data.containsKey('geoCoordinates')) {
      final l$geoCoordinates = geoCoordinates;
      result$data['geoCoordinates'] = l$geoCoordinates?.toJson();
    }
    if (_$data.containsKey('territoryCode')) {
      final l$territoryCode = territoryCode;
      result$data['territoryCode'] = l$territoryCode == null
          ? null
          : toJson$Enum$SortEnumType(l$territoryCode);
    }
    return result$data;
  }

  CopyWith$Input$YardModelSortInput<Input$YardModelSortInput> get copyWith =>
      CopyWith$Input$YardModelSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$YardModelSortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$telephone1 = telephone1;
    final lOther$telephone1 = other.telephone1;
    if (_$data.containsKey('telephone1') !=
        other._$data.containsKey('telephone1')) {
      return false;
    }
    if (l$telephone1 != lOther$telephone1) {
      return false;
    }
    final l$telephone2 = telephone2;
    final lOther$telephone2 = other.telephone2;
    if (_$data.containsKey('telephone2') !=
        other._$data.containsKey('telephone2')) {
      return false;
    }
    if (l$telephone2 != lOther$telephone2) {
      return false;
    }
    final l$fax = fax;
    final lOther$fax = other.fax;
    if (_$data.containsKey('fax') != other._$data.containsKey('fax')) {
      return false;
    }
    if (l$fax != lOther$fax) {
      return false;
    }
    final l$website = website;
    final lOther$website = other.website;
    if (_$data.containsKey('website') != other._$data.containsKey('website')) {
      return false;
    }
    if (l$website != lOther$website) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$drivingDistance = drivingDistance;
    final lOther$drivingDistance = other.drivingDistance;
    if (_$data.containsKey('drivingDistance') !=
        other._$data.containsKey('drivingDistance')) {
      return false;
    }
    if (l$drivingDistance != lOther$drivingDistance) {
      return false;
    }
    final l$geodeticDistance = geodeticDistance;
    final lOther$geodeticDistance = other.geodeticDistance;
    if (_$data.containsKey('geodeticDistance') !=
        other._$data.containsKey('geodeticDistance')) {
      return false;
    }
    if (l$geodeticDistance != lOther$geodeticDistance) {
      return false;
    }
    final l$canCollect = canCollect;
    final lOther$canCollect = other.canCollect;
    if (_$data.containsKey('canCollect') !=
        other._$data.containsKey('canCollect')) {
      return false;
    }
    if (l$canCollect != lOther$canCollect) {
      return false;
    }
    final l$canDeliver = canDeliver;
    final lOther$canDeliver = other.canDeliver;
    if (_$data.containsKey('canDeliver') !=
        other._$data.containsKey('canDeliver')) {
      return false;
    }
    if (l$canDeliver != lOther$canDeliver) {
      return false;
    }
    final l$geoCoordinates = geoCoordinates;
    final lOther$geoCoordinates = other.geoCoordinates;
    if (_$data.containsKey('geoCoordinates') !=
        other._$data.containsKey('geoCoordinates')) {
      return false;
    }
    if (l$geoCoordinates != lOther$geoCoordinates) {
      return false;
    }
    final l$territoryCode = territoryCode;
    final lOther$territoryCode = other.territoryCode;
    if (_$data.containsKey('territoryCode') !=
        other._$data.containsKey('territoryCode')) {
      return false;
    }
    if (l$territoryCode != lOther$territoryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$code = code;
    final l$address = address;
    final l$telephone1 = telephone1;
    final l$telephone2 = telephone2;
    final l$fax = fax;
    final l$website = website;
    final l$notes = notes;
    final l$drivingDistance = drivingDistance;
    final l$geodeticDistance = geodeticDistance;
    final l$canCollect = canCollect;
    final l$canDeliver = canDeliver;
    final l$geoCoordinates = geoCoordinates;
    final l$territoryCode = territoryCode;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('telephone1') ? l$telephone1 : const {},
      _$data.containsKey('telephone2') ? l$telephone2 : const {},
      _$data.containsKey('fax') ? l$fax : const {},
      _$data.containsKey('website') ? l$website : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('drivingDistance') ? l$drivingDistance : const {},
      _$data.containsKey('geodeticDistance') ? l$geodeticDistance : const {},
      _$data.containsKey('canCollect') ? l$canCollect : const {},
      _$data.containsKey('canDeliver') ? l$canDeliver : const {},
      _$data.containsKey('geoCoordinates') ? l$geoCoordinates : const {},
      _$data.containsKey('territoryCode') ? l$territoryCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$YardModelSortInput<TRes> {
  factory CopyWith$Input$YardModelSortInput(
    Input$YardModelSortInput instance,
    TRes Function(Input$YardModelSortInput) then,
  ) = _CopyWithImpl$Input$YardModelSortInput;

  factory CopyWith$Input$YardModelSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$YardModelSortInput;

  TRes call({
    Enum$SortEnumType? name,
    Enum$SortEnumType? code,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? telephone1,
    Enum$SortEnumType? telephone2,
    Enum$SortEnumType? fax,
    Enum$SortEnumType? website,
    Enum$SortEnumType? notes,
    Input$DistanceModelSortInput? drivingDistance,
    Input$DistanceModelSortInput? geodeticDistance,
    Enum$SortEnumType? canCollect,
    Enum$SortEnumType? canDeliver,
    Input$GeoCoordinatesModelSortInput? geoCoordinates,
    Enum$SortEnumType? territoryCode,
  });
  CopyWith$Input$AddressModelSortInput<TRes> get address;
  CopyWith$Input$DistanceModelSortInput<TRes> get drivingDistance;
  CopyWith$Input$DistanceModelSortInput<TRes> get geodeticDistance;
  CopyWith$Input$GeoCoordinatesModelSortInput<TRes> get geoCoordinates;
}

class _CopyWithImpl$Input$YardModelSortInput<TRes>
    implements CopyWith$Input$YardModelSortInput<TRes> {
  _CopyWithImpl$Input$YardModelSortInput(
    this._instance,
    this._then,
  );

  final Input$YardModelSortInput _instance;

  final TRes Function(Input$YardModelSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? code = _undefined,
    Object? address = _undefined,
    Object? telephone1 = _undefined,
    Object? telephone2 = _undefined,
    Object? fax = _undefined,
    Object? website = _undefined,
    Object? notes = _undefined,
    Object? drivingDistance = _undefined,
    Object? geodeticDistance = _undefined,
    Object? canCollect = _undefined,
    Object? canDeliver = _undefined,
    Object? geoCoordinates = _undefined,
    Object? territoryCode = _undefined,
  }) =>
      _then(Input$YardModelSortInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as Enum$SortEnumType?),
        if (code != _undefined) 'code': (code as Enum$SortEnumType?),
        if (address != _undefined)
          'address': (address as Input$AddressModelSortInput?),
        if (telephone1 != _undefined)
          'telephone1': (telephone1 as Enum$SortEnumType?),
        if (telephone2 != _undefined)
          'telephone2': (telephone2 as Enum$SortEnumType?),
        if (fax != _undefined) 'fax': (fax as Enum$SortEnumType?),
        if (website != _undefined) 'website': (website as Enum$SortEnumType?),
        if (notes != _undefined) 'notes': (notes as Enum$SortEnumType?),
        if (drivingDistance != _undefined)
          'drivingDistance': (drivingDistance as Input$DistanceModelSortInput?),
        if (geodeticDistance != _undefined)
          'geodeticDistance':
              (geodeticDistance as Input$DistanceModelSortInput?),
        if (canCollect != _undefined)
          'canCollect': (canCollect as Enum$SortEnumType?),
        if (canDeliver != _undefined)
          'canDeliver': (canDeliver as Enum$SortEnumType?),
        if (geoCoordinates != _undefined)
          'geoCoordinates':
              (geoCoordinates as Input$GeoCoordinatesModelSortInput?),
        if (territoryCode != _undefined)
          'territoryCode': (territoryCode as Enum$SortEnumType?),
      }));

  CopyWith$Input$AddressModelSortInput<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Input$AddressModelSortInput.stub(_then(_instance))
        : CopyWith$Input$AddressModelSortInput(
            local$address, (e) => call(address: e));
  }

  CopyWith$Input$DistanceModelSortInput<TRes> get drivingDistance {
    final local$drivingDistance = _instance.drivingDistance;
    return local$drivingDistance == null
        ? CopyWith$Input$DistanceModelSortInput.stub(_then(_instance))
        : CopyWith$Input$DistanceModelSortInput(
            local$drivingDistance, (e) => call(drivingDistance: e));
  }

  CopyWith$Input$DistanceModelSortInput<TRes> get geodeticDistance {
    final local$geodeticDistance = _instance.geodeticDistance;
    return local$geodeticDistance == null
        ? CopyWith$Input$DistanceModelSortInput.stub(_then(_instance))
        : CopyWith$Input$DistanceModelSortInput(
            local$geodeticDistance, (e) => call(geodeticDistance: e));
  }

  CopyWith$Input$GeoCoordinatesModelSortInput<TRes> get geoCoordinates {
    final local$geoCoordinates = _instance.geoCoordinates;
    return local$geoCoordinates == null
        ? CopyWith$Input$GeoCoordinatesModelSortInput.stub(_then(_instance))
        : CopyWith$Input$GeoCoordinatesModelSortInput(
            local$geoCoordinates, (e) => call(geoCoordinates: e));
  }
}

class _CopyWithStubImpl$Input$YardModelSortInput<TRes>
    implements CopyWith$Input$YardModelSortInput<TRes> {
  _CopyWithStubImpl$Input$YardModelSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? name,
    Enum$SortEnumType? code,
    Input$AddressModelSortInput? address,
    Enum$SortEnumType? telephone1,
    Enum$SortEnumType? telephone2,
    Enum$SortEnumType? fax,
    Enum$SortEnumType? website,
    Enum$SortEnumType? notes,
    Input$DistanceModelSortInput? drivingDistance,
    Input$DistanceModelSortInput? geodeticDistance,
    Enum$SortEnumType? canCollect,
    Enum$SortEnumType? canDeliver,
    Input$GeoCoordinatesModelSortInput? geoCoordinates,
    Enum$SortEnumType? territoryCode,
  }) =>
      _res;

  CopyWith$Input$AddressModelSortInput<TRes> get address =>
      CopyWith$Input$AddressModelSortInput.stub(_res);

  CopyWith$Input$DistanceModelSortInput<TRes> get drivingDistance =>
      CopyWith$Input$DistanceModelSortInput.stub(_res);

  CopyWith$Input$DistanceModelSortInput<TRes> get geodeticDistance =>
      CopyWith$Input$DistanceModelSortInput.stub(_res);

  CopyWith$Input$GeoCoordinatesModelSortInput<TRes> get geoCoordinates =>
      CopyWith$Input$GeoCoordinatesModelSortInput.stub(_res);
}

class Input$YardOpeningTimesModelFilterInput {
  factory Input$YardOpeningTimesModelFilterInput({
    List<Input$YardOpeningTimesModelFilterInput>? and,
    List<Input$YardOpeningTimesModelFilterInput>? or,
    Input$DayOfWeekOperationFilterInput? weekday,
    Input$StringOperationFilterInput? openingTime,
    Input$StringOperationFilterInput? closingTime,
  }) =>
      Input$YardOpeningTimesModelFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (weekday != null) r'weekday': weekday,
        if (openingTime != null) r'openingTime': openingTime,
        if (closingTime != null) r'closingTime': closingTime,
      });

  Input$YardOpeningTimesModelFilterInput._(this._$data);

  factory Input$YardOpeningTimesModelFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$YardOpeningTimesModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$YardOpeningTimesModelFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('weekday')) {
      final l$weekday = data['weekday'];
      result$data['weekday'] = l$weekday == null
          ? null
          : Input$DayOfWeekOperationFilterInput.fromJson(
              (l$weekday as Map<String, dynamic>));
    }
    if (data.containsKey('openingTime')) {
      final l$openingTime = data['openingTime'];
      result$data['openingTime'] = l$openingTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$openingTime as Map<String, dynamic>));
    }
    if (data.containsKey('closingTime')) {
      final l$closingTime = data['closingTime'];
      result$data['closingTime'] = l$closingTime == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$closingTime as Map<String, dynamic>));
    }
    return Input$YardOpeningTimesModelFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$YardOpeningTimesModelFilterInput>? get and =>
      (_$data['and'] as List<Input$YardOpeningTimesModelFilterInput>?);

  List<Input$YardOpeningTimesModelFilterInput>? get or =>
      (_$data['or'] as List<Input$YardOpeningTimesModelFilterInput>?);

  Input$DayOfWeekOperationFilterInput? get weekday =>
      (_$data['weekday'] as Input$DayOfWeekOperationFilterInput?);

  Input$StringOperationFilterInput? get openingTime =>
      (_$data['openingTime'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get closingTime =>
      (_$data['closingTime'] as Input$StringOperationFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('weekday')) {
      final l$weekday = weekday;
      result$data['weekday'] = l$weekday?.toJson();
    }
    if (_$data.containsKey('openingTime')) {
      final l$openingTime = openingTime;
      result$data['openingTime'] = l$openingTime?.toJson();
    }
    if (_$data.containsKey('closingTime')) {
      final l$closingTime = closingTime;
      result$data['closingTime'] = l$closingTime?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$YardOpeningTimesModelFilterInput<
          Input$YardOpeningTimesModelFilterInput>
      get copyWith => CopyWith$Input$YardOpeningTimesModelFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$YardOpeningTimesModelFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$weekday = weekday;
    final lOther$weekday = other.weekday;
    if (_$data.containsKey('weekday') != other._$data.containsKey('weekday')) {
      return false;
    }
    if (l$weekday != lOther$weekday) {
      return false;
    }
    final l$openingTime = openingTime;
    final lOther$openingTime = other.openingTime;
    if (_$data.containsKey('openingTime') !=
        other._$data.containsKey('openingTime')) {
      return false;
    }
    if (l$openingTime != lOther$openingTime) {
      return false;
    }
    final l$closingTime = closingTime;
    final lOther$closingTime = other.closingTime;
    if (_$data.containsKey('closingTime') !=
        other._$data.containsKey('closingTime')) {
      return false;
    }
    if (l$closingTime != lOther$closingTime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$weekday = weekday;
    final l$openingTime = openingTime;
    final l$closingTime = closingTime;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('weekday') ? l$weekday : const {},
      _$data.containsKey('openingTime') ? l$openingTime : const {},
      _$data.containsKey('closingTime') ? l$closingTime : const {},
    ]);
  }
}

abstract class CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> {
  factory CopyWith$Input$YardOpeningTimesModelFilterInput(
    Input$YardOpeningTimesModelFilterInput instance,
    TRes Function(Input$YardOpeningTimesModelFilterInput) then,
  ) = _CopyWithImpl$Input$YardOpeningTimesModelFilterInput;

  factory CopyWith$Input$YardOpeningTimesModelFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$YardOpeningTimesModelFilterInput;

  TRes call({
    List<Input$YardOpeningTimesModelFilterInput>? and,
    List<Input$YardOpeningTimesModelFilterInput>? or,
    Input$DayOfWeekOperationFilterInput? weekday,
    Input$StringOperationFilterInput? openingTime,
    Input$StringOperationFilterInput? closingTime,
  });
  TRes and(
      Iterable<Input$YardOpeningTimesModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardOpeningTimesModelFilterInput<
                      Input$YardOpeningTimesModelFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$YardOpeningTimesModelFilterInput>? Function(
              Iterable<
                  CopyWith$Input$YardOpeningTimesModelFilterInput<
                      Input$YardOpeningTimesModelFilterInput>>?)
          _fn);
  CopyWith$Input$DayOfWeekOperationFilterInput<TRes> get weekday;
  CopyWith$Input$StringOperationFilterInput<TRes> get openingTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get closingTime;
}

class _CopyWithImpl$Input$YardOpeningTimesModelFilterInput<TRes>
    implements CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> {
  _CopyWithImpl$Input$YardOpeningTimesModelFilterInput(
    this._instance,
    this._then,
  );

  final Input$YardOpeningTimesModelFilterInput _instance;

  final TRes Function(Input$YardOpeningTimesModelFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? weekday = _undefined,
    Object? openingTime = _undefined,
    Object? closingTime = _undefined,
  }) =>
      _then(Input$YardOpeningTimesModelFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$YardOpeningTimesModelFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$YardOpeningTimesModelFilterInput>?),
        if (weekday != _undefined)
          'weekday': (weekday as Input$DayOfWeekOperationFilterInput?),
        if (openingTime != _undefined)
          'openingTime': (openingTime as Input$StringOperationFilterInput?),
        if (closingTime != _undefined)
          'closingTime': (closingTime as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$YardOpeningTimesModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardOpeningTimesModelFilterInput<
                          Input$YardOpeningTimesModelFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$YardOpeningTimesModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$YardOpeningTimesModelFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$YardOpeningTimesModelFilterInput<
                          Input$YardOpeningTimesModelFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$YardOpeningTimesModelFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$DayOfWeekOperationFilterInput<TRes> get weekday {
    final local$weekday = _instance.weekday;
    return local$weekday == null
        ? CopyWith$Input$DayOfWeekOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DayOfWeekOperationFilterInput(
            local$weekday, (e) => call(weekday: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get openingTime {
    final local$openingTime = _instance.openingTime;
    return local$openingTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$openingTime, (e) => call(openingTime: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get closingTime {
    final local$closingTime = _instance.closingTime;
    return local$closingTime == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$closingTime, (e) => call(closingTime: e));
  }
}

class _CopyWithStubImpl$Input$YardOpeningTimesModelFilterInput<TRes>
    implements CopyWith$Input$YardOpeningTimesModelFilterInput<TRes> {
  _CopyWithStubImpl$Input$YardOpeningTimesModelFilterInput(this._res);

  TRes _res;

  call({
    List<Input$YardOpeningTimesModelFilterInput>? and,
    List<Input$YardOpeningTimesModelFilterInput>? or,
    Input$DayOfWeekOperationFilterInput? weekday,
    Input$StringOperationFilterInput? openingTime,
    Input$StringOperationFilterInput? closingTime,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$DayOfWeekOperationFilterInput<TRes> get weekday =>
      CopyWith$Input$DayOfWeekOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get openingTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get closingTime =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

enum Enum$ApplyPolicy {
  BEFORE_RESOLVER,
  AFTER_RESOLVER,
  VALIDATION,
  $unknown;

  factory Enum$ApplyPolicy.fromJson(String value) =>
      fromJson$Enum$ApplyPolicy(value);

  String toJson() => toJson$Enum$ApplyPolicy(this);
}

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.VALIDATION:
      return r'VALIDATION';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'VALIDATION':
      return Enum$ApplyPolicy.VALIDATION;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$DayOfWeek {
  SUNDAY,
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
  $unknown;

  factory Enum$DayOfWeek.fromJson(String value) =>
      fromJson$Enum$DayOfWeek(value);

  String toJson() => toJson$Enum$DayOfWeek(this);
}

String toJson$Enum$DayOfWeek(Enum$DayOfWeek e) {
  switch (e) {
    case Enum$DayOfWeek.SUNDAY:
      return r'SUNDAY';
    case Enum$DayOfWeek.MONDAY:
      return r'MONDAY';
    case Enum$DayOfWeek.TUESDAY:
      return r'TUESDAY';
    case Enum$DayOfWeek.WEDNESDAY:
      return r'WEDNESDAY';
    case Enum$DayOfWeek.THURSDAY:
      return r'THURSDAY';
    case Enum$DayOfWeek.FRIDAY:
      return r'FRIDAY';
    case Enum$DayOfWeek.SATURDAY:
      return r'SATURDAY';
    case Enum$DayOfWeek.$unknown:
      return r'$unknown';
  }
}

Enum$DayOfWeek fromJson$Enum$DayOfWeek(String value) {
  switch (value) {
    case r'SUNDAY':
      return Enum$DayOfWeek.SUNDAY;
    case r'MONDAY':
      return Enum$DayOfWeek.MONDAY;
    case r'TUESDAY':
      return Enum$DayOfWeek.TUESDAY;
    case r'WEDNESDAY':
      return Enum$DayOfWeek.WEDNESDAY;
    case r'THURSDAY':
      return Enum$DayOfWeek.THURSDAY;
    case r'FRIDAY':
      return Enum$DayOfWeek.FRIDAY;
    case r'SATURDAY':
      return Enum$DayOfWeek.SATURDAY;
    default:
      return Enum$DayOfWeek.$unknown;
  }
}

enum Enum$DocumentSubTypeEnum {
  NONE,
  UK_DRIVING_LICENSE,
  UK_EU_EEA_PASSPORT,
  EU_NATIONAL_ID_CARD,
  UTILITY_BILL,
  BANK_STATEMENT,
  COUNCIL_TAX_DEMAND_LETTER,
  CREDIT_DEBIT_CARD_STATEMENT,
  UK_EU_DRIVING_LICENSE,
  BIOMETRIC_IMMIGRATION_DOCUMENT,
  EU_DRIVING_LICENSE,
  HMRC_CORRESPONDANCE,
  MORTGAGE_STATEMENT,
  UK_FIREARM_LICENSE,
  $unknown;

  factory Enum$DocumentSubTypeEnum.fromJson(String value) =>
      fromJson$Enum$DocumentSubTypeEnum(value);

  String toJson() => toJson$Enum$DocumentSubTypeEnum(this);
}

String toJson$Enum$DocumentSubTypeEnum(Enum$DocumentSubTypeEnum e) {
  switch (e) {
    case Enum$DocumentSubTypeEnum.NONE:
      return r'NONE';
    case Enum$DocumentSubTypeEnum.UK_DRIVING_LICENSE:
      return r'UK_DRIVING_LICENSE';
    case Enum$DocumentSubTypeEnum.UK_EU_EEA_PASSPORT:
      return r'UK_EU_EEA_PASSPORT';
    case Enum$DocumentSubTypeEnum.EU_NATIONAL_ID_CARD:
      return r'EU_NATIONAL_ID_CARD';
    case Enum$DocumentSubTypeEnum.UTILITY_BILL:
      return r'UTILITY_BILL';
    case Enum$DocumentSubTypeEnum.BANK_STATEMENT:
      return r'BANK_STATEMENT';
    case Enum$DocumentSubTypeEnum.COUNCIL_TAX_DEMAND_LETTER:
      return r'COUNCIL_TAX_DEMAND_LETTER';
    case Enum$DocumentSubTypeEnum.CREDIT_DEBIT_CARD_STATEMENT:
      return r'CREDIT_DEBIT_CARD_STATEMENT';
    case Enum$DocumentSubTypeEnum.UK_EU_DRIVING_LICENSE:
      return r'UK_EU_DRIVING_LICENSE';
    case Enum$DocumentSubTypeEnum.BIOMETRIC_IMMIGRATION_DOCUMENT:
      return r'BIOMETRIC_IMMIGRATION_DOCUMENT';
    case Enum$DocumentSubTypeEnum.EU_DRIVING_LICENSE:
      return r'EU_DRIVING_LICENSE';
    case Enum$DocumentSubTypeEnum.HMRC_CORRESPONDANCE:
      return r'HMRC_CORRESPONDANCE';
    case Enum$DocumentSubTypeEnum.MORTGAGE_STATEMENT:
      return r'MORTGAGE_STATEMENT';
    case Enum$DocumentSubTypeEnum.UK_FIREARM_LICENSE:
      return r'UK_FIREARM_LICENSE';
    case Enum$DocumentSubTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$DocumentSubTypeEnum fromJson$Enum$DocumentSubTypeEnum(String value) {
  switch (value) {
    case r'NONE':
      return Enum$DocumentSubTypeEnum.NONE;
    case r'UK_DRIVING_LICENSE':
      return Enum$DocumentSubTypeEnum.UK_DRIVING_LICENSE;
    case r'UK_EU_EEA_PASSPORT':
      return Enum$DocumentSubTypeEnum.UK_EU_EEA_PASSPORT;
    case r'EU_NATIONAL_ID_CARD':
      return Enum$DocumentSubTypeEnum.EU_NATIONAL_ID_CARD;
    case r'UTILITY_BILL':
      return Enum$DocumentSubTypeEnum.UTILITY_BILL;
    case r'BANK_STATEMENT':
      return Enum$DocumentSubTypeEnum.BANK_STATEMENT;
    case r'COUNCIL_TAX_DEMAND_LETTER':
      return Enum$DocumentSubTypeEnum.COUNCIL_TAX_DEMAND_LETTER;
    case r'CREDIT_DEBIT_CARD_STATEMENT':
      return Enum$DocumentSubTypeEnum.CREDIT_DEBIT_CARD_STATEMENT;
    case r'UK_EU_DRIVING_LICENSE':
      return Enum$DocumentSubTypeEnum.UK_EU_DRIVING_LICENSE;
    case r'BIOMETRIC_IMMIGRATION_DOCUMENT':
      return Enum$DocumentSubTypeEnum.BIOMETRIC_IMMIGRATION_DOCUMENT;
    case r'EU_DRIVING_LICENSE':
      return Enum$DocumentSubTypeEnum.EU_DRIVING_LICENSE;
    case r'HMRC_CORRESPONDANCE':
      return Enum$DocumentSubTypeEnum.HMRC_CORRESPONDANCE;
    case r'MORTGAGE_STATEMENT':
      return Enum$DocumentSubTypeEnum.MORTGAGE_STATEMENT;
    case r'UK_FIREARM_LICENSE':
      return Enum$DocumentSubTypeEnum.UK_FIREARM_LICENSE;
    default:
      return Enum$DocumentSubTypeEnum.$unknown;
  }
}

enum Enum$DocumentTypeEnum {
  NONE,
  PROOF_OF_ID,
  PROOF_OF_ADDRESS,
  SIGNATURE,
  $unknown;

  factory Enum$DocumentTypeEnum.fromJson(String value) =>
      fromJson$Enum$DocumentTypeEnum(value);

  String toJson() => toJson$Enum$DocumentTypeEnum(this);
}

String toJson$Enum$DocumentTypeEnum(Enum$DocumentTypeEnum e) {
  switch (e) {
    case Enum$DocumentTypeEnum.NONE:
      return r'NONE';
    case Enum$DocumentTypeEnum.PROOF_OF_ID:
      return r'PROOF_OF_ID';
    case Enum$DocumentTypeEnum.PROOF_OF_ADDRESS:
      return r'PROOF_OF_ADDRESS';
    case Enum$DocumentTypeEnum.SIGNATURE:
      return r'SIGNATURE';
    case Enum$DocumentTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$DocumentTypeEnum fromJson$Enum$DocumentTypeEnum(String value) {
  switch (value) {
    case r'NONE':
      return Enum$DocumentTypeEnum.NONE;
    case r'PROOF_OF_ID':
      return Enum$DocumentTypeEnum.PROOF_OF_ID;
    case r'PROOF_OF_ADDRESS':
      return Enum$DocumentTypeEnum.PROOF_OF_ADDRESS;
    case r'SIGNATURE':
      return Enum$DocumentTypeEnum.SIGNATURE;
    default:
      return Enum$DocumentTypeEnum.$unknown;
  }
}

enum Enum$DocumentUploadTypeEnum {
  V5,
  FRONT_VEHICLE_PART,
  BACK_VEHICLE_PART,
  VIN,
  VRN,
  PROOF_OF_ADDRESS,
  IDENTIFICATION,
  BATTERY,
  CAT,
  $unknown;

  factory Enum$DocumentUploadTypeEnum.fromJson(String value) =>
      fromJson$Enum$DocumentUploadTypeEnum(value);

  String toJson() => toJson$Enum$DocumentUploadTypeEnum(this);
}

String toJson$Enum$DocumentUploadTypeEnum(Enum$DocumentUploadTypeEnum e) {
  switch (e) {
    case Enum$DocumentUploadTypeEnum.V5:
      return r'V5';
    case Enum$DocumentUploadTypeEnum.FRONT_VEHICLE_PART:
      return r'FRONT_VEHICLE_PART';
    case Enum$DocumentUploadTypeEnum.BACK_VEHICLE_PART:
      return r'BACK_VEHICLE_PART';
    case Enum$DocumentUploadTypeEnum.VIN:
      return r'VIN';
    case Enum$DocumentUploadTypeEnum.VRN:
      return r'VRN';
    case Enum$DocumentUploadTypeEnum.PROOF_OF_ADDRESS:
      return r'PROOF_OF_ADDRESS';
    case Enum$DocumentUploadTypeEnum.IDENTIFICATION:
      return r'IDENTIFICATION';
    case Enum$DocumentUploadTypeEnum.BATTERY:
      return r'BATTERY';
    case Enum$DocumentUploadTypeEnum.CAT:
      return r'CAT';
    case Enum$DocumentUploadTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$DocumentUploadTypeEnum fromJson$Enum$DocumentUploadTypeEnum(String value) {
  switch (value) {
    case r'V5':
      return Enum$DocumentUploadTypeEnum.V5;
    case r'FRONT_VEHICLE_PART':
      return Enum$DocumentUploadTypeEnum.FRONT_VEHICLE_PART;
    case r'BACK_VEHICLE_PART':
      return Enum$DocumentUploadTypeEnum.BACK_VEHICLE_PART;
    case r'VIN':
      return Enum$DocumentUploadTypeEnum.VIN;
    case r'VRN':
      return Enum$DocumentUploadTypeEnum.VRN;
    case r'PROOF_OF_ADDRESS':
      return Enum$DocumentUploadTypeEnum.PROOF_OF_ADDRESS;
    case r'IDENTIFICATION':
      return Enum$DocumentUploadTypeEnum.IDENTIFICATION;
    case r'BATTERY':
      return Enum$DocumentUploadTypeEnum.BATTERY;
    case r'CAT':
      return Enum$DocumentUploadTypeEnum.CAT;
    default:
      return Enum$DocumentUploadTypeEnum.$unknown;
  }
}

enum Enum$LeadSourceEnum {
  NONE,
  SCRAP_CAR_COMPARISON,
  CAR_TAKE_BACK,
  AUCTION,
  EMR_VEHICLE_RECYCLING,
  B2B,
  $unknown;

  factory Enum$LeadSourceEnum.fromJson(String value) =>
      fromJson$Enum$LeadSourceEnum(value);

  String toJson() => toJson$Enum$LeadSourceEnum(this);
}

String toJson$Enum$LeadSourceEnum(Enum$LeadSourceEnum e) {
  switch (e) {
    case Enum$LeadSourceEnum.NONE:
      return r'NONE';
    case Enum$LeadSourceEnum.SCRAP_CAR_COMPARISON:
      return r'SCRAP_CAR_COMPARISON';
    case Enum$LeadSourceEnum.CAR_TAKE_BACK:
      return r'CAR_TAKE_BACK';
    case Enum$LeadSourceEnum.AUCTION:
      return r'AUCTION';
    case Enum$LeadSourceEnum.EMR_VEHICLE_RECYCLING:
      return r'EMR_VEHICLE_RECYCLING';
    case Enum$LeadSourceEnum.B2B:
      return r'B2B';
    case Enum$LeadSourceEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LeadSourceEnum fromJson$Enum$LeadSourceEnum(String value) {
  switch (value) {
    case r'NONE':
      return Enum$LeadSourceEnum.NONE;
    case r'SCRAP_CAR_COMPARISON':
      return Enum$LeadSourceEnum.SCRAP_CAR_COMPARISON;
    case r'CAR_TAKE_BACK':
      return Enum$LeadSourceEnum.CAR_TAKE_BACK;
    case r'AUCTION':
      return Enum$LeadSourceEnum.AUCTION;
    case r'EMR_VEHICLE_RECYCLING':
      return Enum$LeadSourceEnum.EMR_VEHICLE_RECYCLING;
    case r'B2B':
      return Enum$LeadSourceEnum.B2B;
    default:
      return Enum$LeadSourceEnum.$unknown;
  }
}

enum Enum$PaymentMethodEnum {
  UNKNOWN,
  BANK_TRANSFER,
  ATM,
  $unknown;

  factory Enum$PaymentMethodEnum.fromJson(String value) =>
      fromJson$Enum$PaymentMethodEnum(value);

  String toJson() => toJson$Enum$PaymentMethodEnum(this);
}

String toJson$Enum$PaymentMethodEnum(Enum$PaymentMethodEnum e) {
  switch (e) {
    case Enum$PaymentMethodEnum.UNKNOWN:
      return r'UNKNOWN';
    case Enum$PaymentMethodEnum.BANK_TRANSFER:
      return r'BANK_TRANSFER';
    case Enum$PaymentMethodEnum.ATM:
      return r'ATM';
    case Enum$PaymentMethodEnum.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentMethodEnum fromJson$Enum$PaymentMethodEnum(String value) {
  switch (value) {
    case r'UNKNOWN':
      return Enum$PaymentMethodEnum.UNKNOWN;
    case r'BANK_TRANSFER':
      return Enum$PaymentMethodEnum.BANK_TRANSFER;
    case r'ATM':
      return Enum$PaymentMethodEnum.ATM;
    default:
      return Enum$PaymentMethodEnum.$unknown;
  }
}

enum Enum$QuoteAccountType {
  NONE,
  RETAIL,
  BUSINESS,
  SUPPLIER,
  $unknown;

  factory Enum$QuoteAccountType.fromJson(String value) =>
      fromJson$Enum$QuoteAccountType(value);

  String toJson() => toJson$Enum$QuoteAccountType(this);
}

String toJson$Enum$QuoteAccountType(Enum$QuoteAccountType e) {
  switch (e) {
    case Enum$QuoteAccountType.NONE:
      return r'NONE';
    case Enum$QuoteAccountType.RETAIL:
      return r'RETAIL';
    case Enum$QuoteAccountType.BUSINESS:
      return r'BUSINESS';
    case Enum$QuoteAccountType.SUPPLIER:
      return r'SUPPLIER';
    case Enum$QuoteAccountType.$unknown:
      return r'$unknown';
  }
}

Enum$QuoteAccountType fromJson$Enum$QuoteAccountType(String value) {
  switch (value) {
    case r'NONE':
      return Enum$QuoteAccountType.NONE;
    case r'RETAIL':
      return Enum$QuoteAccountType.RETAIL;
    case r'BUSINESS':
      return Enum$QuoteAccountType.BUSINESS;
    case r'SUPPLIER':
      return Enum$QuoteAccountType.SUPPLIER;
    default:
      return Enum$QuoteAccountType.$unknown;
  }
}

enum Enum$QuoteSourceEnum {
  UNKNOWN,
  QUICK_QUOTE,
  VIN_SCRAP,
  QUOTE_MY_MOTOR,
  GO_GREEN_MOTOR,
  MOTOR_QUOTER,
  EMR_VEHICLE_RECYCLING,
  $unknown;

  factory Enum$QuoteSourceEnum.fromJson(String value) =>
      fromJson$Enum$QuoteSourceEnum(value);

  String toJson() => toJson$Enum$QuoteSourceEnum(this);
}

String toJson$Enum$QuoteSourceEnum(Enum$QuoteSourceEnum e) {
  switch (e) {
    case Enum$QuoteSourceEnum.UNKNOWN:
      return r'UNKNOWN';
    case Enum$QuoteSourceEnum.QUICK_QUOTE:
      return r'QUICK_QUOTE';
    case Enum$QuoteSourceEnum.VIN_SCRAP:
      return r'VIN_SCRAP';
    case Enum$QuoteSourceEnum.QUOTE_MY_MOTOR:
      return r'QUOTE_MY_MOTOR';
    case Enum$QuoteSourceEnum.GO_GREEN_MOTOR:
      return r'GO_GREEN_MOTOR';
    case Enum$QuoteSourceEnum.MOTOR_QUOTER:
      return r'MOTOR_QUOTER';
    case Enum$QuoteSourceEnum.EMR_VEHICLE_RECYCLING:
      return r'EMR_VEHICLE_RECYCLING';
    case Enum$QuoteSourceEnum.$unknown:
      return r'$unknown';
  }
}

Enum$QuoteSourceEnum fromJson$Enum$QuoteSourceEnum(String value) {
  switch (value) {
    case r'UNKNOWN':
      return Enum$QuoteSourceEnum.UNKNOWN;
    case r'QUICK_QUOTE':
      return Enum$QuoteSourceEnum.QUICK_QUOTE;
    case r'VIN_SCRAP':
      return Enum$QuoteSourceEnum.VIN_SCRAP;
    case r'QUOTE_MY_MOTOR':
      return Enum$QuoteSourceEnum.QUOTE_MY_MOTOR;
    case r'GO_GREEN_MOTOR':
      return Enum$QuoteSourceEnum.GO_GREEN_MOTOR;
    case r'MOTOR_QUOTER':
      return Enum$QuoteSourceEnum.MOTOR_QUOTER;
    case r'EMR_VEHICLE_RECYCLING':
      return Enum$QuoteSourceEnum.EMR_VEHICLE_RECYCLING;
    default:
      return Enum$QuoteSourceEnum.$unknown;
  }
}

enum Enum$QuoteStatusEnum {
  UNKNOWN,
  DRAFT,
  CONFIRMED,
  INSPECTED,
  INSPECTION_IN_PROGRESS,
  ABANDONED,
  $unknown;

  factory Enum$QuoteStatusEnum.fromJson(String value) =>
      fromJson$Enum$QuoteStatusEnum(value);

  String toJson() => toJson$Enum$QuoteStatusEnum(this);
}

String toJson$Enum$QuoteStatusEnum(Enum$QuoteStatusEnum e) {
  switch (e) {
    case Enum$QuoteStatusEnum.UNKNOWN:
      return r'UNKNOWN';
    case Enum$QuoteStatusEnum.DRAFT:
      return r'DRAFT';
    case Enum$QuoteStatusEnum.CONFIRMED:
      return r'CONFIRMED';
    case Enum$QuoteStatusEnum.INSPECTED:
      return r'INSPECTED';
    case Enum$QuoteStatusEnum.INSPECTION_IN_PROGRESS:
      return r'INSPECTION_IN_PROGRESS';
    case Enum$QuoteStatusEnum.ABANDONED:
      return r'ABANDONED';
    case Enum$QuoteStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$QuoteStatusEnum fromJson$Enum$QuoteStatusEnum(String value) {
  switch (value) {
    case r'UNKNOWN':
      return Enum$QuoteStatusEnum.UNKNOWN;
    case r'DRAFT':
      return Enum$QuoteStatusEnum.DRAFT;
    case r'CONFIRMED':
      return Enum$QuoteStatusEnum.CONFIRMED;
    case r'INSPECTED':
      return Enum$QuoteStatusEnum.INSPECTED;
    case r'INSPECTION_IN_PROGRESS':
      return Enum$QuoteStatusEnum.INSPECTION_IN_PROGRESS;
    case r'ABANDONED':
      return Enum$QuoteStatusEnum.ABANDONED;
    default:
      return Enum$QuoteStatusEnum.$unknown;
  }
}

enum Enum$QuoteTypeEnum {
  UNKNOWN,
  COLLECTED,
  DELIVERED,
  $unknown;

  factory Enum$QuoteTypeEnum.fromJson(String value) =>
      fromJson$Enum$QuoteTypeEnum(value);

  String toJson() => toJson$Enum$QuoteTypeEnum(this);
}

String toJson$Enum$QuoteTypeEnum(Enum$QuoteTypeEnum e) {
  switch (e) {
    case Enum$QuoteTypeEnum.UNKNOWN:
      return r'UNKNOWN';
    case Enum$QuoteTypeEnum.COLLECTED:
      return r'COLLECTED';
    case Enum$QuoteTypeEnum.DELIVERED:
      return r'DELIVERED';
    case Enum$QuoteTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$QuoteTypeEnum fromJson$Enum$QuoteTypeEnum(String value) {
  switch (value) {
    case r'UNKNOWN':
      return Enum$QuoteTypeEnum.UNKNOWN;
    case r'COLLECTED':
      return Enum$QuoteTypeEnum.COLLECTED;
    case r'DELIVERED':
      return Enum$QuoteTypeEnum.DELIVERED;
    default:
      return Enum$QuoteTypeEnum.$unknown;
  }
}

enum Enum$SortEnumType {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortEnumType.fromJson(String value) =>
      fromJson$Enum$SortEnumType(value);

  String toJson() => toJson$Enum$SortEnumType(this);
}

String toJson$Enum$SortEnumType(Enum$SortEnumType e) {
  switch (e) {
    case Enum$SortEnumType.ASC:
      return r'ASC';
    case Enum$SortEnumType.DESC:
      return r'DESC';
    case Enum$SortEnumType.$unknown:
      return r'$unknown';
  }
}

Enum$SortEnumType fromJson$Enum$SortEnumType(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortEnumType.ASC;
    case r'DESC':
      return Enum$SortEnumType.DESC;
    default:
      return Enum$SortEnumType.$unknown;
  }
}

enum Enum$UomCode {
  MT,
  LB,
  GT,
  NT,
  KG,
  LD,
  EA,
  LT,
  HR,
  CWT,
  $unknown;

  factory Enum$UomCode.fromJson(String value) => fromJson$Enum$UomCode(value);

  String toJson() => toJson$Enum$UomCode(this);
}

String toJson$Enum$UomCode(Enum$UomCode e) {
  switch (e) {
    case Enum$UomCode.MT:
      return r'MT';
    case Enum$UomCode.LB:
      return r'LB';
    case Enum$UomCode.GT:
      return r'GT';
    case Enum$UomCode.NT:
      return r'NT';
    case Enum$UomCode.KG:
      return r'KG';
    case Enum$UomCode.LD:
      return r'LD';
    case Enum$UomCode.EA:
      return r'EA';
    case Enum$UomCode.LT:
      return r'LT';
    case Enum$UomCode.HR:
      return r'HR';
    case Enum$UomCode.CWT:
      return r'CWT';
    case Enum$UomCode.$unknown:
      return r'$unknown';
  }
}

Enum$UomCode fromJson$Enum$UomCode(String value) {
  switch (value) {
    case r'MT':
      return Enum$UomCode.MT;
    case r'LB':
      return Enum$UomCode.LB;
    case r'GT':
      return Enum$UomCode.GT;
    case r'NT':
      return Enum$UomCode.NT;
    case r'KG':
      return Enum$UomCode.KG;
    case r'LD':
      return Enum$UomCode.LD;
    case r'EA':
      return Enum$UomCode.EA;
    case r'LT':
      return Enum$UomCode.LT;
    case r'HR':
      return Enum$UomCode.HR;
    case r'CWT':
      return Enum$UomCode.CWT;
    default:
      return Enum$UomCode.$unknown;
  }
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
