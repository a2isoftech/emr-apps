import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$AdvanceFields {
  Fragment$AdvanceFields({
    required this.accountId,
    required this.active,
    required this.allowFlexiblePay,
    required this.arrangedByUserId,
    required this.companyId,
    required this.handlingYardId,
    required this.id,
    required this.offsetStatus,
    required this.paidInFullDueDate,
    required this.payableYardId,
    required this.paymentMethod,
    required this.reason,
    this.reference,
    required this.status,
    required this.tags,
    required this.paymentAmount,
    required this.paymentInfo,
    required this.term,
    this.$__typename = 'Advance',
  });

  factory Fragment$AdvanceFields.fromJson(Map<String, dynamic> json) {
    final l$accountId = json['accountId'];
    final l$active = json['active'];
    final l$allowFlexiblePay = json['allowFlexiblePay'];
    final l$arrangedByUserId = json['arrangedByUserId'];
    final l$companyId = json['companyId'];
    final l$handlingYardId = json['handlingYardId'];
    final l$id = json['id'];
    final l$offsetStatus = json['offsetStatus'];
    final l$paidInFullDueDate = json['paidInFullDueDate'];
    final l$payableYardId = json['payableYardId'];
    final l$paymentMethod = json['paymentMethod'];
    final l$reason = json['reason'];
    final l$reference = json['reference'];
    final l$status = json['status'];
    final l$tags = json['tags'];
    final l$paymentAmount = json['paymentAmount'];
    final l$paymentInfo = json['paymentInfo'];
    final l$term = json['term'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields(
      accountId: (l$accountId as String),
      active: (l$active as bool),
      allowFlexiblePay: (l$allowFlexiblePay as bool),
      arrangedByUserId: (l$arrangedByUserId as String),
      companyId: (l$companyId as String),
      handlingYardId: (l$handlingYardId as String),
      id: (l$id as String),
      offsetStatus: fromJson$Enum$OffsetStatus((l$offsetStatus as String)),
      paidInFullDueDate: DateTime.parse((l$paidInFullDueDate as String)),
      payableYardId: (l$payableYardId as String),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      reason: fromJson$Enum$AdvanceReason((l$reason as String)),
      reference: (l$reference as String?),
      status: fromJson$Enum$AdvanceStatus((l$status as String)),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      paymentAmount: Fragment$AdvanceFields$paymentAmount.fromJson(
        (l$paymentAmount as Map<String, dynamic>),
      ),
      paymentInfo: Fragment$AdvanceFields$paymentInfo.fromJson(
        (l$paymentInfo as Map<String, dynamic>),
      ),
      term: Fragment$AdvanceFields$term.fromJson(
        (l$term as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountId;

  final bool active;

  final bool allowFlexiblePay;

  final String arrangedByUserId;

  final String companyId;

  final String handlingYardId;

  final String id;

  final Enum$OffsetStatus offsetStatus;

  final DateTime paidInFullDueDate;

  final String payableYardId;

  final Enum$PaymentMethod paymentMethod;

  final Enum$AdvanceReason reason;

  final String? reference;

  final Enum$AdvanceStatus status;

  final List<String> tags;

  final Fragment$AdvanceFields$paymentAmount paymentAmount;

  final Fragment$AdvanceFields$paymentInfo paymentInfo;

  final Fragment$AdvanceFields$term term;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$allowFlexiblePay = allowFlexiblePay;
    _resultData['allowFlexiblePay'] = l$allowFlexiblePay;
    final l$arrangedByUserId = arrangedByUserId;
    _resultData['arrangedByUserId'] = l$arrangedByUserId;
    final l$companyId = companyId;
    _resultData['companyId'] = l$companyId;
    final l$handlingYardId = handlingYardId;
    _resultData['handlingYardId'] = l$handlingYardId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$offsetStatus = offsetStatus;
    _resultData['offsetStatus'] = toJson$Enum$OffsetStatus(l$offsetStatus);
    final l$paidInFullDueDate = paidInFullDueDate;
    _resultData['paidInFullDueDate'] = l$paidInFullDueDate.toIso8601String();
    final l$payableYardId = payableYardId;
    _resultData['payableYardId'] = l$payableYardId;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$reason = reason;
    _resultData['reason'] = toJson$Enum$AdvanceReason(l$reason);
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$status = status;
    _resultData['status'] = toJson$Enum$AdvanceStatus(l$status);
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$paymentAmount = paymentAmount;
    _resultData['paymentAmount'] = l$paymentAmount.toJson();
    final l$paymentInfo = paymentInfo;
    _resultData['paymentInfo'] = l$paymentInfo.toJson();
    final l$term = term;
    _resultData['term'] = l$term.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$active = active;
    final l$allowFlexiblePay = allowFlexiblePay;
    final l$arrangedByUserId = arrangedByUserId;
    final l$companyId = companyId;
    final l$handlingYardId = handlingYardId;
    final l$id = id;
    final l$offsetStatus = offsetStatus;
    final l$paidInFullDueDate = paidInFullDueDate;
    final l$payableYardId = payableYardId;
    final l$paymentMethod = paymentMethod;
    final l$reason = reason;
    final l$reference = reference;
    final l$status = status;
    final l$tags = tags;
    final l$paymentAmount = paymentAmount;
    final l$paymentInfo = paymentInfo;
    final l$term = term;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountId,
      l$active,
      l$allowFlexiblePay,
      l$arrangedByUserId,
      l$companyId,
      l$handlingYardId,
      l$id,
      l$offsetStatus,
      l$paidInFullDueDate,
      l$payableYardId,
      l$paymentMethod,
      l$reason,
      l$reference,
      l$status,
      Object.hashAll(l$tags.map((v) => v)),
      l$paymentAmount,
      l$paymentInfo,
      l$term,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields || runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$allowFlexiblePay = allowFlexiblePay;
    final lOther$allowFlexiblePay = other.allowFlexiblePay;
    if (l$allowFlexiblePay != lOther$allowFlexiblePay) {
      return false;
    }
    final l$arrangedByUserId = arrangedByUserId;
    final lOther$arrangedByUserId = other.arrangedByUserId;
    if (l$arrangedByUserId != lOther$arrangedByUserId) {
      return false;
    }
    final l$companyId = companyId;
    final lOther$companyId = other.companyId;
    if (l$companyId != lOther$companyId) {
      return false;
    }
    final l$handlingYardId = handlingYardId;
    final lOther$handlingYardId = other.handlingYardId;
    if (l$handlingYardId != lOther$handlingYardId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$offsetStatus = offsetStatus;
    final lOther$offsetStatus = other.offsetStatus;
    if (l$offsetStatus != lOther$offsetStatus) {
      return false;
    }
    final l$paidInFullDueDate = paidInFullDueDate;
    final lOther$paidInFullDueDate = other.paidInFullDueDate;
    if (l$paidInFullDueDate != lOther$paidInFullDueDate) {
      return false;
    }
    final l$payableYardId = payableYardId;
    final lOther$payableYardId = other.payableYardId;
    if (l$payableYardId != lOther$payableYardId) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$paymentAmount = paymentAmount;
    final lOther$paymentAmount = other.paymentAmount;
    if (l$paymentAmount != lOther$paymentAmount) {
      return false;
    }
    final l$paymentInfo = paymentInfo;
    final lOther$paymentInfo = other.paymentInfo;
    if (l$paymentInfo != lOther$paymentInfo) {
      return false;
    }
    final l$term = term;
    final lOther$term = other.term;
    if (l$term != lOther$term) {
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

extension UtilityExtension$Fragment$AdvanceFields on Fragment$AdvanceFields {
  CopyWith$Fragment$AdvanceFields<Fragment$AdvanceFields> get copyWith =>
      CopyWith$Fragment$AdvanceFields(this, (i) => i);
}

abstract class CopyWith$Fragment$AdvanceFields<TRes> {
  factory CopyWith$Fragment$AdvanceFields(
    Fragment$AdvanceFields instance,
    TRes Function(Fragment$AdvanceFields) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields;

  factory CopyWith$Fragment$AdvanceFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AdvanceFields;

  TRes call({
    String? accountId,
    bool? active,
    bool? allowFlexiblePay,
    String? arrangedByUserId,
    String? companyId,
    String? handlingYardId,
    String? id,
    Enum$OffsetStatus? offsetStatus,
    DateTime? paidInFullDueDate,
    String? payableYardId,
    Enum$PaymentMethod? paymentMethod,
    Enum$AdvanceReason? reason,
    String? reference,
    Enum$AdvanceStatus? status,
    List<String>? tags,
    Fragment$AdvanceFields$paymentAmount? paymentAmount,
    Fragment$AdvanceFields$paymentInfo? paymentInfo,
    Fragment$AdvanceFields$term? term,
    String? $__typename,
  });
  CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> get paymentAmount;
  CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> get paymentInfo;
  CopyWith$Fragment$AdvanceFields$term<TRes> get term;
}

class _CopyWithImpl$Fragment$AdvanceFields<TRes>
    implements CopyWith$Fragment$AdvanceFields<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields(this._instance, this._then);

  final Fragment$AdvanceFields _instance;

  final TRes Function(Fragment$AdvanceFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountId = _undefined,
    Object? active = _undefined,
    Object? allowFlexiblePay = _undefined,
    Object? arrangedByUserId = _undefined,
    Object? companyId = _undefined,
    Object? handlingYardId = _undefined,
    Object? id = _undefined,
    Object? offsetStatus = _undefined,
    Object? paidInFullDueDate = _undefined,
    Object? payableYardId = _undefined,
    Object? paymentMethod = _undefined,
    Object? reason = _undefined,
    Object? reference = _undefined,
    Object? status = _undefined,
    Object? tags = _undefined,
    Object? paymentAmount = _undefined,
    Object? paymentInfo = _undefined,
    Object? term = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields(
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      allowFlexiblePay:
          allowFlexiblePay == _undefined || allowFlexiblePay == null
          ? _instance.allowFlexiblePay
          : (allowFlexiblePay as bool),
      arrangedByUserId:
          arrangedByUserId == _undefined || arrangedByUserId == null
          ? _instance.arrangedByUserId
          : (arrangedByUserId as String),
      companyId: companyId == _undefined || companyId == null
          ? _instance.companyId
          : (companyId as String),
      handlingYardId: handlingYardId == _undefined || handlingYardId == null
          ? _instance.handlingYardId
          : (handlingYardId as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      offsetStatus: offsetStatus == _undefined || offsetStatus == null
          ? _instance.offsetStatus
          : (offsetStatus as Enum$OffsetStatus),
      paidInFullDueDate:
          paidInFullDueDate == _undefined || paidInFullDueDate == null
          ? _instance.paidInFullDueDate
          : (paidInFullDueDate as DateTime),
      payableYardId: payableYardId == _undefined || payableYardId == null
          ? _instance.payableYardId
          : (payableYardId as String),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      reason: reason == _undefined || reason == null
          ? _instance.reason
          : (reason as Enum$AdvanceReason),
      reference: reference == _undefined
          ? _instance.reference
          : (reference as String?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$AdvanceStatus),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      paymentAmount: paymentAmount == _undefined || paymentAmount == null
          ? _instance.paymentAmount
          : (paymentAmount as Fragment$AdvanceFields$paymentAmount),
      paymentInfo: paymentInfo == _undefined || paymentInfo == null
          ? _instance.paymentInfo
          : (paymentInfo as Fragment$AdvanceFields$paymentInfo),
      term: term == _undefined || term == null
          ? _instance.term
          : (term as Fragment$AdvanceFields$term),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> get paymentAmount {
    final local$paymentAmount = _instance.paymentAmount;
    return CopyWith$Fragment$AdvanceFields$paymentAmount(
      local$paymentAmount,
      (e) => call(paymentAmount: e),
    );
  }

  CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> get paymentInfo {
    final local$paymentInfo = _instance.paymentInfo;
    return CopyWith$Fragment$AdvanceFields$paymentInfo(
      local$paymentInfo,
      (e) => call(paymentInfo: e),
    );
  }

  CopyWith$Fragment$AdvanceFields$term<TRes> get term {
    final local$term = _instance.term;
    return CopyWith$Fragment$AdvanceFields$term(
      local$term,
      (e) => call(term: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AdvanceFields<TRes>
    implements CopyWith$Fragment$AdvanceFields<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields(this._res);

  TRes _res;

  call({
    String? accountId,
    bool? active,
    bool? allowFlexiblePay,
    String? arrangedByUserId,
    String? companyId,
    String? handlingYardId,
    String? id,
    Enum$OffsetStatus? offsetStatus,
    DateTime? paidInFullDueDate,
    String? payableYardId,
    Enum$PaymentMethod? paymentMethod,
    Enum$AdvanceReason? reason,
    String? reference,
    Enum$AdvanceStatus? status,
    List<String>? tags,
    Fragment$AdvanceFields$paymentAmount? paymentAmount,
    Fragment$AdvanceFields$paymentInfo? paymentInfo,
    Fragment$AdvanceFields$term? term,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> get paymentAmount =>
      CopyWith$Fragment$AdvanceFields$paymentAmount.stub(_res);

  CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> get paymentInfo =>
      CopyWith$Fragment$AdvanceFields$paymentInfo.stub(_res);

  CopyWith$Fragment$AdvanceFields$term<TRes> get term =>
      CopyWith$Fragment$AdvanceFields$term.stub(_res);
}

const fragmentDefinitionAdvanceFields = FragmentDefinitionNode(
  name: NameNode(value: 'AdvanceFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Advance'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'accountId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'active'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowFlexiblePay'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'arrangedByUserId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'companyId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'handlingYardId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'offsetStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paidInFullDueDate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payableYardId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentMethod'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'reason'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'reference'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentAmount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'amount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'currencyCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'exchangeRate'),
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
        name: NameNode(value: 'paymentInfo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'outstandingBalance'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'transactionDetails'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'paymentRecordId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'transactionType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'at'),
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
        name: NameNode(value: 'term'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            InlineFragmentNode(
              typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'FixedTermDetails'),
                  isNonNull: false,
                ),
              ),
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'termType'),
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
            InlineFragmentNode(
              typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'PartialPayTermDetails'),
                  isNonNull: false,
                ),
              ),
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'termType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'ticketIds'),
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
            InlineFragmentNode(
              typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'PercentageTermDetails'),
                  isNonNull: false,
                ),
              ),
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'percentage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'termType'),
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
);
const documentNodeFragmentAdvanceFields = DocumentNode(
  definitions: [fragmentDefinitionAdvanceFields],
);

class Fragment$AdvanceFields$paymentAmount {
  Fragment$AdvanceFields$paymentAmount({
    required this.amount,
    required this.currencyCode,
    required this.exchangeRate,
    this.$__typename = 'PaymentAmount',
  });

  factory Fragment$AdvanceFields$paymentAmount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$currencyCode = json['currencyCode'];
    final l$exchangeRate = json['exchangeRate'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$paymentAmount(
      amount: (l$amount as num).toDouble(),
      currencyCode: (l$currencyCode as String),
      exchangeRate: (l$exchangeRate as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final String currencyCode;

  final double exchangeRate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$exchangeRate = exchangeRate;
    _resultData['exchangeRate'] = l$exchangeRate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currencyCode = currencyCode;
    final l$exchangeRate = exchangeRate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$currencyCode,
      l$exchangeRate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$paymentAmount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$exchangeRate = exchangeRate;
    final lOther$exchangeRate = other.exchangeRate;
    if (l$exchangeRate != lOther$exchangeRate) {
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

extension UtilityExtension$Fragment$AdvanceFields$paymentAmount
    on Fragment$AdvanceFields$paymentAmount {
  CopyWith$Fragment$AdvanceFields$paymentAmount<
    Fragment$AdvanceFields$paymentAmount
  >
  get copyWith => CopyWith$Fragment$AdvanceFields$paymentAmount(this, (i) => i);
}

abstract class CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> {
  factory CopyWith$Fragment$AdvanceFields$paymentAmount(
    Fragment$AdvanceFields$paymentAmount instance,
    TRes Function(Fragment$AdvanceFields$paymentAmount) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$paymentAmount;

  factory CopyWith$Fragment$AdvanceFields$paymentAmount.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AdvanceFields$paymentAmount;

  TRes call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AdvanceFields$paymentAmount<TRes>
    implements CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$paymentAmount(
    this._instance,
    this._then,
  );

  final Fragment$AdvanceFields$paymentAmount _instance;

  final TRes Function(Fragment$AdvanceFields$paymentAmount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currencyCode = _undefined,
    Object? exchangeRate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$paymentAmount(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      currencyCode: currencyCode == _undefined || currencyCode == null
          ? _instance.currencyCode
          : (currencyCode as String),
      exchangeRate: exchangeRate == _undefined || exchangeRate == null
          ? _instance.exchangeRate
          : (exchangeRate as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$paymentAmount<TRes>
    implements CopyWith$Fragment$AdvanceFields$paymentAmount<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$paymentAmount(this._res);

  TRes _res;

  call({
    double? amount,
    String? currencyCode,
    double? exchangeRate,
    String? $__typename,
  }) => _res;
}

class Fragment$AdvanceFields$paymentInfo {
  Fragment$AdvanceFields$paymentInfo({
    required this.outstandingBalance,
    required this.transactionDetails,
    this.$__typename = 'AdvancePaymentInfo',
  });

  factory Fragment$AdvanceFields$paymentInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$outstandingBalance = json['outstandingBalance'];
    final l$transactionDetails = json['transactionDetails'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$paymentInfo(
      outstandingBalance: (l$outstandingBalance as num).toDouble(),
      transactionDetails: (l$transactionDetails as List<dynamic>)
          .map(
            (e) =>
                Fragment$AdvanceFields$paymentInfo$transactionDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double outstandingBalance;

  final List<Fragment$AdvanceFields$paymentInfo$transactionDetails>
  transactionDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$outstandingBalance = outstandingBalance;
    _resultData['outstandingBalance'] = l$outstandingBalance;
    final l$transactionDetails = transactionDetails;
    _resultData['transactionDetails'] = l$transactionDetails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$outstandingBalance = outstandingBalance;
    final l$transactionDetails = transactionDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$outstandingBalance,
      Object.hashAll(l$transactionDetails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$paymentInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$outstandingBalance = outstandingBalance;
    final lOther$outstandingBalance = other.outstandingBalance;
    if (l$outstandingBalance != lOther$outstandingBalance) {
      return false;
    }
    final l$transactionDetails = transactionDetails;
    final lOther$transactionDetails = other.transactionDetails;
    if (l$transactionDetails.length != lOther$transactionDetails.length) {
      return false;
    }
    for (int i = 0; i < l$transactionDetails.length; i++) {
      final l$transactionDetails$entry = l$transactionDetails[i];
      final lOther$transactionDetails$entry = lOther$transactionDetails[i];
      if (l$transactionDetails$entry != lOther$transactionDetails$entry) {
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

extension UtilityExtension$Fragment$AdvanceFields$paymentInfo
    on Fragment$AdvanceFields$paymentInfo {
  CopyWith$Fragment$AdvanceFields$paymentInfo<
    Fragment$AdvanceFields$paymentInfo
  >
  get copyWith => CopyWith$Fragment$AdvanceFields$paymentInfo(this, (i) => i);
}

abstract class CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> {
  factory CopyWith$Fragment$AdvanceFields$paymentInfo(
    Fragment$AdvanceFields$paymentInfo instance,
    TRes Function(Fragment$AdvanceFields$paymentInfo) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$paymentInfo;

  factory CopyWith$Fragment$AdvanceFields$paymentInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo;

  TRes call({
    double? outstandingBalance,
    List<Fragment$AdvanceFields$paymentInfo$transactionDetails>?
    transactionDetails,
    String? $__typename,
  });
  TRes transactionDetails(
    Iterable<Fragment$AdvanceFields$paymentInfo$transactionDetails> Function(
      Iterable<
        CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<
          Fragment$AdvanceFields$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$AdvanceFields$paymentInfo<TRes>
    implements CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$paymentInfo(this._instance, this._then);

  final Fragment$AdvanceFields$paymentInfo _instance;

  final TRes Function(Fragment$AdvanceFields$paymentInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? outstandingBalance = _undefined,
    Object? transactionDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$paymentInfo(
      outstandingBalance:
          outstandingBalance == _undefined || outstandingBalance == null
          ? _instance.outstandingBalance
          : (outstandingBalance as double),
      transactionDetails:
          transactionDetails == _undefined || transactionDetails == null
          ? _instance.transactionDetails
          : (transactionDetails
                as List<Fragment$AdvanceFields$paymentInfo$transactionDetails>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes transactionDetails(
    Iterable<Fragment$AdvanceFields$paymentInfo$transactionDetails> Function(
      Iterable<
        CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<
          Fragment$AdvanceFields$paymentInfo$transactionDetails
        >
      >,
    )
    _fn,
  ) => call(
    transactionDetails: _fn(
      _instance.transactionDetails.map(
        (e) => CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo<TRes>
    implements CopyWith$Fragment$AdvanceFields$paymentInfo<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo(this._res);

  TRes _res;

  call({
    double? outstandingBalance,
    List<Fragment$AdvanceFields$paymentInfo$transactionDetails>?
    transactionDetails,
    String? $__typename,
  }) => _res;

  transactionDetails(_fn) => _res;
}

class Fragment$AdvanceFields$paymentInfo$transactionDetails {
  Fragment$AdvanceFields$paymentInfo$transactionDetails({
    required this.paymentRecordId,
    required this.transactionType,
    required this.amount,
    required this.at,
    this.$__typename = 'TransactionDetail',
  });

  factory Fragment$AdvanceFields$paymentInfo$transactionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentRecordId = json['paymentRecordId'];
    final l$transactionType = json['transactionType'];
    final l$amount = json['amount'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$paymentInfo$transactionDetails(
      paymentRecordId: (l$paymentRecordId as String),
      transactionType: fromJson$Enum$TransactionType(
        (l$transactionType as String),
      ),
      amount: (l$amount as num).toDouble(),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String paymentRecordId;

  final Enum$TransactionType transactionType;

  final double amount;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecordId = paymentRecordId;
    _resultData['paymentRecordId'] = l$paymentRecordId;
    final l$transactionType = transactionType;
    _resultData['transactionType'] = toJson$Enum$TransactionType(
      l$transactionType,
    );
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecordId = paymentRecordId;
    final l$transactionType = transactionType;
    final l$amount = amount;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentRecordId,
      l$transactionType,
      l$amount,
      l$at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$paymentInfo$transactionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    final l$transactionType = transactionType;
    final lOther$transactionType = other.transactionType;
    if (l$transactionType != lOther$transactionType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Fragment$AdvanceFields$paymentInfo$transactionDetails
    on Fragment$AdvanceFields$paymentInfo$transactionDetails {
  CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<
    Fragment$AdvanceFields$paymentInfo$transactionDetails
  >
  get copyWith =>
      CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<
  TRes
> {
  factory CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails(
    Fragment$AdvanceFields$paymentInfo$transactionDetails instance,
    TRes Function(Fragment$AdvanceFields$paymentInfo$transactionDetails) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails;

  factory CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails;

  TRes call({
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    double? amount,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails<TRes>
    implements
        CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails(
    this._instance,
    this._then,
  );

  final Fragment$AdvanceFields$paymentInfo$transactionDetails _instance;

  final TRes Function(Fragment$AdvanceFields$paymentInfo$transactionDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecordId = _undefined,
    Object? transactionType = _undefined,
    Object? amount = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$paymentInfo$transactionDetails(
      paymentRecordId: paymentRecordId == _undefined || paymentRecordId == null
          ? _instance.paymentRecordId
          : (paymentRecordId as String),
      transactionType: transactionType == _undefined || transactionType == null
          ? _instance.transactionType
          : (transactionType as Enum$TransactionType),
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails<
  TRes
>
    implements
        CopyWith$Fragment$AdvanceFields$paymentInfo$transactionDetails<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$paymentInfo$transactionDetails(
    this._res,
  );

  TRes _res;

  call({
    String? paymentRecordId,
    Enum$TransactionType? transactionType,
    double? amount,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Fragment$AdvanceFields$term {
  Fragment$AdvanceFields$term({required this.$__typename});

  factory Fragment$AdvanceFields$term.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FixedTermDetails":
        return Fragment$AdvanceFields$term$$FixedTermDetails.fromJson(json);

      case "PartialPayTermDetails":
        return Fragment$AdvanceFields$term$$PartialPayTermDetails.fromJson(
          json,
        );

      case "PercentageTermDetails":
        return Fragment$AdvanceFields$term$$PercentageTermDetails.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Fragment$AdvanceFields$term(
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
    if (other is! Fragment$AdvanceFields$term ||
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

extension UtilityExtension$Fragment$AdvanceFields$term
    on Fragment$AdvanceFields$term {
  CopyWith$Fragment$AdvanceFields$term<Fragment$AdvanceFields$term>
  get copyWith => CopyWith$Fragment$AdvanceFields$term(this, (i) => i);

  _T when<_T>({
    required _T Function(Fragment$AdvanceFields$term$$FixedTermDetails)
    fixedTermDetails,
    required _T Function(Fragment$AdvanceFields$term$$PartialPayTermDetails)
    partialPayTermDetails,
    required _T Function(Fragment$AdvanceFields$term$$PercentageTermDetails)
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        return fixedTermDetails(
          this as Fragment$AdvanceFields$term$$FixedTermDetails,
        );

      case "PartialPayTermDetails":
        return partialPayTermDetails(
          this as Fragment$AdvanceFields$term$$PartialPayTermDetails,
        );

      case "PercentageTermDetails":
        return percentageTermDetails(
          this as Fragment$AdvanceFields$term$$PercentageTermDetails,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Fragment$AdvanceFields$term$$FixedTermDetails)?
    fixedTermDetails,
    _T Function(Fragment$AdvanceFields$term$$PartialPayTermDetails)?
    partialPayTermDetails,
    _T Function(Fragment$AdvanceFields$term$$PercentageTermDetails)?
    percentageTermDetails,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "FixedTermDetails":
        if (fixedTermDetails != null) {
          return fixedTermDetails(
            this as Fragment$AdvanceFields$term$$FixedTermDetails,
          );
        } else {
          return orElse();
        }

      case "PartialPayTermDetails":
        if (partialPayTermDetails != null) {
          return partialPayTermDetails(
            this as Fragment$AdvanceFields$term$$PartialPayTermDetails,
          );
        } else {
          return orElse();
        }

      case "PercentageTermDetails":
        if (percentageTermDetails != null) {
          return percentageTermDetails(
            this as Fragment$AdvanceFields$term$$PercentageTermDetails,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Fragment$AdvanceFields$term<TRes> {
  factory CopyWith$Fragment$AdvanceFields$term(
    Fragment$AdvanceFields$term instance,
    TRes Function(Fragment$AdvanceFields$term) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$term;

  factory CopyWith$Fragment$AdvanceFields$term.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AdvanceFields$term;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$AdvanceFields$term<TRes>
    implements CopyWith$Fragment$AdvanceFields$term<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$term(this._instance, this._then);

  final Fragment$AdvanceFields$term _instance;

  final TRes Function(Fragment$AdvanceFields$term) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Fragment$AdvanceFields$term(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$term<TRes>
    implements CopyWith$Fragment$AdvanceFields$term<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$term(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Fragment$AdvanceFields$term$$FixedTermDetails
    implements Fragment$AdvanceFields$term {
  Fragment$AdvanceFields$term$$FixedTermDetails({
    required this.amount,
    required this.termType,
    this.$__typename = 'FixedTermDetails',
  });

  factory Fragment$AdvanceFields$term$$FixedTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$term$$FixedTermDetails(
      amount: (l$amount as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$term$$FixedTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Fragment$AdvanceFields$term$$FixedTermDetails
    on Fragment$AdvanceFields$term$$FixedTermDetails {
  CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails<
    Fragment$AdvanceFields$term$$FixedTermDetails
  >
  get copyWith =>
      CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails<TRes> {
  factory CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails(
    Fragment$AdvanceFields$term$$FixedTermDetails instance,
    TRes Function(Fragment$AdvanceFields$term$$FixedTermDetails) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$term$$FixedTermDetails;

  factory CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AdvanceFields$term$$FixedTermDetails;

  TRes call({
    double? amount,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AdvanceFields$term$$FixedTermDetails<TRes>
    implements CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$term$$FixedTermDetails(
    this._instance,
    this._then,
  );

  final Fragment$AdvanceFields$term$$FixedTermDetails _instance;

  final TRes Function(Fragment$AdvanceFields$term$$FixedTermDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$term$$FixedTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$term$$FixedTermDetails<TRes>
    implements CopyWith$Fragment$AdvanceFields$term$$FixedTermDetails<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$term$$FixedTermDetails(this._res);

  TRes _res;

  call({double? amount, Enum$AdvanceTermType? termType, String? $__typename}) =>
      _res;
}

class Fragment$AdvanceFields$term$$PartialPayTermDetails
    implements Fragment$AdvanceFields$term {
  Fragment$AdvanceFields$term$$PartialPayTermDetails({
    required this.termType,
    required this.ticketIds,
    this.$__typename = 'PartialPayTermDetails',
  });

  factory Fragment$AdvanceFields$term$$PartialPayTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$termType = json['termType'];
    final l$ticketIds = json['ticketIds'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$term$$PartialPayTermDetails(
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AdvanceTermType termType;

  final List<String> ticketIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$termType = termType;
    final l$ticketIds = ticketIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$termType,
      Object.hashAll(l$ticketIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$term$$PartialPayTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
      return false;
    }
    final l$ticketIds = ticketIds;
    final lOther$ticketIds = other.ticketIds;
    if (l$ticketIds.length != lOther$ticketIds.length) {
      return false;
    }
    for (int i = 0; i < l$ticketIds.length; i++) {
      final l$ticketIds$entry = l$ticketIds[i];
      final lOther$ticketIds$entry = lOther$ticketIds[i];
      if (l$ticketIds$entry != lOther$ticketIds$entry) {
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

extension UtilityExtension$Fragment$AdvanceFields$term$$PartialPayTermDetails
    on Fragment$AdvanceFields$term$$PartialPayTermDetails {
  CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails<
    Fragment$AdvanceFields$term$$PartialPayTermDetails
  >
  get copyWith => CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails<
  TRes
> {
  factory CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails(
    Fragment$AdvanceFields$term$$PartialPayTermDetails instance,
    TRes Function(Fragment$AdvanceFields$term$$PartialPayTermDetails) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails;

  factory CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails;

  TRes call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails<TRes>
    implements
        CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails(
    this._instance,
    this._then,
  );

  final Fragment$AdvanceFields$term$$PartialPayTermDetails _instance;

  final TRes Function(Fragment$AdvanceFields$term$$PartialPayTermDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? termType = _undefined,
    Object? ticketIds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$term$$PartialPayTermDetails(
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails<TRes>
    implements
        CopyWith$Fragment$AdvanceFields$term$$PartialPayTermDetails<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$term$$PartialPayTermDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$AdvanceTermType? termType,
    List<String>? ticketIds,
    String? $__typename,
  }) => _res;
}

class Fragment$AdvanceFields$term$$PercentageTermDetails
    implements Fragment$AdvanceFields$term {
  Fragment$AdvanceFields$term$$PercentageTermDetails({
    required this.amount,
    required this.percentage,
    required this.termType,
    this.$__typename = 'PercentageTermDetails',
  });

  factory Fragment$AdvanceFields$term$$PercentageTermDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$amount = json['amount'];
    final l$percentage = json['percentage'];
    final l$termType = json['termType'];
    final l$$__typename = json['__typename'];
    return Fragment$AdvanceFields$term$$PercentageTermDetails(
      amount: (l$amount as num).toDouble(),
      percentage: (l$percentage as num).toDouble(),
      termType: fromJson$Enum$AdvanceTermType((l$termType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double amount;

  final double percentage;

  final Enum$AdvanceTermType termType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$percentage = percentage;
    _resultData['percentage'] = l$percentage;
    final l$termType = termType;
    _resultData['termType'] = toJson$Enum$AdvanceTermType(l$termType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$percentage = percentage;
    final l$termType = termType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$percentage, l$termType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AdvanceFields$term$$PercentageTermDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$percentage = percentage;
    final lOther$percentage = other.percentage;
    if (l$percentage != lOther$percentage) {
      return false;
    }
    final l$termType = termType;
    final lOther$termType = other.termType;
    if (l$termType != lOther$termType) {
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

extension UtilityExtension$Fragment$AdvanceFields$term$$PercentageTermDetails
    on Fragment$AdvanceFields$term$$PercentageTermDetails {
  CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails<
    Fragment$AdvanceFields$term$$PercentageTermDetails
  >
  get copyWith => CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails<
  TRes
> {
  factory CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails(
    Fragment$AdvanceFields$term$$PercentageTermDetails instance,
    TRes Function(Fragment$AdvanceFields$term$$PercentageTermDetails) then,
  ) = _CopyWithImpl$Fragment$AdvanceFields$term$$PercentageTermDetails;

  factory CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AdvanceFields$term$$PercentageTermDetails;

  TRes call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AdvanceFields$term$$PercentageTermDetails<TRes>
    implements
        CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails<TRes> {
  _CopyWithImpl$Fragment$AdvanceFields$term$$PercentageTermDetails(
    this._instance,
    this._then,
  );

  final Fragment$AdvanceFields$term$$PercentageTermDetails _instance;

  final TRes Function(Fragment$AdvanceFields$term$$PercentageTermDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? percentage = _undefined,
    Object? termType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AdvanceFields$term$$PercentageTermDetails(
      amount: amount == _undefined || amount == null
          ? _instance.amount
          : (amount as double),
      percentage: percentage == _undefined || percentage == null
          ? _instance.percentage
          : (percentage as double),
      termType: termType == _undefined || termType == null
          ? _instance.termType
          : (termType as Enum$AdvanceTermType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AdvanceFields$term$$PercentageTermDetails<TRes>
    implements
        CopyWith$Fragment$AdvanceFields$term$$PercentageTermDetails<TRes> {
  _CopyWithStubImpl$Fragment$AdvanceFields$term$$PercentageTermDetails(
    this._res,
  );

  TRes _res;

  call({
    double? amount,
    double? percentage,
    Enum$AdvanceTermType? termType,
    String? $__typename,
  }) => _res;
}
