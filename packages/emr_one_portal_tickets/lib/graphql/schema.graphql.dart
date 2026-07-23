class Input$PaymentRequestInput {
  factory Input$PaymentRequestInput({
    required String partyAccountNo,
    required String partyName,
    String? purchaseOrderNo,
    required String transactionNo,
    required DateTime transactionDate,
    required String transactionDescription,
    required double transactionGrossAmount,
    required String transactionGrossAmountCurrency,
    required String companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    required String transactionPdf,
    required Enum$TransactionType transactionType,
    required List<Input$TransactionLineInput> transactionLines,
  }) =>
      Input$PaymentRequestInput._({
        r'partyAccountNo': partyAccountNo,
        r'partyName': partyName,
        if (purchaseOrderNo != null) r'purchaseOrderNo': purchaseOrderNo,
        r'transactionNo': transactionNo,
        r'transactionDate': transactionDate,
        r'transactionDescription': transactionDescription,
        r'transactionGrossAmount': transactionGrossAmount,
        r'transactionGrossAmountCurrency': transactionGrossAmountCurrency,
        r'companyToBeBilled': companyToBeBilled,
        if (paymentMethods != null) r'paymentMethods': paymentMethods,
        r'transactionPdf': transactionPdf,
        r'transactionType': transactionType,
        r'transactionLines': transactionLines,
      });

  Input$PaymentRequestInput._(this._$data);

  factory Input$PaymentRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    final l$partyName = data['partyName'];
    result$data['partyName'] = (l$partyName as String);
    if (data.containsKey('purchaseOrderNo')) {
      final l$purchaseOrderNo = data['purchaseOrderNo'];
      result$data['purchaseOrderNo'] = (l$purchaseOrderNo as String?);
    }
    final l$transactionNo = data['transactionNo'];
    result$data['transactionNo'] = (l$transactionNo as String);
    final l$transactionDate = data['transactionDate'];
    result$data['transactionDate'] =
        DateTime.parse((l$transactionDate as String));
    final l$transactionDescription = data['transactionDescription'];
    result$data['transactionDescription'] =
        (l$transactionDescription as String);
    final l$transactionGrossAmount = data['transactionGrossAmount'];
    result$data['transactionGrossAmount'] =
        (l$transactionGrossAmount as num).toDouble();
    final l$transactionGrossAmountCurrency =
        data['transactionGrossAmountCurrency'];
    result$data['transactionGrossAmountCurrency'] =
        (l$transactionGrossAmountCurrency as String);
    final l$companyToBeBilled = data['companyToBeBilled'];
    result$data['companyToBeBilled'] = (l$companyToBeBilled as String);
    if (data.containsKey('paymentMethods')) {
      final l$paymentMethods = data['paymentMethods'];
      result$data['paymentMethods'] = l$paymentMethods == null
          ? null
          : fromJson$Enum$PaymentMethods((l$paymentMethods as String));
    }
    final l$transactionPdf = data['transactionPdf'];
    result$data['transactionPdf'] = (l$transactionPdf as String);
    final l$transactionType = data['transactionType'];
    result$data['transactionType'] =
        fromJson$Enum$TransactionType((l$transactionType as String));
    final l$transactionLines = data['transactionLines'];
    result$data['transactionLines'] = (l$transactionLines as List<dynamic>)
        .map((e) =>
            Input$TransactionLineInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$PaymentRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  String get partyName => (_$data['partyName'] as String);

  String? get purchaseOrderNo => (_$data['purchaseOrderNo'] as String?);

  String get transactionNo => (_$data['transactionNo'] as String);

  DateTime get transactionDate => (_$data['transactionDate'] as DateTime);

  String get transactionDescription =>
      (_$data['transactionDescription'] as String);

  double get transactionGrossAmount =>
      (_$data['transactionGrossAmount'] as double);

  String get transactionGrossAmountCurrency =>
      (_$data['transactionGrossAmountCurrency'] as String);

  String get companyToBeBilled => (_$data['companyToBeBilled'] as String);

  Enum$PaymentMethods? get paymentMethods =>
      (_$data['paymentMethods'] as Enum$PaymentMethods?);

  String get transactionPdf => (_$data['transactionPdf'] as String);

  Enum$TransactionType get transactionType =>
      (_$data['transactionType'] as Enum$TransactionType);

  List<Input$TransactionLineInput> get transactionLines =>
      (_$data['transactionLines'] as List<Input$TransactionLineInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    result$data['partyName'] = l$partyName;
    if (_$data.containsKey('purchaseOrderNo')) {
      final l$purchaseOrderNo = purchaseOrderNo;
      result$data['purchaseOrderNo'] = l$purchaseOrderNo;
    }
    final l$transactionNo = transactionNo;
    result$data['transactionNo'] = l$transactionNo;
    final l$transactionDate = transactionDate;
    result$data['transactionDate'] = l$transactionDate.toIso8601String();
    final l$transactionDescription = transactionDescription;
    result$data['transactionDescription'] = l$transactionDescription;
    final l$transactionGrossAmount = transactionGrossAmount;
    result$data['transactionGrossAmount'] = l$transactionGrossAmount;
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    result$data['transactionGrossAmountCurrency'] =
        l$transactionGrossAmountCurrency;
    final l$companyToBeBilled = companyToBeBilled;
    result$data['companyToBeBilled'] = l$companyToBeBilled;
    if (_$data.containsKey('paymentMethods')) {
      final l$paymentMethods = paymentMethods;
      result$data['paymentMethods'] = l$paymentMethods == null
          ? null
          : toJson$Enum$PaymentMethods(l$paymentMethods);
    }
    final l$transactionPdf = transactionPdf;
    result$data['transactionPdf'] = l$transactionPdf;
    final l$transactionType = transactionType;
    result$data['transactionType'] =
        toJson$Enum$TransactionType(l$transactionType);
    final l$transactionLines = transactionLines;
    result$data['transactionLines'] =
        l$transactionLines.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$PaymentRequestInput<Input$PaymentRequestInput> get copyWith =>
      CopyWith$Input$PaymentRequestInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$purchaseOrderNo = purchaseOrderNo;
    final lOther$purchaseOrderNo = other.purchaseOrderNo;
    if (_$data.containsKey('purchaseOrderNo') !=
        other._$data.containsKey('purchaseOrderNo')) {
      return false;
    }
    if (l$purchaseOrderNo != lOther$purchaseOrderNo) {
      return false;
    }
    final l$transactionNo = transactionNo;
    final lOther$transactionNo = other.transactionNo;
    if (l$transactionNo != lOther$transactionNo) {
      return false;
    }
    final l$transactionDate = transactionDate;
    final lOther$transactionDate = other.transactionDate;
    if (l$transactionDate != lOther$transactionDate) {
      return false;
    }
    final l$transactionDescription = transactionDescription;
    final lOther$transactionDescription = other.transactionDescription;
    if (l$transactionDescription != lOther$transactionDescription) {
      return false;
    }
    final l$transactionGrossAmount = transactionGrossAmount;
    final lOther$transactionGrossAmount = other.transactionGrossAmount;
    if (l$transactionGrossAmount != lOther$transactionGrossAmount) {
      return false;
    }
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    final lOther$transactionGrossAmountCurrency =
        other.transactionGrossAmountCurrency;
    if (l$transactionGrossAmountCurrency !=
        lOther$transactionGrossAmountCurrency) {
      return false;
    }
    final l$companyToBeBilled = companyToBeBilled;
    final lOther$companyToBeBilled = other.companyToBeBilled;
    if (l$companyToBeBilled != lOther$companyToBeBilled) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (_$data.containsKey('paymentMethods') !=
        other._$data.containsKey('paymentMethods')) {
      return false;
    }
    if (l$paymentMethods != lOther$paymentMethods) {
      return false;
    }
    final l$transactionPdf = transactionPdf;
    final lOther$transactionPdf = other.transactionPdf;
    if (l$transactionPdf != lOther$transactionPdf) {
      return false;
    }
    final l$transactionType = transactionType;
    final lOther$transactionType = other.transactionType;
    if (l$transactionType != lOther$transactionType) {
      return false;
    }
    final l$transactionLines = transactionLines;
    final lOther$transactionLines = other.transactionLines;
    if (l$transactionLines.length != lOther$transactionLines.length) {
      return false;
    }
    for (int i = 0; i < l$transactionLines.length; i++) {
      final l$transactionLines$entry = l$transactionLines[i];
      final lOther$transactionLines$entry = lOther$transactionLines[i];
      if (l$transactionLines$entry != lOther$transactionLines$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$purchaseOrderNo = purchaseOrderNo;
    final l$transactionNo = transactionNo;
    final l$transactionDate = transactionDate;
    final l$transactionDescription = transactionDescription;
    final l$transactionGrossAmount = transactionGrossAmount;
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    final l$companyToBeBilled = companyToBeBilled;
    final l$paymentMethods = paymentMethods;
    final l$transactionPdf = transactionPdf;
    final l$transactionType = transactionType;
    final l$transactionLines = transactionLines;
    return Object.hashAll([
      l$partyAccountNo,
      l$partyName,
      _$data.containsKey('purchaseOrderNo') ? l$purchaseOrderNo : const {},
      l$transactionNo,
      l$transactionDate,
      l$transactionDescription,
      l$transactionGrossAmount,
      l$transactionGrossAmountCurrency,
      l$companyToBeBilled,
      _$data.containsKey('paymentMethods') ? l$paymentMethods : const {},
      l$transactionPdf,
      l$transactionType,
      Object.hashAll(l$transactionLines.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$PaymentRequestInput<TRes> {
  factory CopyWith$Input$PaymentRequestInput(
    Input$PaymentRequestInput instance,
    TRes Function(Input$PaymentRequestInput) then,
  ) = _CopyWithImpl$Input$PaymentRequestInput;

  factory CopyWith$Input$PaymentRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentRequestInput;

  TRes call({
    String? partyAccountNo,
    String? partyName,
    String? purchaseOrderNo,
    String? transactionNo,
    DateTime? transactionDate,
    String? transactionDescription,
    double? transactionGrossAmount,
    String? transactionGrossAmountCurrency,
    String? companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    String? transactionPdf,
    Enum$TransactionType? transactionType,
    List<Input$TransactionLineInput>? transactionLines,
  });
  TRes transactionLines(
      Iterable<Input$TransactionLineInput> Function(
              Iterable<
                  CopyWith$Input$TransactionLineInput<
                      Input$TransactionLineInput>>)
          _fn);
}

class _CopyWithImpl$Input$PaymentRequestInput<TRes>
    implements CopyWith$Input$PaymentRequestInput<TRes> {
  _CopyWithImpl$Input$PaymentRequestInput(
    this._instance,
    this._then,
  );

  final Input$PaymentRequestInput _instance;

  final TRes Function(Input$PaymentRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? purchaseOrderNo = _undefined,
    Object? transactionNo = _undefined,
    Object? transactionDate = _undefined,
    Object? transactionDescription = _undefined,
    Object? transactionGrossAmount = _undefined,
    Object? transactionGrossAmountCurrency = _undefined,
    Object? companyToBeBilled = _undefined,
    Object? paymentMethods = _undefined,
    Object? transactionPdf = _undefined,
    Object? transactionType = _undefined,
    Object? transactionLines = _undefined,
  }) =>
      _then(Input$PaymentRequestInput._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
        if (partyName != _undefined && partyName != null)
          'partyName': (partyName as String),
        if (purchaseOrderNo != _undefined)
          'purchaseOrderNo': (purchaseOrderNo as String?),
        if (transactionNo != _undefined && transactionNo != null)
          'transactionNo': (transactionNo as String),
        if (transactionDate != _undefined && transactionDate != null)
          'transactionDate': (transactionDate as DateTime),
        if (transactionDescription != _undefined &&
            transactionDescription != null)
          'transactionDescription': (transactionDescription as String),
        if (transactionGrossAmount != _undefined &&
            transactionGrossAmount != null)
          'transactionGrossAmount': (transactionGrossAmount as double),
        if (transactionGrossAmountCurrency != _undefined &&
            transactionGrossAmountCurrency != null)
          'transactionGrossAmountCurrency':
              (transactionGrossAmountCurrency as String),
        if (companyToBeBilled != _undefined && companyToBeBilled != null)
          'companyToBeBilled': (companyToBeBilled as String),
        if (paymentMethods != _undefined)
          'paymentMethods': (paymentMethods as Enum$PaymentMethods?),
        if (transactionPdf != _undefined && transactionPdf != null)
          'transactionPdf': (transactionPdf as String),
        if (transactionType != _undefined && transactionType != null)
          'transactionType': (transactionType as Enum$TransactionType),
        if (transactionLines != _undefined && transactionLines != null)
          'transactionLines':
              (transactionLines as List<Input$TransactionLineInput>),
      }));

  TRes transactionLines(
          Iterable<Input$TransactionLineInput> Function(
                  Iterable<
                      CopyWith$Input$TransactionLineInput<
                          Input$TransactionLineInput>>)
              _fn) =>
      call(
          transactionLines: _fn(_instance.transactionLines
              .map((e) => CopyWith$Input$TransactionLineInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$PaymentRequestInput<TRes>
    implements CopyWith$Input$PaymentRequestInput<TRes> {
  _CopyWithStubImpl$Input$PaymentRequestInput(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    String? partyName,
    String? purchaseOrderNo,
    String? transactionNo,
    DateTime? transactionDate,
    String? transactionDescription,
    double? transactionGrossAmount,
    String? transactionGrossAmountCurrency,
    String? companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    String? transactionPdf,
    Enum$TransactionType? transactionType,
    List<Input$TransactionLineInput>? transactionLines,
  }) =>
      _res;

  transactionLines(_fn) => _res;
}

class Input$Trade2TicketFilterInput {
  factory Input$Trade2TicketFilterInput({
    List<Input$Trade2TicketFilterInput>? and,
    List<Input$Trade2TicketFilterInput>? or,
    Input$Trade2DataFilterInput? extendedAttributes,
    Input$StringOperationFilterInput? key,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardId,
    Input$StringOperationFilterInput? yardCode,
    Input$IntOperationFilterInput? ticketNumber,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? partyName,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$FloatOperationFilterInput? price,
    Input$StringOperationFilterInput? currency,
    Input$DateTimeOperationFilterInput? ticketDate,
  }) =>
      Input$Trade2TicketFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (extendedAttributes != null)
          r'extendedAttributes': extendedAttributes,
        if (key != null) r'key': key,
        if (trade2Key != null) r'trade2Key': trade2Key,
        if (depotNo != null) r'depotNo': depotNo,
        if (yardId != null) r'yardId': yardId,
        if (yardCode != null) r'yardCode': yardCode,
        if (ticketNumber != null) r'ticketNumber': ticketNumber,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (partyName != null) r'partyName': partyName,
        if (lines != null) r'lines': lines,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
        if (price != null) r'price': price,
        if (currency != null) r'currency': currency,
        if (ticketDate != null) r'ticketDate': ticketDate,
      });

  Input$Trade2TicketFilterInput._(this._$data);

  factory Input$Trade2TicketFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$Trade2TicketFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$Trade2TicketFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('extendedAttributes')) {
      final l$extendedAttributes = data['extendedAttributes'];
      result$data['extendedAttributes'] = l$extendedAttributes == null
          ? null
          : Input$Trade2DataFilterInput.fromJson(
              (l$extendedAttributes as Map<String, dynamic>));
    }
    if (data.containsKey('key')) {
      final l$key = data['key'];
      result$data['key'] = l$key == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$key as Map<String, dynamic>));
    }
    if (data.containsKey('trade2Key')) {
      final l$trade2Key = data['trade2Key'];
      result$data['trade2Key'] = l$trade2Key == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$trade2Key as Map<String, dynamic>));
    }
    if (data.containsKey('depotNo')) {
      final l$depotNo = data['depotNo'];
      result$data['depotNo'] = l$depotNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$depotNo as Map<String, dynamic>));
    }
    if (data.containsKey('yardId')) {
      final l$yardId = data['yardId'];
      result$data['yardId'] = l$yardId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardId as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    if (data.containsKey('ticketNumber')) {
      final l$ticketNumber = data['ticketNumber'];
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$ticketNumber as Map<String, dynamic>));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('partyName')) {
      final l$partyName = data['partyName'];
      result$data['partyName'] = l$partyName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyName as Map<String, dynamic>));
    }
    if (data.containsKey('lines')) {
      final l$lines = data['lines'];
      result$data['lines'] = l$lines == null
          ? null
          : Input$ListFilterInputTypeOfTicketLineFilterInput.fromJson(
              (l$lines as Map<String, dynamic>));
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : Input$TicketStatusOperationFilterInput.fromJson(
              (l$ticketStatus as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$FloatOperationFilterInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$currency as Map<String, dynamic>));
    }
    if (data.containsKey('ticketDate')) {
      final l$ticketDate = data['ticketDate'];
      result$data['ticketDate'] = l$ticketDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$ticketDate as Map<String, dynamic>));
    }
    return Input$Trade2TicketFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$Trade2TicketFilterInput>? get and =>
      (_$data['and'] as List<Input$Trade2TicketFilterInput>?);

  List<Input$Trade2TicketFilterInput>? get or =>
      (_$data['or'] as List<Input$Trade2TicketFilterInput>?);

  Input$Trade2DataFilterInput? get extendedAttributes =>
      (_$data['extendedAttributes'] as Input$Trade2DataFilterInput?);

  Input$StringOperationFilterInput? get key =>
      (_$data['key'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get trade2Key =>
      (_$data['trade2Key'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get depotNo =>
      (_$data['depotNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardId =>
      (_$data['yardId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get ticketNumber =>
      (_$data['ticketNumber'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get partyAccountNo =>
      (_$data['partyAccountNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get partyName =>
      (_$data['partyName'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfTicketLineFilterInput? get lines =>
      (_$data['lines'] as Input$ListFilterInputTypeOfTicketLineFilterInput?);

  Input$TicketStatusOperationFilterInput? get ticketStatus =>
      (_$data['ticketStatus'] as Input$TicketStatusOperationFilterInput?);

  Input$FloatOperationFilterInput? get price =>
      (_$data['price'] as Input$FloatOperationFilterInput?);

  Input$StringOperationFilterInput? get currency =>
      (_$data['currency'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get ticketDate =>
      (_$data['ticketDate'] as Input$DateTimeOperationFilterInput?);

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
    if (_$data.containsKey('extendedAttributes')) {
      final l$extendedAttributes = extendedAttributes;
      result$data['extendedAttributes'] = l$extendedAttributes?.toJson();
    }
    if (_$data.containsKey('key')) {
      final l$key = key;
      result$data['key'] = l$key?.toJson();
    }
    if (_$data.containsKey('trade2Key')) {
      final l$trade2Key = trade2Key;
      result$data['trade2Key'] = l$trade2Key?.toJson();
    }
    if (_$data.containsKey('depotNo')) {
      final l$depotNo = depotNo;
      result$data['depotNo'] = l$depotNo?.toJson();
    }
    if (_$data.containsKey('yardId')) {
      final l$yardId = yardId;
      result$data['yardId'] = l$yardId?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('ticketNumber')) {
      final l$ticketNumber = ticketNumber;
      result$data['ticketNumber'] = l$ticketNumber?.toJson();
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo?.toJson();
    }
    if (_$data.containsKey('partyName')) {
      final l$partyName = partyName;
      result$data['partyName'] = l$partyName?.toJson();
    }
    if (_$data.containsKey('lines')) {
      final l$lines = lines;
      result$data['lines'] = l$lines?.toJson();
    }
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] = l$currency?.toJson();
    }
    if (_$data.containsKey('ticketDate')) {
      final l$ticketDate = ticketDate;
      result$data['ticketDate'] = l$ticketDate?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Trade2TicketFilterInput<Input$Trade2TicketFilterInput>
      get copyWith => CopyWith$Input$Trade2TicketFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Trade2TicketFilterInput ||
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
    final l$extendedAttributes = extendedAttributes;
    final lOther$extendedAttributes = other.extendedAttributes;
    if (_$data.containsKey('extendedAttributes') !=
        other._$data.containsKey('extendedAttributes')) {
      return false;
    }
    if (l$extendedAttributes != lOther$extendedAttributes) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (_$data.containsKey('key') != other._$data.containsKey('key')) {
      return false;
    }
    if (l$key != lOther$key) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (_$data.containsKey('trade2Key') !=
        other._$data.containsKey('trade2Key')) {
      return false;
    }
    if (l$trade2Key != lOther$trade2Key) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (_$data.containsKey('depotNo') != other._$data.containsKey('depotNo')) {
      return false;
    }
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (_$data.containsKey('yardId') != other._$data.containsKey('yardId')) {
      return false;
    }
    if (l$yardId != lOther$yardId) {
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
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (_$data.containsKey('ticketNumber') !=
        other._$data.containsKey('ticketNumber')) {
      return false;
    }
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (_$data.containsKey('partyName') !=
        other._$data.containsKey('partyName')) {
      return false;
    }
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (_$data.containsKey('lines') != other._$data.containsKey('lines')) {
      return false;
    }
    if (l$lines != lOther$lines) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (_$data.containsKey('ticketDate') !=
        other._$data.containsKey('ticketDate')) {
      return false;
    }
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$extendedAttributes = extendedAttributes;
    final l$key = key;
    final l$trade2Key = trade2Key;
    final l$depotNo = depotNo;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$lines = lines;
    final l$ticketStatus = ticketStatus;
    final l$price = price;
    final l$currency = currency;
    final l$ticketDate = ticketDate;
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
      _$data.containsKey('extendedAttributes')
          ? l$extendedAttributes
          : const {},
      _$data.containsKey('key') ? l$key : const {},
      _$data.containsKey('trade2Key') ? l$trade2Key : const {},
      _$data.containsKey('depotNo') ? l$depotNo : const {},
      _$data.containsKey('yardId') ? l$yardId : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('ticketNumber') ? l$ticketNumber : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('partyName') ? l$partyName : const {},
      _$data.containsKey('lines') ? l$lines : const {},
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('ticketDate') ? l$ticketDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$Trade2TicketFilterInput<TRes> {
  factory CopyWith$Input$Trade2TicketFilterInput(
    Input$Trade2TicketFilterInput instance,
    TRes Function(Input$Trade2TicketFilterInput) then,
  ) = _CopyWithImpl$Input$Trade2TicketFilterInput;

  factory CopyWith$Input$Trade2TicketFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Trade2TicketFilterInput;

  TRes call({
    List<Input$Trade2TicketFilterInput>? and,
    List<Input$Trade2TicketFilterInput>? or,
    Input$Trade2DataFilterInput? extendedAttributes,
    Input$StringOperationFilterInput? key,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardId,
    Input$StringOperationFilterInput? yardCode,
    Input$IntOperationFilterInput? ticketNumber,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? partyName,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$FloatOperationFilterInput? price,
    Input$StringOperationFilterInput? currency,
    Input$DateTimeOperationFilterInput? ticketDate,
  });
  TRes and(
      Iterable<Input$Trade2TicketFilterInput>? Function(
              Iterable<
                  CopyWith$Input$Trade2TicketFilterInput<
                      Input$Trade2TicketFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$Trade2TicketFilterInput>? Function(
              Iterable<
                  CopyWith$Input$Trade2TicketFilterInput<
                      Input$Trade2TicketFilterInput>>?)
          _fn);
  CopyWith$Input$Trade2DataFilterInput<TRes> get extendedAttributes;
  CopyWith$Input$StringOperationFilterInput<TRes> get key;
  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key;
  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardId;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyName;
  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines;
  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus;
  CopyWith$Input$FloatOperationFilterInput<TRes> get price;
  CopyWith$Input$StringOperationFilterInput<TRes> get currency;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate;
}

class _CopyWithImpl$Input$Trade2TicketFilterInput<TRes>
    implements CopyWith$Input$Trade2TicketFilterInput<TRes> {
  _CopyWithImpl$Input$Trade2TicketFilterInput(
    this._instance,
    this._then,
  );

  final Input$Trade2TicketFilterInput _instance;

  final TRes Function(Input$Trade2TicketFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? extendedAttributes = _undefined,
    Object? key = _undefined,
    Object? trade2Key = _undefined,
    Object? depotNo = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? lines = _undefined,
    Object? ticketStatus = _undefined,
    Object? price = _undefined,
    Object? currency = _undefined,
    Object? ticketDate = _undefined,
  }) =>
      _then(Input$Trade2TicketFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$Trade2TicketFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$Trade2TicketFilterInput>?),
        if (extendedAttributes != _undefined)
          'extendedAttributes':
              (extendedAttributes as Input$Trade2DataFilterInput?),
        if (key != _undefined)
          'key': (key as Input$StringOperationFilterInput?),
        if (trade2Key != _undefined)
          'trade2Key': (trade2Key as Input$IntOperationFilterInput?),
        if (depotNo != _undefined)
          'depotNo': (depotNo as Input$StringOperationFilterInput?),
        if (yardId != _undefined)
          'yardId': (yardId as Input$StringOperationFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
        if (ticketNumber != _undefined)
          'ticketNumber': (ticketNumber as Input$IntOperationFilterInput?),
        if (partyAccountNo != _undefined)
          'partyAccountNo':
              (partyAccountNo as Input$StringOperationFilterInput?),
        if (partyName != _undefined)
          'partyName': (partyName as Input$StringOperationFilterInput?),
        if (lines != _undefined)
          'lines': (lines as Input$ListFilterInputTypeOfTicketLineFilterInput?),
        if (ticketStatus != _undefined)
          'ticketStatus':
              (ticketStatus as Input$TicketStatusOperationFilterInput?),
        if (price != _undefined)
          'price': (price as Input$FloatOperationFilterInput?),
        if (currency != _undefined)
          'currency': (currency as Input$StringOperationFilterInput?),
        if (ticketDate != _undefined)
          'ticketDate': (ticketDate as Input$DateTimeOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$Trade2TicketFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$Trade2TicketFilterInput<
                          Input$Trade2TicketFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$Trade2TicketFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$Trade2TicketFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$Trade2TicketFilterInput<
                          Input$Trade2TicketFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$Trade2TicketFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$Trade2DataFilterInput<TRes> get extendedAttributes {
    final local$extendedAttributes = _instance.extendedAttributes;
    return local$extendedAttributes == null
        ? CopyWith$Input$Trade2DataFilterInput.stub(_then(_instance))
        : CopyWith$Input$Trade2DataFilterInput(
            local$extendedAttributes, (e) => call(extendedAttributes: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get key {
    final local$key = _instance.key;
    return local$key == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$key, (e) => call(key: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key {
    final local$trade2Key = _instance.trade2Key;
    return local$trade2Key == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$trade2Key, (e) => call(trade2Key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo {
    final local$depotNo = _instance.depotNo;
    return local$depotNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$depotNo, (e) => call(depotNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardId {
    final local$yardId = _instance.yardId;
    return local$yardId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardId, (e) => call(yardId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber {
    final local$ticketNumber = _instance.ticketNumber;
    return local$ticketNumber == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$ticketNumber, (e) => call(ticketNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo {
    final local$partyAccountNo = _instance.partyAccountNo;
    return local$partyAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyAccountNo, (e) => call(partyAccountNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyName {
    final local$partyName = _instance.partyName;
    return local$partyName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyName, (e) => call(partyName: e));
  }

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines {
    final local$lines = _instance.lines;
    return local$lines == null
        ? CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
            local$lines, (e) => call(lines: e));
  }

  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus {
    final local$ticketStatus = _instance.ticketStatus;
    return local$ticketStatus == null
        ? CopyWith$Input$TicketStatusOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketStatusOperationFilterInput(
            local$ticketStatus, (e) => call(ticketStatus: e));
  }

  CopyWith$Input$FloatOperationFilterInput<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$FloatOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$FloatOperationFilterInput(
            local$price, (e) => call(price: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get currency {
    final local$currency = _instance.currency;
    return local$currency == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$currency, (e) => call(currency: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate {
    final local$ticketDate = _instance.ticketDate;
    return local$ticketDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$ticketDate, (e) => call(ticketDate: e));
  }
}

class _CopyWithStubImpl$Input$Trade2TicketFilterInput<TRes>
    implements CopyWith$Input$Trade2TicketFilterInput<TRes> {
  _CopyWithStubImpl$Input$Trade2TicketFilterInput(this._res);

  TRes _res;

  call({
    List<Input$Trade2TicketFilterInput>? and,
    List<Input$Trade2TicketFilterInput>? or,
    Input$Trade2DataFilterInput? extendedAttributes,
    Input$StringOperationFilterInput? key,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? depotNo,
    Input$StringOperationFilterInput? yardId,
    Input$StringOperationFilterInput? yardCode,
    Input$IntOperationFilterInput? ticketNumber,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? partyName,
    Input$ListFilterInputTypeOfTicketLineFilterInput? lines,
    Input$TicketStatusOperationFilterInput? ticketStatus,
    Input$FloatOperationFilterInput? price,
    Input$StringOperationFilterInput? currency,
    Input$DateTimeOperationFilterInput? ticketDate,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$Trade2DataFilterInput<TRes> get extendedAttributes =>
      CopyWith$Input$Trade2DataFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get key =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get depotNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> get lines =>
      CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(_res);

  CopyWith$Input$TicketStatusOperationFilterInput<TRes> get ticketStatus =>
      CopyWith$Input$TicketStatusOperationFilterInput.stub(_res);

  CopyWith$Input$FloatOperationFilterInput<TRes> get price =>
      CopyWith$Input$FloatOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get currency =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);
}

class Input$Trade2DataFilterInput {
  factory Input$Trade2DataFilterInput({
    List<Input$Trade2DataFilterInput>? and,
    List<Input$Trade2DataFilterInput>? or,
    Input$StringOperationFilterInput? ticketStatus,
  }) =>
      Input$Trade2DataFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
      });

  Input$Trade2DataFilterInput._(this._$data);

  factory Input$Trade2DataFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$Trade2DataFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$Trade2DataFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$ticketStatus as Map<String, dynamic>));
    }
    return Input$Trade2DataFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$Trade2DataFilterInput>? get and =>
      (_$data['and'] as List<Input$Trade2DataFilterInput>?);

  List<Input$Trade2DataFilterInput>? get or =>
      (_$data['or'] as List<Input$Trade2DataFilterInput>?);

  Input$StringOperationFilterInput? get ticketStatus =>
      (_$data['ticketStatus'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Trade2DataFilterInput<Input$Trade2DataFilterInput>
      get copyWith => CopyWith$Input$Trade2DataFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$Trade2DataFilterInput ||
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
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$ticketStatus = ticketStatus;
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
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
    ]);
  }
}

abstract class CopyWith$Input$Trade2DataFilterInput<TRes> {
  factory CopyWith$Input$Trade2DataFilterInput(
    Input$Trade2DataFilterInput instance,
    TRes Function(Input$Trade2DataFilterInput) then,
  ) = _CopyWithImpl$Input$Trade2DataFilterInput;

  factory CopyWith$Input$Trade2DataFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$Trade2DataFilterInput;

  TRes call({
    List<Input$Trade2DataFilterInput>? and,
    List<Input$Trade2DataFilterInput>? or,
    Input$StringOperationFilterInput? ticketStatus,
  });
  TRes and(
      Iterable<Input$Trade2DataFilterInput>? Function(
              Iterable<
                  CopyWith$Input$Trade2DataFilterInput<
                      Input$Trade2DataFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$Trade2DataFilterInput>? Function(
              Iterable<
                  CopyWith$Input$Trade2DataFilterInput<
                      Input$Trade2DataFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get ticketStatus;
}

class _CopyWithImpl$Input$Trade2DataFilterInput<TRes>
    implements CopyWith$Input$Trade2DataFilterInput<TRes> {
  _CopyWithImpl$Input$Trade2DataFilterInput(
    this._instance,
    this._then,
  );

  final Input$Trade2DataFilterInput _instance;

  final TRes Function(Input$Trade2DataFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? ticketStatus = _undefined,
  }) =>
      _then(Input$Trade2DataFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$Trade2DataFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$Trade2DataFilterInput>?),
        if (ticketStatus != _undefined)
          'ticketStatus': (ticketStatus as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$Trade2DataFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$Trade2DataFilterInput<
                          Input$Trade2DataFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$Trade2DataFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$Trade2DataFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$Trade2DataFilterInput<
                          Input$Trade2DataFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$Trade2DataFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get ticketStatus {
    final local$ticketStatus = _instance.ticketStatus;
    return local$ticketStatus == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$ticketStatus, (e) => call(ticketStatus: e));
  }
}

class _CopyWithStubImpl$Input$Trade2DataFilterInput<TRes>
    implements CopyWith$Input$Trade2DataFilterInput<TRes> {
  _CopyWithStubImpl$Input$Trade2DataFilterInput(this._res);

  TRes _res;

  call({
    List<Input$Trade2DataFilterInput>? and,
    List<Input$Trade2DataFilterInput>? or,
    Input$StringOperationFilterInput? ticketStatus,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get ticketStatus =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
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

class Input$ListFilterInputTypeOfTicketLineFilterInput {
  factory Input$ListFilterInputTypeOfTicketLineFilterInput({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfTicketLineFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfTicketLineFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfTicketLineFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$TicketLineFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$TicketLineFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfTicketLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketLineFilterInput? get none =>
      (_$data['none'] as Input$TicketLineFilterInput?);

  Input$TicketLineFilterInput? get some =>
      (_$data['some'] as Input$TicketLineFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<
          Input$ListFilterInputTypeOfTicketLineFilterInput>
      get copyWith => CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfTicketLineFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput(
    Input$ListFilterInputTypeOfTicketLineFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfTicketLineFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput;

  TRes call({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  });
  CopyWith$Input$TicketLineFilterInput<TRes> get none;
  CopyWith$Input$TicketLineFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfTicketLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfTicketLineFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfTicketLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfTicketLineFilterInput._({
        ..._instance._$data,
        if (none != _undefined) 'none': (none as Input$TicketLineFilterInput?),
        if (some != _undefined) 'some': (some as Input$TicketLineFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$TicketLineFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$TicketLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketLineFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$TicketLineFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$TicketLineFilterInput.stub(_then(_instance))
        : CopyWith$Input$TicketLineFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes>
    implements CopyWith$Input$ListFilterInputTypeOfTicketLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfTicketLineFilterInput(this._res);

  TRes _res;

  call({
    Input$TicketLineFilterInput? none,
    Input$TicketLineFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$TicketLineFilterInput<TRes> get none =>
      CopyWith$Input$TicketLineFilterInput.stub(_res);

  CopyWith$Input$TicketLineFilterInput<TRes> get some =>
      CopyWith$Input$TicketLineFilterInput.stub(_res);
}

class Input$TicketStatusOperationFilterInput {
  factory Input$TicketStatusOperationFilterInput({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
  }) =>
      Input$TicketStatusOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$TicketStatusOperationFilterInput._(this._$data);

  factory Input$TicketStatusOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$TicketStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$TicketStatus((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    return Input$TicketStatusOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TicketStatus? get eq => (_$data['eq'] as Enum$TicketStatus?);

  Enum$TicketStatus? get neq => (_$data['neq'] as Enum$TicketStatus?);

  List<Enum$TicketStatus>? get $in =>
      (_$data['in'] as List<Enum$TicketStatus>?);

  List<Enum$TicketStatus>? get nin =>
      (_$data['nin'] as List<Enum$TicketStatus>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$TicketStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$TicketStatus(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$TicketStatus(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$TicketStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$TicketStatusOperationFilterInput<
          Input$TicketStatusOperationFilterInput>
      get copyWith => CopyWith$Input$TicketStatusOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TicketStatusOperationFilterInput ||
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

abstract class CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  factory CopyWith$Input$TicketStatusOperationFilterInput(
    Input$TicketStatusOperationFilterInput instance,
    TRes Function(Input$TicketStatusOperationFilterInput) then,
  ) = _CopyWithImpl$Input$TicketStatusOperationFilterInput;

  factory CopyWith$Input$TicketStatusOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketStatusOperationFilterInput;

  TRes call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
  });
}

class _CopyWithImpl$Input$TicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  _CopyWithImpl$Input$TicketStatusOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketStatusOperationFilterInput _instance;

  final TRes Function(Input$TicketStatusOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$TicketStatusOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$TicketStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$TicketStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$TicketStatus>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$TicketStatus>?),
      }));
}

class _CopyWithStubImpl$Input$TicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$TicketStatusOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketStatusOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus>? $in,
    List<Enum$TicketStatus>? nin,
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

class Input$TicketLineFilterInput {
  factory Input$TicketLineFilterInput({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UnitOfMeasurementFilterInput? grossWeight,
    Input$UnitOfMeasurementFilterInput? netWeight,
    Input$StringOperationFilterInput? gradeId,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$StringOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UnitOfMeasurementFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
    Input$StringOperationFilterInput? priceOrigin,
    Input$StringOperationFilterInput? partyContractRef,
    Input$StringOperationFilterInput? partyContractPart,
    Input$ListStringOperationFilterInput? mediaAssets,
    Input$DecimalOperationFilterInput? price,
    Input$StringOperationFilterInput? ewcCode,
    Input$StringOperationFilterInput? gradeName,
    Input$DecimalOperationFilterInput? payablePrice,
  }) =>
      Input$TicketLineFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (grossWeight != null) r'grossWeight': grossWeight,
        if (netWeight != null) r'netWeight': netWeight,
        if (gradeId != null) r'gradeId': gradeId,
        if (gradeCode != null) r'gradeCode': gradeCode,
        if (lineNumber != null) r'lineNumber': lineNumber,
        if (heapId != null) r'heapId': heapId,
        if (heapCode != null) r'heapCode': heapCode,
        if (rate != null) r'rate': rate,
        if (weightSerial != null) r'weightSerial': weightSerial,
        if (priceOrigin != null) r'priceOrigin': priceOrigin,
        if (partyContractRef != null) r'partyContractRef': partyContractRef,
        if (partyContractPart != null) r'partyContractPart': partyContractPart,
        if (mediaAssets != null) r'mediaAssets': mediaAssets,
        if (price != null) r'price': price,
        if (ewcCode != null) r'ewcCode': ewcCode,
        if (gradeName != null) r'gradeName': gradeName,
        if (payablePrice != null) r'payablePrice': payablePrice,
      });

  Input$TicketLineFilterInput._(this._$data);

  factory Input$TicketLineFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$TicketLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$TicketLineFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('grossWeight')) {
      final l$grossWeight = data['grossWeight'];
      result$data['grossWeight'] = l$grossWeight == null
          ? null
          : Input$UnitOfMeasurementFilterInput.fromJson(
              (l$grossWeight as Map<String, dynamic>));
    }
    if (data.containsKey('netWeight')) {
      final l$netWeight = data['netWeight'];
      result$data['netWeight'] = l$netWeight == null
          ? null
          : Input$UnitOfMeasurementFilterInput.fromJson(
              (l$netWeight as Map<String, dynamic>));
    }
    if (data.containsKey('gradeId')) {
      final l$gradeId = data['gradeId'];
      result$data['gradeId'] = l$gradeId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$gradeId as Map<String, dynamic>));
    }
    if (data.containsKey('gradeCode')) {
      final l$gradeCode = data['gradeCode'];
      result$data['gradeCode'] = l$gradeCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$gradeCode as Map<String, dynamic>));
    }
    if (data.containsKey('lineNumber')) {
      final l$lineNumber = data['lineNumber'];
      result$data['lineNumber'] = l$lineNumber == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$lineNumber as Map<String, dynamic>));
    }
    if (data.containsKey('heapId')) {
      final l$heapId = data['heapId'];
      result$data['heapId'] = l$heapId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$heapId as Map<String, dynamic>));
    }
    if (data.containsKey('heapCode')) {
      final l$heapCode = data['heapCode'];
      result$data['heapCode'] = l$heapCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$heapCode as Map<String, dynamic>));
    }
    if (data.containsKey('rate')) {
      final l$rate = data['rate'];
      result$data['rate'] = l$rate == null
          ? null
          : Input$UnitOfMeasurementFilterInput.fromJson(
              (l$rate as Map<String, dynamic>));
    }
    if (data.containsKey('weightSerial')) {
      final l$weightSerial = data['weightSerial'];
      result$data['weightSerial'] = l$weightSerial == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$weightSerial as Map<String, dynamic>));
    }
    if (data.containsKey('priceOrigin')) {
      final l$priceOrigin = data['priceOrigin'];
      result$data['priceOrigin'] = l$priceOrigin == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$priceOrigin as Map<String, dynamic>));
    }
    if (data.containsKey('partyContractRef')) {
      final l$partyContractRef = data['partyContractRef'];
      result$data['partyContractRef'] = l$partyContractRef == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyContractRef as Map<String, dynamic>));
    }
    if (data.containsKey('partyContractPart')) {
      final l$partyContractPart = data['partyContractPart'];
      result$data['partyContractPart'] = l$partyContractPart == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyContractPart as Map<String, dynamic>));
    }
    if (data.containsKey('mediaAssets')) {
      final l$mediaAssets = data['mediaAssets'];
      result$data['mediaAssets'] = l$mediaAssets == null
          ? null
          : Input$ListStringOperationFilterInput.fromJson(
              (l$mediaAssets as Map<String, dynamic>));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('ewcCode')) {
      final l$ewcCode = data['ewcCode'];
      result$data['ewcCode'] = l$ewcCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$ewcCode as Map<String, dynamic>));
    }
    if (data.containsKey('gradeName')) {
      final l$gradeName = data['gradeName'];
      result$data['gradeName'] = l$gradeName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$gradeName as Map<String, dynamic>));
    }
    if (data.containsKey('payablePrice')) {
      final l$payablePrice = data['payablePrice'];
      result$data['payablePrice'] = l$payablePrice == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$payablePrice as Map<String, dynamic>));
    }
    return Input$TicketLineFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TicketLineFilterInput>? get and =>
      (_$data['and'] as List<Input$TicketLineFilterInput>?);

  List<Input$TicketLineFilterInput>? get or =>
      (_$data['or'] as List<Input$TicketLineFilterInput>?);

  Input$UnitOfMeasurementFilterInput? get grossWeight =>
      (_$data['grossWeight'] as Input$UnitOfMeasurementFilterInput?);

  Input$UnitOfMeasurementFilterInput? get netWeight =>
      (_$data['netWeight'] as Input$UnitOfMeasurementFilterInput?);

  Input$StringOperationFilterInput? get gradeId =>
      (_$data['gradeId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get gradeCode =>
      (_$data['gradeCode'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get lineNumber =>
      (_$data['lineNumber'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get heapId =>
      (_$data['heapId'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get heapCode =>
      (_$data['heapCode'] as Input$StringOperationFilterInput?);

  Input$UnitOfMeasurementFilterInput? get rate =>
      (_$data['rate'] as Input$UnitOfMeasurementFilterInput?);

  Input$StringOperationFilterInput? get weightSerial =>
      (_$data['weightSerial'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get priceOrigin =>
      (_$data['priceOrigin'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get partyContractRef =>
      (_$data['partyContractRef'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get partyContractPart =>
      (_$data['partyContractPart'] as Input$StringOperationFilterInput?);

  Input$ListStringOperationFilterInput? get mediaAssets =>
      (_$data['mediaAssets'] as Input$ListStringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get price =>
      (_$data['price'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get ewcCode =>
      (_$data['ewcCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get gradeName =>
      (_$data['gradeName'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get payablePrice =>
      (_$data['payablePrice'] as Input$DecimalOperationFilterInput?);

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
    if (_$data.containsKey('grossWeight')) {
      final l$grossWeight = grossWeight;
      result$data['grossWeight'] = l$grossWeight?.toJson();
    }
    if (_$data.containsKey('netWeight')) {
      final l$netWeight = netWeight;
      result$data['netWeight'] = l$netWeight?.toJson();
    }
    if (_$data.containsKey('gradeId')) {
      final l$gradeId = gradeId;
      result$data['gradeId'] = l$gradeId?.toJson();
    }
    if (_$data.containsKey('gradeCode')) {
      final l$gradeCode = gradeCode;
      result$data['gradeCode'] = l$gradeCode?.toJson();
    }
    if (_$data.containsKey('lineNumber')) {
      final l$lineNumber = lineNumber;
      result$data['lineNumber'] = l$lineNumber?.toJson();
    }
    if (_$data.containsKey('heapId')) {
      final l$heapId = heapId;
      result$data['heapId'] = l$heapId?.toJson();
    }
    if (_$data.containsKey('heapCode')) {
      final l$heapCode = heapCode;
      result$data['heapCode'] = l$heapCode?.toJson();
    }
    if (_$data.containsKey('rate')) {
      final l$rate = rate;
      result$data['rate'] = l$rate?.toJson();
    }
    if (_$data.containsKey('weightSerial')) {
      final l$weightSerial = weightSerial;
      result$data['weightSerial'] = l$weightSerial?.toJson();
    }
    if (_$data.containsKey('priceOrigin')) {
      final l$priceOrigin = priceOrigin;
      result$data['priceOrigin'] = l$priceOrigin?.toJson();
    }
    if (_$data.containsKey('partyContractRef')) {
      final l$partyContractRef = partyContractRef;
      result$data['partyContractRef'] = l$partyContractRef?.toJson();
    }
    if (_$data.containsKey('partyContractPart')) {
      final l$partyContractPart = partyContractPart;
      result$data['partyContractPart'] = l$partyContractPart?.toJson();
    }
    if (_$data.containsKey('mediaAssets')) {
      final l$mediaAssets = mediaAssets;
      result$data['mediaAssets'] = l$mediaAssets?.toJson();
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price?.toJson();
    }
    if (_$data.containsKey('ewcCode')) {
      final l$ewcCode = ewcCode;
      result$data['ewcCode'] = l$ewcCode?.toJson();
    }
    if (_$data.containsKey('gradeName')) {
      final l$gradeName = gradeName;
      result$data['gradeName'] = l$gradeName?.toJson();
    }
    if (_$data.containsKey('payablePrice')) {
      final l$payablePrice = payablePrice;
      result$data['payablePrice'] = l$payablePrice?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TicketLineFilterInput<Input$TicketLineFilterInput>
      get copyWith => CopyWith$Input$TicketLineFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TicketLineFilterInput ||
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
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (_$data.containsKey('grossWeight') !=
        other._$data.containsKey('grossWeight')) {
      return false;
    }
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (_$data.containsKey('netWeight') !=
        other._$data.containsKey('netWeight')) {
      return false;
    }
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$gradeId = gradeId;
    final lOther$gradeId = other.gradeId;
    if (_$data.containsKey('gradeId') != other._$data.containsKey('gradeId')) {
      return false;
    }
    if (l$gradeId != lOther$gradeId) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (_$data.containsKey('gradeCode') !=
        other._$data.containsKey('gradeCode')) {
      return false;
    }
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (_$data.containsKey('lineNumber') !=
        other._$data.containsKey('lineNumber')) {
      return false;
    }
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (_$data.containsKey('heapId') != other._$data.containsKey('heapId')) {
      return false;
    }
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (_$data.containsKey('heapCode') !=
        other._$data.containsKey('heapCode')) {
      return false;
    }
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (_$data.containsKey('rate') != other._$data.containsKey('rate')) {
      return false;
    }
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (_$data.containsKey('weightSerial') !=
        other._$data.containsKey('weightSerial')) {
      return false;
    }
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$priceOrigin = priceOrigin;
    final lOther$priceOrigin = other.priceOrigin;
    if (_$data.containsKey('priceOrigin') !=
        other._$data.containsKey('priceOrigin')) {
      return false;
    }
    if (l$priceOrigin != lOther$priceOrigin) {
      return false;
    }
    final l$partyContractRef = partyContractRef;
    final lOther$partyContractRef = other.partyContractRef;
    if (_$data.containsKey('partyContractRef') !=
        other._$data.containsKey('partyContractRef')) {
      return false;
    }
    if (l$partyContractRef != lOther$partyContractRef) {
      return false;
    }
    final l$partyContractPart = partyContractPart;
    final lOther$partyContractPart = other.partyContractPart;
    if (_$data.containsKey('partyContractPart') !=
        other._$data.containsKey('partyContractPart')) {
      return false;
    }
    if (l$partyContractPart != lOther$partyContractPart) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (_$data.containsKey('mediaAssets') !=
        other._$data.containsKey('mediaAssets')) {
      return false;
    }
    if (l$mediaAssets != lOther$mediaAssets) {
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
    final l$ewcCode = ewcCode;
    final lOther$ewcCode = other.ewcCode;
    if (_$data.containsKey('ewcCode') != other._$data.containsKey('ewcCode')) {
      return false;
    }
    if (l$ewcCode != lOther$ewcCode) {
      return false;
    }
    final l$gradeName = gradeName;
    final lOther$gradeName = other.gradeName;
    if (_$data.containsKey('gradeName') !=
        other._$data.containsKey('gradeName')) {
      return false;
    }
    if (l$gradeName != lOther$gradeName) {
      return false;
    }
    final l$payablePrice = payablePrice;
    final lOther$payablePrice = other.payablePrice;
    if (_$data.containsKey('payablePrice') !=
        other._$data.containsKey('payablePrice')) {
      return false;
    }
    if (l$payablePrice != lOther$payablePrice) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$grossWeight = grossWeight;
    final l$netWeight = netWeight;
    final l$gradeId = gradeId;
    final l$gradeCode = gradeCode;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    final l$priceOrigin = priceOrigin;
    final l$partyContractRef = partyContractRef;
    final l$partyContractPart = partyContractPart;
    final l$mediaAssets = mediaAssets;
    final l$price = price;
    final l$ewcCode = ewcCode;
    final l$gradeName = gradeName;
    final l$payablePrice = payablePrice;
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
      _$data.containsKey('grossWeight') ? l$grossWeight : const {},
      _$data.containsKey('netWeight') ? l$netWeight : const {},
      _$data.containsKey('gradeId') ? l$gradeId : const {},
      _$data.containsKey('gradeCode') ? l$gradeCode : const {},
      _$data.containsKey('lineNumber') ? l$lineNumber : const {},
      _$data.containsKey('heapId') ? l$heapId : const {},
      _$data.containsKey('heapCode') ? l$heapCode : const {},
      _$data.containsKey('rate') ? l$rate : const {},
      _$data.containsKey('weightSerial') ? l$weightSerial : const {},
      _$data.containsKey('priceOrigin') ? l$priceOrigin : const {},
      _$data.containsKey('partyContractRef') ? l$partyContractRef : const {},
      _$data.containsKey('partyContractPart') ? l$partyContractPart : const {},
      _$data.containsKey('mediaAssets') ? l$mediaAssets : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('ewcCode') ? l$ewcCode : const {},
      _$data.containsKey('gradeName') ? l$gradeName : const {},
      _$data.containsKey('payablePrice') ? l$payablePrice : const {},
    ]);
  }
}

abstract class CopyWith$Input$TicketLineFilterInput<TRes> {
  factory CopyWith$Input$TicketLineFilterInput(
    Input$TicketLineFilterInput instance,
    TRes Function(Input$TicketLineFilterInput) then,
  ) = _CopyWithImpl$Input$TicketLineFilterInput;

  factory CopyWith$Input$TicketLineFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketLineFilterInput;

  TRes call({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UnitOfMeasurementFilterInput? grossWeight,
    Input$UnitOfMeasurementFilterInput? netWeight,
    Input$StringOperationFilterInput? gradeId,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$StringOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UnitOfMeasurementFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
    Input$StringOperationFilterInput? priceOrigin,
    Input$StringOperationFilterInput? partyContractRef,
    Input$StringOperationFilterInput? partyContractPart,
    Input$ListStringOperationFilterInput? mediaAssets,
    Input$DecimalOperationFilterInput? price,
    Input$StringOperationFilterInput? ewcCode,
    Input$StringOperationFilterInput? gradeName,
    Input$DecimalOperationFilterInput? payablePrice,
  });
  TRes and(
      Iterable<Input$TicketLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketLineFilterInput<
                      Input$TicketLineFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$TicketLineFilterInput>? Function(
              Iterable<
                  CopyWith$Input$TicketLineFilterInput<
                      Input$TicketLineFilterInput>>?)
          _fn);
  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get grossWeight;
  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get netWeight;
  CopyWith$Input$StringOperationFilterInput<TRes> get gradeId;
  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode;
  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber;
  CopyWith$Input$StringOperationFilterInput<TRes> get heapId;
  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode;
  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get rate;
  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial;
  CopyWith$Input$StringOperationFilterInput<TRes> get priceOrigin;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractRef;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractPart;
  CopyWith$Input$ListStringOperationFilterInput<TRes> get mediaAssets;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get price;
  CopyWith$Input$StringOperationFilterInput<TRes> get ewcCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get gradeName;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get payablePrice;
}

class _CopyWithImpl$Input$TicketLineFilterInput<TRes>
    implements CopyWith$Input$TicketLineFilterInput<TRes> {
  _CopyWithImpl$Input$TicketLineFilterInput(
    this._instance,
    this._then,
  );

  final Input$TicketLineFilterInput _instance;

  final TRes Function(Input$TicketLineFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? grossWeight = _undefined,
    Object? netWeight = _undefined,
    Object? gradeId = _undefined,
    Object? gradeCode = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
    Object? priceOrigin = _undefined,
    Object? partyContractRef = _undefined,
    Object? partyContractPart = _undefined,
    Object? mediaAssets = _undefined,
    Object? price = _undefined,
    Object? ewcCode = _undefined,
    Object? gradeName = _undefined,
    Object? payablePrice = _undefined,
  }) =>
      _then(Input$TicketLineFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$TicketLineFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$TicketLineFilterInput>?),
        if (grossWeight != _undefined)
          'grossWeight': (grossWeight as Input$UnitOfMeasurementFilterInput?),
        if (netWeight != _undefined)
          'netWeight': (netWeight as Input$UnitOfMeasurementFilterInput?),
        if (gradeId != _undefined)
          'gradeId': (gradeId as Input$StringOperationFilterInput?),
        if (gradeCode != _undefined)
          'gradeCode': (gradeCode as Input$StringOperationFilterInput?),
        if (lineNumber != _undefined)
          'lineNumber': (lineNumber as Input$IntOperationFilterInput?),
        if (heapId != _undefined)
          'heapId': (heapId as Input$StringOperationFilterInput?),
        if (heapCode != _undefined)
          'heapCode': (heapCode as Input$StringOperationFilterInput?),
        if (rate != _undefined)
          'rate': (rate as Input$UnitOfMeasurementFilterInput?),
        if (weightSerial != _undefined)
          'weightSerial': (weightSerial as Input$StringOperationFilterInput?),
        if (priceOrigin != _undefined)
          'priceOrigin': (priceOrigin as Input$StringOperationFilterInput?),
        if (partyContractRef != _undefined)
          'partyContractRef':
              (partyContractRef as Input$StringOperationFilterInput?),
        if (partyContractPart != _undefined)
          'partyContractPart':
              (partyContractPart as Input$StringOperationFilterInput?),
        if (mediaAssets != _undefined)
          'mediaAssets': (mediaAssets as Input$ListStringOperationFilterInput?),
        if (price != _undefined)
          'price': (price as Input$DecimalOperationFilterInput?),
        if (ewcCode != _undefined)
          'ewcCode': (ewcCode as Input$StringOperationFilterInput?),
        if (gradeName != _undefined)
          'gradeName': (gradeName as Input$StringOperationFilterInput?),
        if (payablePrice != _undefined)
          'payablePrice': (payablePrice as Input$DecimalOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$TicketLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketLineFilterInput<
                          Input$TicketLineFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$TicketLineFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$TicketLineFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$TicketLineFilterInput<
                          Input$TicketLineFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$TicketLineFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return local$grossWeight == null
        ? CopyWith$Input$UnitOfMeasurementFilterInput.stub(_then(_instance))
        : CopyWith$Input$UnitOfMeasurementFilterInput(
            local$grossWeight, (e) => call(grossWeight: e));
  }

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get netWeight {
    final local$netWeight = _instance.netWeight;
    return local$netWeight == null
        ? CopyWith$Input$UnitOfMeasurementFilterInput.stub(_then(_instance))
        : CopyWith$Input$UnitOfMeasurementFilterInput(
            local$netWeight, (e) => call(netWeight: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeId {
    final local$gradeId = _instance.gradeId;
    return local$gradeId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$gradeId, (e) => call(gradeId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode {
    final local$gradeCode = _instance.gradeCode;
    return local$gradeCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$gradeCode, (e) => call(gradeCode: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber {
    final local$lineNumber = _instance.lineNumber;
    return local$lineNumber == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$lineNumber, (e) => call(lineNumber: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get heapId {
    final local$heapId = _instance.heapId;
    return local$heapId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$heapId, (e) => call(heapId: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode {
    final local$heapCode = _instance.heapCode;
    return local$heapCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$heapCode, (e) => call(heapCode: e));
  }

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get rate {
    final local$rate = _instance.rate;
    return local$rate == null
        ? CopyWith$Input$UnitOfMeasurementFilterInput.stub(_then(_instance))
        : CopyWith$Input$UnitOfMeasurementFilterInput(
            local$rate, (e) => call(rate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial {
    final local$weightSerial = _instance.weightSerial;
    return local$weightSerial == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$weightSerial, (e) => call(weightSerial: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get priceOrigin {
    final local$priceOrigin = _instance.priceOrigin;
    return local$priceOrigin == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$priceOrigin, (e) => call(priceOrigin: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractRef {
    final local$partyContractRef = _instance.partyContractRef;
    return local$partyContractRef == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyContractRef, (e) => call(partyContractRef: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractPart {
    final local$partyContractPart = _instance.partyContractPart;
    return local$partyContractPart == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyContractPart, (e) => call(partyContractPart: e));
  }

  CopyWith$Input$ListStringOperationFilterInput<TRes> get mediaAssets {
    final local$mediaAssets = _instance.mediaAssets;
    return local$mediaAssets == null
        ? CopyWith$Input$ListStringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$ListStringOperationFilterInput(
            local$mediaAssets, (e) => call(mediaAssets: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$price, (e) => call(price: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get ewcCode {
    final local$ewcCode = _instance.ewcCode;
    return local$ewcCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$ewcCode, (e) => call(ewcCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeName {
    final local$gradeName = _instance.gradeName;
    return local$gradeName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$gradeName, (e) => call(gradeName: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get payablePrice {
    final local$payablePrice = _instance.payablePrice;
    return local$payablePrice == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$payablePrice, (e) => call(payablePrice: e));
  }
}

class _CopyWithStubImpl$Input$TicketLineFilterInput<TRes>
    implements CopyWith$Input$TicketLineFilterInput<TRes> {
  _CopyWithStubImpl$Input$TicketLineFilterInput(this._res);

  TRes _res;

  call({
    List<Input$TicketLineFilterInput>? and,
    List<Input$TicketLineFilterInput>? or,
    Input$UnitOfMeasurementFilterInput? grossWeight,
    Input$UnitOfMeasurementFilterInput? netWeight,
    Input$StringOperationFilterInput? gradeId,
    Input$StringOperationFilterInput? gradeCode,
    Input$IntOperationFilterInput? lineNumber,
    Input$StringOperationFilterInput? heapId,
    Input$StringOperationFilterInput? heapCode,
    Input$UnitOfMeasurementFilterInput? rate,
    Input$StringOperationFilterInput? weightSerial,
    Input$StringOperationFilterInput? priceOrigin,
    Input$StringOperationFilterInput? partyContractRef,
    Input$StringOperationFilterInput? partyContractPart,
    Input$ListStringOperationFilterInput? mediaAssets,
    Input$DecimalOperationFilterInput? price,
    Input$StringOperationFilterInput? ewcCode,
    Input$StringOperationFilterInput? gradeName,
    Input$DecimalOperationFilterInput? payablePrice,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get grossWeight =>
      CopyWith$Input$UnitOfMeasurementFilterInput.stub(_res);

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get netWeight =>
      CopyWith$Input$UnitOfMeasurementFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get lineNumber =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get heapId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get heapCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$UnitOfMeasurementFilterInput<TRes> get rate =>
      CopyWith$Input$UnitOfMeasurementFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get weightSerial =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get priceOrigin =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractRef =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyContractPart =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListStringOperationFilterInput<TRes> get mediaAssets =>
      CopyWith$Input$ListStringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get price =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get ewcCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get gradeName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get payablePrice =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);
}

class Input$UnitOfMeasurementFilterInput {
  factory Input$UnitOfMeasurementFilterInput({
    List<Input$UnitOfMeasurementFilterInput>? and,
    List<Input$UnitOfMeasurementFilterInput>? or,
    Input$StringOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  }) =>
      Input$UnitOfMeasurementFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (uom != null) r'uom': uom,
        if (value != null) r'value': value,
        if (id != null) r'id': id,
      });

  Input$UnitOfMeasurementFilterInput._(this._$data);

  factory Input$UnitOfMeasurementFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$UnitOfMeasurementFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$UnitOfMeasurementFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('uom')) {
      final l$uom = data['uom'];
      result$data['uom'] = l$uom == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$uom as Map<String, dynamic>));
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = l$value == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$value as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$id as Map<String, dynamic>));
    }
    return Input$UnitOfMeasurementFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$UnitOfMeasurementFilterInput>? get and =>
      (_$data['and'] as List<Input$UnitOfMeasurementFilterInput>?);

  List<Input$UnitOfMeasurementFilterInput>? get or =>
      (_$data['or'] as List<Input$UnitOfMeasurementFilterInput>?);

  Input$StringOperationFilterInput? get uom =>
      (_$data['uom'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get value =>
      (_$data['value'] as Input$DecimalOperationFilterInput?);

  Input$IntOperationFilterInput? get id =>
      (_$data['id'] as Input$IntOperationFilterInput?);

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
    if (_$data.containsKey('uom')) {
      final l$uom = uom;
      result$data['uom'] = l$uom?.toJson();
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UnitOfMeasurementFilterInput<
          Input$UnitOfMeasurementFilterInput>
      get copyWith => CopyWith$Input$UnitOfMeasurementFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UnitOfMeasurementFilterInput ||
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
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (_$data.containsKey('uom') != other._$data.containsKey('uom')) {
      return false;
    }
    if (l$uom != lOther$uom) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
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
      _$data.containsKey('uom') ? l$uom : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$UnitOfMeasurementFilterInput<TRes> {
  factory CopyWith$Input$UnitOfMeasurementFilterInput(
    Input$UnitOfMeasurementFilterInput instance,
    TRes Function(Input$UnitOfMeasurementFilterInput) then,
  ) = _CopyWithImpl$Input$UnitOfMeasurementFilterInput;

  factory CopyWith$Input$UnitOfMeasurementFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UnitOfMeasurementFilterInput;

  TRes call({
    List<Input$UnitOfMeasurementFilterInput>? and,
    List<Input$UnitOfMeasurementFilterInput>? or,
    Input$StringOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  });
  TRes and(
      Iterable<Input$UnitOfMeasurementFilterInput>? Function(
              Iterable<
                  CopyWith$Input$UnitOfMeasurementFilterInput<
                      Input$UnitOfMeasurementFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$UnitOfMeasurementFilterInput>? Function(
              Iterable<
                  CopyWith$Input$UnitOfMeasurementFilterInput<
                      Input$UnitOfMeasurementFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get uom;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get value;
  CopyWith$Input$IntOperationFilterInput<TRes> get id;
}

class _CopyWithImpl$Input$UnitOfMeasurementFilterInput<TRes>
    implements CopyWith$Input$UnitOfMeasurementFilterInput<TRes> {
  _CopyWithImpl$Input$UnitOfMeasurementFilterInput(
    this._instance,
    this._then,
  );

  final Input$UnitOfMeasurementFilterInput _instance;

  final TRes Function(Input$UnitOfMeasurementFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UnitOfMeasurementFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$UnitOfMeasurementFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$UnitOfMeasurementFilterInput>?),
        if (uom != _undefined)
          'uom': (uom as Input$StringOperationFilterInput?),
        if (value != _undefined)
          'value': (value as Input$DecimalOperationFilterInput?),
        if (id != _undefined) 'id': (id as Input$IntOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$UnitOfMeasurementFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$UnitOfMeasurementFilterInput<
                          Input$UnitOfMeasurementFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$UnitOfMeasurementFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$UnitOfMeasurementFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$UnitOfMeasurementFilterInput<
                          Input$UnitOfMeasurementFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$UnitOfMeasurementFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get uom {
    final local$uom = _instance.uom;
    return local$uom == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$uom, (e) => call(uom: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value {
    final local$value = _instance.value;
    return local$value == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$value, (e) => call(value: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$UnitOfMeasurementFilterInput<TRes>
    implements CopyWith$Input$UnitOfMeasurementFilterInput<TRes> {
  _CopyWithStubImpl$Input$UnitOfMeasurementFilterInput(this._res);

  TRes _res;

  call({
    List<Input$UnitOfMeasurementFilterInput>? and,
    List<Input$UnitOfMeasurementFilterInput>? or,
    Input$StringOperationFilterInput? uom,
    Input$DecimalOperationFilterInput? value,
    Input$IntOperationFilterInput? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get uom =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get value =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get id =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);
}

class Input$ListStringOperationFilterInput {
  factory Input$ListStringOperationFilterInput({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) =>
      Input$ListStringOperationFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListStringOperationFilterInput._(this._$data);

  factory Input$ListStringOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListStringOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringOperationFilterInput? get none =>
      (_$data['none'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get some =>
      (_$data['some'] as Input$StringOperationFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$ListStringOperationFilterInput<
          Input$ListStringOperationFilterInput>
      get copyWith => CopyWith$Input$ListStringOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListStringOperationFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListStringOperationFilterInput<TRes> {
  factory CopyWith$Input$ListStringOperationFilterInput(
    Input$ListStringOperationFilterInput instance,
    TRes Function(Input$ListStringOperationFilterInput) then,
  ) = _CopyWithImpl$Input$ListStringOperationFilterInput;

  factory CopyWith$Input$ListStringOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ListStringOperationFilterInput;

  TRes call({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  });
  CopyWith$Input$StringOperationFilterInput<TRes> get none;
  CopyWith$Input$StringOperationFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithImpl$Input$ListStringOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListStringOperationFilterInput _instance;

  final TRes Function(Input$ListStringOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListStringOperationFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$StringOperationFilterInput?),
        if (some != _undefined)
          'some': (some as Input$StringOperationFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$StringOperationFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListStringOperationFilterInput<TRes>
    implements CopyWith$Input$ListStringOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListStringOperationFilterInput(this._res);

  TRes _res;

  call({
    Input$StringOperationFilterInput? none,
    Input$StringOperationFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get none =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get some =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
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

class Input$TransactionLineInput {
  factory Input$TransactionLineInput({
    required String lineNo,
    required String lineType,
  }) =>
      Input$TransactionLineInput._({
        r'lineNo': lineNo,
        r'lineType': lineType,
      });

  Input$TransactionLineInput._(this._$data);

  factory Input$TransactionLineInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lineNo = data['lineNo'];
    result$data['lineNo'] = (l$lineNo as String);
    final l$lineType = data['lineType'];
    result$data['lineType'] = (l$lineType as String);
    return Input$TransactionLineInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lineNo => (_$data['lineNo'] as String);

  String get lineType => (_$data['lineType'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lineNo = lineNo;
    result$data['lineNo'] = l$lineNo;
    final l$lineType = lineType;
    result$data['lineType'] = l$lineType;
    return result$data;
  }

  CopyWith$Input$TransactionLineInput<Input$TransactionLineInput>
      get copyWith => CopyWith$Input$TransactionLineInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TransactionLineInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lineNo = lineNo;
    final lOther$lineNo = other.lineNo;
    if (l$lineNo != lOther$lineNo) {
      return false;
    }
    final l$lineType = lineType;
    final lOther$lineType = other.lineType;
    if (l$lineType != lOther$lineType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lineNo = lineNo;
    final l$lineType = lineType;
    return Object.hashAll([
      l$lineNo,
      l$lineType,
    ]);
  }
}

abstract class CopyWith$Input$TransactionLineInput<TRes> {
  factory CopyWith$Input$TransactionLineInput(
    Input$TransactionLineInput instance,
    TRes Function(Input$TransactionLineInput) then,
  ) = _CopyWithImpl$Input$TransactionLineInput;

  factory CopyWith$Input$TransactionLineInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TransactionLineInput;

  TRes call({
    String? lineNo,
    String? lineType,
  });
}

class _CopyWithImpl$Input$TransactionLineInput<TRes>
    implements CopyWith$Input$TransactionLineInput<TRes> {
  _CopyWithImpl$Input$TransactionLineInput(
    this._instance,
    this._then,
  );

  final Input$TransactionLineInput _instance;

  final TRes Function(Input$TransactionLineInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lineNo = _undefined,
    Object? lineType = _undefined,
  }) =>
      _then(Input$TransactionLineInput._({
        ..._instance._$data,
        if (lineNo != _undefined && lineNo != null)
          'lineNo': (lineNo as String),
        if (lineType != _undefined && lineType != null)
          'lineType': (lineType as String),
      }));
}

class _CopyWithStubImpl$Input$TransactionLineInput<TRes>
    implements CopyWith$Input$TransactionLineInput<TRes> {
  _CopyWithStubImpl$Input$TransactionLineInput(this._res);

  TRes _res;

  call({
    String? lineNo,
    String? lineType,
  }) =>
      _res;
}

class Input$PaidTicketSummaryFilterInput {
  factory Input$PaidTicketSummaryFilterInput({
    List<Input$PaidTicketSummaryFilterInput>? and,
    List<Input$PaidTicketSummaryFilterInput>? or,
    Input$DateTimeOperationFilterInput? ticketDate,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$IntOperationFilterInput? ticketNumber,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? trade2TicketStatus,
    Input$StringOperationFilterInput? yardId,
    Input$NullableOfTicketStatusOperationFilterInput? ticketStatus,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? yardName,
    Input$StringOperationFilterInput? yardCode,
    Input$DecimalOperationFilterInput? amount,
    Input$StringOperationFilterInput? remittaceFileName,
  }) =>
      Input$PaidTicketSummaryFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (ticketDate != null) r'ticketDate': ticketDate,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (ticketNumber != null) r'ticketNumber': ticketNumber,
        if (trade2Key != null) r'trade2Key': trade2Key,
        if (trade2TicketStatus != null)
          r'trade2TicketStatus': trade2TicketStatus,
        if (yardId != null) r'yardId': yardId,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
        if (currency != null) r'currency': currency,
        if (searchText != null) r'searchText': searchText,
        if (yardName != null) r'yardName': yardName,
        if (yardCode != null) r'yardCode': yardCode,
        if (amount != null) r'amount': amount,
        if (remittaceFileName != null) r'remittaceFileName': remittaceFileName,
      });

  Input$PaidTicketSummaryFilterInput._(this._$data);

  factory Input$PaidTicketSummaryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$PaidTicketSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$PaidTicketSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('ticketDate')) {
      final l$ticketDate = data['ticketDate'];
      result$data['ticketDate'] = l$ticketDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$ticketDate as Map<String, dynamic>));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('ticketNumber')) {
      final l$ticketNumber = data['ticketNumber'];
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$ticketNumber as Map<String, dynamic>));
    }
    if (data.containsKey('trade2Key')) {
      final l$trade2Key = data['trade2Key'];
      result$data['trade2Key'] = l$trade2Key == null
          ? null
          : Input$IntOperationFilterInput.fromJson(
              (l$trade2Key as Map<String, dynamic>));
    }
    if (data.containsKey('trade2TicketStatus')) {
      final l$trade2TicketStatus = data['trade2TicketStatus'];
      result$data['trade2TicketStatus'] = l$trade2TicketStatus == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$trade2TicketStatus as Map<String, dynamic>));
    }
    if (data.containsKey('yardId')) {
      final l$yardId = data['yardId'];
      result$data['yardId'] = l$yardId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardId as Map<String, dynamic>));
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : Input$NullableOfTicketStatusOperationFilterInput.fromJson(
              (l$ticketStatus as Map<String, dynamic>));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$currency as Map<String, dynamic>));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$searchText as Map<String, dynamic>));
    }
    if (data.containsKey('yardName')) {
      final l$yardName = data['yardName'];
      result$data['yardName'] = l$yardName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardName as Map<String, dynamic>));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$yardCode as Map<String, dynamic>));
    }
    if (data.containsKey('amount')) {
      final l$amount = data['amount'];
      result$data['amount'] = l$amount == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$amount as Map<String, dynamic>));
    }
    if (data.containsKey('remittaceFileName')) {
      final l$remittaceFileName = data['remittaceFileName'];
      result$data['remittaceFileName'] = l$remittaceFileName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$remittaceFileName as Map<String, dynamic>));
    }
    return Input$PaidTicketSummaryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PaidTicketSummaryFilterInput>? get and =>
      (_$data['and'] as List<Input$PaidTicketSummaryFilterInput>?);

  List<Input$PaidTicketSummaryFilterInput>? get or =>
      (_$data['or'] as List<Input$PaidTicketSummaryFilterInput>?);

  Input$DateTimeOperationFilterInput? get ticketDate =>
      (_$data['ticketDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get partyAccountNo =>
      (_$data['partyAccountNo'] as Input$StringOperationFilterInput?);

  Input$IntOperationFilterInput? get ticketNumber =>
      (_$data['ticketNumber'] as Input$IntOperationFilterInput?);

  Input$IntOperationFilterInput? get trade2Key =>
      (_$data['trade2Key'] as Input$IntOperationFilterInput?);

  Input$StringOperationFilterInput? get trade2TicketStatus =>
      (_$data['trade2TicketStatus'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardId =>
      (_$data['yardId'] as Input$StringOperationFilterInput?);

  Input$NullableOfTicketStatusOperationFilterInput? get ticketStatus =>
      (_$data['ticketStatus']
          as Input$NullableOfTicketStatusOperationFilterInput?);

  Input$StringOperationFilterInput? get currency =>
      (_$data['currency'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get searchText =>
      (_$data['searchText'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardName =>
      (_$data['yardName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get yardCode =>
      (_$data['yardCode'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get amount =>
      (_$data['amount'] as Input$DecimalOperationFilterInput?);

  Input$StringOperationFilterInput? get remittaceFileName =>
      (_$data['remittaceFileName'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('ticketDate')) {
      final l$ticketDate = ticketDate;
      result$data['ticketDate'] = l$ticketDate?.toJson();
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo?.toJson();
    }
    if (_$data.containsKey('ticketNumber')) {
      final l$ticketNumber = ticketNumber;
      result$data['ticketNumber'] = l$ticketNumber?.toJson();
    }
    if (_$data.containsKey('trade2Key')) {
      final l$trade2Key = trade2Key;
      result$data['trade2Key'] = l$trade2Key?.toJson();
    }
    if (_$data.containsKey('trade2TicketStatus')) {
      final l$trade2TicketStatus = trade2TicketStatus;
      result$data['trade2TicketStatus'] = l$trade2TicketStatus?.toJson();
    }
    if (_$data.containsKey('yardId')) {
      final l$yardId = yardId;
      result$data['yardId'] = l$yardId?.toJson();
    }
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus?.toJson();
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] = l$currency?.toJson();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText?.toJson();
    }
    if (_$data.containsKey('yardName')) {
      final l$yardName = yardName;
      result$data['yardName'] = l$yardName?.toJson();
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] = l$yardCode?.toJson();
    }
    if (_$data.containsKey('amount')) {
      final l$amount = amount;
      result$data['amount'] = l$amount?.toJson();
    }
    if (_$data.containsKey('remittaceFileName')) {
      final l$remittaceFileName = remittaceFileName;
      result$data['remittaceFileName'] = l$remittaceFileName?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PaidTicketSummaryFilterInput<
          Input$PaidTicketSummaryFilterInput>
      get copyWith => CopyWith$Input$PaidTicketSummaryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaidTicketSummaryFilterInput ||
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
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (_$data.containsKey('ticketDate') !=
        other._$data.containsKey('ticketDate')) {
      return false;
    }
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (_$data.containsKey('ticketNumber') !=
        other._$data.containsKey('ticketNumber')) {
      return false;
    }
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (_$data.containsKey('trade2Key') !=
        other._$data.containsKey('trade2Key')) {
      return false;
    }
    if (l$trade2Key != lOther$trade2Key) {
      return false;
    }
    final l$trade2TicketStatus = trade2TicketStatus;
    final lOther$trade2TicketStatus = other.trade2TicketStatus;
    if (_$data.containsKey('trade2TicketStatus') !=
        other._$data.containsKey('trade2TicketStatus')) {
      return false;
    }
    if (l$trade2TicketStatus != lOther$trade2TicketStatus) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (_$data.containsKey('yardId') != other._$data.containsKey('yardId')) {
      return false;
    }
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (_$data.containsKey('yardName') !=
        other._$data.containsKey('yardName')) {
      return false;
    }
    if (l$yardName != lOther$yardName) {
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
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (_$data.containsKey('amount') != other._$data.containsKey('amount')) {
      return false;
    }
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$remittaceFileName = remittaceFileName;
    final lOther$remittaceFileName = other.remittaceFileName;
    if (_$data.containsKey('remittaceFileName') !=
        other._$data.containsKey('remittaceFileName')) {
      return false;
    }
    if (l$remittaceFileName != lOther$remittaceFileName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$ticketDate = ticketDate;
    final l$partyAccountNo = partyAccountNo;
    final l$ticketNumber = ticketNumber;
    final l$trade2Key = trade2Key;
    final l$trade2TicketStatus = trade2TicketStatus;
    final l$yardId = yardId;
    final l$ticketStatus = ticketStatus;
    final l$currency = currency;
    final l$searchText = searchText;
    final l$yardName = yardName;
    final l$yardCode = yardCode;
    final l$amount = amount;
    final l$remittaceFileName = remittaceFileName;
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
      _$data.containsKey('ticketDate') ? l$ticketDate : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('ticketNumber') ? l$ticketNumber : const {},
      _$data.containsKey('trade2Key') ? l$trade2Key : const {},
      _$data.containsKey('trade2TicketStatus')
          ? l$trade2TicketStatus
          : const {},
      _$data.containsKey('yardId') ? l$yardId : const {},
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('yardName') ? l$yardName : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('amount') ? l$amount : const {},
      _$data.containsKey('remittaceFileName') ? l$remittaceFileName : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaidTicketSummaryFilterInput<TRes> {
  factory CopyWith$Input$PaidTicketSummaryFilterInput(
    Input$PaidTicketSummaryFilterInput instance,
    TRes Function(Input$PaidTicketSummaryFilterInput) then,
  ) = _CopyWithImpl$Input$PaidTicketSummaryFilterInput;

  factory CopyWith$Input$PaidTicketSummaryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaidTicketSummaryFilterInput;

  TRes call({
    List<Input$PaidTicketSummaryFilterInput>? and,
    List<Input$PaidTicketSummaryFilterInput>? or,
    Input$DateTimeOperationFilterInput? ticketDate,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$IntOperationFilterInput? ticketNumber,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? trade2TicketStatus,
    Input$StringOperationFilterInput? yardId,
    Input$NullableOfTicketStatusOperationFilterInput? ticketStatus,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? yardName,
    Input$StringOperationFilterInput? yardCode,
    Input$DecimalOperationFilterInput? amount,
    Input$StringOperationFilterInput? remittaceFileName,
  });
  TRes and(
      Iterable<Input$PaidTicketSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PaidTicketSummaryFilterInput<
                      Input$PaidTicketSummaryFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PaidTicketSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PaidTicketSummaryFilterInput<
                      Input$PaidTicketSummaryFilterInput>>?)
          _fn);
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo;
  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber;
  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key;
  CopyWith$Input$StringOperationFilterInput<TRes> get trade2TicketStatus;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardId;
  CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes>
      get ticketStatus;
  CopyWith$Input$StringOperationFilterInput<TRes> get currency;
  CopyWith$Input$StringOperationFilterInput<TRes> get searchText;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardName;
  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get amount;
  CopyWith$Input$StringOperationFilterInput<TRes> get remittaceFileName;
}

class _CopyWithImpl$Input$PaidTicketSummaryFilterInput<TRes>
    implements CopyWith$Input$PaidTicketSummaryFilterInput<TRes> {
  _CopyWithImpl$Input$PaidTicketSummaryFilterInput(
    this._instance,
    this._then,
  );

  final Input$PaidTicketSummaryFilterInput _instance;

  final TRes Function(Input$PaidTicketSummaryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? ticketDate = _undefined,
    Object? partyAccountNo = _undefined,
    Object? ticketNumber = _undefined,
    Object? trade2Key = _undefined,
    Object? trade2TicketStatus = _undefined,
    Object? yardId = _undefined,
    Object? ticketStatus = _undefined,
    Object? currency = _undefined,
    Object? searchText = _undefined,
    Object? yardName = _undefined,
    Object? yardCode = _undefined,
    Object? amount = _undefined,
    Object? remittaceFileName = _undefined,
  }) =>
      _then(Input$PaidTicketSummaryFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PaidTicketSummaryFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$PaidTicketSummaryFilterInput>?),
        if (ticketDate != _undefined)
          'ticketDate': (ticketDate as Input$DateTimeOperationFilterInput?),
        if (partyAccountNo != _undefined)
          'partyAccountNo':
              (partyAccountNo as Input$StringOperationFilterInput?),
        if (ticketNumber != _undefined)
          'ticketNumber': (ticketNumber as Input$IntOperationFilterInput?),
        if (trade2Key != _undefined)
          'trade2Key': (trade2Key as Input$IntOperationFilterInput?),
        if (trade2TicketStatus != _undefined)
          'trade2TicketStatus':
              (trade2TicketStatus as Input$StringOperationFilterInput?),
        if (yardId != _undefined)
          'yardId': (yardId as Input$StringOperationFilterInput?),
        if (ticketStatus != _undefined)
          'ticketStatus': (ticketStatus
              as Input$NullableOfTicketStatusOperationFilterInput?),
        if (currency != _undefined)
          'currency': (currency as Input$StringOperationFilterInput?),
        if (searchText != _undefined)
          'searchText': (searchText as Input$StringOperationFilterInput?),
        if (yardName != _undefined)
          'yardName': (yardName as Input$StringOperationFilterInput?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Input$StringOperationFilterInput?),
        if (amount != _undefined)
          'amount': (amount as Input$DecimalOperationFilterInput?),
        if (remittaceFileName != _undefined)
          'remittaceFileName':
              (remittaceFileName as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$PaidTicketSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PaidTicketSummaryFilterInput<
                          Input$PaidTicketSummaryFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$PaidTicketSummaryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PaidTicketSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PaidTicketSummaryFilterInput<
                          Input$PaidTicketSummaryFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$PaidTicketSummaryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate {
    final local$ticketDate = _instance.ticketDate;
    return local$ticketDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$ticketDate, (e) => call(ticketDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo {
    final local$partyAccountNo = _instance.partyAccountNo;
    return local$partyAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyAccountNo, (e) => call(partyAccountNo: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber {
    final local$ticketNumber = _instance.ticketNumber;
    return local$ticketNumber == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$ticketNumber, (e) => call(ticketNumber: e));
  }

  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key {
    final local$trade2Key = _instance.trade2Key;
    return local$trade2Key == null
        ? CopyWith$Input$IntOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$IntOperationFilterInput(
            local$trade2Key, (e) => call(trade2Key: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get trade2TicketStatus {
    final local$trade2TicketStatus = _instance.trade2TicketStatus;
    return local$trade2TicketStatus == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$trade2TicketStatus, (e) => call(trade2TicketStatus: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardId {
    final local$yardId = _instance.yardId;
    return local$yardId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardId, (e) => call(yardId: e));
  }

  CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes>
      get ticketStatus {
    final local$ticketStatus = _instance.ticketStatus;
    return local$ticketStatus == null
        ? CopyWith$Input$NullableOfTicketStatusOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$NullableOfTicketStatusOperationFilterInput(
            local$ticketStatus, (e) => call(ticketStatus: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get currency {
    final local$currency = _instance.currency;
    return local$currency == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$currency, (e) => call(currency: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText {
    final local$searchText = _instance.searchText;
    return local$searchText == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$searchText, (e) => call(searchText: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardName {
    final local$yardName = _instance.yardName;
    return local$yardName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardName, (e) => call(yardName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode {
    final local$yardCode = _instance.yardCode;
    return local$yardCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$yardCode, (e) => call(yardCode: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get amount {
    final local$amount = _instance.amount;
    return local$amount == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$amount, (e) => call(amount: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get remittaceFileName {
    final local$remittaceFileName = _instance.remittaceFileName;
    return local$remittaceFileName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$remittaceFileName, (e) => call(remittaceFileName: e));
  }
}

class _CopyWithStubImpl$Input$PaidTicketSummaryFilterInput<TRes>
    implements CopyWith$Input$PaidTicketSummaryFilterInput<TRes> {
  _CopyWithStubImpl$Input$PaidTicketSummaryFilterInput(this._res);

  TRes _res;

  call({
    List<Input$PaidTicketSummaryFilterInput>? and,
    List<Input$PaidTicketSummaryFilterInput>? or,
    Input$DateTimeOperationFilterInput? ticketDate,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$IntOperationFilterInput? ticketNumber,
    Input$IntOperationFilterInput? trade2Key,
    Input$StringOperationFilterInput? trade2TicketStatus,
    Input$StringOperationFilterInput? yardId,
    Input$NullableOfTicketStatusOperationFilterInput? ticketStatus,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? yardName,
    Input$StringOperationFilterInput? yardCode,
    Input$DecimalOperationFilterInput? amount,
    Input$StringOperationFilterInput? remittaceFileName,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get ticketDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get ticketNumber =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$IntOperationFilterInput<TRes> get trade2Key =>
      CopyWith$Input$IntOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get trade2TicketStatus =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes>
      get ticketStatus =>
          CopyWith$Input$NullableOfTicketStatusOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get currency =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get yardCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get amount =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get remittaceFileName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$PaidTicketSummarySortInput {
  factory Input$PaidTicketSummarySortInput({
    Enum$SortEnumType? ticketDate,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? trade2Key,
    Enum$SortEnumType? trade2TicketStatus,
    Enum$SortEnumType? yardId,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? yardName,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? amount,
    Enum$SortEnumType? remittaceFileName,
  }) =>
      Input$PaidTicketSummarySortInput._({
        if (ticketDate != null) r'ticketDate': ticketDate,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (ticketNumber != null) r'ticketNumber': ticketNumber,
        if (trade2Key != null) r'trade2Key': trade2Key,
        if (trade2TicketStatus != null)
          r'trade2TicketStatus': trade2TicketStatus,
        if (yardId != null) r'yardId': yardId,
        if (ticketStatus != null) r'ticketStatus': ticketStatus,
        if (currency != null) r'currency': currency,
        if (searchText != null) r'searchText': searchText,
        if (yardName != null) r'yardName': yardName,
        if (yardCode != null) r'yardCode': yardCode,
        if (amount != null) r'amount': amount,
        if (remittaceFileName != null) r'remittaceFileName': remittaceFileName,
      });

  Input$PaidTicketSummarySortInput._(this._$data);

  factory Input$PaidTicketSummarySortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ticketDate')) {
      final l$ticketDate = data['ticketDate'];
      result$data['ticketDate'] = l$ticketDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketDate as String));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$partyAccountNo as String));
    }
    if (data.containsKey('ticketNumber')) {
      final l$ticketNumber = data['ticketNumber'];
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketNumber as String));
    }
    if (data.containsKey('trade2Key')) {
      final l$trade2Key = data['trade2Key'];
      result$data['trade2Key'] = l$trade2Key == null
          ? null
          : fromJson$Enum$SortEnumType((l$trade2Key as String));
    }
    if (data.containsKey('trade2TicketStatus')) {
      final l$trade2TicketStatus = data['trade2TicketStatus'];
      result$data['trade2TicketStatus'] = l$trade2TicketStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$trade2TicketStatus as String));
    }
    if (data.containsKey('yardId')) {
      final l$yardId = data['yardId'];
      result$data['yardId'] = l$yardId == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardId as String));
    }
    if (data.containsKey('ticketStatus')) {
      final l$ticketStatus = data['ticketStatus'];
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : fromJson$Enum$SortEnumType((l$ticketStatus as String));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : fromJson$Enum$SortEnumType((l$currency as String));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : fromJson$Enum$SortEnumType((l$searchText as String));
    }
    if (data.containsKey('yardName')) {
      final l$yardName = data['yardName'];
      result$data['yardName'] = l$yardName == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardName as String));
    }
    if (data.containsKey('yardCode')) {
      final l$yardCode = data['yardCode'];
      result$data['yardCode'] = l$yardCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$yardCode as String));
    }
    if (data.containsKey('amount')) {
      final l$amount = data['amount'];
      result$data['amount'] = l$amount == null
          ? null
          : fromJson$Enum$SortEnumType((l$amount as String));
    }
    if (data.containsKey('remittaceFileName')) {
      final l$remittaceFileName = data['remittaceFileName'];
      result$data['remittaceFileName'] = l$remittaceFileName == null
          ? null
          : fromJson$Enum$SortEnumType((l$remittaceFileName as String));
    }
    return Input$PaidTicketSummarySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get ticketDate =>
      (_$data['ticketDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get partyAccountNo =>
      (_$data['partyAccountNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get ticketNumber =>
      (_$data['ticketNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get trade2Key =>
      (_$data['trade2Key'] as Enum$SortEnumType?);

  Enum$SortEnumType? get trade2TicketStatus =>
      (_$data['trade2TicketStatus'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardId => (_$data['yardId'] as Enum$SortEnumType?);

  Enum$SortEnumType? get ticketStatus =>
      (_$data['ticketStatus'] as Enum$SortEnumType?);

  Enum$SortEnumType? get currency => (_$data['currency'] as Enum$SortEnumType?);

  Enum$SortEnumType? get searchText =>
      (_$data['searchText'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardName => (_$data['yardName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get yardCode => (_$data['yardCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get amount => (_$data['amount'] as Enum$SortEnumType?);

  Enum$SortEnumType? get remittaceFileName =>
      (_$data['remittaceFileName'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ticketDate')) {
      final l$ticketDate = ticketDate;
      result$data['ticketDate'] =
          l$ticketDate == null ? null : toJson$Enum$SortEnumType(l$ticketDate);
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : toJson$Enum$SortEnumType(l$partyAccountNo);
    }
    if (_$data.containsKey('ticketNumber')) {
      final l$ticketNumber = ticketNumber;
      result$data['ticketNumber'] = l$ticketNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$ticketNumber);
    }
    if (_$data.containsKey('trade2Key')) {
      final l$trade2Key = trade2Key;
      result$data['trade2Key'] =
          l$trade2Key == null ? null : toJson$Enum$SortEnumType(l$trade2Key);
    }
    if (_$data.containsKey('trade2TicketStatus')) {
      final l$trade2TicketStatus = trade2TicketStatus;
      result$data['trade2TicketStatus'] = l$trade2TicketStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$trade2TicketStatus);
    }
    if (_$data.containsKey('yardId')) {
      final l$yardId = yardId;
      result$data['yardId'] =
          l$yardId == null ? null : toJson$Enum$SortEnumType(l$yardId);
    }
    if (_$data.containsKey('ticketStatus')) {
      final l$ticketStatus = ticketStatus;
      result$data['ticketStatus'] = l$ticketStatus == null
          ? null
          : toJson$Enum$SortEnumType(l$ticketStatus);
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] =
          l$currency == null ? null : toJson$Enum$SortEnumType(l$currency);
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] =
          l$searchText == null ? null : toJson$Enum$SortEnumType(l$searchText);
    }
    if (_$data.containsKey('yardName')) {
      final l$yardName = yardName;
      result$data['yardName'] =
          l$yardName == null ? null : toJson$Enum$SortEnumType(l$yardName);
    }
    if (_$data.containsKey('yardCode')) {
      final l$yardCode = yardCode;
      result$data['yardCode'] =
          l$yardCode == null ? null : toJson$Enum$SortEnumType(l$yardCode);
    }
    if (_$data.containsKey('amount')) {
      final l$amount = amount;
      result$data['amount'] =
          l$amount == null ? null : toJson$Enum$SortEnumType(l$amount);
    }
    if (_$data.containsKey('remittaceFileName')) {
      final l$remittaceFileName = remittaceFileName;
      result$data['remittaceFileName'] = l$remittaceFileName == null
          ? null
          : toJson$Enum$SortEnumType(l$remittaceFileName);
    }
    return result$data;
  }

  CopyWith$Input$PaidTicketSummarySortInput<Input$PaidTicketSummarySortInput>
      get copyWith => CopyWith$Input$PaidTicketSummarySortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaidTicketSummarySortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (_$data.containsKey('ticketDate') !=
        other._$data.containsKey('ticketDate')) {
      return false;
    }
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (_$data.containsKey('ticketNumber') !=
        other._$data.containsKey('ticketNumber')) {
      return false;
    }
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (_$data.containsKey('trade2Key') !=
        other._$data.containsKey('trade2Key')) {
      return false;
    }
    if (l$trade2Key != lOther$trade2Key) {
      return false;
    }
    final l$trade2TicketStatus = trade2TicketStatus;
    final lOther$trade2TicketStatus = other.trade2TicketStatus;
    if (_$data.containsKey('trade2TicketStatus') !=
        other._$data.containsKey('trade2TicketStatus')) {
      return false;
    }
    if (l$trade2TicketStatus != lOther$trade2TicketStatus) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (_$data.containsKey('yardId') != other._$data.containsKey('yardId')) {
      return false;
    }
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (_$data.containsKey('ticketStatus') !=
        other._$data.containsKey('ticketStatus')) {
      return false;
    }
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (_$data.containsKey('yardName') !=
        other._$data.containsKey('yardName')) {
      return false;
    }
    if (l$yardName != lOther$yardName) {
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
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (_$data.containsKey('amount') != other._$data.containsKey('amount')) {
      return false;
    }
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$remittaceFileName = remittaceFileName;
    final lOther$remittaceFileName = other.remittaceFileName;
    if (_$data.containsKey('remittaceFileName') !=
        other._$data.containsKey('remittaceFileName')) {
      return false;
    }
    if (l$remittaceFileName != lOther$remittaceFileName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketDate = ticketDate;
    final l$partyAccountNo = partyAccountNo;
    final l$ticketNumber = ticketNumber;
    final l$trade2Key = trade2Key;
    final l$trade2TicketStatus = trade2TicketStatus;
    final l$yardId = yardId;
    final l$ticketStatus = ticketStatus;
    final l$currency = currency;
    final l$searchText = searchText;
    final l$yardName = yardName;
    final l$yardCode = yardCode;
    final l$amount = amount;
    final l$remittaceFileName = remittaceFileName;
    return Object.hashAll([
      _$data.containsKey('ticketDate') ? l$ticketDate : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('ticketNumber') ? l$ticketNumber : const {},
      _$data.containsKey('trade2Key') ? l$trade2Key : const {},
      _$data.containsKey('trade2TicketStatus')
          ? l$trade2TicketStatus
          : const {},
      _$data.containsKey('yardId') ? l$yardId : const {},
      _$data.containsKey('ticketStatus') ? l$ticketStatus : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('yardName') ? l$yardName : const {},
      _$data.containsKey('yardCode') ? l$yardCode : const {},
      _$data.containsKey('amount') ? l$amount : const {},
      _$data.containsKey('remittaceFileName') ? l$remittaceFileName : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaidTicketSummarySortInput<TRes> {
  factory CopyWith$Input$PaidTicketSummarySortInput(
    Input$PaidTicketSummarySortInput instance,
    TRes Function(Input$PaidTicketSummarySortInput) then,
  ) = _CopyWithImpl$Input$PaidTicketSummarySortInput;

  factory CopyWith$Input$PaidTicketSummarySortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaidTicketSummarySortInput;

  TRes call({
    Enum$SortEnumType? ticketDate,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? trade2Key,
    Enum$SortEnumType? trade2TicketStatus,
    Enum$SortEnumType? yardId,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? yardName,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? amount,
    Enum$SortEnumType? remittaceFileName,
  });
}

class _CopyWithImpl$Input$PaidTicketSummarySortInput<TRes>
    implements CopyWith$Input$PaidTicketSummarySortInput<TRes> {
  _CopyWithImpl$Input$PaidTicketSummarySortInput(
    this._instance,
    this._then,
  );

  final Input$PaidTicketSummarySortInput _instance;

  final TRes Function(Input$PaidTicketSummarySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ticketDate = _undefined,
    Object? partyAccountNo = _undefined,
    Object? ticketNumber = _undefined,
    Object? trade2Key = _undefined,
    Object? trade2TicketStatus = _undefined,
    Object? yardId = _undefined,
    Object? ticketStatus = _undefined,
    Object? currency = _undefined,
    Object? searchText = _undefined,
    Object? yardName = _undefined,
    Object? yardCode = _undefined,
    Object? amount = _undefined,
    Object? remittaceFileName = _undefined,
  }) =>
      _then(Input$PaidTicketSummarySortInput._({
        ..._instance._$data,
        if (ticketDate != _undefined)
          'ticketDate': (ticketDate as Enum$SortEnumType?),
        if (partyAccountNo != _undefined)
          'partyAccountNo': (partyAccountNo as Enum$SortEnumType?),
        if (ticketNumber != _undefined)
          'ticketNumber': (ticketNumber as Enum$SortEnumType?),
        if (trade2Key != _undefined)
          'trade2Key': (trade2Key as Enum$SortEnumType?),
        if (trade2TicketStatus != _undefined)
          'trade2TicketStatus': (trade2TicketStatus as Enum$SortEnumType?),
        if (yardId != _undefined) 'yardId': (yardId as Enum$SortEnumType?),
        if (ticketStatus != _undefined)
          'ticketStatus': (ticketStatus as Enum$SortEnumType?),
        if (currency != _undefined)
          'currency': (currency as Enum$SortEnumType?),
        if (searchText != _undefined)
          'searchText': (searchText as Enum$SortEnumType?),
        if (yardName != _undefined)
          'yardName': (yardName as Enum$SortEnumType?),
        if (yardCode != _undefined)
          'yardCode': (yardCode as Enum$SortEnumType?),
        if (amount != _undefined) 'amount': (amount as Enum$SortEnumType?),
        if (remittaceFileName != _undefined)
          'remittaceFileName': (remittaceFileName as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$PaidTicketSummarySortInput<TRes>
    implements CopyWith$Input$PaidTicketSummarySortInput<TRes> {
  _CopyWithStubImpl$Input$PaidTicketSummarySortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? ticketDate,
    Enum$SortEnumType? partyAccountNo,
    Enum$SortEnumType? ticketNumber,
    Enum$SortEnumType? trade2Key,
    Enum$SortEnumType? trade2TicketStatus,
    Enum$SortEnumType? yardId,
    Enum$SortEnumType? ticketStatus,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? yardName,
    Enum$SortEnumType? yardCode,
    Enum$SortEnumType? amount,
    Enum$SortEnumType? remittaceFileName,
  }) =>
      _res;
}

class Input$InvoiceFilterInput {
  factory Input$InvoiceFilterInput({
    List<Input$InvoiceFilterInput>? and,
    List<Input$InvoiceFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$DateTimeOperationFilterInput? updatedDateTime,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$ListFilterInputTypeOfInvoiceLinesFilterInput? invoiceLines,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? companyCode,
    Input$StringOperationFilterInput? companyId,
  }) =>
      Input$InvoiceFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (invoiceNo != null) r'invoiceNo': invoiceNo,
        if (supplierInvoiceDate != null)
          r'supplierInvoiceDate': supplierInvoiceDate,
        if (supplierInvoiceDueDate != null)
          r'supplierInvoiceDueDate': supplierInvoiceDueDate,
        if (updatedDateTime != null) r'updatedDateTime': updatedDateTime,
        if (supplierAccountNo != null) r'supplierAccountNo': supplierAccountNo,
        if (status != null) r'status': status,
        if (invoiceLines != null) r'invoiceLines': invoiceLines,
        if (paidDate != null) r'paidDate': paidDate,
        if (approved != null) r'approved': approved,
        if (companyCode != null) r'companyCode': companyCode,
        if (companyId != null) r'companyId': companyId,
      });

  Input$InvoiceFilterInput._(this._$data);

  factory Input$InvoiceFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$InvoiceFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$InvoiceFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('invoiceNo')) {
      final l$invoiceNo = data['invoiceNo'];
      result$data['invoiceNo'] = l$invoiceNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$invoiceNo as Map<String, dynamic>));
    }
    if (data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = data['supplierInvoiceDate'];
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$supplierInvoiceDate as Map<String, dynamic>));
    }
    if (data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = data['supplierInvoiceDueDate'];
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$supplierInvoiceDueDate as Map<String, dynamic>));
    }
    if (data.containsKey('updatedDateTime')) {
      final l$updatedDateTime = data['updatedDateTime'];
      result$data['updatedDateTime'] = l$updatedDateTime == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$updatedDateTime as Map<String, dynamic>));
    }
    if (data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = data['supplierAccountNo'];
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$supplierAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('invoiceLines')) {
      final l$invoiceLines = data['invoiceLines'];
      result$data['invoiceLines'] = l$invoiceLines == null
          ? null
          : Input$ListFilterInputTypeOfInvoiceLinesFilterInput.fromJson(
              (l$invoiceLines as Map<String, dynamic>));
    }
    if (data.containsKey('paidDate')) {
      final l$paidDate = data['paidDate'];
      result$data['paidDate'] = l$paidDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$paidDate as Map<String, dynamic>));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$approved as Map<String, dynamic>));
    }
    if (data.containsKey('companyCode')) {
      final l$companyCode = data['companyCode'];
      result$data['companyCode'] = l$companyCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$companyCode as Map<String, dynamic>));
    }
    if (data.containsKey('companyId')) {
      final l$companyId = data['companyId'];
      result$data['companyId'] = l$companyId == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$companyId as Map<String, dynamic>));
    }
    return Input$InvoiceFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$InvoiceFilterInput>? get and =>
      (_$data['and'] as List<Input$InvoiceFilterInput>?);

  List<Input$InvoiceFilterInput>? get or =>
      (_$data['or'] as List<Input$InvoiceFilterInput>?);

  Input$StringOperationFilterInput? get invoiceNo =>
      (_$data['invoiceNo'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get supplierInvoiceDate =>
      (_$data['supplierInvoiceDate'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get supplierInvoiceDueDate =>
      (_$data['supplierInvoiceDueDate'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get updatedDateTime =>
      (_$data['updatedDateTime'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get supplierAccountNo =>
      (_$data['supplierAccountNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get status =>
      (_$data['status'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfInvoiceLinesFilterInput? get invoiceLines =>
      (_$data['invoiceLines']
          as Input$ListFilterInputTypeOfInvoiceLinesFilterInput?);

  Input$DateTimeOperationFilterInput? get paidDate =>
      (_$data['paidDate'] as Input$DateTimeOperationFilterInput?);

  Input$BooleanOperationFilterInput? get approved =>
      (_$data['approved'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get companyCode =>
      (_$data['companyCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get companyId =>
      (_$data['companyId'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('invoiceNo')) {
      final l$invoiceNo = invoiceNo;
      result$data['invoiceNo'] = l$invoiceNo?.toJson();
    }
    if (_$data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = supplierInvoiceDate;
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate?.toJson();
    }
    if (_$data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
      result$data['supplierInvoiceDueDate'] =
          l$supplierInvoiceDueDate?.toJson();
    }
    if (_$data.containsKey('updatedDateTime')) {
      final l$updatedDateTime = updatedDateTime;
      result$data['updatedDateTime'] = l$updatedDateTime?.toJson();
    }
    if (_$data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = supplierAccountNo;
      result$data['supplierAccountNo'] = l$supplierAccountNo?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('invoiceLines')) {
      final l$invoiceLines = invoiceLines;
      result$data['invoiceLines'] = l$invoiceLines?.toJson();
    }
    if (_$data.containsKey('paidDate')) {
      final l$paidDate = paidDate;
      result$data['paidDate'] = l$paidDate?.toJson();
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] = l$approved?.toJson();
    }
    if (_$data.containsKey('companyCode')) {
      final l$companyCode = companyCode;
      result$data['companyCode'] = l$companyCode?.toJson();
    }
    if (_$data.containsKey('companyId')) {
      final l$companyId = companyId;
      result$data['companyId'] = l$companyId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$InvoiceFilterInput<Input$InvoiceFilterInput> get copyWith =>
      CopyWith$Input$InvoiceFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InvoiceFilterInput ||
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
    final l$invoiceNo = invoiceNo;
    final lOther$invoiceNo = other.invoiceNo;
    if (_$data.containsKey('invoiceNo') !=
        other._$data.containsKey('invoiceNo')) {
      return false;
    }
    if (l$invoiceNo != lOther$invoiceNo) {
      return false;
    }
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final lOther$supplierInvoiceDate = other.supplierInvoiceDate;
    if (_$data.containsKey('supplierInvoiceDate') !=
        other._$data.containsKey('supplierInvoiceDate')) {
      return false;
    }
    if (l$supplierInvoiceDate != lOther$supplierInvoiceDate) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (_$data.containsKey('supplierInvoiceDueDate') !=
        other._$data.containsKey('supplierInvoiceDueDate')) {
      return false;
    }
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
      return false;
    }
    final l$updatedDateTime = updatedDateTime;
    final lOther$updatedDateTime = other.updatedDateTime;
    if (_$data.containsKey('updatedDateTime') !=
        other._$data.containsKey('updatedDateTime')) {
      return false;
    }
    if (l$updatedDateTime != lOther$updatedDateTime) {
      return false;
    }
    final l$supplierAccountNo = supplierAccountNo;
    final lOther$supplierAccountNo = other.supplierAccountNo;
    if (_$data.containsKey('supplierAccountNo') !=
        other._$data.containsKey('supplierAccountNo')) {
      return false;
    }
    if (l$supplierAccountNo != lOther$supplierAccountNo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$invoiceLines = invoiceLines;
    final lOther$invoiceLines = other.invoiceLines;
    if (_$data.containsKey('invoiceLines') !=
        other._$data.containsKey('invoiceLines')) {
      return false;
    }
    if (l$invoiceLines != lOther$invoiceLines) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (_$data.containsKey('paidDate') !=
        other._$data.containsKey('paidDate')) {
      return false;
    }
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (_$data.containsKey('companyCode') !=
        other._$data.containsKey('companyCode')) {
      return false;
    }
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (_$data.containsKey('companyId') !=
        other._$data.containsKey('companyId')) {
      return false;
    }
    if (l$companyId != lOther$companyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$invoiceNo = invoiceNo;
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$updatedDateTime = updatedDateTime;
    final l$supplierAccountNo = supplierAccountNo;
    final l$status = status;
    final l$invoiceLines = invoiceLines;
    final l$paidDate = paidDate;
    final l$approved = approved;
    final l$companyCode = companyCode;
    final l$companyId = companyId;
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
      _$data.containsKey('invoiceNo') ? l$invoiceNo : const {},
      _$data.containsKey('supplierInvoiceDate')
          ? l$supplierInvoiceDate
          : const {},
      _$data.containsKey('supplierInvoiceDueDate')
          ? l$supplierInvoiceDueDate
          : const {},
      _$data.containsKey('updatedDateTime') ? l$updatedDateTime : const {},
      _$data.containsKey('supplierAccountNo') ? l$supplierAccountNo : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('invoiceLines') ? l$invoiceLines : const {},
      _$data.containsKey('paidDate') ? l$paidDate : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('companyCode') ? l$companyCode : const {},
      _$data.containsKey('companyId') ? l$companyId : const {},
    ]);
  }
}

abstract class CopyWith$Input$InvoiceFilterInput<TRes> {
  factory CopyWith$Input$InvoiceFilterInput(
    Input$InvoiceFilterInput instance,
    TRes Function(Input$InvoiceFilterInput) then,
  ) = _CopyWithImpl$Input$InvoiceFilterInput;

  factory CopyWith$Input$InvoiceFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InvoiceFilterInput;

  TRes call({
    List<Input$InvoiceFilterInput>? and,
    List<Input$InvoiceFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$DateTimeOperationFilterInput? updatedDateTime,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$ListFilterInputTypeOfInvoiceLinesFilterInput? invoiceLines,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? companyCode,
    Input$StringOperationFilterInput? companyId,
  });
  TRes and(
      Iterable<Input$InvoiceFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InvoiceFilterInput<Input$InvoiceFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$InvoiceFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InvoiceFilterInput<Input$InvoiceFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDueDate;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDateTime;
  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get status;
  CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes>
      get invoiceLines;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved;
  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get companyId;
}

class _CopyWithImpl$Input$InvoiceFilterInput<TRes>
    implements CopyWith$Input$InvoiceFilterInput<TRes> {
  _CopyWithImpl$Input$InvoiceFilterInput(
    this._instance,
    this._then,
  );

  final Input$InvoiceFilterInput _instance;

  final TRes Function(Input$InvoiceFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? invoiceNo = _undefined,
    Object? supplierInvoiceDate = _undefined,
    Object? supplierInvoiceDueDate = _undefined,
    Object? updatedDateTime = _undefined,
    Object? supplierAccountNo = _undefined,
    Object? status = _undefined,
    Object? invoiceLines = _undefined,
    Object? paidDate = _undefined,
    Object? approved = _undefined,
    Object? companyCode = _undefined,
    Object? companyId = _undefined,
  }) =>
      _then(Input$InvoiceFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$InvoiceFilterInput>?),
        if (or != _undefined) 'or': (or as List<Input$InvoiceFilterInput>?),
        if (invoiceNo != _undefined)
          'invoiceNo': (invoiceNo as Input$StringOperationFilterInput?),
        if (supplierInvoiceDate != _undefined)
          'supplierInvoiceDate':
              (supplierInvoiceDate as Input$DateTimeOperationFilterInput?),
        if (supplierInvoiceDueDate != _undefined)
          'supplierInvoiceDueDate':
              (supplierInvoiceDueDate as Input$DateTimeOperationFilterInput?),
        if (updatedDateTime != _undefined)
          'updatedDateTime':
              (updatedDateTime as Input$DateTimeOperationFilterInput?),
        if (supplierAccountNo != _undefined)
          'supplierAccountNo':
              (supplierAccountNo as Input$StringOperationFilterInput?),
        if (status != _undefined)
          'status': (status as Input$StringOperationFilterInput?),
        if (invoiceLines != _undefined)
          'invoiceLines': (invoiceLines
              as Input$ListFilterInputTypeOfInvoiceLinesFilterInput?),
        if (paidDate != _undefined)
          'paidDate': (paidDate as Input$DateTimeOperationFilterInput?),
        if (approved != _undefined)
          'approved': (approved as Input$BooleanOperationFilterInput?),
        if (companyCode != _undefined)
          'companyCode': (companyCode as Input$StringOperationFilterInput?),
        if (companyId != _undefined)
          'companyId': (companyId as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$InvoiceFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InvoiceFilterInput<
                          Input$InvoiceFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$InvoiceFilterInput(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$InvoiceFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InvoiceFilterInput<
                          Input$InvoiceFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$InvoiceFilterInput(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo {
    final local$invoiceNo = _instance.invoiceNo;
    return local$invoiceNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$invoiceNo, (e) => call(invoiceNo: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate {
    final local$supplierInvoiceDate = _instance.supplierInvoiceDate;
    return local$supplierInvoiceDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$supplierInvoiceDate, (e) => call(supplierInvoiceDate: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDueDate {
    final local$supplierInvoiceDueDate = _instance.supplierInvoiceDueDate;
    return local$supplierInvoiceDueDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$supplierInvoiceDueDate,
            (e) => call(supplierInvoiceDueDate: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDateTime {
    final local$updatedDateTime = _instance.updatedDateTime;
    return local$updatedDateTime == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$updatedDateTime, (e) => call(updatedDateTime: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo {
    final local$supplierAccountNo = _instance.supplierAccountNo;
    return local$supplierAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$supplierAccountNo, (e) => call(supplierAccountNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes>
      get invoiceLines {
    final local$invoiceLines = _instance.invoiceLines;
    return local$invoiceLines == null
        ? CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput(
            local$invoiceLines, (e) => call(invoiceLines: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate {
    final local$paidDate = _instance.paidDate;
    return local$paidDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$paidDate, (e) => call(paidDate: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved {
    final local$approved = _instance.approved;
    return local$approved == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$approved, (e) => call(approved: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode {
    final local$companyCode = _instance.companyCode;
    return local$companyCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$companyCode, (e) => call(companyCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get companyId {
    final local$companyId = _instance.companyId;
    return local$companyId == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$companyId, (e) => call(companyId: e));
  }
}

class _CopyWithStubImpl$Input$InvoiceFilterInput<TRes>
    implements CopyWith$Input$InvoiceFilterInput<TRes> {
  _CopyWithStubImpl$Input$InvoiceFilterInput(this._res);

  TRes _res;

  call({
    List<Input$InvoiceFilterInput>? and,
    List<Input$InvoiceFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$DateTimeOperationFilterInput? updatedDateTime,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$ListFilterInputTypeOfInvoiceLinesFilterInput? invoiceLines,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? companyCode,
    Input$StringOperationFilterInput? companyId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
      get supplierInvoiceDueDate =>
          CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDateTime =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get status =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes>
      get invoiceLines =>
          CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput.stub(
              _res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get companyId =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$InvoiceSortInput {
  factory Input$InvoiceSortInput({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? updatedDateTime,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? companyCode,
    Enum$SortEnumType? companyId,
  }) =>
      Input$InvoiceSortInput._({
        if (invoiceNo != null) r'invoiceNo': invoiceNo,
        if (supplierInvoiceDate != null)
          r'supplierInvoiceDate': supplierInvoiceDate,
        if (supplierInvoiceDueDate != null)
          r'supplierInvoiceDueDate': supplierInvoiceDueDate,
        if (updatedDateTime != null) r'updatedDateTime': updatedDateTime,
        if (supplierAccountNo != null) r'supplierAccountNo': supplierAccountNo,
        if (status != null) r'status': status,
        if (paidDate != null) r'paidDate': paidDate,
        if (approved != null) r'approved': approved,
        if (companyCode != null) r'companyCode': companyCode,
        if (companyId != null) r'companyId': companyId,
      });

  Input$InvoiceSortInput._(this._$data);

  factory Input$InvoiceSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('invoiceNo')) {
      final l$invoiceNo = data['invoiceNo'];
      result$data['invoiceNo'] = l$invoiceNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$invoiceNo as String));
    }
    if (data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = data['supplierInvoiceDate'];
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierInvoiceDate as String));
    }
    if (data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = data['supplierInvoiceDueDate'];
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierInvoiceDueDate as String));
    }
    if (data.containsKey('updatedDateTime')) {
      final l$updatedDateTime = data['updatedDateTime'];
      result$data['updatedDateTime'] = l$updatedDateTime == null
          ? null
          : fromJson$Enum$SortEnumType((l$updatedDateTime as String));
    }
    if (data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = data['supplierAccountNo'];
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierAccountNo as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$SortEnumType((l$status as String));
    }
    if (data.containsKey('paidDate')) {
      final l$paidDate = data['paidDate'];
      result$data['paidDate'] = l$paidDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$paidDate as String));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : fromJson$Enum$SortEnumType((l$approved as String));
    }
    if (data.containsKey('companyCode')) {
      final l$companyCode = data['companyCode'];
      result$data['companyCode'] = l$companyCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$companyCode as String));
    }
    if (data.containsKey('companyId')) {
      final l$companyId = data['companyId'];
      result$data['companyId'] = l$companyId == null
          ? null
          : fromJson$Enum$SortEnumType((l$companyId as String));
    }
    return Input$InvoiceSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get invoiceNo =>
      (_$data['invoiceNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierInvoiceDate =>
      (_$data['supplierInvoiceDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierInvoiceDueDate =>
      (_$data['supplierInvoiceDueDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get updatedDateTime =>
      (_$data['updatedDateTime'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierAccountNo =>
      (_$data['supplierAccountNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get status => (_$data['status'] as Enum$SortEnumType?);

  Enum$SortEnumType? get paidDate => (_$data['paidDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get approved => (_$data['approved'] as Enum$SortEnumType?);

  Enum$SortEnumType? get companyCode =>
      (_$data['companyCode'] as Enum$SortEnumType?);

  Enum$SortEnumType? get companyId =>
      (_$data['companyId'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('invoiceNo')) {
      final l$invoiceNo = invoiceNo;
      result$data['invoiceNo'] =
          l$invoiceNo == null ? null : toJson$Enum$SortEnumType(l$invoiceNo);
    }
    if (_$data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = supplierInvoiceDate;
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierInvoiceDate);
    }
    if (_$data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierInvoiceDueDate);
    }
    if (_$data.containsKey('updatedDateTime')) {
      final l$updatedDateTime = updatedDateTime;
      result$data['updatedDateTime'] = l$updatedDateTime == null
          ? null
          : toJson$Enum$SortEnumType(l$updatedDateTime);
    }
    if (_$data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = supplierAccountNo;
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierAccountNo);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$SortEnumType(l$status);
    }
    if (_$data.containsKey('paidDate')) {
      final l$paidDate = paidDate;
      result$data['paidDate'] =
          l$paidDate == null ? null : toJson$Enum$SortEnumType(l$paidDate);
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] =
          l$approved == null ? null : toJson$Enum$SortEnumType(l$approved);
    }
    if (_$data.containsKey('companyCode')) {
      final l$companyCode = companyCode;
      result$data['companyCode'] = l$companyCode == null
          ? null
          : toJson$Enum$SortEnumType(l$companyCode);
    }
    if (_$data.containsKey('companyId')) {
      final l$companyId = companyId;
      result$data['companyId'] =
          l$companyId == null ? null : toJson$Enum$SortEnumType(l$companyId);
    }
    return result$data;
  }

  CopyWith$Input$InvoiceSortInput<Input$InvoiceSortInput> get copyWith =>
      CopyWith$Input$InvoiceSortInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InvoiceSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$invoiceNo = invoiceNo;
    final lOther$invoiceNo = other.invoiceNo;
    if (_$data.containsKey('invoiceNo') !=
        other._$data.containsKey('invoiceNo')) {
      return false;
    }
    if (l$invoiceNo != lOther$invoiceNo) {
      return false;
    }
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final lOther$supplierInvoiceDate = other.supplierInvoiceDate;
    if (_$data.containsKey('supplierInvoiceDate') !=
        other._$data.containsKey('supplierInvoiceDate')) {
      return false;
    }
    if (l$supplierInvoiceDate != lOther$supplierInvoiceDate) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (_$data.containsKey('supplierInvoiceDueDate') !=
        other._$data.containsKey('supplierInvoiceDueDate')) {
      return false;
    }
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
      return false;
    }
    final l$updatedDateTime = updatedDateTime;
    final lOther$updatedDateTime = other.updatedDateTime;
    if (_$data.containsKey('updatedDateTime') !=
        other._$data.containsKey('updatedDateTime')) {
      return false;
    }
    if (l$updatedDateTime != lOther$updatedDateTime) {
      return false;
    }
    final l$supplierAccountNo = supplierAccountNo;
    final lOther$supplierAccountNo = other.supplierAccountNo;
    if (_$data.containsKey('supplierAccountNo') !=
        other._$data.containsKey('supplierAccountNo')) {
      return false;
    }
    if (l$supplierAccountNo != lOther$supplierAccountNo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (_$data.containsKey('paidDate') !=
        other._$data.containsKey('paidDate')) {
      return false;
    }
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (_$data.containsKey('companyCode') !=
        other._$data.containsKey('companyCode')) {
      return false;
    }
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (_$data.containsKey('companyId') !=
        other._$data.containsKey('companyId')) {
      return false;
    }
    if (l$companyId != lOther$companyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$invoiceNo = invoiceNo;
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$updatedDateTime = updatedDateTime;
    final l$supplierAccountNo = supplierAccountNo;
    final l$status = status;
    final l$paidDate = paidDate;
    final l$approved = approved;
    final l$companyCode = companyCode;
    final l$companyId = companyId;
    return Object.hashAll([
      _$data.containsKey('invoiceNo') ? l$invoiceNo : const {},
      _$data.containsKey('supplierInvoiceDate')
          ? l$supplierInvoiceDate
          : const {},
      _$data.containsKey('supplierInvoiceDueDate')
          ? l$supplierInvoiceDueDate
          : const {},
      _$data.containsKey('updatedDateTime') ? l$updatedDateTime : const {},
      _$data.containsKey('supplierAccountNo') ? l$supplierAccountNo : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('paidDate') ? l$paidDate : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('companyCode') ? l$companyCode : const {},
      _$data.containsKey('companyId') ? l$companyId : const {},
    ]);
  }
}

abstract class CopyWith$Input$InvoiceSortInput<TRes> {
  factory CopyWith$Input$InvoiceSortInput(
    Input$InvoiceSortInput instance,
    TRes Function(Input$InvoiceSortInput) then,
  ) = _CopyWithImpl$Input$InvoiceSortInput;

  factory CopyWith$Input$InvoiceSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InvoiceSortInput;

  TRes call({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? updatedDateTime,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? companyCode,
    Enum$SortEnumType? companyId,
  });
}

class _CopyWithImpl$Input$InvoiceSortInput<TRes>
    implements CopyWith$Input$InvoiceSortInput<TRes> {
  _CopyWithImpl$Input$InvoiceSortInput(
    this._instance,
    this._then,
  );

  final Input$InvoiceSortInput _instance;

  final TRes Function(Input$InvoiceSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invoiceNo = _undefined,
    Object? supplierInvoiceDate = _undefined,
    Object? supplierInvoiceDueDate = _undefined,
    Object? updatedDateTime = _undefined,
    Object? supplierAccountNo = _undefined,
    Object? status = _undefined,
    Object? paidDate = _undefined,
    Object? approved = _undefined,
    Object? companyCode = _undefined,
    Object? companyId = _undefined,
  }) =>
      _then(Input$InvoiceSortInput._({
        ..._instance._$data,
        if (invoiceNo != _undefined)
          'invoiceNo': (invoiceNo as Enum$SortEnumType?),
        if (supplierInvoiceDate != _undefined)
          'supplierInvoiceDate': (supplierInvoiceDate as Enum$SortEnumType?),
        if (supplierInvoiceDueDate != _undefined)
          'supplierInvoiceDueDate':
              (supplierInvoiceDueDate as Enum$SortEnumType?),
        if (updatedDateTime != _undefined)
          'updatedDateTime': (updatedDateTime as Enum$SortEnumType?),
        if (supplierAccountNo != _undefined)
          'supplierAccountNo': (supplierAccountNo as Enum$SortEnumType?),
        if (status != _undefined) 'status': (status as Enum$SortEnumType?),
        if (paidDate != _undefined)
          'paidDate': (paidDate as Enum$SortEnumType?),
        if (approved != _undefined)
          'approved': (approved as Enum$SortEnumType?),
        if (companyCode != _undefined)
          'companyCode': (companyCode as Enum$SortEnumType?),
        if (companyId != _undefined)
          'companyId': (companyId as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$InvoiceSortInput<TRes>
    implements CopyWith$Input$InvoiceSortInput<TRes> {
  _CopyWithStubImpl$Input$InvoiceSortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? updatedDateTime,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? companyCode,
    Enum$SortEnumType? companyId,
  }) =>
      _res;
}

class Input$SupplierStatementSummaryFilterInput {
  factory Input$SupplierStatementSummaryFilterInput({
    List<Input$SupplierStatementSummaryFilterInput>? and,
    List<Input$SupplierStatementSummaryFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? invoiceTotal,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$StringOperationFilterInput? invoiceFile,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? companyName,
    Input$StringOperationFilterInput? companyCode,
  }) =>
      Input$SupplierStatementSummaryFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (invoiceNo != null) r'invoiceNo': invoiceNo,
        if (supplierInvoiceDate != null)
          r'supplierInvoiceDate': supplierInvoiceDate,
        if (supplierAccountNo != null) r'supplierAccountNo': supplierAccountNo,
        if (status != null) r'status': status,
        if (currency != null) r'currency': currency,
        if (purchaseOrderNumber != null)
          r'purchaseOrderNumber': purchaseOrderNumber,
        if (invoiceTotal != null) r'invoiceTotal': invoiceTotal,
        if (paidDate != null) r'paidDate': paidDate,
        if (invoiceFile != null) r'invoiceFile': invoiceFile,
        if (supplierInvoiceDueDate != null)
          r'supplierInvoiceDueDate': supplierInvoiceDueDate,
        if (approved != null) r'approved': approved,
        if (searchText != null) r'searchText': searchText,
        if (companyName != null) r'companyName': companyName,
        if (companyCode != null) r'companyCode': companyCode,
      });

  Input$SupplierStatementSummaryFilterInput._(this._$data);

  factory Input$SupplierStatementSummaryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$SupplierStatementSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$SupplierStatementSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('invoiceNo')) {
      final l$invoiceNo = data['invoiceNo'];
      result$data['invoiceNo'] = l$invoiceNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$invoiceNo as Map<String, dynamic>));
    }
    if (data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = data['supplierInvoiceDate'];
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$supplierInvoiceDate as Map<String, dynamic>));
    }
    if (data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = data['supplierAccountNo'];
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$supplierAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$currency as Map<String, dynamic>));
    }
    if (data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = data['purchaseOrderNumber'];
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$purchaseOrderNumber as Map<String, dynamic>));
    }
    if (data.containsKey('invoiceTotal')) {
      final l$invoiceTotal = data['invoiceTotal'];
      result$data['invoiceTotal'] = l$invoiceTotal == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$invoiceTotal as Map<String, dynamic>));
    }
    if (data.containsKey('paidDate')) {
      final l$paidDate = data['paidDate'];
      result$data['paidDate'] = l$paidDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$paidDate as Map<String, dynamic>));
    }
    if (data.containsKey('invoiceFile')) {
      final l$invoiceFile = data['invoiceFile'];
      result$data['invoiceFile'] = l$invoiceFile == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$invoiceFile as Map<String, dynamic>));
    }
    if (data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = data['supplierInvoiceDueDate'];
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$supplierInvoiceDueDate as Map<String, dynamic>));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : Input$BooleanOperationFilterInput.fromJson(
              (l$approved as Map<String, dynamic>));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$searchText as Map<String, dynamic>));
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = l$companyName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$companyName as Map<String, dynamic>));
    }
    if (data.containsKey('companyCode')) {
      final l$companyCode = data['companyCode'];
      result$data['companyCode'] = l$companyCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$companyCode as Map<String, dynamic>));
    }
    return Input$SupplierStatementSummaryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SupplierStatementSummaryFilterInput>? get and =>
      (_$data['and'] as List<Input$SupplierStatementSummaryFilterInput>?);

  List<Input$SupplierStatementSummaryFilterInput>? get or =>
      (_$data['or'] as List<Input$SupplierStatementSummaryFilterInput>?);

  Input$StringOperationFilterInput? get invoiceNo =>
      (_$data['invoiceNo'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get supplierInvoiceDate =>
      (_$data['supplierInvoiceDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get supplierAccountNo =>
      (_$data['supplierAccountNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get status =>
      (_$data['status'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get currency =>
      (_$data['currency'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get purchaseOrderNumber =>
      (_$data['purchaseOrderNumber'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get invoiceTotal =>
      (_$data['invoiceTotal'] as Input$DecimalOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get paidDate =>
      (_$data['paidDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get invoiceFile =>
      (_$data['invoiceFile'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get supplierInvoiceDueDate =>
      (_$data['supplierInvoiceDueDate'] as Input$DateTimeOperationFilterInput?);

  Input$BooleanOperationFilterInput? get approved =>
      (_$data['approved'] as Input$BooleanOperationFilterInput?);

  Input$StringOperationFilterInput? get searchText =>
      (_$data['searchText'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get companyName =>
      (_$data['companyName'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get companyCode =>
      (_$data['companyCode'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('invoiceNo')) {
      final l$invoiceNo = invoiceNo;
      result$data['invoiceNo'] = l$invoiceNo?.toJson();
    }
    if (_$data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = supplierInvoiceDate;
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate?.toJson();
    }
    if (_$data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = supplierAccountNo;
      result$data['supplierAccountNo'] = l$supplierAccountNo?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] = l$currency?.toJson();
    }
    if (_$data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = purchaseOrderNumber;
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber?.toJson();
    }
    if (_$data.containsKey('invoiceTotal')) {
      final l$invoiceTotal = invoiceTotal;
      result$data['invoiceTotal'] = l$invoiceTotal?.toJson();
    }
    if (_$data.containsKey('paidDate')) {
      final l$paidDate = paidDate;
      result$data['paidDate'] = l$paidDate?.toJson();
    }
    if (_$data.containsKey('invoiceFile')) {
      final l$invoiceFile = invoiceFile;
      result$data['invoiceFile'] = l$invoiceFile?.toJson();
    }
    if (_$data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
      result$data['supplierInvoiceDueDate'] =
          l$supplierInvoiceDueDate?.toJson();
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] = l$approved?.toJson();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText?.toJson();
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName?.toJson();
    }
    if (_$data.containsKey('companyCode')) {
      final l$companyCode = companyCode;
      result$data['companyCode'] = l$companyCode?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SupplierStatementSummaryFilterInput<
          Input$SupplierStatementSummaryFilterInput>
      get copyWith => CopyWith$Input$SupplierStatementSummaryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SupplierStatementSummaryFilterInput ||
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
    final l$invoiceNo = invoiceNo;
    final lOther$invoiceNo = other.invoiceNo;
    if (_$data.containsKey('invoiceNo') !=
        other._$data.containsKey('invoiceNo')) {
      return false;
    }
    if (l$invoiceNo != lOther$invoiceNo) {
      return false;
    }
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final lOther$supplierInvoiceDate = other.supplierInvoiceDate;
    if (_$data.containsKey('supplierInvoiceDate') !=
        other._$data.containsKey('supplierInvoiceDate')) {
      return false;
    }
    if (l$supplierInvoiceDate != lOther$supplierInvoiceDate) {
      return false;
    }
    final l$supplierAccountNo = supplierAccountNo;
    final lOther$supplierAccountNo = other.supplierAccountNo;
    if (_$data.containsKey('supplierAccountNo') !=
        other._$data.containsKey('supplierAccountNo')) {
      return false;
    }
    if (l$supplierAccountNo != lOther$supplierAccountNo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final lOther$purchaseOrderNumber = other.purchaseOrderNumber;
    if (_$data.containsKey('purchaseOrderNumber') !=
        other._$data.containsKey('purchaseOrderNumber')) {
      return false;
    }
    if (l$purchaseOrderNumber != lOther$purchaseOrderNumber) {
      return false;
    }
    final l$invoiceTotal = invoiceTotal;
    final lOther$invoiceTotal = other.invoiceTotal;
    if (_$data.containsKey('invoiceTotal') !=
        other._$data.containsKey('invoiceTotal')) {
      return false;
    }
    if (l$invoiceTotal != lOther$invoiceTotal) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (_$data.containsKey('paidDate') !=
        other._$data.containsKey('paidDate')) {
      return false;
    }
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    final l$invoiceFile = invoiceFile;
    final lOther$invoiceFile = other.invoiceFile;
    if (_$data.containsKey('invoiceFile') !=
        other._$data.containsKey('invoiceFile')) {
      return false;
    }
    if (l$invoiceFile != lOther$invoiceFile) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (_$data.containsKey('supplierInvoiceDueDate') !=
        other._$data.containsKey('supplierInvoiceDueDate')) {
      return false;
    }
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (_$data.containsKey('companyCode') !=
        other._$data.containsKey('companyCode')) {
      return false;
    }
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$invoiceNo = invoiceNo;
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final l$supplierAccountNo = supplierAccountNo;
    final l$status = status;
    final l$currency = currency;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final l$invoiceTotal = invoiceTotal;
    final l$paidDate = paidDate;
    final l$invoiceFile = invoiceFile;
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$approved = approved;
    final l$searchText = searchText;
    final l$companyName = companyName;
    final l$companyCode = companyCode;
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
      _$data.containsKey('invoiceNo') ? l$invoiceNo : const {},
      _$data.containsKey('supplierInvoiceDate')
          ? l$supplierInvoiceDate
          : const {},
      _$data.containsKey('supplierAccountNo') ? l$supplierAccountNo : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('purchaseOrderNumber')
          ? l$purchaseOrderNumber
          : const {},
      _$data.containsKey('invoiceTotal') ? l$invoiceTotal : const {},
      _$data.containsKey('paidDate') ? l$paidDate : const {},
      _$data.containsKey('invoiceFile') ? l$invoiceFile : const {},
      _$data.containsKey('supplierInvoiceDueDate')
          ? l$supplierInvoiceDueDate
          : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('companyCode') ? l$companyCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$SupplierStatementSummaryFilterInput<TRes> {
  factory CopyWith$Input$SupplierStatementSummaryFilterInput(
    Input$SupplierStatementSummaryFilterInput instance,
    TRes Function(Input$SupplierStatementSummaryFilterInput) then,
  ) = _CopyWithImpl$Input$SupplierStatementSummaryFilterInput;

  factory CopyWith$Input$SupplierStatementSummaryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SupplierStatementSummaryFilterInput;

  TRes call({
    List<Input$SupplierStatementSummaryFilterInput>? and,
    List<Input$SupplierStatementSummaryFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? invoiceTotal,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$StringOperationFilterInput? invoiceFile,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? companyName,
    Input$StringOperationFilterInput? companyCode,
  });
  TRes and(
      Iterable<Input$SupplierStatementSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$SupplierStatementSummaryFilterInput<
                      Input$SupplierStatementSummaryFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$SupplierStatementSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$SupplierStatementSummaryFilterInput<
                      Input$SupplierStatementSummaryFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get status;
  CopyWith$Input$StringOperationFilterInput<TRes> get currency;
  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get invoiceTotal;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceFile;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDueDate;
  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved;
  CopyWith$Input$StringOperationFilterInput<TRes> get searchText;
  CopyWith$Input$StringOperationFilterInput<TRes> get companyName;
  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode;
}

class _CopyWithImpl$Input$SupplierStatementSummaryFilterInput<TRes>
    implements CopyWith$Input$SupplierStatementSummaryFilterInput<TRes> {
  _CopyWithImpl$Input$SupplierStatementSummaryFilterInput(
    this._instance,
    this._then,
  );

  final Input$SupplierStatementSummaryFilterInput _instance;

  final TRes Function(Input$SupplierStatementSummaryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? invoiceNo = _undefined,
    Object? supplierInvoiceDate = _undefined,
    Object? supplierAccountNo = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? purchaseOrderNumber = _undefined,
    Object? invoiceTotal = _undefined,
    Object? paidDate = _undefined,
    Object? invoiceFile = _undefined,
    Object? supplierInvoiceDueDate = _undefined,
    Object? approved = _undefined,
    Object? searchText = _undefined,
    Object? companyName = _undefined,
    Object? companyCode = _undefined,
  }) =>
      _then(Input$SupplierStatementSummaryFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$SupplierStatementSummaryFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$SupplierStatementSummaryFilterInput>?),
        if (invoiceNo != _undefined)
          'invoiceNo': (invoiceNo as Input$StringOperationFilterInput?),
        if (supplierInvoiceDate != _undefined)
          'supplierInvoiceDate':
              (supplierInvoiceDate as Input$DateTimeOperationFilterInput?),
        if (supplierAccountNo != _undefined)
          'supplierAccountNo':
              (supplierAccountNo as Input$StringOperationFilterInput?),
        if (status != _undefined)
          'status': (status as Input$StringOperationFilterInput?),
        if (currency != _undefined)
          'currency': (currency as Input$StringOperationFilterInput?),
        if (purchaseOrderNumber != _undefined)
          'purchaseOrderNumber':
              (purchaseOrderNumber as Input$StringOperationFilterInput?),
        if (invoiceTotal != _undefined)
          'invoiceTotal': (invoiceTotal as Input$DecimalOperationFilterInput?),
        if (paidDate != _undefined)
          'paidDate': (paidDate as Input$DateTimeOperationFilterInput?),
        if (invoiceFile != _undefined)
          'invoiceFile': (invoiceFile as Input$StringOperationFilterInput?),
        if (supplierInvoiceDueDate != _undefined)
          'supplierInvoiceDueDate':
              (supplierInvoiceDueDate as Input$DateTimeOperationFilterInput?),
        if (approved != _undefined)
          'approved': (approved as Input$BooleanOperationFilterInput?),
        if (searchText != _undefined)
          'searchText': (searchText as Input$StringOperationFilterInput?),
        if (companyName != _undefined)
          'companyName': (companyName as Input$StringOperationFilterInput?),
        if (companyCode != _undefined)
          'companyCode': (companyCode as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$SupplierStatementSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$SupplierStatementSummaryFilterInput<
                          Input$SupplierStatementSummaryFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$SupplierStatementSummaryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$SupplierStatementSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$SupplierStatementSummaryFilterInput<
                          Input$SupplierStatementSummaryFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$SupplierStatementSummaryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo {
    final local$invoiceNo = _instance.invoiceNo;
    return local$invoiceNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$invoiceNo, (e) => call(invoiceNo: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate {
    final local$supplierInvoiceDate = _instance.supplierInvoiceDate;
    return local$supplierInvoiceDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$supplierInvoiceDate, (e) => call(supplierInvoiceDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo {
    final local$supplierAccountNo = _instance.supplierAccountNo;
    return local$supplierAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$supplierAccountNo, (e) => call(supplierAccountNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get currency {
    final local$currency = _instance.currency;
    return local$currency == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$currency, (e) => call(currency: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber {
    final local$purchaseOrderNumber = _instance.purchaseOrderNumber;
    return local$purchaseOrderNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$purchaseOrderNumber, (e) => call(purchaseOrderNumber: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get invoiceTotal {
    final local$invoiceTotal = _instance.invoiceTotal;
    return local$invoiceTotal == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$invoiceTotal, (e) => call(invoiceTotal: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate {
    final local$paidDate = _instance.paidDate;
    return local$paidDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$paidDate, (e) => call(paidDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceFile {
    final local$invoiceFile = _instance.invoiceFile;
    return local$invoiceFile == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$invoiceFile, (e) => call(invoiceFile: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDueDate {
    final local$supplierInvoiceDueDate = _instance.supplierInvoiceDueDate;
    return local$supplierInvoiceDueDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$supplierInvoiceDueDate,
            (e) => call(supplierInvoiceDueDate: e));
  }

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved {
    final local$approved = _instance.approved;
    return local$approved == null
        ? CopyWith$Input$BooleanOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$BooleanOperationFilterInput(
            local$approved, (e) => call(approved: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText {
    final local$searchText = _instance.searchText;
    return local$searchText == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$searchText, (e) => call(searchText: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get companyName {
    final local$companyName = _instance.companyName;
    return local$companyName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$companyName, (e) => call(companyName: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode {
    final local$companyCode = _instance.companyCode;
    return local$companyCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$companyCode, (e) => call(companyCode: e));
  }
}

class _CopyWithStubImpl$Input$SupplierStatementSummaryFilterInput<TRes>
    implements CopyWith$Input$SupplierStatementSummaryFilterInput<TRes> {
  _CopyWithStubImpl$Input$SupplierStatementSummaryFilterInput(this._res);

  TRes _res;

  call({
    List<Input$SupplierStatementSummaryFilterInput>? and,
    List<Input$SupplierStatementSummaryFilterInput>? or,
    Input$StringOperationFilterInput? invoiceNo,
    Input$DateTimeOperationFilterInput? supplierInvoiceDate,
    Input$StringOperationFilterInput? supplierAccountNo,
    Input$StringOperationFilterInput? status,
    Input$StringOperationFilterInput? currency,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? invoiceTotal,
    Input$DateTimeOperationFilterInput? paidDate,
    Input$StringOperationFilterInput? invoiceFile,
    Input$DateTimeOperationFilterInput? supplierInvoiceDueDate,
    Input$BooleanOperationFilterInput? approved,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? companyName,
    Input$StringOperationFilterInput? companyCode,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get supplierInvoiceDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get supplierAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get status =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get currency =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get invoiceTotal =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get paidDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get invoiceFile =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes>
      get supplierInvoiceDueDate =>
          CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$BooleanOperationFilterInput<TRes> get approved =>
      CopyWith$Input$BooleanOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get companyName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get companyCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$SupplierStatementSummarySortInput {
  factory Input$SupplierStatementSummarySortInput({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? purchaseOrderNumber,
    Enum$SortEnumType? invoiceTotal,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? invoiceFile,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? companyName,
    Enum$SortEnumType? companyCode,
  }) =>
      Input$SupplierStatementSummarySortInput._({
        if (invoiceNo != null) r'invoiceNo': invoiceNo,
        if (supplierInvoiceDate != null)
          r'supplierInvoiceDate': supplierInvoiceDate,
        if (supplierAccountNo != null) r'supplierAccountNo': supplierAccountNo,
        if (status != null) r'status': status,
        if (currency != null) r'currency': currency,
        if (purchaseOrderNumber != null)
          r'purchaseOrderNumber': purchaseOrderNumber,
        if (invoiceTotal != null) r'invoiceTotal': invoiceTotal,
        if (paidDate != null) r'paidDate': paidDate,
        if (invoiceFile != null) r'invoiceFile': invoiceFile,
        if (supplierInvoiceDueDate != null)
          r'supplierInvoiceDueDate': supplierInvoiceDueDate,
        if (approved != null) r'approved': approved,
        if (searchText != null) r'searchText': searchText,
        if (companyName != null) r'companyName': companyName,
        if (companyCode != null) r'companyCode': companyCode,
      });

  Input$SupplierStatementSummarySortInput._(this._$data);

  factory Input$SupplierStatementSummarySortInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('invoiceNo')) {
      final l$invoiceNo = data['invoiceNo'];
      result$data['invoiceNo'] = l$invoiceNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$invoiceNo as String));
    }
    if (data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = data['supplierInvoiceDate'];
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierInvoiceDate as String));
    }
    if (data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = data['supplierAccountNo'];
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierAccountNo as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$SortEnumType((l$status as String));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : fromJson$Enum$SortEnumType((l$currency as String));
    }
    if (data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = data['purchaseOrderNumber'];
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber == null
          ? null
          : fromJson$Enum$SortEnumType((l$purchaseOrderNumber as String));
    }
    if (data.containsKey('invoiceTotal')) {
      final l$invoiceTotal = data['invoiceTotal'];
      result$data['invoiceTotal'] = l$invoiceTotal == null
          ? null
          : fromJson$Enum$SortEnumType((l$invoiceTotal as String));
    }
    if (data.containsKey('paidDate')) {
      final l$paidDate = data['paidDate'];
      result$data['paidDate'] = l$paidDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$paidDate as String));
    }
    if (data.containsKey('invoiceFile')) {
      final l$invoiceFile = data['invoiceFile'];
      result$data['invoiceFile'] = l$invoiceFile == null
          ? null
          : fromJson$Enum$SortEnumType((l$invoiceFile as String));
    }
    if (data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = data['supplierInvoiceDueDate'];
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$supplierInvoiceDueDate as String));
    }
    if (data.containsKey('approved')) {
      final l$approved = data['approved'];
      result$data['approved'] = l$approved == null
          ? null
          : fromJson$Enum$SortEnumType((l$approved as String));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : fromJson$Enum$SortEnumType((l$searchText as String));
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = l$companyName == null
          ? null
          : fromJson$Enum$SortEnumType((l$companyName as String));
    }
    if (data.containsKey('companyCode')) {
      final l$companyCode = data['companyCode'];
      result$data['companyCode'] = l$companyCode == null
          ? null
          : fromJson$Enum$SortEnumType((l$companyCode as String));
    }
    return Input$SupplierStatementSummarySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get invoiceNo =>
      (_$data['invoiceNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierInvoiceDate =>
      (_$data['supplierInvoiceDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierAccountNo =>
      (_$data['supplierAccountNo'] as Enum$SortEnumType?);

  Enum$SortEnumType? get status => (_$data['status'] as Enum$SortEnumType?);

  Enum$SortEnumType? get currency => (_$data['currency'] as Enum$SortEnumType?);

  Enum$SortEnumType? get purchaseOrderNumber =>
      (_$data['purchaseOrderNumber'] as Enum$SortEnumType?);

  Enum$SortEnumType? get invoiceTotal =>
      (_$data['invoiceTotal'] as Enum$SortEnumType?);

  Enum$SortEnumType? get paidDate => (_$data['paidDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get invoiceFile =>
      (_$data['invoiceFile'] as Enum$SortEnumType?);

  Enum$SortEnumType? get supplierInvoiceDueDate =>
      (_$data['supplierInvoiceDueDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get approved => (_$data['approved'] as Enum$SortEnumType?);

  Enum$SortEnumType? get searchText =>
      (_$data['searchText'] as Enum$SortEnumType?);

  Enum$SortEnumType? get companyName =>
      (_$data['companyName'] as Enum$SortEnumType?);

  Enum$SortEnumType? get companyCode =>
      (_$data['companyCode'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('invoiceNo')) {
      final l$invoiceNo = invoiceNo;
      result$data['invoiceNo'] =
          l$invoiceNo == null ? null : toJson$Enum$SortEnumType(l$invoiceNo);
    }
    if (_$data.containsKey('supplierInvoiceDate')) {
      final l$supplierInvoiceDate = supplierInvoiceDate;
      result$data['supplierInvoiceDate'] = l$supplierInvoiceDate == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierInvoiceDate);
    }
    if (_$data.containsKey('supplierAccountNo')) {
      final l$supplierAccountNo = supplierAccountNo;
      result$data['supplierAccountNo'] = l$supplierAccountNo == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierAccountNo);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$SortEnumType(l$status);
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] =
          l$currency == null ? null : toJson$Enum$SortEnumType(l$currency);
    }
    if (_$data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = purchaseOrderNumber;
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber == null
          ? null
          : toJson$Enum$SortEnumType(l$purchaseOrderNumber);
    }
    if (_$data.containsKey('invoiceTotal')) {
      final l$invoiceTotal = invoiceTotal;
      result$data['invoiceTotal'] = l$invoiceTotal == null
          ? null
          : toJson$Enum$SortEnumType(l$invoiceTotal);
    }
    if (_$data.containsKey('paidDate')) {
      final l$paidDate = paidDate;
      result$data['paidDate'] =
          l$paidDate == null ? null : toJson$Enum$SortEnumType(l$paidDate);
    }
    if (_$data.containsKey('invoiceFile')) {
      final l$invoiceFile = invoiceFile;
      result$data['invoiceFile'] = l$invoiceFile == null
          ? null
          : toJson$Enum$SortEnumType(l$invoiceFile);
    }
    if (_$data.containsKey('supplierInvoiceDueDate')) {
      final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
      result$data['supplierInvoiceDueDate'] = l$supplierInvoiceDueDate == null
          ? null
          : toJson$Enum$SortEnumType(l$supplierInvoiceDueDate);
    }
    if (_$data.containsKey('approved')) {
      final l$approved = approved;
      result$data['approved'] =
          l$approved == null ? null : toJson$Enum$SortEnumType(l$approved);
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] =
          l$searchText == null ? null : toJson$Enum$SortEnumType(l$searchText);
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName == null
          ? null
          : toJson$Enum$SortEnumType(l$companyName);
    }
    if (_$data.containsKey('companyCode')) {
      final l$companyCode = companyCode;
      result$data['companyCode'] = l$companyCode == null
          ? null
          : toJson$Enum$SortEnumType(l$companyCode);
    }
    return result$data;
  }

  CopyWith$Input$SupplierStatementSummarySortInput<
          Input$SupplierStatementSummarySortInput>
      get copyWith => CopyWith$Input$SupplierStatementSummarySortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SupplierStatementSummarySortInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$invoiceNo = invoiceNo;
    final lOther$invoiceNo = other.invoiceNo;
    if (_$data.containsKey('invoiceNo') !=
        other._$data.containsKey('invoiceNo')) {
      return false;
    }
    if (l$invoiceNo != lOther$invoiceNo) {
      return false;
    }
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final lOther$supplierInvoiceDate = other.supplierInvoiceDate;
    if (_$data.containsKey('supplierInvoiceDate') !=
        other._$data.containsKey('supplierInvoiceDate')) {
      return false;
    }
    if (l$supplierInvoiceDate != lOther$supplierInvoiceDate) {
      return false;
    }
    final l$supplierAccountNo = supplierAccountNo;
    final lOther$supplierAccountNo = other.supplierAccountNo;
    if (_$data.containsKey('supplierAccountNo') !=
        other._$data.containsKey('supplierAccountNo')) {
      return false;
    }
    if (l$supplierAccountNo != lOther$supplierAccountNo) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final lOther$purchaseOrderNumber = other.purchaseOrderNumber;
    if (_$data.containsKey('purchaseOrderNumber') !=
        other._$data.containsKey('purchaseOrderNumber')) {
      return false;
    }
    if (l$purchaseOrderNumber != lOther$purchaseOrderNumber) {
      return false;
    }
    final l$invoiceTotal = invoiceTotal;
    final lOther$invoiceTotal = other.invoiceTotal;
    if (_$data.containsKey('invoiceTotal') !=
        other._$data.containsKey('invoiceTotal')) {
      return false;
    }
    if (l$invoiceTotal != lOther$invoiceTotal) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (_$data.containsKey('paidDate') !=
        other._$data.containsKey('paidDate')) {
      return false;
    }
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    final l$invoiceFile = invoiceFile;
    final lOther$invoiceFile = other.invoiceFile;
    if (_$data.containsKey('invoiceFile') !=
        other._$data.containsKey('invoiceFile')) {
      return false;
    }
    if (l$invoiceFile != lOther$invoiceFile) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (_$data.containsKey('supplierInvoiceDueDate') !=
        other._$data.containsKey('supplierInvoiceDueDate')) {
      return false;
    }
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (_$data.containsKey('approved') !=
        other._$data.containsKey('approved')) {
      return false;
    }
    if (l$approved != lOther$approved) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (_$data.containsKey('companyCode') !=
        other._$data.containsKey('companyCode')) {
      return false;
    }
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$invoiceNo = invoiceNo;
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final l$supplierAccountNo = supplierAccountNo;
    final l$status = status;
    final l$currency = currency;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final l$invoiceTotal = invoiceTotal;
    final l$paidDate = paidDate;
    final l$invoiceFile = invoiceFile;
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$approved = approved;
    final l$searchText = searchText;
    final l$companyName = companyName;
    final l$companyCode = companyCode;
    return Object.hashAll([
      _$data.containsKey('invoiceNo') ? l$invoiceNo : const {},
      _$data.containsKey('supplierInvoiceDate')
          ? l$supplierInvoiceDate
          : const {},
      _$data.containsKey('supplierAccountNo') ? l$supplierAccountNo : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('purchaseOrderNumber')
          ? l$purchaseOrderNumber
          : const {},
      _$data.containsKey('invoiceTotal') ? l$invoiceTotal : const {},
      _$data.containsKey('paidDate') ? l$paidDate : const {},
      _$data.containsKey('invoiceFile') ? l$invoiceFile : const {},
      _$data.containsKey('supplierInvoiceDueDate')
          ? l$supplierInvoiceDueDate
          : const {},
      _$data.containsKey('approved') ? l$approved : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
      _$data.containsKey('companyCode') ? l$companyCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$SupplierStatementSummarySortInput<TRes> {
  factory CopyWith$Input$SupplierStatementSummarySortInput(
    Input$SupplierStatementSummarySortInput instance,
    TRes Function(Input$SupplierStatementSummarySortInput) then,
  ) = _CopyWithImpl$Input$SupplierStatementSummarySortInput;

  factory CopyWith$Input$SupplierStatementSummarySortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SupplierStatementSummarySortInput;

  TRes call({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? purchaseOrderNumber,
    Enum$SortEnumType? invoiceTotal,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? invoiceFile,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? companyName,
    Enum$SortEnumType? companyCode,
  });
}

class _CopyWithImpl$Input$SupplierStatementSummarySortInput<TRes>
    implements CopyWith$Input$SupplierStatementSummarySortInput<TRes> {
  _CopyWithImpl$Input$SupplierStatementSummarySortInput(
    this._instance,
    this._then,
  );

  final Input$SupplierStatementSummarySortInput _instance;

  final TRes Function(Input$SupplierStatementSummarySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invoiceNo = _undefined,
    Object? supplierInvoiceDate = _undefined,
    Object? supplierAccountNo = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? purchaseOrderNumber = _undefined,
    Object? invoiceTotal = _undefined,
    Object? paidDate = _undefined,
    Object? invoiceFile = _undefined,
    Object? supplierInvoiceDueDate = _undefined,
    Object? approved = _undefined,
    Object? searchText = _undefined,
    Object? companyName = _undefined,
    Object? companyCode = _undefined,
  }) =>
      _then(Input$SupplierStatementSummarySortInput._({
        ..._instance._$data,
        if (invoiceNo != _undefined)
          'invoiceNo': (invoiceNo as Enum$SortEnumType?),
        if (supplierInvoiceDate != _undefined)
          'supplierInvoiceDate': (supplierInvoiceDate as Enum$SortEnumType?),
        if (supplierAccountNo != _undefined)
          'supplierAccountNo': (supplierAccountNo as Enum$SortEnumType?),
        if (status != _undefined) 'status': (status as Enum$SortEnumType?),
        if (currency != _undefined)
          'currency': (currency as Enum$SortEnumType?),
        if (purchaseOrderNumber != _undefined)
          'purchaseOrderNumber': (purchaseOrderNumber as Enum$SortEnumType?),
        if (invoiceTotal != _undefined)
          'invoiceTotal': (invoiceTotal as Enum$SortEnumType?),
        if (paidDate != _undefined)
          'paidDate': (paidDate as Enum$SortEnumType?),
        if (invoiceFile != _undefined)
          'invoiceFile': (invoiceFile as Enum$SortEnumType?),
        if (supplierInvoiceDueDate != _undefined)
          'supplierInvoiceDueDate':
              (supplierInvoiceDueDate as Enum$SortEnumType?),
        if (approved != _undefined)
          'approved': (approved as Enum$SortEnumType?),
        if (searchText != _undefined)
          'searchText': (searchText as Enum$SortEnumType?),
        if (companyName != _undefined)
          'companyName': (companyName as Enum$SortEnumType?),
        if (companyCode != _undefined)
          'companyCode': (companyCode as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$SupplierStatementSummarySortInput<TRes>
    implements CopyWith$Input$SupplierStatementSummarySortInput<TRes> {
  _CopyWithStubImpl$Input$SupplierStatementSummarySortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? invoiceNo,
    Enum$SortEnumType? supplierInvoiceDate,
    Enum$SortEnumType? supplierAccountNo,
    Enum$SortEnumType? status,
    Enum$SortEnumType? currency,
    Enum$SortEnumType? purchaseOrderNumber,
    Enum$SortEnumType? invoiceTotal,
    Enum$SortEnumType? paidDate,
    Enum$SortEnumType? invoiceFile,
    Enum$SortEnumType? supplierInvoiceDueDate,
    Enum$SortEnumType? approved,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? companyName,
    Enum$SortEnumType? companyCode,
  }) =>
      _res;
}

class Input$PortalAccountChangeRequestFilterInput {
  factory Input$PortalAccountChangeRequestFilterInput({
    List<Input$PortalAccountChangeRequestFilterInput>? and,
    List<Input$PortalAccountChangeRequestFilterInput>? or,
    Input$AccountChangeRequestStatusOperationFilterInput? status,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? requestedBy,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? accountName,
    Input$ListFilterInputTypeOfAccountFieldChangedFilterInput? fields,
  }) =>
      Input$PortalAccountChangeRequestFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (status != null) r'status': status,
        if (createdOn != null) r'createdOn': createdOn,
        if (modifiedOn != null) r'modifiedOn': modifiedOn,
        if (requestedBy != null) r'requestedBy': requestedBy,
        if (partyAccountNo != null) r'partyAccountNo': partyAccountNo,
        if (accountName != null) r'accountName': accountName,
        if (fields != null) r'fields': fields,
      });

  Input$PortalAccountChangeRequestFilterInput._(this._$data);

  factory Input$PortalAccountChangeRequestFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$PortalAccountChangeRequestFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$PortalAccountChangeRequestFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$AccountChangeRequestStatusOperationFilterInput.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$createdOn as Map<String, dynamic>));
    }
    if (data.containsKey('modifiedOn')) {
      final l$modifiedOn = data['modifiedOn'];
      result$data['modifiedOn'] = l$modifiedOn == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$modifiedOn as Map<String, dynamic>));
    }
    if (data.containsKey('requestedBy')) {
      final l$requestedBy = data['requestedBy'];
      result$data['requestedBy'] = l$requestedBy == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$requestedBy as Map<String, dynamic>));
    }
    if (data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = data['partyAccountNo'];
      result$data['partyAccountNo'] = l$partyAccountNo == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$partyAccountNo as Map<String, dynamic>));
    }
    if (data.containsKey('accountName')) {
      final l$accountName = data['accountName'];
      result$data['accountName'] = l$accountName == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$accountName as Map<String, dynamic>));
    }
    if (data.containsKey('fields')) {
      final l$fields = data['fields'];
      result$data['fields'] = l$fields == null
          ? null
          : Input$ListFilterInputTypeOfAccountFieldChangedFilterInput.fromJson(
              (l$fields as Map<String, dynamic>));
    }
    return Input$PortalAccountChangeRequestFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PortalAccountChangeRequestFilterInput>? get and =>
      (_$data['and'] as List<Input$PortalAccountChangeRequestFilterInput>?);

  List<Input$PortalAccountChangeRequestFilterInput>? get or =>
      (_$data['or'] as List<Input$PortalAccountChangeRequestFilterInput>?);

  Input$AccountChangeRequestStatusOperationFilterInput? get status =>
      (_$data['status']
          as Input$AccountChangeRequestStatusOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get createdOn =>
      (_$data['createdOn'] as Input$DateTimeOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get modifiedOn =>
      (_$data['modifiedOn'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get requestedBy =>
      (_$data['requestedBy'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get partyAccountNo =>
      (_$data['partyAccountNo'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get accountName =>
      (_$data['accountName'] as Input$StringOperationFilterInput?);

  Input$ListFilterInputTypeOfAccountFieldChangedFilterInput? get fields =>
      (_$data['fields']
          as Input$ListFilterInputTypeOfAccountFieldChangedFilterInput?);

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
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('modifiedOn')) {
      final l$modifiedOn = modifiedOn;
      result$data['modifiedOn'] = l$modifiedOn?.toJson();
    }
    if (_$data.containsKey('requestedBy')) {
      final l$requestedBy = requestedBy;
      result$data['requestedBy'] = l$requestedBy?.toJson();
    }
    if (_$data.containsKey('partyAccountNo')) {
      final l$partyAccountNo = partyAccountNo;
      result$data['partyAccountNo'] = l$partyAccountNo?.toJson();
    }
    if (_$data.containsKey('accountName')) {
      final l$accountName = accountName;
      result$data['accountName'] = l$accountName?.toJson();
    }
    if (_$data.containsKey('fields')) {
      final l$fields = fields;
      result$data['fields'] = l$fields?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PortalAccountChangeRequestFilterInput<
          Input$PortalAccountChangeRequestFilterInput>
      get copyWith => CopyWith$Input$PortalAccountChangeRequestFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PortalAccountChangeRequestFilterInput ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (_$data.containsKey('modifiedOn') !=
        other._$data.containsKey('modifiedOn')) {
      return false;
    }
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$requestedBy = requestedBy;
    final lOther$requestedBy = other.requestedBy;
    if (_$data.containsKey('requestedBy') !=
        other._$data.containsKey('requestedBy')) {
      return false;
    }
    if (l$requestedBy != lOther$requestedBy) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (_$data.containsKey('partyAccountNo') !=
        other._$data.containsKey('partyAccountNo')) {
      return false;
    }
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (_$data.containsKey('accountName') !=
        other._$data.containsKey('accountName')) {
      return false;
    }
    if (l$accountName != lOther$accountName) {
      return false;
    }
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (_$data.containsKey('fields') != other._$data.containsKey('fields')) {
      return false;
    }
    if (l$fields != lOther$fields) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$modifiedOn = modifiedOn;
    final l$requestedBy = requestedBy;
    final l$partyAccountNo = partyAccountNo;
    final l$accountName = accountName;
    final l$fields = fields;
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
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('modifiedOn') ? l$modifiedOn : const {},
      _$data.containsKey('requestedBy') ? l$requestedBy : const {},
      _$data.containsKey('partyAccountNo') ? l$partyAccountNo : const {},
      _$data.containsKey('accountName') ? l$accountName : const {},
      _$data.containsKey('fields') ? l$fields : const {},
    ]);
  }
}

abstract class CopyWith$Input$PortalAccountChangeRequestFilterInput<TRes> {
  factory CopyWith$Input$PortalAccountChangeRequestFilterInput(
    Input$PortalAccountChangeRequestFilterInput instance,
    TRes Function(Input$PortalAccountChangeRequestFilterInput) then,
  ) = _CopyWithImpl$Input$PortalAccountChangeRequestFilterInput;

  factory CopyWith$Input$PortalAccountChangeRequestFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PortalAccountChangeRequestFilterInput;

  TRes call({
    List<Input$PortalAccountChangeRequestFilterInput>? and,
    List<Input$PortalAccountChangeRequestFilterInput>? or,
    Input$AccountChangeRequestStatusOperationFilterInput? status,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? requestedBy,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? accountName,
    Input$ListFilterInputTypeOfAccountFieldChangedFilterInput? fields,
  });
  TRes and(
      Iterable<Input$PortalAccountChangeRequestFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PortalAccountChangeRequestFilterInput<
                      Input$PortalAccountChangeRequestFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PortalAccountChangeRequestFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PortalAccountChangeRequestFilterInput<
                      Input$PortalAccountChangeRequestFilterInput>>?)
          _fn);
  CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<TRes>
      get status;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn;
  CopyWith$Input$StringOperationFilterInput<TRes> get requestedBy;
  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo;
  CopyWith$Input$StringOperationFilterInput<TRes> get accountName;
  CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<TRes>
      get fields;
}

class _CopyWithImpl$Input$PortalAccountChangeRequestFilterInput<TRes>
    implements CopyWith$Input$PortalAccountChangeRequestFilterInput<TRes> {
  _CopyWithImpl$Input$PortalAccountChangeRequestFilterInput(
    this._instance,
    this._then,
  );

  final Input$PortalAccountChangeRequestFilterInput _instance;

  final TRes Function(Input$PortalAccountChangeRequestFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? modifiedOn = _undefined,
    Object? requestedBy = _undefined,
    Object? partyAccountNo = _undefined,
    Object? accountName = _undefined,
    Object? fields = _undefined,
  }) =>
      _then(Input$PortalAccountChangeRequestFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PortalAccountChangeRequestFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$PortalAccountChangeRequestFilterInput>?),
        if (status != _undefined)
          'status':
              (status as Input$AccountChangeRequestStatusOperationFilterInput?),
        if (createdOn != _undefined)
          'createdOn': (createdOn as Input$DateTimeOperationFilterInput?),
        if (modifiedOn != _undefined)
          'modifiedOn': (modifiedOn as Input$DateTimeOperationFilterInput?),
        if (requestedBy != _undefined)
          'requestedBy': (requestedBy as Input$StringOperationFilterInput?),
        if (partyAccountNo != _undefined)
          'partyAccountNo':
              (partyAccountNo as Input$StringOperationFilterInput?),
        if (accountName != _undefined)
          'accountName': (accountName as Input$StringOperationFilterInput?),
        if (fields != _undefined)
          'fields': (fields
              as Input$ListFilterInputTypeOfAccountFieldChangedFilterInput?),
      }));

  TRes and(
          Iterable<Input$PortalAccountChangeRequestFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PortalAccountChangeRequestFilterInput<
                          Input$PortalAccountChangeRequestFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$PortalAccountChangeRequestFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PortalAccountChangeRequestFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PortalAccountChangeRequestFilterInput<
                          Input$PortalAccountChangeRequestFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$PortalAccountChangeRequestFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<TRes>
      get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$AccountChangeRequestStatusOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$AccountChangeRequestStatusOperationFilterInput(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$createdOn, (e) => call(createdOn: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn {
    final local$modifiedOn = _instance.modifiedOn;
    return local$modifiedOn == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$modifiedOn, (e) => call(modifiedOn: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get requestedBy {
    final local$requestedBy = _instance.requestedBy;
    return local$requestedBy == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$requestedBy, (e) => call(requestedBy: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo {
    final local$partyAccountNo = _instance.partyAccountNo;
    return local$partyAccountNo == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$partyAccountNo, (e) => call(partyAccountNo: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get accountName {
    final local$accountName = _instance.accountName;
    return local$accountName == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$accountName, (e) => call(accountName: e));
  }

  CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<TRes>
      get fields {
    final local$fields = _instance.fields;
    return local$fields == null
        ? CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput
            .stub(_then(_instance))
        : CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput(
            local$fields, (e) => call(fields: e));
  }
}

class _CopyWithStubImpl$Input$PortalAccountChangeRequestFilterInput<TRes>
    implements CopyWith$Input$PortalAccountChangeRequestFilterInput<TRes> {
  _CopyWithStubImpl$Input$PortalAccountChangeRequestFilterInput(this._res);

  TRes _res;

  call({
    List<Input$PortalAccountChangeRequestFilterInput>? and,
    List<Input$PortalAccountChangeRequestFilterInput>? or,
    Input$AccountChangeRequestStatusOperationFilterInput? status,
    Input$DateTimeOperationFilterInput? createdOn,
    Input$DateTimeOperationFilterInput? modifiedOn,
    Input$StringOperationFilterInput? requestedBy,
    Input$StringOperationFilterInput? partyAccountNo,
    Input$StringOperationFilterInput? accountName,
    Input$ListFilterInputTypeOfAccountFieldChangedFilterInput? fields,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<TRes>
      get status =>
          CopyWith$Input$AccountChangeRequestStatusOperationFilterInput.stub(
              _res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get createdOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get modifiedOn =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get requestedBy =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get partyAccountNo =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get accountName =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<TRes>
      get fields =>
          CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput
              .stub(_res);
}

class Input$PartyPricelistSummaryFilterInput {
  factory Input$PartyPricelistSummaryFilterInput({
    List<Input$PartyPricelistSummaryFilterInput>? and,
    List<Input$PartyPricelistSummaryFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? price,
    Input$StringOperationFilterInput? uoM,
    Input$StringOperationFilterInput? deliveryMethod,
    Input$DateTimeOperationFilterInput? updatedDate,
    Input$StringOperationFilterInput? notes,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? grade,
  }) =>
      Input$PartyPricelistSummaryFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (description != null) r'description': description,
        if (price != null) r'price': price,
        if (uoM != null) r'uoM': uoM,
        if (deliveryMethod != null) r'deliveryMethod': deliveryMethod,
        if (updatedDate != null) r'updatedDate': updatedDate,
        if (notes != null) r'notes': notes,
        if (searchText != null) r'searchText': searchText,
        if (grade != null) r'grade': grade,
      });

  Input$PartyPricelistSummaryFilterInput._(this._$data);

  factory Input$PartyPricelistSummaryFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$PartyPricelistSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$PartyPricelistSummaryFilterInput.fromJson(
              (e as Map<String, dynamic>)))
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
          : Input$StringOperationFilterInput.fromJson(
              (l$price as Map<String, dynamic>));
    }
    if (data.containsKey('uoM')) {
      final l$uoM = data['uoM'];
      result$data['uoM'] = l$uoM == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$uoM as Map<String, dynamic>));
    }
    if (data.containsKey('deliveryMethod')) {
      final l$deliveryMethod = data['deliveryMethod'];
      result$data['deliveryMethod'] = l$deliveryMethod == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$deliveryMethod as Map<String, dynamic>));
    }
    if (data.containsKey('updatedDate')) {
      final l$updatedDate = data['updatedDate'];
      result$data['updatedDate'] = l$updatedDate == null
          ? null
          : Input$DateTimeOperationFilterInput.fromJson(
              (l$updatedDate as Map<String, dynamic>));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$notes as Map<String, dynamic>));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$searchText as Map<String, dynamic>));
    }
    if (data.containsKey('grade')) {
      final l$grade = data['grade'];
      result$data['grade'] = l$grade == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$grade as Map<String, dynamic>));
    }
    return Input$PartyPricelistSummaryFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PartyPricelistSummaryFilterInput>? get and =>
      (_$data['and'] as List<Input$PartyPricelistSummaryFilterInput>?);

  List<Input$PartyPricelistSummaryFilterInput>? get or =>
      (_$data['or'] as List<Input$PartyPricelistSummaryFilterInput>?);

  Input$StringOperationFilterInput? get description =>
      (_$data['description'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get price =>
      (_$data['price'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get uoM =>
      (_$data['uoM'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get deliveryMethod =>
      (_$data['deliveryMethod'] as Input$StringOperationFilterInput?);

  Input$DateTimeOperationFilterInput? get updatedDate =>
      (_$data['updatedDate'] as Input$DateTimeOperationFilterInput?);

  Input$StringOperationFilterInput? get notes =>
      (_$data['notes'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get searchText =>
      (_$data['searchText'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get grade =>
      (_$data['grade'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('uoM')) {
      final l$uoM = uoM;
      result$data['uoM'] = l$uoM?.toJson();
    }
    if (_$data.containsKey('deliveryMethod')) {
      final l$deliveryMethod = deliveryMethod;
      result$data['deliveryMethod'] = l$deliveryMethod?.toJson();
    }
    if (_$data.containsKey('updatedDate')) {
      final l$updatedDate = updatedDate;
      result$data['updatedDate'] = l$updatedDate?.toJson();
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes?.toJson();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText?.toJson();
    }
    if (_$data.containsKey('grade')) {
      final l$grade = grade;
      result$data['grade'] = l$grade?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PartyPricelistSummaryFilterInput<
          Input$PartyPricelistSummaryFilterInput>
      get copyWith => CopyWith$Input$PartyPricelistSummaryFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PartyPricelistSummaryFilterInput ||
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
    final l$uoM = uoM;
    final lOther$uoM = other.uoM;
    if (_$data.containsKey('uoM') != other._$data.containsKey('uoM')) {
      return false;
    }
    if (l$uoM != lOther$uoM) {
      return false;
    }
    final l$deliveryMethod = deliveryMethod;
    final lOther$deliveryMethod = other.deliveryMethod;
    if (_$data.containsKey('deliveryMethod') !=
        other._$data.containsKey('deliveryMethod')) {
      return false;
    }
    if (l$deliveryMethod != lOther$deliveryMethod) {
      return false;
    }
    final l$updatedDate = updatedDate;
    final lOther$updatedDate = other.updatedDate;
    if (_$data.containsKey('updatedDate') !=
        other._$data.containsKey('updatedDate')) {
      return false;
    }
    if (l$updatedDate != lOther$updatedDate) {
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
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (_$data.containsKey('grade') != other._$data.containsKey('grade')) {
      return false;
    }
    if (l$grade != lOther$grade) {
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
    final l$uoM = uoM;
    final l$deliveryMethod = deliveryMethod;
    final l$updatedDate = updatedDate;
    final l$notes = notes;
    final l$searchText = searchText;
    final l$grade = grade;
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
      _$data.containsKey('uoM') ? l$uoM : const {},
      _$data.containsKey('deliveryMethod') ? l$deliveryMethod : const {},
      _$data.containsKey('updatedDate') ? l$updatedDate : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('grade') ? l$grade : const {},
    ]);
  }
}

abstract class CopyWith$Input$PartyPricelistSummaryFilterInput<TRes> {
  factory CopyWith$Input$PartyPricelistSummaryFilterInput(
    Input$PartyPricelistSummaryFilterInput instance,
    TRes Function(Input$PartyPricelistSummaryFilterInput) then,
  ) = _CopyWithImpl$Input$PartyPricelistSummaryFilterInput;

  factory CopyWith$Input$PartyPricelistSummaryFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PartyPricelistSummaryFilterInput;

  TRes call({
    List<Input$PartyPricelistSummaryFilterInput>? and,
    List<Input$PartyPricelistSummaryFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? price,
    Input$StringOperationFilterInput? uoM,
    Input$StringOperationFilterInput? deliveryMethod,
    Input$DateTimeOperationFilterInput? updatedDate,
    Input$StringOperationFilterInput? notes,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? grade,
  });
  TRes and(
      Iterable<Input$PartyPricelistSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PartyPricelistSummaryFilterInput<
                      Input$PartyPricelistSummaryFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$PartyPricelistSummaryFilterInput>? Function(
              Iterable<
                  CopyWith$Input$PartyPricelistSummaryFilterInput<
                      Input$PartyPricelistSummaryFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get description;
  CopyWith$Input$StringOperationFilterInput<TRes> get price;
  CopyWith$Input$StringOperationFilterInput<TRes> get uoM;
  CopyWith$Input$StringOperationFilterInput<TRes> get deliveryMethod;
  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDate;
  CopyWith$Input$StringOperationFilterInput<TRes> get notes;
  CopyWith$Input$StringOperationFilterInput<TRes> get searchText;
  CopyWith$Input$StringOperationFilterInput<TRes> get grade;
}

class _CopyWithImpl$Input$PartyPricelistSummaryFilterInput<TRes>
    implements CopyWith$Input$PartyPricelistSummaryFilterInput<TRes> {
  _CopyWithImpl$Input$PartyPricelistSummaryFilterInput(
    this._instance,
    this._then,
  );

  final Input$PartyPricelistSummaryFilterInput _instance;

  final TRes Function(Input$PartyPricelistSummaryFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? description = _undefined,
    Object? price = _undefined,
    Object? uoM = _undefined,
    Object? deliveryMethod = _undefined,
    Object? updatedDate = _undefined,
    Object? notes = _undefined,
    Object? searchText = _undefined,
    Object? grade = _undefined,
  }) =>
      _then(Input$PartyPricelistSummaryFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PartyPricelistSummaryFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$PartyPricelistSummaryFilterInput>?),
        if (description != _undefined)
          'description': (description as Input$StringOperationFilterInput?),
        if (price != _undefined)
          'price': (price as Input$StringOperationFilterInput?),
        if (uoM != _undefined)
          'uoM': (uoM as Input$StringOperationFilterInput?),
        if (deliveryMethod != _undefined)
          'deliveryMethod':
              (deliveryMethod as Input$StringOperationFilterInput?),
        if (updatedDate != _undefined)
          'updatedDate': (updatedDate as Input$DateTimeOperationFilterInput?),
        if (notes != _undefined)
          'notes': (notes as Input$StringOperationFilterInput?),
        if (searchText != _undefined)
          'searchText': (searchText as Input$StringOperationFilterInput?),
        if (grade != _undefined)
          'grade': (grade as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$PartyPricelistSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PartyPricelistSummaryFilterInput<
                          Input$PartyPricelistSummaryFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$PartyPricelistSummaryFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PartyPricelistSummaryFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$PartyPricelistSummaryFilterInput<
                          Input$PartyPricelistSummaryFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$PartyPricelistSummaryFilterInput(
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

  CopyWith$Input$StringOperationFilterInput<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$price, (e) => call(price: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get uoM {
    final local$uoM = _instance.uoM;
    return local$uoM == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$uoM, (e) => call(uoM: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get deliveryMethod {
    final local$deliveryMethod = _instance.deliveryMethod;
    return local$deliveryMethod == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$deliveryMethod, (e) => call(deliveryMethod: e));
  }

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDate {
    final local$updatedDate = _instance.updatedDate;
    return local$updatedDate == null
        ? CopyWith$Input$DateTimeOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DateTimeOperationFilterInput(
            local$updatedDate, (e) => call(updatedDate: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get notes {
    final local$notes = _instance.notes;
    return local$notes == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$notes, (e) => call(notes: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText {
    final local$searchText = _instance.searchText;
    return local$searchText == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$searchText, (e) => call(searchText: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get grade {
    final local$grade = _instance.grade;
    return local$grade == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$grade, (e) => call(grade: e));
  }
}

class _CopyWithStubImpl$Input$PartyPricelistSummaryFilterInput<TRes>
    implements CopyWith$Input$PartyPricelistSummaryFilterInput<TRes> {
  _CopyWithStubImpl$Input$PartyPricelistSummaryFilterInput(this._res);

  TRes _res;

  call({
    List<Input$PartyPricelistSummaryFilterInput>? and,
    List<Input$PartyPricelistSummaryFilterInput>? or,
    Input$StringOperationFilterInput? description,
    Input$StringOperationFilterInput? price,
    Input$StringOperationFilterInput? uoM,
    Input$StringOperationFilterInput? deliveryMethod,
    Input$DateTimeOperationFilterInput? updatedDate,
    Input$StringOperationFilterInput? notes,
    Input$StringOperationFilterInput? searchText,
    Input$StringOperationFilterInput? grade,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get description =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get price =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get uoM =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get deliveryMethod =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DateTimeOperationFilterInput<TRes> get updatedDate =>
      CopyWith$Input$DateTimeOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get notes =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get searchText =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get grade =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$PartyPricelistSummarySortInput {
  factory Input$PartyPricelistSummarySortInput({
    Enum$SortEnumType? description,
    Enum$SortEnumType? price,
    Enum$SortEnumType? uoM,
    Enum$SortEnumType? deliveryMethod,
    Enum$SortEnumType? updatedDate,
    Enum$SortEnumType? notes,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? grade,
  }) =>
      Input$PartyPricelistSummarySortInput._({
        if (description != null) r'description': description,
        if (price != null) r'price': price,
        if (uoM != null) r'uoM': uoM,
        if (deliveryMethod != null) r'deliveryMethod': deliveryMethod,
        if (updatedDate != null) r'updatedDate': updatedDate,
        if (notes != null) r'notes': notes,
        if (searchText != null) r'searchText': searchText,
        if (grade != null) r'grade': grade,
      });

  Input$PartyPricelistSummarySortInput._(this._$data);

  factory Input$PartyPricelistSummarySortInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = l$description == null
          ? null
          : fromJson$Enum$SortEnumType((l$description as String));
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = l$price == null
          ? null
          : fromJson$Enum$SortEnumType((l$price as String));
    }
    if (data.containsKey('uoM')) {
      final l$uoM = data['uoM'];
      result$data['uoM'] =
          l$uoM == null ? null : fromJson$Enum$SortEnumType((l$uoM as String));
    }
    if (data.containsKey('deliveryMethod')) {
      final l$deliveryMethod = data['deliveryMethod'];
      result$data['deliveryMethod'] = l$deliveryMethod == null
          ? null
          : fromJson$Enum$SortEnumType((l$deliveryMethod as String));
    }
    if (data.containsKey('updatedDate')) {
      final l$updatedDate = data['updatedDate'];
      result$data['updatedDate'] = l$updatedDate == null
          ? null
          : fromJson$Enum$SortEnumType((l$updatedDate as String));
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = l$notes == null
          ? null
          : fromJson$Enum$SortEnumType((l$notes as String));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = l$searchText == null
          ? null
          : fromJson$Enum$SortEnumType((l$searchText as String));
    }
    if (data.containsKey('grade')) {
      final l$grade = data['grade'];
      result$data['grade'] = l$grade == null
          ? null
          : fromJson$Enum$SortEnumType((l$grade as String));
    }
    return Input$PartyPricelistSummarySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get description =>
      (_$data['description'] as Enum$SortEnumType?);

  Enum$SortEnumType? get price => (_$data['price'] as Enum$SortEnumType?);

  Enum$SortEnumType? get uoM => (_$data['uoM'] as Enum$SortEnumType?);

  Enum$SortEnumType? get deliveryMethod =>
      (_$data['deliveryMethod'] as Enum$SortEnumType?);

  Enum$SortEnumType? get updatedDate =>
      (_$data['updatedDate'] as Enum$SortEnumType?);

  Enum$SortEnumType? get notes => (_$data['notes'] as Enum$SortEnumType?);

  Enum$SortEnumType? get searchText =>
      (_$data['searchText'] as Enum$SortEnumType?);

  Enum$SortEnumType? get grade => (_$data['grade'] as Enum$SortEnumType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description == null
          ? null
          : toJson$Enum$SortEnumType(l$description);
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] =
          l$price == null ? null : toJson$Enum$SortEnumType(l$price);
    }
    if (_$data.containsKey('uoM')) {
      final l$uoM = uoM;
      result$data['uoM'] =
          l$uoM == null ? null : toJson$Enum$SortEnumType(l$uoM);
    }
    if (_$data.containsKey('deliveryMethod')) {
      final l$deliveryMethod = deliveryMethod;
      result$data['deliveryMethod'] = l$deliveryMethod == null
          ? null
          : toJson$Enum$SortEnumType(l$deliveryMethod);
    }
    if (_$data.containsKey('updatedDate')) {
      final l$updatedDate = updatedDate;
      result$data['updatedDate'] = l$updatedDate == null
          ? null
          : toJson$Enum$SortEnumType(l$updatedDate);
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] =
          l$notes == null ? null : toJson$Enum$SortEnumType(l$notes);
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] =
          l$searchText == null ? null : toJson$Enum$SortEnumType(l$searchText);
    }
    if (_$data.containsKey('grade')) {
      final l$grade = grade;
      result$data['grade'] =
          l$grade == null ? null : toJson$Enum$SortEnumType(l$grade);
    }
    return result$data;
  }

  CopyWith$Input$PartyPricelistSummarySortInput<
          Input$PartyPricelistSummarySortInput>
      get copyWith => CopyWith$Input$PartyPricelistSummarySortInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PartyPricelistSummarySortInput ||
        runtimeType != other.runtimeType) {
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
    final l$uoM = uoM;
    final lOther$uoM = other.uoM;
    if (_$data.containsKey('uoM') != other._$data.containsKey('uoM')) {
      return false;
    }
    if (l$uoM != lOther$uoM) {
      return false;
    }
    final l$deliveryMethod = deliveryMethod;
    final lOther$deliveryMethod = other.deliveryMethod;
    if (_$data.containsKey('deliveryMethod') !=
        other._$data.containsKey('deliveryMethod')) {
      return false;
    }
    if (l$deliveryMethod != lOther$deliveryMethod) {
      return false;
    }
    final l$updatedDate = updatedDate;
    final lOther$updatedDate = other.updatedDate;
    if (_$data.containsKey('updatedDate') !=
        other._$data.containsKey('updatedDate')) {
      return false;
    }
    if (l$updatedDate != lOther$updatedDate) {
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
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (_$data.containsKey('grade') != other._$data.containsKey('grade')) {
      return false;
    }
    if (l$grade != lOther$grade) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$price = price;
    final l$uoM = uoM;
    final l$deliveryMethod = deliveryMethod;
    final l$updatedDate = updatedDate;
    final l$notes = notes;
    final l$searchText = searchText;
    final l$grade = grade;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('uoM') ? l$uoM : const {},
      _$data.containsKey('deliveryMethod') ? l$deliveryMethod : const {},
      _$data.containsKey('updatedDate') ? l$updatedDate : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('grade') ? l$grade : const {},
    ]);
  }
}

abstract class CopyWith$Input$PartyPricelistSummarySortInput<TRes> {
  factory CopyWith$Input$PartyPricelistSummarySortInput(
    Input$PartyPricelistSummarySortInput instance,
    TRes Function(Input$PartyPricelistSummarySortInput) then,
  ) = _CopyWithImpl$Input$PartyPricelistSummarySortInput;

  factory CopyWith$Input$PartyPricelistSummarySortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PartyPricelistSummarySortInput;

  TRes call({
    Enum$SortEnumType? description,
    Enum$SortEnumType? price,
    Enum$SortEnumType? uoM,
    Enum$SortEnumType? deliveryMethod,
    Enum$SortEnumType? updatedDate,
    Enum$SortEnumType? notes,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? grade,
  });
}

class _CopyWithImpl$Input$PartyPricelistSummarySortInput<TRes>
    implements CopyWith$Input$PartyPricelistSummarySortInput<TRes> {
  _CopyWithImpl$Input$PartyPricelistSummarySortInput(
    this._instance,
    this._then,
  );

  final Input$PartyPricelistSummarySortInput _instance;

  final TRes Function(Input$PartyPricelistSummarySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? price = _undefined,
    Object? uoM = _undefined,
    Object? deliveryMethod = _undefined,
    Object? updatedDate = _undefined,
    Object? notes = _undefined,
    Object? searchText = _undefined,
    Object? grade = _undefined,
  }) =>
      _then(Input$PartyPricelistSummarySortInput._({
        ..._instance._$data,
        if (description != _undefined)
          'description': (description as Enum$SortEnumType?),
        if (price != _undefined) 'price': (price as Enum$SortEnumType?),
        if (uoM != _undefined) 'uoM': (uoM as Enum$SortEnumType?),
        if (deliveryMethod != _undefined)
          'deliveryMethod': (deliveryMethod as Enum$SortEnumType?),
        if (updatedDate != _undefined)
          'updatedDate': (updatedDate as Enum$SortEnumType?),
        if (notes != _undefined) 'notes': (notes as Enum$SortEnumType?),
        if (searchText != _undefined)
          'searchText': (searchText as Enum$SortEnumType?),
        if (grade != _undefined) 'grade': (grade as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$PartyPricelistSummarySortInput<TRes>
    implements CopyWith$Input$PartyPricelistSummarySortInput<TRes> {
  _CopyWithStubImpl$Input$PartyPricelistSummarySortInput(this._res);

  TRes _res;

  call({
    Enum$SortEnumType? description,
    Enum$SortEnumType? price,
    Enum$SortEnumType? uoM,
    Enum$SortEnumType? deliveryMethod,
    Enum$SortEnumType? updatedDate,
    Enum$SortEnumType? notes,
    Enum$SortEnumType? searchText,
    Enum$SortEnumType? grade,
  }) =>
      _res;
}

class Input$NullableOfTicketStatusOperationFilterInput {
  factory Input$NullableOfTicketStatusOperationFilterInput({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus?>? $in,
    List<Enum$TicketStatus?>? nin,
  }) =>
      Input$NullableOfTicketStatusOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$NullableOfTicketStatusOperationFilterInput._(this._$data);

  factory Input$NullableOfTicketStatusOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$TicketStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$TicketStatus((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$TicketStatus((e as String)))
          .toList();
    }
    return Input$NullableOfTicketStatusOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TicketStatus? get eq => (_$data['eq'] as Enum$TicketStatus?);

  Enum$TicketStatus? get neq => (_$data['neq'] as Enum$TicketStatus?);

  List<Enum$TicketStatus?>? get $in =>
      (_$data['in'] as List<Enum$TicketStatus?>?);

  List<Enum$TicketStatus?>? get nin =>
      (_$data['nin'] as List<Enum$TicketStatus?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$TicketStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$TicketStatus(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in
          ?.map((e) => e == null ? null : toJson$Enum$TicketStatus(e))
          .toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin
          ?.map((e) => e == null ? null : toJson$Enum$TicketStatus(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Input$NullableOfTicketStatusOperationFilterInput<
          Input$NullableOfTicketStatusOperationFilterInput>
      get copyWith => CopyWith$Input$NullableOfTicketStatusOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NullableOfTicketStatusOperationFilterInput ||
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

abstract class CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes> {
  factory CopyWith$Input$NullableOfTicketStatusOperationFilterInput(
    Input$NullableOfTicketStatusOperationFilterInput instance,
    TRes Function(Input$NullableOfTicketStatusOperationFilterInput) then,
  ) = _CopyWithImpl$Input$NullableOfTicketStatusOperationFilterInput;

  factory CopyWith$Input$NullableOfTicketStatusOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$NullableOfTicketStatusOperationFilterInput;

  TRes call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus?>? $in,
    List<Enum$TicketStatus?>? nin,
  });
}

class _CopyWithImpl$Input$NullableOfTicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes> {
  _CopyWithImpl$Input$NullableOfTicketStatusOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$NullableOfTicketStatusOperationFilterInput _instance;

  final TRes Function(Input$NullableOfTicketStatusOperationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$NullableOfTicketStatusOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$TicketStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$TicketStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$TicketStatus?>?),
        if (nin != _undefined) 'nin': (nin as List<Enum$TicketStatus?>?),
      }));
}

class _CopyWithStubImpl$Input$NullableOfTicketStatusOperationFilterInput<TRes>
    implements CopyWith$Input$NullableOfTicketStatusOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$NullableOfTicketStatusOperationFilterInput(this._res);

  TRes _res;

  call({
    Enum$TicketStatus? eq,
    Enum$TicketStatus? neq,
    List<Enum$TicketStatus?>? $in,
    List<Enum$TicketStatus?>? nin,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfInvoiceLinesFilterInput {
  factory Input$ListFilterInputTypeOfInvoiceLinesFilterInput({
    Input$InvoiceLinesFilterInput? none,
    Input$InvoiceLinesFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfInvoiceLinesFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfInvoiceLinesFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfInvoiceLinesFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$InvoiceLinesFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$InvoiceLinesFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfInvoiceLinesFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InvoiceLinesFilterInput? get none =>
      (_$data['none'] as Input$InvoiceLinesFilterInput?);

  Input$InvoiceLinesFilterInput? get some =>
      (_$data['some'] as Input$InvoiceLinesFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<
          Input$ListFilterInputTypeOfInvoiceLinesFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfInvoiceLinesFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput(
    Input$ListFilterInputTypeOfInvoiceLinesFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfInvoiceLinesFilterInput) then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput;

  TRes call({
    Input$InvoiceLinesFilterInput? none,
    Input$InvoiceLinesFilterInput? some,
    bool? any,
  });
  CopyWith$Input$InvoiceLinesFilterInput<TRes> get none;
  CopyWith$Input$InvoiceLinesFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfInvoiceLinesFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfInvoiceLinesFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfInvoiceLinesFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$InvoiceLinesFilterInput?),
        if (some != _undefined)
          'some': (some as Input$InvoiceLinesFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$InvoiceLinesFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$InvoiceLinesFilterInput.stub(_then(_instance))
        : CopyWith$Input$InvoiceLinesFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$InvoiceLinesFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$InvoiceLinesFilterInput.stub(_then(_instance))
        : CopyWith$Input$InvoiceLinesFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfInvoiceLinesFilterInput<TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfInvoiceLinesFilterInput(
      this._res);

  TRes _res;

  call({
    Input$InvoiceLinesFilterInput? none,
    Input$InvoiceLinesFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$InvoiceLinesFilterInput<TRes> get none =>
      CopyWith$Input$InvoiceLinesFilterInput.stub(_res);

  CopyWith$Input$InvoiceLinesFilterInput<TRes> get some =>
      CopyWith$Input$InvoiceLinesFilterInput.stub(_res);
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

class Input$AccountChangeRequestStatusOperationFilterInput {
  factory Input$AccountChangeRequestStatusOperationFilterInput({
    Enum$AccountChangeRequestStatus? eq,
    Enum$AccountChangeRequestStatus? neq,
    List<Enum$AccountChangeRequestStatus>? $in,
    List<Enum$AccountChangeRequestStatus>? nin,
  }) =>
      Input$AccountChangeRequestStatusOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if ($in != null) r'in': $in,
        if (nin != null) r'nin': nin,
      });

  Input$AccountChangeRequestStatusOperationFilterInput._(this._$data);

  factory Input$AccountChangeRequestStatusOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$AccountChangeRequestStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$AccountChangeRequestStatus((l$neq as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AccountChangeRequestStatus((e as String)))
          .toList();
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AccountChangeRequestStatus((e as String)))
          .toList();
    }
    return Input$AccountChangeRequestStatusOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$AccountChangeRequestStatus? get eq =>
      (_$data['eq'] as Enum$AccountChangeRequestStatus?);

  Enum$AccountChangeRequestStatus? get neq =>
      (_$data['neq'] as Enum$AccountChangeRequestStatus?);

  List<Enum$AccountChangeRequestStatus>? get $in =>
      (_$data['in'] as List<Enum$AccountChangeRequestStatus>?);

  List<Enum$AccountChangeRequestStatus>? get nin =>
      (_$data['nin'] as List<Enum$AccountChangeRequestStatus>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$AccountChangeRequestStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$AccountChangeRequestStatus(l$neq);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$AccountChangeRequestStatus(e)).toList();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] =
          l$nin?.map((e) => toJson$Enum$AccountChangeRequestStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<
          Input$AccountChangeRequestStatusOperationFilterInput>
      get copyWith =>
          CopyWith$Input$AccountChangeRequestStatusOperationFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountChangeRequestStatusOperationFilterInput ||
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

abstract class CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<
    TRes> {
  factory CopyWith$Input$AccountChangeRequestStatusOperationFilterInput(
    Input$AccountChangeRequestStatusOperationFilterInput instance,
    TRes Function(Input$AccountChangeRequestStatusOperationFilterInput) then,
  ) = _CopyWithImpl$Input$AccountChangeRequestStatusOperationFilterInput;

  factory CopyWith$Input$AccountChangeRequestStatusOperationFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$AccountChangeRequestStatusOperationFilterInput;

  TRes call({
    Enum$AccountChangeRequestStatus? eq,
    Enum$AccountChangeRequestStatus? neq,
    List<Enum$AccountChangeRequestStatus>? $in,
    List<Enum$AccountChangeRequestStatus>? nin,
  });
}

class _CopyWithImpl$Input$AccountChangeRequestStatusOperationFilterInput<TRes>
    implements
        CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<TRes> {
  _CopyWithImpl$Input$AccountChangeRequestStatusOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$AccountChangeRequestStatusOperationFilterInput _instance;

  final TRes Function(Input$AccountChangeRequestStatusOperationFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? $in = _undefined,
    Object? nin = _undefined,
  }) =>
      _then(Input$AccountChangeRequestStatusOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as Enum$AccountChangeRequestStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$AccountChangeRequestStatus?),
        if ($in != _undefined)
          'in': ($in as List<Enum$AccountChangeRequestStatus>?),
        if (nin != _undefined)
          'nin': (nin as List<Enum$AccountChangeRequestStatus>?),
      }));
}

class _CopyWithStubImpl$Input$AccountChangeRequestStatusOperationFilterInput<
        TRes>
    implements
        CopyWith$Input$AccountChangeRequestStatusOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccountChangeRequestStatusOperationFilterInput(
      this._res);

  TRes _res;

  call({
    Enum$AccountChangeRequestStatus? eq,
    Enum$AccountChangeRequestStatus? neq,
    List<Enum$AccountChangeRequestStatus>? $in,
    List<Enum$AccountChangeRequestStatus>? nin,
  }) =>
      _res;
}

class Input$ListFilterInputTypeOfAccountFieldChangedFilterInput {
  factory Input$ListFilterInputTypeOfAccountFieldChangedFilterInput({
    Input$AccountFieldChangedFilterInput? none,
    Input$AccountFieldChangedFilterInput? some,
    bool? any,
  }) =>
      Input$ListFilterInputTypeOfAccountFieldChangedFilterInput._({
        if (none != null) r'none': none,
        if (some != null) r'some': some,
        if (any != null) r'any': any,
      });

  Input$ListFilterInputTypeOfAccountFieldChangedFilterInput._(this._$data);

  factory Input$ListFilterInputTypeOfAccountFieldChangedFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$AccountFieldChangedFilterInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$AccountFieldChangedFilterInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    if (data.containsKey('any')) {
      final l$any = data['any'];
      result$data['any'] = (l$any as bool?);
    }
    return Input$ListFilterInputTypeOfAccountFieldChangedFilterInput._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountFieldChangedFilterInput? get none =>
      (_$data['none'] as Input$AccountFieldChangedFilterInput?);

  Input$AccountFieldChangedFilterInput? get some =>
      (_$data['some'] as Input$AccountFieldChangedFilterInput?);

  bool? get any => (_$data['any'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
          Input$ListFilterInputTypeOfAccountFieldChangedFilterInput>
      get copyWith =>
          CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ListFilterInputTypeOfAccountFieldChangedFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$none = none;
    final l$some = some;
    final l$any = any;
    return Object.hashAll([
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
      _$data.containsKey('any') ? l$any : const {},
    ]);
  }
}

abstract class CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
    TRes> {
  factory CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput(
    Input$ListFilterInputTypeOfAccountFieldChangedFilterInput instance,
    TRes Function(Input$ListFilterInputTypeOfAccountFieldChangedFilterInput)
        then,
  ) = _CopyWithImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput;

  factory CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput;

  TRes call({
    Input$AccountFieldChangedFilterInput? none,
    Input$AccountFieldChangedFilterInput? some,
    bool? any,
  });
  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get none;
  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get some;
}

class _CopyWithImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
            TRes> {
  _CopyWithImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput(
    this._instance,
    this._then,
  );

  final Input$ListFilterInputTypeOfAccountFieldChangedFilterInput _instance;

  final TRes Function(Input$ListFilterInputTypeOfAccountFieldChangedFilterInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? none = _undefined,
    Object? some = _undefined,
    Object? any = _undefined,
  }) =>
      _then(Input$ListFilterInputTypeOfAccountFieldChangedFilterInput._({
        ..._instance._$data,
        if (none != _undefined)
          'none': (none as Input$AccountFieldChangedFilterInput?),
        if (some != _undefined)
          'some': (some as Input$AccountFieldChangedFilterInput?),
        if (any != _undefined) 'any': (any as bool?),
      }));

  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$AccountFieldChangedFilterInput.stub(_then(_instance))
        : CopyWith$Input$AccountFieldChangedFilterInput(
            local$none, (e) => call(none: e));
  }

  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$AccountFieldChangedFilterInput.stub(_then(_instance))
        : CopyWith$Input$AccountFieldChangedFilterInput(
            local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
        TRes>
    implements
        CopyWith$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput<
            TRes> {
  _CopyWithStubImpl$Input$ListFilterInputTypeOfAccountFieldChangedFilterInput(
      this._res);

  TRes _res;

  call({
    Input$AccountFieldChangedFilterInput? none,
    Input$AccountFieldChangedFilterInput? some,
    bool? any,
  }) =>
      _res;

  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get none =>
      CopyWith$Input$AccountFieldChangedFilterInput.stub(_res);

  CopyWith$Input$AccountFieldChangedFilterInput<TRes> get some =>
      CopyWith$Input$AccountFieldChangedFilterInput.stub(_res);
}

class Input$InvoiceLinesFilterInput {
  factory Input$InvoiceLinesFilterInput({
    List<Input$InvoiceLinesFilterInput>? and,
    List<Input$InvoiceLinesFilterInput>? or,
    Input$StringOperationFilterInput? currencyCode,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? grossAmount,
    Input$DecimalOperationFilterInput? lineAmount,
  }) =>
      Input$InvoiceLinesFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (currencyCode != null) r'currencyCode': currencyCode,
        if (purchaseOrderNumber != null)
          r'purchaseOrderNumber': purchaseOrderNumber,
        if (grossAmount != null) r'grossAmount': grossAmount,
        if (lineAmount != null) r'lineAmount': lineAmount,
      });

  Input$InvoiceLinesFilterInput._(this._$data);

  factory Input$InvoiceLinesFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$InvoiceLinesFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$InvoiceLinesFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('currencyCode')) {
      final l$currencyCode = data['currencyCode'];
      result$data['currencyCode'] = l$currencyCode == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$currencyCode as Map<String, dynamic>));
    }
    if (data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = data['purchaseOrderNumber'];
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$purchaseOrderNumber as Map<String, dynamic>));
    }
    if (data.containsKey('grossAmount')) {
      final l$grossAmount = data['grossAmount'];
      result$data['grossAmount'] = l$grossAmount == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$grossAmount as Map<String, dynamic>));
    }
    if (data.containsKey('lineAmount')) {
      final l$lineAmount = data['lineAmount'];
      result$data['lineAmount'] = l$lineAmount == null
          ? null
          : Input$DecimalOperationFilterInput.fromJson(
              (l$lineAmount as Map<String, dynamic>));
    }
    return Input$InvoiceLinesFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$InvoiceLinesFilterInput>? get and =>
      (_$data['and'] as List<Input$InvoiceLinesFilterInput>?);

  List<Input$InvoiceLinesFilterInput>? get or =>
      (_$data['or'] as List<Input$InvoiceLinesFilterInput>?);

  Input$StringOperationFilterInput? get currencyCode =>
      (_$data['currencyCode'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get purchaseOrderNumber =>
      (_$data['purchaseOrderNumber'] as Input$StringOperationFilterInput?);

  Input$DecimalOperationFilterInput? get grossAmount =>
      (_$data['grossAmount'] as Input$DecimalOperationFilterInput?);

  Input$DecimalOperationFilterInput? get lineAmount =>
      (_$data['lineAmount'] as Input$DecimalOperationFilterInput?);

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
    if (_$data.containsKey('currencyCode')) {
      final l$currencyCode = currencyCode;
      result$data['currencyCode'] = l$currencyCode?.toJson();
    }
    if (_$data.containsKey('purchaseOrderNumber')) {
      final l$purchaseOrderNumber = purchaseOrderNumber;
      result$data['purchaseOrderNumber'] = l$purchaseOrderNumber?.toJson();
    }
    if (_$data.containsKey('grossAmount')) {
      final l$grossAmount = grossAmount;
      result$data['grossAmount'] = l$grossAmount?.toJson();
    }
    if (_$data.containsKey('lineAmount')) {
      final l$lineAmount = lineAmount;
      result$data['lineAmount'] = l$lineAmount?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$InvoiceLinesFilterInput<Input$InvoiceLinesFilterInput>
      get copyWith => CopyWith$Input$InvoiceLinesFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InvoiceLinesFilterInput ||
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
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (_$data.containsKey('currencyCode') !=
        other._$data.containsKey('currencyCode')) {
      return false;
    }
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final lOther$purchaseOrderNumber = other.purchaseOrderNumber;
    if (_$data.containsKey('purchaseOrderNumber') !=
        other._$data.containsKey('purchaseOrderNumber')) {
      return false;
    }
    if (l$purchaseOrderNumber != lOther$purchaseOrderNumber) {
      return false;
    }
    final l$grossAmount = grossAmount;
    final lOther$grossAmount = other.grossAmount;
    if (_$data.containsKey('grossAmount') !=
        other._$data.containsKey('grossAmount')) {
      return false;
    }
    if (l$grossAmount != lOther$grossAmount) {
      return false;
    }
    final l$lineAmount = lineAmount;
    final lOther$lineAmount = other.lineAmount;
    if (_$data.containsKey('lineAmount') !=
        other._$data.containsKey('lineAmount')) {
      return false;
    }
    if (l$lineAmount != lOther$lineAmount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$currencyCode = currencyCode;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final l$grossAmount = grossAmount;
    final l$lineAmount = lineAmount;
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
      _$data.containsKey('currencyCode') ? l$currencyCode : const {},
      _$data.containsKey('purchaseOrderNumber')
          ? l$purchaseOrderNumber
          : const {},
      _$data.containsKey('grossAmount') ? l$grossAmount : const {},
      _$data.containsKey('lineAmount') ? l$lineAmount : const {},
    ]);
  }
}

abstract class CopyWith$Input$InvoiceLinesFilterInput<TRes> {
  factory CopyWith$Input$InvoiceLinesFilterInput(
    Input$InvoiceLinesFilterInput instance,
    TRes Function(Input$InvoiceLinesFilterInput) then,
  ) = _CopyWithImpl$Input$InvoiceLinesFilterInput;

  factory CopyWith$Input$InvoiceLinesFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InvoiceLinesFilterInput;

  TRes call({
    List<Input$InvoiceLinesFilterInput>? and,
    List<Input$InvoiceLinesFilterInput>? or,
    Input$StringOperationFilterInput? currencyCode,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? grossAmount,
    Input$DecimalOperationFilterInput? lineAmount,
  });
  TRes and(
      Iterable<Input$InvoiceLinesFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InvoiceLinesFilterInput<
                      Input$InvoiceLinesFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$InvoiceLinesFilterInput>? Function(
              Iterable<
                  CopyWith$Input$InvoiceLinesFilterInput<
                      Input$InvoiceLinesFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get currencyCode;
  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get grossAmount;
  CopyWith$Input$DecimalOperationFilterInput<TRes> get lineAmount;
}

class _CopyWithImpl$Input$InvoiceLinesFilterInput<TRes>
    implements CopyWith$Input$InvoiceLinesFilterInput<TRes> {
  _CopyWithImpl$Input$InvoiceLinesFilterInput(
    this._instance,
    this._then,
  );

  final Input$InvoiceLinesFilterInput _instance;

  final TRes Function(Input$InvoiceLinesFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? currencyCode = _undefined,
    Object? purchaseOrderNumber = _undefined,
    Object? grossAmount = _undefined,
    Object? lineAmount = _undefined,
  }) =>
      _then(Input$InvoiceLinesFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$InvoiceLinesFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$InvoiceLinesFilterInput>?),
        if (currencyCode != _undefined)
          'currencyCode': (currencyCode as Input$StringOperationFilterInput?),
        if (purchaseOrderNumber != _undefined)
          'purchaseOrderNumber':
              (purchaseOrderNumber as Input$StringOperationFilterInput?),
        if (grossAmount != _undefined)
          'grossAmount': (grossAmount as Input$DecimalOperationFilterInput?),
        if (lineAmount != _undefined)
          'lineAmount': (lineAmount as Input$DecimalOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$InvoiceLinesFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InvoiceLinesFilterInput<
                          Input$InvoiceLinesFilterInput>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$InvoiceLinesFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$InvoiceLinesFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$InvoiceLinesFilterInput<
                          Input$InvoiceLinesFilterInput>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$InvoiceLinesFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$StringOperationFilterInput<TRes> get currencyCode {
    final local$currencyCode = _instance.currencyCode;
    return local$currencyCode == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$currencyCode, (e) => call(currencyCode: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber {
    final local$purchaseOrderNumber = _instance.purchaseOrderNumber;
    return local$purchaseOrderNumber == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$purchaseOrderNumber, (e) => call(purchaseOrderNumber: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get grossAmount {
    final local$grossAmount = _instance.grossAmount;
    return local$grossAmount == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$grossAmount, (e) => call(grossAmount: e));
  }

  CopyWith$Input$DecimalOperationFilterInput<TRes> get lineAmount {
    final local$lineAmount = _instance.lineAmount;
    return local$lineAmount == null
        ? CopyWith$Input$DecimalOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$DecimalOperationFilterInput(
            local$lineAmount, (e) => call(lineAmount: e));
  }
}

class _CopyWithStubImpl$Input$InvoiceLinesFilterInput<TRes>
    implements CopyWith$Input$InvoiceLinesFilterInput<TRes> {
  _CopyWithStubImpl$Input$InvoiceLinesFilterInput(this._res);

  TRes _res;

  call({
    List<Input$InvoiceLinesFilterInput>? and,
    List<Input$InvoiceLinesFilterInput>? or,
    Input$StringOperationFilterInput? currencyCode,
    Input$StringOperationFilterInput? purchaseOrderNumber,
    Input$DecimalOperationFilterInput? grossAmount,
    Input$DecimalOperationFilterInput? lineAmount,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get currencyCode =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get purchaseOrderNumber =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get grossAmount =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);

  CopyWith$Input$DecimalOperationFilterInput<TRes> get lineAmount =>
      CopyWith$Input$DecimalOperationFilterInput.stub(_res);
}

class Input$AccountFieldChangedFilterInput {
  factory Input$AccountFieldChangedFilterInput({
    List<Input$AccountFieldChangedFilterInput>? and,
    List<Input$AccountFieldChangedFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? oldValue,
    Input$StringOperationFilterInput? newValue,
  }) =>
      Input$AccountFieldChangedFilterInput._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (name != null) r'name': name,
        if (oldValue != null) r'oldValue': oldValue,
        if (newValue != null) r'newValue': newValue,
      });

  Input$AccountFieldChangedFilterInput._(this._$data);

  factory Input$AccountFieldChangedFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$AccountFieldChangedFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$AccountFieldChangedFilterInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$name as Map<String, dynamic>));
    }
    if (data.containsKey('oldValue')) {
      final l$oldValue = data['oldValue'];
      result$data['oldValue'] = l$oldValue == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$oldValue as Map<String, dynamic>));
    }
    if (data.containsKey('newValue')) {
      final l$newValue = data['newValue'];
      result$data['newValue'] = l$newValue == null
          ? null
          : Input$StringOperationFilterInput.fromJson(
              (l$newValue as Map<String, dynamic>));
    }
    return Input$AccountFieldChangedFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$AccountFieldChangedFilterInput>? get and =>
      (_$data['and'] as List<Input$AccountFieldChangedFilterInput>?);

  List<Input$AccountFieldChangedFilterInput>? get or =>
      (_$data['or'] as List<Input$AccountFieldChangedFilterInput>?);

  Input$StringOperationFilterInput? get name =>
      (_$data['name'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get oldValue =>
      (_$data['oldValue'] as Input$StringOperationFilterInput?);

  Input$StringOperationFilterInput? get newValue =>
      (_$data['newValue'] as Input$StringOperationFilterInput?);

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
    if (_$data.containsKey('oldValue')) {
      final l$oldValue = oldValue;
      result$data['oldValue'] = l$oldValue?.toJson();
    }
    if (_$data.containsKey('newValue')) {
      final l$newValue = newValue;
      result$data['newValue'] = l$newValue?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$AccountFieldChangedFilterInput<
          Input$AccountFieldChangedFilterInput>
      get copyWith => CopyWith$Input$AccountFieldChangedFilterInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountFieldChangedFilterInput ||
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
    final l$oldValue = oldValue;
    final lOther$oldValue = other.oldValue;
    if (_$data.containsKey('oldValue') !=
        other._$data.containsKey('oldValue')) {
      return false;
    }
    if (l$oldValue != lOther$oldValue) {
      return false;
    }
    final l$newValue = newValue;
    final lOther$newValue = other.newValue;
    if (_$data.containsKey('newValue') !=
        other._$data.containsKey('newValue')) {
      return false;
    }
    if (l$newValue != lOther$newValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$name = name;
    final l$oldValue = oldValue;
    final l$newValue = newValue;
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
      _$data.containsKey('oldValue') ? l$oldValue : const {},
      _$data.containsKey('newValue') ? l$newValue : const {},
    ]);
  }
}

abstract class CopyWith$Input$AccountFieldChangedFilterInput<TRes> {
  factory CopyWith$Input$AccountFieldChangedFilterInput(
    Input$AccountFieldChangedFilterInput instance,
    TRes Function(Input$AccountFieldChangedFilterInput) then,
  ) = _CopyWithImpl$Input$AccountFieldChangedFilterInput;

  factory CopyWith$Input$AccountFieldChangedFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountFieldChangedFilterInput;

  TRes call({
    List<Input$AccountFieldChangedFilterInput>? and,
    List<Input$AccountFieldChangedFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? oldValue,
    Input$StringOperationFilterInput? newValue,
  });
  TRes and(
      Iterable<Input$AccountFieldChangedFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AccountFieldChangedFilterInput<
                      Input$AccountFieldChangedFilterInput>>?)
          _fn);
  TRes or(
      Iterable<Input$AccountFieldChangedFilterInput>? Function(
              Iterable<
                  CopyWith$Input$AccountFieldChangedFilterInput<
                      Input$AccountFieldChangedFilterInput>>?)
          _fn);
  CopyWith$Input$StringOperationFilterInput<TRes> get name;
  CopyWith$Input$StringOperationFilterInput<TRes> get oldValue;
  CopyWith$Input$StringOperationFilterInput<TRes> get newValue;
}

class _CopyWithImpl$Input$AccountFieldChangedFilterInput<TRes>
    implements CopyWith$Input$AccountFieldChangedFilterInput<TRes> {
  _CopyWithImpl$Input$AccountFieldChangedFilterInput(
    this._instance,
    this._then,
  );

  final Input$AccountFieldChangedFilterInput _instance;

  final TRes Function(Input$AccountFieldChangedFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? name = _undefined,
    Object? oldValue = _undefined,
    Object? newValue = _undefined,
  }) =>
      _then(Input$AccountFieldChangedFilterInput._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$AccountFieldChangedFilterInput>?),
        if (or != _undefined)
          'or': (or as List<Input$AccountFieldChangedFilterInput>?),
        if (name != _undefined)
          'name': (name as Input$StringOperationFilterInput?),
        if (oldValue != _undefined)
          'oldValue': (oldValue as Input$StringOperationFilterInput?),
        if (newValue != _undefined)
          'newValue': (newValue as Input$StringOperationFilterInput?),
      }));

  TRes and(
          Iterable<Input$AccountFieldChangedFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AccountFieldChangedFilterInput<
                          Input$AccountFieldChangedFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$AccountFieldChangedFilterInput(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$AccountFieldChangedFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$AccountFieldChangedFilterInput<
                          Input$AccountFieldChangedFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$AccountFieldChangedFilterInput(
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

  CopyWith$Input$StringOperationFilterInput<TRes> get oldValue {
    final local$oldValue = _instance.oldValue;
    return local$oldValue == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$oldValue, (e) => call(oldValue: e));
  }

  CopyWith$Input$StringOperationFilterInput<TRes> get newValue {
    final local$newValue = _instance.newValue;
    return local$newValue == null
        ? CopyWith$Input$StringOperationFilterInput.stub(_then(_instance))
        : CopyWith$Input$StringOperationFilterInput(
            local$newValue, (e) => call(newValue: e));
  }
}

class _CopyWithStubImpl$Input$AccountFieldChangedFilterInput<TRes>
    implements CopyWith$Input$AccountFieldChangedFilterInput<TRes> {
  _CopyWithStubImpl$Input$AccountFieldChangedFilterInput(this._res);

  TRes _res;

  call({
    List<Input$AccountFieldChangedFilterInput>? and,
    List<Input$AccountFieldChangedFilterInput>? or,
    Input$StringOperationFilterInput? name,
    Input$StringOperationFilterInput? oldValue,
    Input$StringOperationFilterInput? newValue,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$StringOperationFilterInput<TRes> get name =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get oldValue =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);

  CopyWith$Input$StringOperationFilterInput<TRes> get newValue =>
      CopyWith$Input$StringOperationFilterInput.stub(_res);
}

class Input$TicketPaymentRequestInput {
  factory Input$TicketPaymentRequestInput({
    required int legacyTicketNumber,
    required int paymentMethodId,
  }) =>
      Input$TicketPaymentRequestInput._({
        r'legacyTicketNumber': legacyTicketNumber,
        r'paymentMethodId': paymentMethodId,
      });

  Input$TicketPaymentRequestInput._(this._$data);

  factory Input$TicketPaymentRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$legacyTicketNumber = data['legacyTicketNumber'];
    result$data['legacyTicketNumber'] = (l$legacyTicketNumber as int);
    final l$paymentMethodId = data['paymentMethodId'];
    result$data['paymentMethodId'] = (l$paymentMethodId as int);
    return Input$TicketPaymentRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get legacyTicketNumber => (_$data['legacyTicketNumber'] as int);

  int get paymentMethodId => (_$data['paymentMethodId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$legacyTicketNumber = legacyTicketNumber;
    result$data['legacyTicketNumber'] = l$legacyTicketNumber;
    final l$paymentMethodId = paymentMethodId;
    result$data['paymentMethodId'] = l$paymentMethodId;
    return result$data;
  }

  CopyWith$Input$TicketPaymentRequestInput<Input$TicketPaymentRequestInput>
      get copyWith => CopyWith$Input$TicketPaymentRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TicketPaymentRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$legacyTicketNumber = legacyTicketNumber;
    final lOther$legacyTicketNumber = other.legacyTicketNumber;
    if (l$legacyTicketNumber != lOther$legacyTicketNumber) {
      return false;
    }
    final l$paymentMethodId = paymentMethodId;
    final lOther$paymentMethodId = other.paymentMethodId;
    if (l$paymentMethodId != lOther$paymentMethodId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$legacyTicketNumber = legacyTicketNumber;
    final l$paymentMethodId = paymentMethodId;
    return Object.hashAll([
      l$legacyTicketNumber,
      l$paymentMethodId,
    ]);
  }
}

abstract class CopyWith$Input$TicketPaymentRequestInput<TRes> {
  factory CopyWith$Input$TicketPaymentRequestInput(
    Input$TicketPaymentRequestInput instance,
    TRes Function(Input$TicketPaymentRequestInput) then,
  ) = _CopyWithImpl$Input$TicketPaymentRequestInput;

  factory CopyWith$Input$TicketPaymentRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TicketPaymentRequestInput;

  TRes call({
    int? legacyTicketNumber,
    int? paymentMethodId,
  });
}

class _CopyWithImpl$Input$TicketPaymentRequestInput<TRes>
    implements CopyWith$Input$TicketPaymentRequestInput<TRes> {
  _CopyWithImpl$Input$TicketPaymentRequestInput(
    this._instance,
    this._then,
  );

  final Input$TicketPaymentRequestInput _instance;

  final TRes Function(Input$TicketPaymentRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? legacyTicketNumber = _undefined,
    Object? paymentMethodId = _undefined,
  }) =>
      _then(Input$TicketPaymentRequestInput._({
        ..._instance._$data,
        if (legacyTicketNumber != _undefined && legacyTicketNumber != null)
          'legacyTicketNumber': (legacyTicketNumber as int),
        if (paymentMethodId != _undefined && paymentMethodId != null)
          'paymentMethodId': (paymentMethodId as int),
      }));
}

class _CopyWithStubImpl$Input$TicketPaymentRequestInput<TRes>
    implements CopyWith$Input$TicketPaymentRequestInput<TRes> {
  _CopyWithStubImpl$Input$TicketPaymentRequestInput(this._res);

  TRes _res;

  call({
    int? legacyTicketNumber,
    int? paymentMethodId,
  }) =>
      _res;
}

class Input$AccountChangeRequestInput {
  factory Input$AccountChangeRequestInput({
    String? accountName,
    String? requestedBy,
    required List<Input$AccountFieldChangedInput> fields,
  }) =>
      Input$AccountChangeRequestInput._({
        if (accountName != null) r'accountName': accountName,
        if (requestedBy != null) r'requestedBy': requestedBy,
        r'fields': fields,
      });

  Input$AccountChangeRequestInput._(this._$data);

  factory Input$AccountChangeRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('accountName')) {
      final l$accountName = data['accountName'];
      result$data['accountName'] = (l$accountName as String?);
    }
    if (data.containsKey('requestedBy')) {
      final l$requestedBy = data['requestedBy'];
      result$data['requestedBy'] = (l$requestedBy as String?);
    }
    final l$fields = data['fields'];
    result$data['fields'] = (l$fields as List<dynamic>)
        .map((e) => Input$AccountFieldChangedInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Input$AccountChangeRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get accountName => (_$data['accountName'] as String?);

  String? get requestedBy => (_$data['requestedBy'] as String?);

  List<Input$AccountFieldChangedInput> get fields =>
      (_$data['fields'] as List<Input$AccountFieldChangedInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('accountName')) {
      final l$accountName = accountName;
      result$data['accountName'] = l$accountName;
    }
    if (_$data.containsKey('requestedBy')) {
      final l$requestedBy = requestedBy;
      result$data['requestedBy'] = l$requestedBy;
    }
    final l$fields = fields;
    result$data['fields'] = l$fields.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$AccountChangeRequestInput<Input$AccountChangeRequestInput>
      get copyWith => CopyWith$Input$AccountChangeRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountChangeRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountName = accountName;
    final lOther$accountName = other.accountName;
    if (_$data.containsKey('accountName') !=
        other._$data.containsKey('accountName')) {
      return false;
    }
    if (l$accountName != lOther$accountName) {
      return false;
    }
    final l$requestedBy = requestedBy;
    final lOther$requestedBy = other.requestedBy;
    if (_$data.containsKey('requestedBy') !=
        other._$data.containsKey('requestedBy')) {
      return false;
    }
    if (l$requestedBy != lOther$requestedBy) {
      return false;
    }
    final l$fields = fields;
    final lOther$fields = other.fields;
    if (l$fields.length != lOther$fields.length) {
      return false;
    }
    for (int i = 0; i < l$fields.length; i++) {
      final l$fields$entry = l$fields[i];
      final lOther$fields$entry = lOther$fields[i];
      if (l$fields$entry != lOther$fields$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountName = accountName;
    final l$requestedBy = requestedBy;
    final l$fields = fields;
    return Object.hashAll([
      _$data.containsKey('accountName') ? l$accountName : const {},
      _$data.containsKey('requestedBy') ? l$requestedBy : const {},
      Object.hashAll(l$fields.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AccountChangeRequestInput<TRes> {
  factory CopyWith$Input$AccountChangeRequestInput(
    Input$AccountChangeRequestInput instance,
    TRes Function(Input$AccountChangeRequestInput) then,
  ) = _CopyWithImpl$Input$AccountChangeRequestInput;

  factory CopyWith$Input$AccountChangeRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountChangeRequestInput;

  TRes call({
    String? accountName,
    String? requestedBy,
    List<Input$AccountFieldChangedInput>? fields,
  });
  TRes fields(
      Iterable<Input$AccountFieldChangedInput> Function(
              Iterable<
                  CopyWith$Input$AccountFieldChangedInput<
                      Input$AccountFieldChangedInput>>)
          _fn);
}

class _CopyWithImpl$Input$AccountChangeRequestInput<TRes>
    implements CopyWith$Input$AccountChangeRequestInput<TRes> {
  _CopyWithImpl$Input$AccountChangeRequestInput(
    this._instance,
    this._then,
  );

  final Input$AccountChangeRequestInput _instance;

  final TRes Function(Input$AccountChangeRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountName = _undefined,
    Object? requestedBy = _undefined,
    Object? fields = _undefined,
  }) =>
      _then(Input$AccountChangeRequestInput._({
        ..._instance._$data,
        if (accountName != _undefined) 'accountName': (accountName as String?),
        if (requestedBy != _undefined) 'requestedBy': (requestedBy as String?),
        if (fields != _undefined && fields != null)
          'fields': (fields as List<Input$AccountFieldChangedInput>),
      }));

  TRes fields(
          Iterable<Input$AccountFieldChangedInput> Function(
                  Iterable<
                      CopyWith$Input$AccountFieldChangedInput<
                          Input$AccountFieldChangedInput>>)
              _fn) =>
      call(
          fields: _fn(_instance.fields
              .map((e) => CopyWith$Input$AccountFieldChangedInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$AccountChangeRequestInput<TRes>
    implements CopyWith$Input$AccountChangeRequestInput<TRes> {
  _CopyWithStubImpl$Input$AccountChangeRequestInput(this._res);

  TRes _res;

  call({
    String? accountName,
    String? requestedBy,
    List<Input$AccountFieldChangedInput>? fields,
  }) =>
      _res;

  fields(_fn) => _res;
}

class Input$RemittanceSortOrderInput {
  factory Input$RemittanceSortOrderInput({
    required String field,
    required bool ascending,
  }) =>
      Input$RemittanceSortOrderInput._({
        r'field': field,
        r'ascending': ascending,
      });

  Input$RemittanceSortOrderInput._(this._$data);

  factory Input$RemittanceSortOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = (l$field as String);
    final l$ascending = data['ascending'];
    result$data['ascending'] = (l$ascending as bool);
    return Input$RemittanceSortOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get field => (_$data['field'] as String);

  bool get ascending => (_$data['ascending'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = l$field;
    final l$ascending = ascending;
    result$data['ascending'] = l$ascending;
    return result$data;
  }

  CopyWith$Input$RemittanceSortOrderInput<Input$RemittanceSortOrderInput>
      get copyWith => CopyWith$Input$RemittanceSortOrderInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RemittanceSortOrderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$ascending = ascending;
    final lOther$ascending = other.ascending;
    if (l$ascending != lOther$ascending) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$ascending = ascending;
    return Object.hashAll([
      l$field,
      l$ascending,
    ]);
  }
}

abstract class CopyWith$Input$RemittanceSortOrderInput<TRes> {
  factory CopyWith$Input$RemittanceSortOrderInput(
    Input$RemittanceSortOrderInput instance,
    TRes Function(Input$RemittanceSortOrderInput) then,
  ) = _CopyWithImpl$Input$RemittanceSortOrderInput;

  factory CopyWith$Input$RemittanceSortOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RemittanceSortOrderInput;

  TRes call({
    String? field,
    bool? ascending,
  });
}

class _CopyWithImpl$Input$RemittanceSortOrderInput<TRes>
    implements CopyWith$Input$RemittanceSortOrderInput<TRes> {
  _CopyWithImpl$Input$RemittanceSortOrderInput(
    this._instance,
    this._then,
  );

  final Input$RemittanceSortOrderInput _instance;

  final TRes Function(Input$RemittanceSortOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? ascending = _undefined,
  }) =>
      _then(Input$RemittanceSortOrderInput._({
        ..._instance._$data,
        if (field != _undefined && field != null) 'field': (field as String),
        if (ascending != _undefined && ascending != null)
          'ascending': (ascending as bool),
      }));
}

class _CopyWithStubImpl$Input$RemittanceSortOrderInput<TRes>
    implements CopyWith$Input$RemittanceSortOrderInput<TRes> {
  _CopyWithStubImpl$Input$RemittanceSortOrderInput(this._res);

  TRes _res;

  call({
    String? field,
    bool? ascending,
  }) =>
      _res;
}

class Input$PortalPaymentRequestInput {
  factory Input$PortalPaymentRequestInput({
    required String partyAccountNo,
    required String partyName,
    String? purchaseOrderNo,
    required String transactionNo,
    required DateTime transactionDate,
    required DateTime transactionDueDate,
    required String transactionDescription,
    required double transactionGrossAmount,
    required String transactionGrossAmountCurrency,
    required String companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    int? paymentRequestId,
    required String transactionPdf,
    required Enum$TransactionType transactionType,
    required List<Input$TransactionLineInput> transactionLines,
    String? userSubmitted,
    String? userEmail,
    String? userPhone,
    DateTime? submittedDate,
  }) =>
      Input$PortalPaymentRequestInput._({
        r'partyAccountNo': partyAccountNo,
        r'partyName': partyName,
        if (purchaseOrderNo != null) r'purchaseOrderNo': purchaseOrderNo,
        r'transactionNo': transactionNo,
        r'transactionDate': transactionDate,
        r'transactionDueDate': transactionDueDate,
        r'transactionDescription': transactionDescription,
        r'transactionGrossAmount': transactionGrossAmount,
        r'transactionGrossAmountCurrency': transactionGrossAmountCurrency,
        r'companyToBeBilled': companyToBeBilled,
        if (paymentMethods != null) r'paymentMethods': paymentMethods,
        if (paymentRequestId != null) r'paymentRequestId': paymentRequestId,
        r'transactionPdf': transactionPdf,
        r'transactionType': transactionType,
        r'transactionLines': transactionLines,
        if (userSubmitted != null) r'userSubmitted': userSubmitted,
        if (userEmail != null) r'userEmail': userEmail,
        if (userPhone != null) r'userPhone': userPhone,
        if (submittedDate != null) r'submittedDate': submittedDate,
      });

  Input$PortalPaymentRequestInput._(this._$data);

  factory Input$PortalPaymentRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    final l$partyName = data['partyName'];
    result$data['partyName'] = (l$partyName as String);
    if (data.containsKey('purchaseOrderNo')) {
      final l$purchaseOrderNo = data['purchaseOrderNo'];
      result$data['purchaseOrderNo'] = (l$purchaseOrderNo as String?);
    }
    final l$transactionNo = data['transactionNo'];
    result$data['transactionNo'] = (l$transactionNo as String);
    final l$transactionDate = data['transactionDate'];
    result$data['transactionDate'] =
        DateTime.parse((l$transactionDate as String));
    final l$transactionDueDate = data['transactionDueDate'];
    result$data['transactionDueDate'] =
        DateTime.parse((l$transactionDueDate as String));
    final l$transactionDescription = data['transactionDescription'];
    result$data['transactionDescription'] =
        (l$transactionDescription as String);
    final l$transactionGrossAmount = data['transactionGrossAmount'];
    result$data['transactionGrossAmount'] =
        (l$transactionGrossAmount as num).toDouble();
    final l$transactionGrossAmountCurrency =
        data['transactionGrossAmountCurrency'];
    result$data['transactionGrossAmountCurrency'] =
        (l$transactionGrossAmountCurrency as String);
    final l$companyToBeBilled = data['companyToBeBilled'];
    result$data['companyToBeBilled'] = (l$companyToBeBilled as String);
    if (data.containsKey('paymentMethods')) {
      final l$paymentMethods = data['paymentMethods'];
      result$data['paymentMethods'] = l$paymentMethods == null
          ? null
          : fromJson$Enum$PaymentMethods((l$paymentMethods as String));
    }
    if (data.containsKey('paymentRequestId')) {
      final l$paymentRequestId = data['paymentRequestId'];
      result$data['paymentRequestId'] = (l$paymentRequestId as int?);
    }
    final l$transactionPdf = data['transactionPdf'];
    result$data['transactionPdf'] = (l$transactionPdf as String);
    final l$transactionType = data['transactionType'];
    result$data['transactionType'] =
        fromJson$Enum$TransactionType((l$transactionType as String));
    final l$transactionLines = data['transactionLines'];
    result$data['transactionLines'] = (l$transactionLines as List<dynamic>)
        .map((e) =>
            Input$TransactionLineInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('userSubmitted')) {
      final l$userSubmitted = data['userSubmitted'];
      result$data['userSubmitted'] = (l$userSubmitted as String?);
    }
    if (data.containsKey('userEmail')) {
      final l$userEmail = data['userEmail'];
      result$data['userEmail'] = (l$userEmail as String?);
    }
    if (data.containsKey('userPhone')) {
      final l$userPhone = data['userPhone'];
      result$data['userPhone'] = (l$userPhone as String?);
    }
    if (data.containsKey('submittedDate')) {
      final l$submittedDate = data['submittedDate'];
      result$data['submittedDate'] = l$submittedDate == null
          ? null
          : DateTime.parse((l$submittedDate as String));
    }
    return Input$PortalPaymentRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  String get partyName => (_$data['partyName'] as String);

  String? get purchaseOrderNo => (_$data['purchaseOrderNo'] as String?);

  String get transactionNo => (_$data['transactionNo'] as String);

  DateTime get transactionDate => (_$data['transactionDate'] as DateTime);

  DateTime get transactionDueDate => (_$data['transactionDueDate'] as DateTime);

  String get transactionDescription =>
      (_$data['transactionDescription'] as String);

  double get transactionGrossAmount =>
      (_$data['transactionGrossAmount'] as double);

  String get transactionGrossAmountCurrency =>
      (_$data['transactionGrossAmountCurrency'] as String);

  String get companyToBeBilled => (_$data['companyToBeBilled'] as String);

  Enum$PaymentMethods? get paymentMethods =>
      (_$data['paymentMethods'] as Enum$PaymentMethods?);

  int? get paymentRequestId => (_$data['paymentRequestId'] as int?);

  String get transactionPdf => (_$data['transactionPdf'] as String);

  Enum$TransactionType get transactionType =>
      (_$data['transactionType'] as Enum$TransactionType);

  List<Input$TransactionLineInput> get transactionLines =>
      (_$data['transactionLines'] as List<Input$TransactionLineInput>);

  String? get userSubmitted => (_$data['userSubmitted'] as String?);

  String? get userEmail => (_$data['userEmail'] as String?);

  String? get userPhone => (_$data['userPhone'] as String?);

  DateTime? get submittedDate => (_$data['submittedDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    result$data['partyName'] = l$partyName;
    if (_$data.containsKey('purchaseOrderNo')) {
      final l$purchaseOrderNo = purchaseOrderNo;
      result$data['purchaseOrderNo'] = l$purchaseOrderNo;
    }
    final l$transactionNo = transactionNo;
    result$data['transactionNo'] = l$transactionNo;
    final l$transactionDate = transactionDate;
    result$data['transactionDate'] = l$transactionDate.toIso8601String();
    final l$transactionDueDate = transactionDueDate;
    result$data['transactionDueDate'] = l$transactionDueDate.toIso8601String();
    final l$transactionDescription = transactionDescription;
    result$data['transactionDescription'] = l$transactionDescription;
    final l$transactionGrossAmount = transactionGrossAmount;
    result$data['transactionGrossAmount'] = l$transactionGrossAmount;
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    result$data['transactionGrossAmountCurrency'] =
        l$transactionGrossAmountCurrency;
    final l$companyToBeBilled = companyToBeBilled;
    result$data['companyToBeBilled'] = l$companyToBeBilled;
    if (_$data.containsKey('paymentMethods')) {
      final l$paymentMethods = paymentMethods;
      result$data['paymentMethods'] = l$paymentMethods == null
          ? null
          : toJson$Enum$PaymentMethods(l$paymentMethods);
    }
    if (_$data.containsKey('paymentRequestId')) {
      final l$paymentRequestId = paymentRequestId;
      result$data['paymentRequestId'] = l$paymentRequestId;
    }
    final l$transactionPdf = transactionPdf;
    result$data['transactionPdf'] = l$transactionPdf;
    final l$transactionType = transactionType;
    result$data['transactionType'] =
        toJson$Enum$TransactionType(l$transactionType);
    final l$transactionLines = transactionLines;
    result$data['transactionLines'] =
        l$transactionLines.map((e) => e.toJson()).toList();
    if (_$data.containsKey('userSubmitted')) {
      final l$userSubmitted = userSubmitted;
      result$data['userSubmitted'] = l$userSubmitted;
    }
    if (_$data.containsKey('userEmail')) {
      final l$userEmail = userEmail;
      result$data['userEmail'] = l$userEmail;
    }
    if (_$data.containsKey('userPhone')) {
      final l$userPhone = userPhone;
      result$data['userPhone'] = l$userPhone;
    }
    if (_$data.containsKey('submittedDate')) {
      final l$submittedDate = submittedDate;
      result$data['submittedDate'] = l$submittedDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$PortalPaymentRequestInput<Input$PortalPaymentRequestInput>
      get copyWith => CopyWith$Input$PortalPaymentRequestInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PortalPaymentRequestInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$purchaseOrderNo = purchaseOrderNo;
    final lOther$purchaseOrderNo = other.purchaseOrderNo;
    if (_$data.containsKey('purchaseOrderNo') !=
        other._$data.containsKey('purchaseOrderNo')) {
      return false;
    }
    if (l$purchaseOrderNo != lOther$purchaseOrderNo) {
      return false;
    }
    final l$transactionNo = transactionNo;
    final lOther$transactionNo = other.transactionNo;
    if (l$transactionNo != lOther$transactionNo) {
      return false;
    }
    final l$transactionDate = transactionDate;
    final lOther$transactionDate = other.transactionDate;
    if (l$transactionDate != lOther$transactionDate) {
      return false;
    }
    final l$transactionDueDate = transactionDueDate;
    final lOther$transactionDueDate = other.transactionDueDate;
    if (l$transactionDueDate != lOther$transactionDueDate) {
      return false;
    }
    final l$transactionDescription = transactionDescription;
    final lOther$transactionDescription = other.transactionDescription;
    if (l$transactionDescription != lOther$transactionDescription) {
      return false;
    }
    final l$transactionGrossAmount = transactionGrossAmount;
    final lOther$transactionGrossAmount = other.transactionGrossAmount;
    if (l$transactionGrossAmount != lOther$transactionGrossAmount) {
      return false;
    }
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    final lOther$transactionGrossAmountCurrency =
        other.transactionGrossAmountCurrency;
    if (l$transactionGrossAmountCurrency !=
        lOther$transactionGrossAmountCurrency) {
      return false;
    }
    final l$companyToBeBilled = companyToBeBilled;
    final lOther$companyToBeBilled = other.companyToBeBilled;
    if (l$companyToBeBilled != lOther$companyToBeBilled) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (_$data.containsKey('paymentMethods') !=
        other._$data.containsKey('paymentMethods')) {
      return false;
    }
    if (l$paymentMethods != lOther$paymentMethods) {
      return false;
    }
    final l$paymentRequestId = paymentRequestId;
    final lOther$paymentRequestId = other.paymentRequestId;
    if (_$data.containsKey('paymentRequestId') !=
        other._$data.containsKey('paymentRequestId')) {
      return false;
    }
    if (l$paymentRequestId != lOther$paymentRequestId) {
      return false;
    }
    final l$transactionPdf = transactionPdf;
    final lOther$transactionPdf = other.transactionPdf;
    if (l$transactionPdf != lOther$transactionPdf) {
      return false;
    }
    final l$transactionType = transactionType;
    final lOther$transactionType = other.transactionType;
    if (l$transactionType != lOther$transactionType) {
      return false;
    }
    final l$transactionLines = transactionLines;
    final lOther$transactionLines = other.transactionLines;
    if (l$transactionLines.length != lOther$transactionLines.length) {
      return false;
    }
    for (int i = 0; i < l$transactionLines.length; i++) {
      final l$transactionLines$entry = l$transactionLines[i];
      final lOther$transactionLines$entry = lOther$transactionLines[i];
      if (l$transactionLines$entry != lOther$transactionLines$entry) {
        return false;
      }
    }
    final l$userSubmitted = userSubmitted;
    final lOther$userSubmitted = other.userSubmitted;
    if (_$data.containsKey('userSubmitted') !=
        other._$data.containsKey('userSubmitted')) {
      return false;
    }
    if (l$userSubmitted != lOther$userSubmitted) {
      return false;
    }
    final l$userEmail = userEmail;
    final lOther$userEmail = other.userEmail;
    if (_$data.containsKey('userEmail') !=
        other._$data.containsKey('userEmail')) {
      return false;
    }
    if (l$userEmail != lOther$userEmail) {
      return false;
    }
    final l$userPhone = userPhone;
    final lOther$userPhone = other.userPhone;
    if (_$data.containsKey('userPhone') !=
        other._$data.containsKey('userPhone')) {
      return false;
    }
    if (l$userPhone != lOther$userPhone) {
      return false;
    }
    final l$submittedDate = submittedDate;
    final lOther$submittedDate = other.submittedDate;
    if (_$data.containsKey('submittedDate') !=
        other._$data.containsKey('submittedDate')) {
      return false;
    }
    if (l$submittedDate != lOther$submittedDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$purchaseOrderNo = purchaseOrderNo;
    final l$transactionNo = transactionNo;
    final l$transactionDate = transactionDate;
    final l$transactionDueDate = transactionDueDate;
    final l$transactionDescription = transactionDescription;
    final l$transactionGrossAmount = transactionGrossAmount;
    final l$transactionGrossAmountCurrency = transactionGrossAmountCurrency;
    final l$companyToBeBilled = companyToBeBilled;
    final l$paymentMethods = paymentMethods;
    final l$paymentRequestId = paymentRequestId;
    final l$transactionPdf = transactionPdf;
    final l$transactionType = transactionType;
    final l$transactionLines = transactionLines;
    final l$userSubmitted = userSubmitted;
    final l$userEmail = userEmail;
    final l$userPhone = userPhone;
    final l$submittedDate = submittedDate;
    return Object.hashAll([
      l$partyAccountNo,
      l$partyName,
      _$data.containsKey('purchaseOrderNo') ? l$purchaseOrderNo : const {},
      l$transactionNo,
      l$transactionDate,
      l$transactionDueDate,
      l$transactionDescription,
      l$transactionGrossAmount,
      l$transactionGrossAmountCurrency,
      l$companyToBeBilled,
      _$data.containsKey('paymentMethods') ? l$paymentMethods : const {},
      _$data.containsKey('paymentRequestId') ? l$paymentRequestId : const {},
      l$transactionPdf,
      l$transactionType,
      Object.hashAll(l$transactionLines.map((v) => v)),
      _$data.containsKey('userSubmitted') ? l$userSubmitted : const {},
      _$data.containsKey('userEmail') ? l$userEmail : const {},
      _$data.containsKey('userPhone') ? l$userPhone : const {},
      _$data.containsKey('submittedDate') ? l$submittedDate : const {},
    ]);
  }
}

abstract class CopyWith$Input$PortalPaymentRequestInput<TRes> {
  factory CopyWith$Input$PortalPaymentRequestInput(
    Input$PortalPaymentRequestInput instance,
    TRes Function(Input$PortalPaymentRequestInput) then,
  ) = _CopyWithImpl$Input$PortalPaymentRequestInput;

  factory CopyWith$Input$PortalPaymentRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PortalPaymentRequestInput;

  TRes call({
    String? partyAccountNo,
    String? partyName,
    String? purchaseOrderNo,
    String? transactionNo,
    DateTime? transactionDate,
    DateTime? transactionDueDate,
    String? transactionDescription,
    double? transactionGrossAmount,
    String? transactionGrossAmountCurrency,
    String? companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    int? paymentRequestId,
    String? transactionPdf,
    Enum$TransactionType? transactionType,
    List<Input$TransactionLineInput>? transactionLines,
    String? userSubmitted,
    String? userEmail,
    String? userPhone,
    DateTime? submittedDate,
  });
  TRes transactionLines(
      Iterable<Input$TransactionLineInput> Function(
              Iterable<
                  CopyWith$Input$TransactionLineInput<
                      Input$TransactionLineInput>>)
          _fn);
}

class _CopyWithImpl$Input$PortalPaymentRequestInput<TRes>
    implements CopyWith$Input$PortalPaymentRequestInput<TRes> {
  _CopyWithImpl$Input$PortalPaymentRequestInput(
    this._instance,
    this._then,
  );

  final Input$PortalPaymentRequestInput _instance;

  final TRes Function(Input$PortalPaymentRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? purchaseOrderNo = _undefined,
    Object? transactionNo = _undefined,
    Object? transactionDate = _undefined,
    Object? transactionDueDate = _undefined,
    Object? transactionDescription = _undefined,
    Object? transactionGrossAmount = _undefined,
    Object? transactionGrossAmountCurrency = _undefined,
    Object? companyToBeBilled = _undefined,
    Object? paymentMethods = _undefined,
    Object? paymentRequestId = _undefined,
    Object? transactionPdf = _undefined,
    Object? transactionType = _undefined,
    Object? transactionLines = _undefined,
    Object? userSubmitted = _undefined,
    Object? userEmail = _undefined,
    Object? userPhone = _undefined,
    Object? submittedDate = _undefined,
  }) =>
      _then(Input$PortalPaymentRequestInput._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
        if (partyName != _undefined && partyName != null)
          'partyName': (partyName as String),
        if (purchaseOrderNo != _undefined)
          'purchaseOrderNo': (purchaseOrderNo as String?),
        if (transactionNo != _undefined && transactionNo != null)
          'transactionNo': (transactionNo as String),
        if (transactionDate != _undefined && transactionDate != null)
          'transactionDate': (transactionDate as DateTime),
        if (transactionDueDate != _undefined && transactionDueDate != null)
          'transactionDueDate': (transactionDueDate as DateTime),
        if (transactionDescription != _undefined &&
            transactionDescription != null)
          'transactionDescription': (transactionDescription as String),
        if (transactionGrossAmount != _undefined &&
            transactionGrossAmount != null)
          'transactionGrossAmount': (transactionGrossAmount as double),
        if (transactionGrossAmountCurrency != _undefined &&
            transactionGrossAmountCurrency != null)
          'transactionGrossAmountCurrency':
              (transactionGrossAmountCurrency as String),
        if (companyToBeBilled != _undefined && companyToBeBilled != null)
          'companyToBeBilled': (companyToBeBilled as String),
        if (paymentMethods != _undefined)
          'paymentMethods': (paymentMethods as Enum$PaymentMethods?),
        if (paymentRequestId != _undefined)
          'paymentRequestId': (paymentRequestId as int?),
        if (transactionPdf != _undefined && transactionPdf != null)
          'transactionPdf': (transactionPdf as String),
        if (transactionType != _undefined && transactionType != null)
          'transactionType': (transactionType as Enum$TransactionType),
        if (transactionLines != _undefined && transactionLines != null)
          'transactionLines':
              (transactionLines as List<Input$TransactionLineInput>),
        if (userSubmitted != _undefined)
          'userSubmitted': (userSubmitted as String?),
        if (userEmail != _undefined) 'userEmail': (userEmail as String?),
        if (userPhone != _undefined) 'userPhone': (userPhone as String?),
        if (submittedDate != _undefined)
          'submittedDate': (submittedDate as DateTime?),
      }));

  TRes transactionLines(
          Iterable<Input$TransactionLineInput> Function(
                  Iterable<
                      CopyWith$Input$TransactionLineInput<
                          Input$TransactionLineInput>>)
              _fn) =>
      call(
          transactionLines: _fn(_instance.transactionLines
              .map((e) => CopyWith$Input$TransactionLineInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$PortalPaymentRequestInput<TRes>
    implements CopyWith$Input$PortalPaymentRequestInput<TRes> {
  _CopyWithStubImpl$Input$PortalPaymentRequestInput(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    String? partyName,
    String? purchaseOrderNo,
    String? transactionNo,
    DateTime? transactionDate,
    DateTime? transactionDueDate,
    String? transactionDescription,
    double? transactionGrossAmount,
    String? transactionGrossAmountCurrency,
    String? companyToBeBilled,
    Enum$PaymentMethods? paymentMethods,
    int? paymentRequestId,
    String? transactionPdf,
    Enum$TransactionType? transactionType,
    List<Input$TransactionLineInput>? transactionLines,
    String? userSubmitted,
    String? userEmail,
    String? userPhone,
    DateTime? submittedDate,
  }) =>
      _res;

  transactionLines(_fn) => _res;
}

class Input$AccountFieldChangedInput {
  factory Input$AccountFieldChangedInput({
    required String name,
    required String oldValue,
    required String newValue,
  }) =>
      Input$AccountFieldChangedInput._({
        r'name': name,
        r'oldValue': oldValue,
        r'newValue': newValue,
      });

  Input$AccountFieldChangedInput._(this._$data);

  factory Input$AccountFieldChangedInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$oldValue = data['oldValue'];
    result$data['oldValue'] = (l$oldValue as String);
    final l$newValue = data['newValue'];
    result$data['newValue'] = (l$newValue as String);
    return Input$AccountFieldChangedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get oldValue => (_$data['oldValue'] as String);

  String get newValue => (_$data['newValue'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$oldValue = oldValue;
    result$data['oldValue'] = l$oldValue;
    final l$newValue = newValue;
    result$data['newValue'] = l$newValue;
    return result$data;
  }

  CopyWith$Input$AccountFieldChangedInput<Input$AccountFieldChangedInput>
      get copyWith => CopyWith$Input$AccountFieldChangedInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AccountFieldChangedInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$oldValue = oldValue;
    final lOther$oldValue = other.oldValue;
    if (l$oldValue != lOther$oldValue) {
      return false;
    }
    final l$newValue = newValue;
    final lOther$newValue = other.newValue;
    if (l$newValue != lOther$newValue) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$oldValue = oldValue;
    final l$newValue = newValue;
    return Object.hashAll([
      l$name,
      l$oldValue,
      l$newValue,
    ]);
  }
}

abstract class CopyWith$Input$AccountFieldChangedInput<TRes> {
  factory CopyWith$Input$AccountFieldChangedInput(
    Input$AccountFieldChangedInput instance,
    TRes Function(Input$AccountFieldChangedInput) then,
  ) = _CopyWithImpl$Input$AccountFieldChangedInput;

  factory CopyWith$Input$AccountFieldChangedInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AccountFieldChangedInput;

  TRes call({
    String? name,
    String? oldValue,
    String? newValue,
  });
}

class _CopyWithImpl$Input$AccountFieldChangedInput<TRes>
    implements CopyWith$Input$AccountFieldChangedInput<TRes> {
  _CopyWithImpl$Input$AccountFieldChangedInput(
    this._instance,
    this._then,
  );

  final Input$AccountFieldChangedInput _instance;

  final TRes Function(Input$AccountFieldChangedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? oldValue = _undefined,
    Object? newValue = _undefined,
  }) =>
      _then(Input$AccountFieldChangedInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (oldValue != _undefined && oldValue != null)
          'oldValue': (oldValue as String),
        if (newValue != _undefined && newValue != null)
          'newValue': (newValue as String),
      }));
}

class _CopyWithStubImpl$Input$AccountFieldChangedInput<TRes>
    implements CopyWith$Input$AccountFieldChangedInput<TRes> {
  _CopyWithStubImpl$Input$AccountFieldChangedInput(this._res);

  TRes _res;

  call({
    String? name,
    String? oldValue,
    String? newValue,
  }) =>
      _res;
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

enum Enum$TicketStatus {
  CLOSED,
  OPEN,
  $unknown;

  factory Enum$TicketStatus.fromJson(String value) =>
      fromJson$Enum$TicketStatus(value);

  String toJson() => toJson$Enum$TicketStatus(this);
}

String toJson$Enum$TicketStatus(Enum$TicketStatus e) {
  switch (e) {
    case Enum$TicketStatus.CLOSED:
      return r'CLOSED';
    case Enum$TicketStatus.OPEN:
      return r'OPEN';
    case Enum$TicketStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TicketStatus fromJson$Enum$TicketStatus(String value) {
  switch (value) {
    case r'CLOSED':
      return Enum$TicketStatus.CLOSED;
    case r'OPEN':
      return Enum$TicketStatus.OPEN;
    default:
      return Enum$TicketStatus.$unknown;
  }
}

enum Enum$PaymentMethods {
  BACS,
  $unknown;

  factory Enum$PaymentMethods.fromJson(String value) =>
      fromJson$Enum$PaymentMethods(value);

  String toJson() => toJson$Enum$PaymentMethods(this);
}

String toJson$Enum$PaymentMethods(Enum$PaymentMethods e) {
  switch (e) {
    case Enum$PaymentMethods.BACS:
      return r'BACS';
    case Enum$PaymentMethods.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentMethods fromJson$Enum$PaymentMethods(String value) {
  switch (value) {
    case r'BACS':
      return Enum$PaymentMethods.BACS;
    default:
      return Enum$PaymentMethods.$unknown;
  }
}

enum Enum$TransactionType {
  INVOICE,
  TICKET,
  CREDIT_NOTE,
  $unknown;

  factory Enum$TransactionType.fromJson(String value) =>
      fromJson$Enum$TransactionType(value);

  String toJson() => toJson$Enum$TransactionType(this);
}

String toJson$Enum$TransactionType(Enum$TransactionType e) {
  switch (e) {
    case Enum$TransactionType.INVOICE:
      return r'INVOICE';
    case Enum$TransactionType.TICKET:
      return r'TICKET';
    case Enum$TransactionType.CREDIT_NOTE:
      return r'CREDIT_NOTE';
    case Enum$TransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionType fromJson$Enum$TransactionType(String value) {
  switch (value) {
    case r'INVOICE':
      return Enum$TransactionType.INVOICE;
    case r'TICKET':
      return Enum$TransactionType.TICKET;
    case r'CREDIT_NOTE':
      return Enum$TransactionType.CREDIT_NOTE;
    default:
      return Enum$TransactionType.$unknown;
  }
}

enum Enum$InvoiceStatus {
  PAID,
  SCHEDULED_FOR_PAYMENT,
  IN_REVIEW,
  UNKNOWN,
  $unknown;

  factory Enum$InvoiceStatus.fromJson(String value) =>
      fromJson$Enum$InvoiceStatus(value);

  String toJson() => toJson$Enum$InvoiceStatus(this);
}

String toJson$Enum$InvoiceStatus(Enum$InvoiceStatus e) {
  switch (e) {
    case Enum$InvoiceStatus.PAID:
      return r'PAID';
    case Enum$InvoiceStatus.SCHEDULED_FOR_PAYMENT:
      return r'SCHEDULED_FOR_PAYMENT';
    case Enum$InvoiceStatus.IN_REVIEW:
      return r'IN_REVIEW';
    case Enum$InvoiceStatus.UNKNOWN:
      return r'UNKNOWN';
    case Enum$InvoiceStatus.$unknown:
      return r'$unknown';
  }
}

Enum$InvoiceStatus fromJson$Enum$InvoiceStatus(String value) {
  switch (value) {
    case r'PAID':
      return Enum$InvoiceStatus.PAID;
    case r'SCHEDULED_FOR_PAYMENT':
      return Enum$InvoiceStatus.SCHEDULED_FOR_PAYMENT;
    case r'IN_REVIEW':
      return Enum$InvoiceStatus.IN_REVIEW;
    case r'UNKNOWN':
      return Enum$InvoiceStatus.UNKNOWN;
    default:
      return Enum$InvoiceStatus.$unknown;
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

enum Enum$AccountChangeRequestStatus {
  PENDING,
  COMPLETED,
  $unknown;

  factory Enum$AccountChangeRequestStatus.fromJson(String value) =>
      fromJson$Enum$AccountChangeRequestStatus(value);

  String toJson() => toJson$Enum$AccountChangeRequestStatus(this);
}

String toJson$Enum$AccountChangeRequestStatus(
    Enum$AccountChangeRequestStatus e) {
  switch (e) {
    case Enum$AccountChangeRequestStatus.PENDING:
      return r'PENDING';
    case Enum$AccountChangeRequestStatus.COMPLETED:
      return r'COMPLETED';
    case Enum$AccountChangeRequestStatus.$unknown:
      return r'$unknown';
  }
}

Enum$AccountChangeRequestStatus fromJson$Enum$AccountChangeRequestStatus(
    String value) {
  switch (value) {
    case r'PENDING':
      return Enum$AccountChangeRequestStatus.PENDING;
    case r'COMPLETED':
      return Enum$AccountChangeRequestStatus.COMPLETED;
    default:
      return Enum$AccountChangeRequestStatus.$unknown;
  }
}

enum Enum$CountryCode {
  UNKNOWN,
  UK,
  US,
  NL,
  $unknown;

  factory Enum$CountryCode.fromJson(String value) =>
      fromJson$Enum$CountryCode(value);

  String toJson() => toJson$Enum$CountryCode(this);
}

String toJson$Enum$CountryCode(Enum$CountryCode e) {
  switch (e) {
    case Enum$CountryCode.UNKNOWN:
      return r'UNKNOWN';
    case Enum$CountryCode.UK:
      return r'UK';
    case Enum$CountryCode.US:
      return r'US';
    case Enum$CountryCode.NL:
      return r'NL';
    case Enum$CountryCode.$unknown:
      return r'$unknown';
  }
}

Enum$CountryCode fromJson$Enum$CountryCode(String value) {
  switch (value) {
    case r'UNKNOWN':
      return Enum$CountryCode.UNKNOWN;
    case r'UK':
      return Enum$CountryCode.UK;
    case r'US':
      return Enum$CountryCode.US;
    case r'NL':
      return Enum$CountryCode.NL;
    default:
      return Enum$CountryCode.$unknown;
  }
}

enum Enum$ProductType {
  FERROUS,
  NONFER,
  $unknown;

  factory Enum$ProductType.fromJson(String value) =>
      fromJson$Enum$ProductType(value);

  String toJson() => toJson$Enum$ProductType(this);
}

String toJson$Enum$ProductType(Enum$ProductType e) {
  switch (e) {
    case Enum$ProductType.FERROUS:
      return r'FERROUS';
    case Enum$ProductType.NONFER:
      return r'NONFER';
    case Enum$ProductType.$unknown:
      return r'$unknown';
  }
}

Enum$ProductType fromJson$Enum$ProductType(String value) {
  switch (value) {
    case r'FERROUS':
      return Enum$ProductType.FERROUS;
    case r'NONFER':
      return Enum$ProductType.NONFER;
    default:
      return Enum$ProductType.$unknown;
  }
}

enum Enum$StatementStatusInput {
  OUTSTANDING,
  PAID,
  $unknown;

  factory Enum$StatementStatusInput.fromJson(String value) =>
      fromJson$Enum$StatementStatusInput(value);

  String toJson() => toJson$Enum$StatementStatusInput(this);
}

String toJson$Enum$StatementStatusInput(Enum$StatementStatusInput e) {
  switch (e) {
    case Enum$StatementStatusInput.OUTSTANDING:
      return r'OUTSTANDING';
    case Enum$StatementStatusInput.PAID:
      return r'PAID';
    case Enum$StatementStatusInput.$unknown:
      return r'$unknown';
  }
}

Enum$StatementStatusInput fromJson$Enum$StatementStatusInput(String value) {
  switch (value) {
    case r'OUTSTANDING':
      return Enum$StatementStatusInput.OUTSTANDING;
    case r'PAID':
      return Enum$StatementStatusInput.PAID;
    default:
      return Enum$StatementStatusInput.$unknown;
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
