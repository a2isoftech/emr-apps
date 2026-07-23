import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentApproval {
  Fragment$PaymentApproval({
    required this.approvers,
    required this.id,
    required this.status,
    required this.ticketIds,
    required this.total,
    required this.yardCode,
    required this.yardPaymentRuleId,
    required this.requestor,
    required this.requestorEmail,
    required this.paymentRecordId,
    required this.created,
    required this.active,
    this.$__typename = 'PaymentApproval',
  });

  factory Fragment$PaymentApproval.fromJson(Map<String, dynamic> json) {
    final l$approvers = json['approvers'];
    final l$id = json['id'];
    final l$status = json['status'];
    final l$ticketIds = json['ticketIds'];
    final l$total = json['total'];
    final l$yardCode = json['yardCode'];
    final l$yardPaymentRuleId = json['yardPaymentRuleId'];
    final l$requestor = json['requestor'];
    final l$requestorEmail = json['requestorEmail'];
    final l$paymentRecordId = json['paymentRecordId'];
    final l$created = json['created'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentApproval(
      approvers: (l$approvers as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      id: (l$id as String),
      status: fromJson$Enum$PaymentApprovalStatus((l$status as String)),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      total: (l$total as num).toDouble(),
      yardCode: (l$yardCode as String),
      yardPaymentRuleId: (l$yardPaymentRuleId as String),
      requestor: (l$requestor as String),
      requestorEmail: (l$requestorEmail as String),
      paymentRecordId: (l$paymentRecordId as String),
      created: Fragment$PaymentApproval$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> approvers;

  final String id;

  final Enum$PaymentApprovalStatus status;

  final List<String> ticketIds;

  final double total;

  final String yardCode;

  final String yardPaymentRuleId;

  final String requestor;

  final String requestorEmail;

  final String paymentRecordId;

  final Fragment$PaymentApproval$created created;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$approvers = approvers;
    _resultData['approvers'] = l$approvers.map((e) => e).toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentApprovalStatus(l$status);
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$total = total;
    _resultData['total'] = l$total;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$yardPaymentRuleId = yardPaymentRuleId;
    _resultData['yardPaymentRuleId'] = l$yardPaymentRuleId;
    final l$requestor = requestor;
    _resultData['requestor'] = l$requestor;
    final l$requestorEmail = requestorEmail;
    _resultData['requestorEmail'] = l$requestorEmail;
    final l$paymentRecordId = paymentRecordId;
    _resultData['paymentRecordId'] = l$paymentRecordId;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$approvers = approvers;
    final l$id = id;
    final l$status = status;
    final l$ticketIds = ticketIds;
    final l$total = total;
    final l$yardCode = yardCode;
    final l$yardPaymentRuleId = yardPaymentRuleId;
    final l$requestor = requestor;
    final l$requestorEmail = requestorEmail;
    final l$paymentRecordId = paymentRecordId;
    final l$created = created;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$approvers.map((v) => v)),
      l$id,
      l$status,
      Object.hashAll(l$ticketIds.map((v) => v)),
      l$total,
      l$yardCode,
      l$yardPaymentRuleId,
      l$requestor,
      l$requestorEmail,
      l$paymentRecordId,
      l$created,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentApproval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$approvers = approvers;
    final lOther$approvers = other.approvers;
    if (l$approvers.length != lOther$approvers.length) {
      return false;
    }
    for (int i = 0; i < l$approvers.length; i++) {
      final l$approvers$entry = l$approvers[i];
      final lOther$approvers$entry = lOther$approvers[i];
      if (l$approvers$entry != lOther$approvers$entry) {
        return false;
      }
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$yardPaymentRuleId = yardPaymentRuleId;
    final lOther$yardPaymentRuleId = other.yardPaymentRuleId;
    if (l$yardPaymentRuleId != lOther$yardPaymentRuleId) {
      return false;
    }
    final l$requestor = requestor;
    final lOther$requestor = other.requestor;
    if (l$requestor != lOther$requestor) {
      return false;
    }
    final l$requestorEmail = requestorEmail;
    final lOther$requestorEmail = other.requestorEmail;
    if (l$requestorEmail != lOther$requestorEmail) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Fragment$PaymentApproval
    on Fragment$PaymentApproval {
  CopyWith$Fragment$PaymentApproval<Fragment$PaymentApproval> get copyWith =>
      CopyWith$Fragment$PaymentApproval(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentApproval<TRes> {
  factory CopyWith$Fragment$PaymentApproval(
    Fragment$PaymentApproval instance,
    TRes Function(Fragment$PaymentApproval) then,
  ) = _CopyWithImpl$Fragment$PaymentApproval;

  factory CopyWith$Fragment$PaymentApproval.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentApproval;

  TRes call({
    List<String>? approvers,
    String? id,
    Enum$PaymentApprovalStatus? status,
    List<String>? ticketIds,
    double? total,
    String? yardCode,
    String? yardPaymentRuleId,
    String? requestor,
    String? requestorEmail,
    String? paymentRecordId,
    Fragment$PaymentApproval$created? created,
    bool? active,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentApproval$created<TRes> get created;
}

class _CopyWithImpl$Fragment$PaymentApproval<TRes>
    implements CopyWith$Fragment$PaymentApproval<TRes> {
  _CopyWithImpl$Fragment$PaymentApproval(this._instance, this._then);

  final Fragment$PaymentApproval _instance;

  final TRes Function(Fragment$PaymentApproval) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approvers = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? ticketIds = _undefined,
    Object? total = _undefined,
    Object? yardCode = _undefined,
    Object? yardPaymentRuleId = _undefined,
    Object? requestor = _undefined,
    Object? requestorEmail = _undefined,
    Object? paymentRecordId = _undefined,
    Object? created = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentApproval(
      approvers: approvers == _undefined || approvers == null
          ? _instance.approvers
          : (approvers as List<String>),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentApprovalStatus),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      total: total == _undefined || total == null
          ? _instance.total
          : (total as double),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      yardPaymentRuleId:
          yardPaymentRuleId == _undefined || yardPaymentRuleId == null
          ? _instance.yardPaymentRuleId
          : (yardPaymentRuleId as String),
      requestor: requestor == _undefined || requestor == null
          ? _instance.requestor
          : (requestor as String),
      requestorEmail: requestorEmail == _undefined || requestorEmail == null
          ? _instance.requestorEmail
          : (requestorEmail as String),
      paymentRecordId: paymentRecordId == _undefined || paymentRecordId == null
          ? _instance.paymentRecordId
          : (paymentRecordId as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$PaymentApproval$created),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentApproval$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$PaymentApproval$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentApproval<TRes>
    implements CopyWith$Fragment$PaymentApproval<TRes> {
  _CopyWithStubImpl$Fragment$PaymentApproval(this._res);

  TRes _res;

  call({
    List<String>? approvers,
    String? id,
    Enum$PaymentApprovalStatus? status,
    List<String>? ticketIds,
    double? total,
    String? yardCode,
    String? yardPaymentRuleId,
    String? requestor,
    String? requestorEmail,
    String? paymentRecordId,
    Fragment$PaymentApproval$created? created,
    bool? active,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentApproval$created<TRes> get created =>
      CopyWith$Fragment$PaymentApproval$created.stub(_res);
}

const fragmentDefinitionPaymentApproval = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentApproval'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentApproval'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'approvers'),
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
        name: NameNode(value: 'status'),
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
        name: NameNode(value: 'total'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardPaymentRuleId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'requestor'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'requestorEmail'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentRecordId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'userInfoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userName'),
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
        name: NameNode(value: 'active'),
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
);
const documentNodeFragmentPaymentApproval = DocumentNode(
  definitions: [fragmentDefinitionPaymentApproval],
);

class Fragment$PaymentApproval$created {
  Fragment$PaymentApproval$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Fragment$PaymentApproval$created.fromJson(Map<String, dynamic> json) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentApproval$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentApproval$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Fragment$PaymentApproval$created
    on Fragment$PaymentApproval$created {
  CopyWith$Fragment$PaymentApproval$created<Fragment$PaymentApproval$created>
  get copyWith => CopyWith$Fragment$PaymentApproval$created(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentApproval$created<TRes> {
  factory CopyWith$Fragment$PaymentApproval$created(
    Fragment$PaymentApproval$created instance,
    TRes Function(Fragment$PaymentApproval$created) then,
  ) = _CopyWithImpl$Fragment$PaymentApproval$created;

  factory CopyWith$Fragment$PaymentApproval$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentApproval$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentApproval$created<TRes>
    implements CopyWith$Fragment$PaymentApproval$created<TRes> {
  _CopyWithImpl$Fragment$PaymentApproval$created(this._instance, this._then);

  final Fragment$PaymentApproval$created _instance;

  final TRes Function(Fragment$PaymentApproval$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentApproval$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentApproval$created<TRes>
    implements CopyWith$Fragment$PaymentApproval$created<TRes> {
  _CopyWithStubImpl$Fragment$PaymentApproval$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
