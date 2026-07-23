import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Subscription$PaymentRecordStatusUpdated {
  Subscription$PaymentRecordStatusUpdated({
    required this.paymentRecordStatusUpdated,
    this.$__typename = 'Subscription',
  });

  factory Subscription$PaymentRecordStatusUpdated.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentRecordStatusUpdated = json['paymentRecordStatusUpdated'];
    final l$$__typename = json['__typename'];
    return Subscription$PaymentRecordStatusUpdated(
      paymentRecordStatusUpdated:
          Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated.fromJson(
            (l$paymentRecordStatusUpdated as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated
  paymentRecordStatusUpdated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRecordStatusUpdated = paymentRecordStatusUpdated;
    _resultData['paymentRecordStatusUpdated'] = l$paymentRecordStatusUpdated
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRecordStatusUpdated = paymentRecordStatusUpdated;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRecordStatusUpdated, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$PaymentRecordStatusUpdated ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRecordStatusUpdated = paymentRecordStatusUpdated;
    final lOther$paymentRecordStatusUpdated = other.paymentRecordStatusUpdated;
    if (l$paymentRecordStatusUpdated != lOther$paymentRecordStatusUpdated) {
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

extension UtilityExtension$Subscription$PaymentRecordStatusUpdated
    on Subscription$PaymentRecordStatusUpdated {
  CopyWith$Subscription$PaymentRecordStatusUpdated<
    Subscription$PaymentRecordStatusUpdated
  >
  get copyWith =>
      CopyWith$Subscription$PaymentRecordStatusUpdated(this, (i) => i);
}

abstract class CopyWith$Subscription$PaymentRecordStatusUpdated<TRes> {
  factory CopyWith$Subscription$PaymentRecordStatusUpdated(
    Subscription$PaymentRecordStatusUpdated instance,
    TRes Function(Subscription$PaymentRecordStatusUpdated) then,
  ) = _CopyWithImpl$Subscription$PaymentRecordStatusUpdated;

  factory CopyWith$Subscription$PaymentRecordStatusUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated;

  TRes call({
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated?
    paymentRecordStatusUpdated,
    String? $__typename,
  });
  CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
    TRes
  >
  get paymentRecordStatusUpdated;
}

class _CopyWithImpl$Subscription$PaymentRecordStatusUpdated<TRes>
    implements CopyWith$Subscription$PaymentRecordStatusUpdated<TRes> {
  _CopyWithImpl$Subscription$PaymentRecordStatusUpdated(
    this._instance,
    this._then,
  );

  final Subscription$PaymentRecordStatusUpdated _instance;

  final TRes Function(Subscription$PaymentRecordStatusUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRecordStatusUpdated = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription$PaymentRecordStatusUpdated(
      paymentRecordStatusUpdated:
          paymentRecordStatusUpdated == _undefined ||
              paymentRecordStatusUpdated == null
          ? _instance.paymentRecordStatusUpdated
          : (paymentRecordStatusUpdated
                as Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
    TRes
  >
  get paymentRecordStatusUpdated {
    final local$paymentRecordStatusUpdated =
        _instance.paymentRecordStatusUpdated;
    return CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
      local$paymentRecordStatusUpdated,
      (e) => call(paymentRecordStatusUpdated: e),
    );
  }
}

class _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated<TRes>
    implements CopyWith$Subscription$PaymentRecordStatusUpdated<TRes> {
  _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated(this._res);

  TRes _res;

  call({
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated?
    paymentRecordStatusUpdated,
    String? $__typename,
  }) => _res;

  CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
    TRes
  >
  get paymentRecordStatusUpdated =>
      CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated.stub(
        _res,
      );
}

const documentNodeSubscriptionPaymentRecordStatusUpdated = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'PaymentRecordStatusUpdated'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'paymentRecordStatusUpdated'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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

class Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated {
  Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated({
    required this.id,
    required this.status,
    this.$__typename = 'PaymentRecord',
  });

  factory Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
      id: (l$id as String),
      status: fromJson$Enum$PaymentStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$PaymentStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$status, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated ||
        runtimeType != other.runtimeType) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated
    on Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated {
  CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated
  >
  get copyWith =>
      CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
  TRes
> {
  factory CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated instance,
    TRes Function(
      Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated,
    )
    then,
  ) = _CopyWithImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated;

  factory CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated.stub(
    TRes res,
  ) = _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated;

  TRes call({String? id, Enum$PaymentStatus? status, String? $__typename});
}

class _CopyWithImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
  TRes
>
    implements
        CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
          TRes
        > {
  _CopyWithImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
    this._instance,
    this._then,
  );

  final Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated
  _instance;

  final TRes Function(
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentStatus),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
  TRes
>
    implements
        CopyWith$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated<
          TRes
        > {
  _CopyWithStubImpl$Subscription$PaymentRecordStatusUpdated$paymentRecordStatusUpdated(
    this._res,
  );

  TRes _res;

  call({String? id, Enum$PaymentStatus? status, String? $__typename}) => _res;
}
