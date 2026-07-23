import '../../fragments/payment/payment_posting_task_fields.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getPaymentPostingTasksForPaymentRecord {
  factory Variables$Query$getPaymentPostingTasksForPaymentRecord({
    required List<String> paymentRecordIds,
  }) => Variables$Query$getPaymentPostingTasksForPaymentRecord._({
    r'paymentRecordIds': paymentRecordIds,
  });

  Variables$Query$getPaymentPostingTasksForPaymentRecord._(this._$data);

  factory Variables$Query$getPaymentPostingTasksForPaymentRecord.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentRecordIds = data['paymentRecordIds'];
    result$data['paymentRecordIds'] = (l$paymentRecordIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Query$getPaymentPostingTasksForPaymentRecord._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  List<String> get paymentRecordIds =>
      (_$data['paymentRecordIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentRecordIds = paymentRecordIds;
    result$data['paymentRecordIds'] = l$paymentRecordIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord<
    Variables$Query$getPaymentPostingTasksForPaymentRecord
  >
  get copyWith =>
      CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getPaymentPostingTasksForPaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordIds = paymentRecordIds;
    final lOther$paymentRecordIds = other.paymentRecordIds;
    if (l$paymentRecordIds.length != lOther$paymentRecordIds.length) {
      return false;
    }
    for (int i = 0; i < l$paymentRecordIds.length; i++) {
      final l$paymentRecordIds$entry = l$paymentRecordIds[i];
      final lOther$paymentRecordIds$entry = lOther$paymentRecordIds[i];
      if (l$paymentRecordIds$entry != lOther$paymentRecordIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentRecordIds = paymentRecordIds;
    return Object.hashAll([Object.hashAll(l$paymentRecordIds.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord<
  TRes
> {
  factory CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord(
    Variables$Query$getPaymentPostingTasksForPaymentRecord instance,
    TRes Function(Variables$Query$getPaymentPostingTasksForPaymentRecord) then,
  ) = _CopyWithImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord;

  factory CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord;

  TRes call({List<String>? paymentRecordIds});
}

class _CopyWithImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord<TRes>
    implements
        CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord<TRes> {
  _CopyWithImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord(
    this._instance,
    this._then,
  );

  final Variables$Query$getPaymentPostingTasksForPaymentRecord _instance;

  final TRes Function(Variables$Query$getPaymentPostingTasksForPaymentRecord)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? paymentRecordIds = _undefined}) => _then(
    Variables$Query$getPaymentPostingTasksForPaymentRecord._({
      ..._instance._$data,
      if (paymentRecordIds != _undefined && paymentRecordIds != null)
        'paymentRecordIds': (paymentRecordIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord<
  TRes
>
    implements
        CopyWith$Variables$Query$getPaymentPostingTasksForPaymentRecord<TRes> {
  _CopyWithStubImpl$Variables$Query$getPaymentPostingTasksForPaymentRecord(
    this._res,
  );

  TRes _res;

  call({List<String>? paymentRecordIds}) => _res;
}

class Query$getPaymentPostingTasksForPaymentRecord {
  Query$getPaymentPostingTasksForPaymentRecord({
    required this.paymentPostingTasksForPaymentRecord,
    this.$__typename = 'Query',
  });

  factory Query$getPaymentPostingTasksForPaymentRecord.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentPostingTasksForPaymentRecord =
        json['paymentPostingTasksForPaymentRecord'];
    final l$$__typename = json['__typename'];
    return Query$getPaymentPostingTasksForPaymentRecord(
      paymentPostingTasksForPaymentRecord:
          (l$paymentPostingTasksForPaymentRecord as List<dynamic>)
              .map(
                (e) => Fragment$PaymentPostingTaskFields.fromJson(
                  (e as Map<String, dynamic>),
                ),
              )
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PaymentPostingTaskFields>
  paymentPostingTasksForPaymentRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentPostingTasksForPaymentRecord =
        paymentPostingTasksForPaymentRecord;
    _resultData['paymentPostingTasksForPaymentRecord'] =
        l$paymentPostingTasksForPaymentRecord.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentPostingTasksForPaymentRecord =
        paymentPostingTasksForPaymentRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$paymentPostingTasksForPaymentRecord.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getPaymentPostingTasksForPaymentRecord ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentPostingTasksForPaymentRecord =
        paymentPostingTasksForPaymentRecord;
    final lOther$paymentPostingTasksForPaymentRecord =
        other.paymentPostingTasksForPaymentRecord;
    if (l$paymentPostingTasksForPaymentRecord.length !=
        lOther$paymentPostingTasksForPaymentRecord.length) {
      return false;
    }
    for (int i = 0; i < l$paymentPostingTasksForPaymentRecord.length; i++) {
      final l$paymentPostingTasksForPaymentRecord$entry =
          l$paymentPostingTasksForPaymentRecord[i];
      final lOther$paymentPostingTasksForPaymentRecord$entry =
          lOther$paymentPostingTasksForPaymentRecord[i];
      if (l$paymentPostingTasksForPaymentRecord$entry !=
          lOther$paymentPostingTasksForPaymentRecord$entry) {
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

extension UtilityExtension$Query$getPaymentPostingTasksForPaymentRecord
    on Query$getPaymentPostingTasksForPaymentRecord {
  CopyWith$Query$getPaymentPostingTasksForPaymentRecord<
    Query$getPaymentPostingTasksForPaymentRecord
  >
  get copyWith =>
      CopyWith$Query$getPaymentPostingTasksForPaymentRecord(this, (i) => i);
}

abstract class CopyWith$Query$getPaymentPostingTasksForPaymentRecord<TRes> {
  factory CopyWith$Query$getPaymentPostingTasksForPaymentRecord(
    Query$getPaymentPostingTasksForPaymentRecord instance,
    TRes Function(Query$getPaymentPostingTasksForPaymentRecord) then,
  ) = _CopyWithImpl$Query$getPaymentPostingTasksForPaymentRecord;

  factory CopyWith$Query$getPaymentPostingTasksForPaymentRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$getPaymentPostingTasksForPaymentRecord;

  TRes call({
    List<Fragment$PaymentPostingTaskFields>?
    paymentPostingTasksForPaymentRecord,
    String? $__typename,
  });
  TRes paymentPostingTasksForPaymentRecord(
    Iterable<Fragment$PaymentPostingTaskFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentPostingTaskFields<
          Fragment$PaymentPostingTaskFields
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$getPaymentPostingTasksForPaymentRecord<TRes>
    implements CopyWith$Query$getPaymentPostingTasksForPaymentRecord<TRes> {
  _CopyWithImpl$Query$getPaymentPostingTasksForPaymentRecord(
    this._instance,
    this._then,
  );

  final Query$getPaymentPostingTasksForPaymentRecord _instance;

  final TRes Function(Query$getPaymentPostingTasksForPaymentRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentPostingTasksForPaymentRecord = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getPaymentPostingTasksForPaymentRecord(
      paymentPostingTasksForPaymentRecord:
          paymentPostingTasksForPaymentRecord == _undefined ||
              paymentPostingTasksForPaymentRecord == null
          ? _instance.paymentPostingTasksForPaymentRecord
          : (paymentPostingTasksForPaymentRecord
                as List<Fragment$PaymentPostingTaskFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes paymentPostingTasksForPaymentRecord(
    Iterable<Fragment$PaymentPostingTaskFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentPostingTaskFields<
          Fragment$PaymentPostingTaskFields
        >
      >,
    )
    _fn,
  ) => call(
    paymentPostingTasksForPaymentRecord: _fn(
      _instance.paymentPostingTasksForPaymentRecord.map(
        (e) => CopyWith$Fragment$PaymentPostingTaskFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$getPaymentPostingTasksForPaymentRecord<TRes>
    implements CopyWith$Query$getPaymentPostingTasksForPaymentRecord<TRes> {
  _CopyWithStubImpl$Query$getPaymentPostingTasksForPaymentRecord(this._res);

  TRes _res;

  call({
    List<Fragment$PaymentPostingTaskFields>?
    paymentPostingTasksForPaymentRecord,
    String? $__typename,
  }) => _res;

  paymentPostingTasksForPaymentRecord(_fn) => _res;
}

const documentNodeQuerygetPaymentPostingTasksForPaymentRecord = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPaymentPostingTasksForPaymentRecord'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentRecordIds')),
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
            name: NameNode(value: 'paymentPostingTasksForPaymentRecord'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentRecordIds'),
                value: VariableNode(name: NameNode(value: 'paymentRecordIds')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PaymentPostingTaskFields'),
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
    fragmentDefinitionPaymentPostingTaskFields,
  ],
);
