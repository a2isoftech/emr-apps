import 'package:gql/ast.dart';

class Variables$Mutation$approvePayment {
  factory Variables$Mutation$approvePayment({
    required String id,
    required bool approved,
  }) => Variables$Mutation$approvePayment._({r'id': id, r'approved': approved});

  Variables$Mutation$approvePayment._(this._$data);

  factory Variables$Mutation$approvePayment.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$approved = data['approved'];
    result$data['approved'] = (l$approved as bool);
    return Variables$Mutation$approvePayment._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get approved => (_$data['approved'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$approved = approved;
    result$data['approved'] = l$approved;
    return result$data;
  }

  CopyWith$Variables$Mutation$approvePayment<Variables$Mutation$approvePayment>
  get copyWith => CopyWith$Variables$Mutation$approvePayment(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$approvePayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$approved = approved;
    return Object.hashAll([l$id, l$approved]);
  }
}

abstract class CopyWith$Variables$Mutation$approvePayment<TRes> {
  factory CopyWith$Variables$Mutation$approvePayment(
    Variables$Mutation$approvePayment instance,
    TRes Function(Variables$Mutation$approvePayment) then,
  ) = _CopyWithImpl$Variables$Mutation$approvePayment;

  factory CopyWith$Variables$Mutation$approvePayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$approvePayment;

  TRes call({String? id, bool? approved});
}

class _CopyWithImpl$Variables$Mutation$approvePayment<TRes>
    implements CopyWith$Variables$Mutation$approvePayment<TRes> {
  _CopyWithImpl$Variables$Mutation$approvePayment(this._instance, this._then);

  final Variables$Mutation$approvePayment _instance;

  final TRes Function(Variables$Mutation$approvePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? approved = _undefined}) => _then(
    Variables$Mutation$approvePayment._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (approved != _undefined && approved != null)
        'approved': (approved as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$approvePayment<TRes>
    implements CopyWith$Variables$Mutation$approvePayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$approvePayment(this._res);

  TRes _res;

  call({String? id, bool? approved}) => _res;
}

class Mutation$approvePayment {
  Mutation$approvePayment({
    required this.approveOrRejectPaymentApproval,
    this.$__typename = 'Mutation',
  });

  factory Mutation$approvePayment.fromJson(Map<String, dynamic> json) {
    final l$approveOrRejectPaymentApproval =
        json['approveOrRejectPaymentApproval'];
    final l$$__typename = json['__typename'];
    return Mutation$approvePayment(
      approveOrRejectPaymentApproval:
          (l$approveOrRejectPaymentApproval as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool approveOrRejectPaymentApproval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$approveOrRejectPaymentApproval = approveOrRejectPaymentApproval;
    _resultData['approveOrRejectPaymentApproval'] =
        l$approveOrRejectPaymentApproval;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$approveOrRejectPaymentApproval = approveOrRejectPaymentApproval;
    final l$$__typename = $__typename;
    return Object.hashAll([l$approveOrRejectPaymentApproval, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$approvePayment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$approveOrRejectPaymentApproval = approveOrRejectPaymentApproval;
    final lOther$approveOrRejectPaymentApproval =
        other.approveOrRejectPaymentApproval;
    if (l$approveOrRejectPaymentApproval !=
        lOther$approveOrRejectPaymentApproval) {
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

extension UtilityExtension$Mutation$approvePayment on Mutation$approvePayment {
  CopyWith$Mutation$approvePayment<Mutation$approvePayment> get copyWith =>
      CopyWith$Mutation$approvePayment(this, (i) => i);
}

abstract class CopyWith$Mutation$approvePayment<TRes> {
  factory CopyWith$Mutation$approvePayment(
    Mutation$approvePayment instance,
    TRes Function(Mutation$approvePayment) then,
  ) = _CopyWithImpl$Mutation$approvePayment;

  factory CopyWith$Mutation$approvePayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$approvePayment;

  TRes call({bool? approveOrRejectPaymentApproval, String? $__typename});
}

class _CopyWithImpl$Mutation$approvePayment<TRes>
    implements CopyWith$Mutation$approvePayment<TRes> {
  _CopyWithImpl$Mutation$approvePayment(this._instance, this._then);

  final Mutation$approvePayment _instance;

  final TRes Function(Mutation$approvePayment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? approveOrRejectPaymentApproval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$approvePayment(
      approveOrRejectPaymentApproval:
          approveOrRejectPaymentApproval == _undefined ||
              approveOrRejectPaymentApproval == null
          ? _instance.approveOrRejectPaymentApproval
          : (approveOrRejectPaymentApproval as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$approvePayment<TRes>
    implements CopyWith$Mutation$approvePayment<TRes> {
  _CopyWithStubImpl$Mutation$approvePayment(this._res);

  TRes _res;

  call({bool? approveOrRejectPaymentApproval, String? $__typename}) => _res;
}

const documentNodeMutationapprovePayment = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'approvePayment'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'approved')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'approveOrRejectPaymentApproval'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isApproved'),
                      value: VariableNode(name: NameNode(value: 'approved')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'paymentApprovalId'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
              ),
            ],
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
  ],
);
