import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentMethodFields {
  Fragment$PaymentMethodFields({
    required this.paymentMethods,
    this.$__typename = 'Yard',
  });

  factory Fragment$PaymentMethodFields.fromJson(Map<String, dynamic> json) {
    final l$paymentMethods = json['paymentMethods'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields(
      paymentMethods: Fragment$PaymentMethodFields$paymentMethods.fromJson(
        (l$paymentMethods as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentMethodFields$paymentMethods paymentMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethods = paymentMethods;
    _resultData['paymentMethods'] = l$paymentMethods.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethods = paymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentMethods, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethods = paymentMethods;
    final lOther$paymentMethods = other.paymentMethods;
    if (l$paymentMethods != lOther$paymentMethods) {
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

extension UtilityExtension$Fragment$PaymentMethodFields
    on Fragment$PaymentMethodFields {
  CopyWith$Fragment$PaymentMethodFields<Fragment$PaymentMethodFields>
  get copyWith => CopyWith$Fragment$PaymentMethodFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentMethodFields<TRes> {
  factory CopyWith$Fragment$PaymentMethodFields(
    Fragment$PaymentMethodFields instance,
    TRes Function(Fragment$PaymentMethodFields) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields;

  factory CopyWith$Fragment$PaymentMethodFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentMethodFields;

  TRes call({
    Fragment$PaymentMethodFields$paymentMethods? paymentMethods,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes> get paymentMethods;
}

class _CopyWithImpl$Fragment$PaymentMethodFields<TRes>
    implements CopyWith$Fragment$PaymentMethodFields<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields(this._instance, this._then);

  final Fragment$PaymentMethodFields _instance;

  final TRes Function(Fragment$PaymentMethodFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethods = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields(
      paymentMethods: paymentMethods == _undefined || paymentMethods == null
          ? _instance.paymentMethods
          : (paymentMethods as Fragment$PaymentMethodFields$paymentMethods),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes>
  get paymentMethods {
    final local$paymentMethods = _instance.paymentMethods;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods(
      local$paymentMethods,
      (e) => call(paymentMethods: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields<TRes>
    implements CopyWith$Fragment$PaymentMethodFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields(this._res);

  TRes _res;

  call({
    Fragment$PaymentMethodFields$paymentMethods? paymentMethods,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes>
  get paymentMethods =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods.stub(_res);
}

const fragmentDefinitionPaymentMethodFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentMethodFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Yard'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'paymentMethods'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'atm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'value'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
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
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'manualCheque'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'autoCheque'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'fasterpay'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
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
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'overnightFasterpay'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'cash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'numberOfRemittancesToPrint'),
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
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'autoChequeWithEncashmentCash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'agent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeThreshold'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minCommission'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minDenomination'),
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
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'autoChequeWithEncashmentAtm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'agent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enforceIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeThreshold'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'flatFeeValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'logoPath'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minCommission'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minDenomination'),
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
                    name: NameNode(value: 'bankCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'secorePrepaid'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
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
                    name: NameNode(value: 'enabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'digitalWalletWithAtm'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
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
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'digitalWalletWithCash'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'commissionPercent'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'rounding'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'roundingType'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'value'),
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
                    name: NameNode(value: 'maxUpperLimit'),
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
              name: NameNode(value: 'splitPayment'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'maxUpperLimit'),
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
const documentNodeFragmentPaymentMethodFields = DocumentNode(
  definitions: [fragmentDefinitionPaymentMethodFields],
);

class Fragment$PaymentMethodFields$paymentMethods {
  Fragment$PaymentMethodFields$paymentMethods({
    required this.atm,
    required this.manualCheque,
    required this.autoCheque,
    required this.fasterpay,
    required this.overnightFasterpay,
    required this.cash,
    required this.autoChequeWithEncashmentCash,
    required this.autoChequeWithEncashmentAtm,
    required this.secorePrepaid,
    required this.digitalWalletWithAtm,
    required this.digitalWalletWithCash,
    required this.splitPayment,
    this.$__typename = 'PaymentMethods',
  });

  factory Fragment$PaymentMethodFields$paymentMethods.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$atm = json['atm'];
    final l$manualCheque = json['manualCheque'];
    final l$autoCheque = json['autoCheque'];
    final l$fasterpay = json['fasterpay'];
    final l$overnightFasterpay = json['overnightFasterpay'];
    final l$cash = json['cash'];
    final l$autoChequeWithEncashmentCash = json['autoChequeWithEncashmentCash'];
    final l$autoChequeWithEncashmentAtm = json['autoChequeWithEncashmentAtm'];
    final l$secorePrepaid = json['secorePrepaid'];
    final l$digitalWalletWithAtm = json['digitalWalletWithAtm'];
    final l$digitalWalletWithCash = json['digitalWalletWithCash'];
    final l$splitPayment = json['splitPayment'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods(
      atm: Fragment$PaymentMethodFields$paymentMethods$atm.fromJson(
        (l$atm as Map<String, dynamic>),
      ),
      manualCheque:
          Fragment$PaymentMethodFields$paymentMethods$manualCheque.fromJson(
            (l$manualCheque as Map<String, dynamic>),
          ),
      autoCheque:
          Fragment$PaymentMethodFields$paymentMethods$autoCheque.fromJson(
            (l$autoCheque as Map<String, dynamic>),
          ),
      fasterpay: Fragment$PaymentMethodFields$paymentMethods$fasterpay.fromJson(
        (l$fasterpay as Map<String, dynamic>),
      ),
      overnightFasterpay:
          Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay.fromJson(
            (l$overnightFasterpay as Map<String, dynamic>),
          ),
      cash: Fragment$PaymentMethodFields$paymentMethods$cash.fromJson(
        (l$cash as Map<String, dynamic>),
      ),
      autoChequeWithEncashmentCash:
          Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash.fromJson(
            (l$autoChequeWithEncashmentCash as Map<String, dynamic>),
          ),
      autoChequeWithEncashmentAtm:
          Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
            (l$autoChequeWithEncashmentAtm as Map<String, dynamic>),
          ),
      secorePrepaid:
          Fragment$PaymentMethodFields$paymentMethods$secorePrepaid.fromJson(
            (l$secorePrepaid as Map<String, dynamic>),
          ),
      digitalWalletWithAtm:
          Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm.fromJson(
            (l$digitalWalletWithAtm as Map<String, dynamic>),
          ),
      digitalWalletWithCash:
          Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash.fromJson(
            (l$digitalWalletWithCash as Map<String, dynamic>),
          ),
      splitPayment:
          Fragment$PaymentMethodFields$paymentMethods$splitPayment.fromJson(
            (l$splitPayment as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentMethodFields$paymentMethods$atm atm;

  final Fragment$PaymentMethodFields$paymentMethods$manualCheque manualCheque;

  final Fragment$PaymentMethodFields$paymentMethods$autoCheque autoCheque;

  final Fragment$PaymentMethodFields$paymentMethods$fasterpay fasterpay;

  final Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay
  overnightFasterpay;

  final Fragment$PaymentMethodFields$paymentMethods$cash cash;

  final Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash
  autoChequeWithEncashmentCash;

  final Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm
  autoChequeWithEncashmentAtm;

  final Fragment$PaymentMethodFields$paymentMethods$secorePrepaid secorePrepaid;

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm
  digitalWalletWithAtm;

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash
  digitalWalletWithCash;

  final Fragment$PaymentMethodFields$paymentMethods$splitPayment splitPayment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$atm = atm;
    _resultData['atm'] = l$atm.toJson();
    final l$manualCheque = manualCheque;
    _resultData['manualCheque'] = l$manualCheque.toJson();
    final l$autoCheque = autoCheque;
    _resultData['autoCheque'] = l$autoCheque.toJson();
    final l$fasterpay = fasterpay;
    _resultData['fasterpay'] = l$fasterpay.toJson();
    final l$overnightFasterpay = overnightFasterpay;
    _resultData['overnightFasterpay'] = l$overnightFasterpay.toJson();
    final l$cash = cash;
    _resultData['cash'] = l$cash.toJson();
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    _resultData['autoChequeWithEncashmentCash'] = l$autoChequeWithEncashmentCash
        .toJson();
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    _resultData['autoChequeWithEncashmentAtm'] = l$autoChequeWithEncashmentAtm
        .toJson();
    final l$secorePrepaid = secorePrepaid;
    _resultData['secorePrepaid'] = l$secorePrepaid.toJson();
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    _resultData['digitalWalletWithAtm'] = l$digitalWalletWithAtm.toJson();
    final l$digitalWalletWithCash = digitalWalletWithCash;
    _resultData['digitalWalletWithCash'] = l$digitalWalletWithCash.toJson();
    final l$splitPayment = splitPayment;
    _resultData['splitPayment'] = l$splitPayment.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$atm = atm;
    final l$manualCheque = manualCheque;
    final l$autoCheque = autoCheque;
    final l$fasterpay = fasterpay;
    final l$overnightFasterpay = overnightFasterpay;
    final l$cash = cash;
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final l$secorePrepaid = secorePrepaid;
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final l$splitPayment = splitPayment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$atm,
      l$manualCheque,
      l$autoCheque,
      l$fasterpay,
      l$overnightFasterpay,
      l$cash,
      l$autoChequeWithEncashmentCash,
      l$autoChequeWithEncashmentAtm,
      l$secorePrepaid,
      l$digitalWalletWithAtm,
      l$digitalWalletWithCash,
      l$splitPayment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$atm = atm;
    final lOther$atm = other.atm;
    if (l$atm != lOther$atm) {
      return false;
    }
    final l$manualCheque = manualCheque;
    final lOther$manualCheque = other.manualCheque;
    if (l$manualCheque != lOther$manualCheque) {
      return false;
    }
    final l$autoCheque = autoCheque;
    final lOther$autoCheque = other.autoCheque;
    if (l$autoCheque != lOther$autoCheque) {
      return false;
    }
    final l$fasterpay = fasterpay;
    final lOther$fasterpay = other.fasterpay;
    if (l$fasterpay != lOther$fasterpay) {
      return false;
    }
    final l$overnightFasterpay = overnightFasterpay;
    final lOther$overnightFasterpay = other.overnightFasterpay;
    if (l$overnightFasterpay != lOther$overnightFasterpay) {
      return false;
    }
    final l$cash = cash;
    final lOther$cash = other.cash;
    if (l$cash != lOther$cash) {
      return false;
    }
    final l$autoChequeWithEncashmentCash = autoChequeWithEncashmentCash;
    final lOther$autoChequeWithEncashmentCash =
        other.autoChequeWithEncashmentCash;
    if (l$autoChequeWithEncashmentCash != lOther$autoChequeWithEncashmentCash) {
      return false;
    }
    final l$autoChequeWithEncashmentAtm = autoChequeWithEncashmentAtm;
    final lOther$autoChequeWithEncashmentAtm =
        other.autoChequeWithEncashmentAtm;
    if (l$autoChequeWithEncashmentAtm != lOther$autoChequeWithEncashmentAtm) {
      return false;
    }
    final l$secorePrepaid = secorePrepaid;
    final lOther$secorePrepaid = other.secorePrepaid;
    if (l$secorePrepaid != lOther$secorePrepaid) {
      return false;
    }
    final l$digitalWalletWithAtm = digitalWalletWithAtm;
    final lOther$digitalWalletWithAtm = other.digitalWalletWithAtm;
    if (l$digitalWalletWithAtm != lOther$digitalWalletWithAtm) {
      return false;
    }
    final l$digitalWalletWithCash = digitalWalletWithCash;
    final lOther$digitalWalletWithCash = other.digitalWalletWithCash;
    if (l$digitalWalletWithCash != lOther$digitalWalletWithCash) {
      return false;
    }
    final l$splitPayment = splitPayment;
    final lOther$splitPayment = other.splitPayment;
    if (l$splitPayment != lOther$splitPayment) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods
    on Fragment$PaymentMethodFields$paymentMethods {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods<
    Fragment$PaymentMethodFields$paymentMethods
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods(
    Fragment$PaymentMethodFields$paymentMethods instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods;

  TRes call({
    Fragment$PaymentMethodFields$paymentMethods$atm? atm,
    Fragment$PaymentMethodFields$paymentMethods$manualCheque? manualCheque,
    Fragment$PaymentMethodFields$paymentMethods$autoCheque? autoCheque,
    Fragment$PaymentMethodFields$paymentMethods$fasterpay? fasterpay,
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Fragment$PaymentMethodFields$paymentMethods$cash? cash,
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Fragment$PaymentMethodFields$paymentMethods$secorePrepaid? secorePrepaid,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Fragment$PaymentMethodFields$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> get atm;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<TRes>
  get manualCheque;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes>
  get autoCheque;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes>
  get fasterpay;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> get cash;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash;
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<TRes>
  get splitPayment;
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? atm = _undefined,
    Object? manualCheque = _undefined,
    Object? autoCheque = _undefined,
    Object? fasterpay = _undefined,
    Object? overnightFasterpay = _undefined,
    Object? cash = _undefined,
    Object? autoChequeWithEncashmentCash = _undefined,
    Object? autoChequeWithEncashmentAtm = _undefined,
    Object? secorePrepaid = _undefined,
    Object? digitalWalletWithAtm = _undefined,
    Object? digitalWalletWithCash = _undefined,
    Object? splitPayment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods(
      atm: atm == _undefined || atm == null
          ? _instance.atm
          : (atm as Fragment$PaymentMethodFields$paymentMethods$atm),
      manualCheque: manualCheque == _undefined || manualCheque == null
          ? _instance.manualCheque
          : (manualCheque
                as Fragment$PaymentMethodFields$paymentMethods$manualCheque),
      autoCheque: autoCheque == _undefined || autoCheque == null
          ? _instance.autoCheque
          : (autoCheque
                as Fragment$PaymentMethodFields$paymentMethods$autoCheque),
      fasterpay: fasterpay == _undefined || fasterpay == null
          ? _instance.fasterpay
          : (fasterpay
                as Fragment$PaymentMethodFields$paymentMethods$fasterpay),
      overnightFasterpay:
          overnightFasterpay == _undefined || overnightFasterpay == null
          ? _instance.overnightFasterpay
          : (overnightFasterpay
                as Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay),
      cash: cash == _undefined || cash == null
          ? _instance.cash
          : (cash as Fragment$PaymentMethodFields$paymentMethods$cash),
      autoChequeWithEncashmentCash:
          autoChequeWithEncashmentCash == _undefined ||
              autoChequeWithEncashmentCash == null
          ? _instance.autoChequeWithEncashmentCash
          : (autoChequeWithEncashmentCash
                as Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash),
      autoChequeWithEncashmentAtm:
          autoChequeWithEncashmentAtm == _undefined ||
              autoChequeWithEncashmentAtm == null
          ? _instance.autoChequeWithEncashmentAtm
          : (autoChequeWithEncashmentAtm
                as Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm),
      secorePrepaid: secorePrepaid == _undefined || secorePrepaid == null
          ? _instance.secorePrepaid
          : (secorePrepaid
                as Fragment$PaymentMethodFields$paymentMethods$secorePrepaid),
      digitalWalletWithAtm:
          digitalWalletWithAtm == _undefined || digitalWalletWithAtm == null
          ? _instance.digitalWalletWithAtm
          : (digitalWalletWithAtm
                as Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm),
      digitalWalletWithCash:
          digitalWalletWithCash == _undefined || digitalWalletWithCash == null
          ? _instance.digitalWalletWithCash
          : (digitalWalletWithCash
                as Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash),
      splitPayment: splitPayment == _undefined || splitPayment == null
          ? _instance.splitPayment
          : (splitPayment
                as Fragment$PaymentMethodFields$paymentMethods$splitPayment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> get atm {
    final local$atm = _instance.atm;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm(
      local$atm,
      (e) => call(atm: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<TRes>
  get manualCheque {
    final local$manualCheque = _instance.manualCheque;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque(
      local$manualCheque,
      (e) => call(manualCheque: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes>
  get autoCheque {
    final local$autoCheque = _instance.autoCheque;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque(
      local$autoCheque,
      (e) => call(autoCheque: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes>
  get fasterpay {
    final local$fasterpay = _instance.fasterpay;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay(
      local$fasterpay,
      (e) => call(fasterpay: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay {
    final local$overnightFasterpay = _instance.overnightFasterpay;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
      local$overnightFasterpay,
      (e) => call(overnightFasterpay: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> get cash {
    final local$cash = _instance.cash;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash(
      local$cash,
      (e) => call(cash: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash {
    final local$autoChequeWithEncashmentCash =
        _instance.autoChequeWithEncashmentCash;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
      local$autoChequeWithEncashmentCash,
      (e) => call(autoChequeWithEncashmentCash: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm {
    final local$autoChequeWithEncashmentAtm =
        _instance.autoChequeWithEncashmentAtm;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
      local$autoChequeWithEncashmentAtm,
      (e) => call(autoChequeWithEncashmentAtm: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid {
    final local$secorePrepaid = _instance.secorePrepaid;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
      local$secorePrepaid,
      (e) => call(secorePrepaid: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm {
    final local$digitalWalletWithAtm = _instance.digitalWalletWithAtm;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
      local$digitalWalletWithAtm,
      (e) => call(digitalWalletWithAtm: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash {
    final local$digitalWalletWithCash = _instance.digitalWalletWithCash;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
      local$digitalWalletWithCash,
      (e) => call(digitalWalletWithCash: e),
    );
  }

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<TRes>
  get splitPayment {
    final local$splitPayment = _instance.splitPayment;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment(
      local$splitPayment,
      (e) => call(splitPayment: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods(this._res);

  TRes _res;

  call({
    Fragment$PaymentMethodFields$paymentMethods$atm? atm,
    Fragment$PaymentMethodFields$paymentMethods$manualCheque? manualCheque,
    Fragment$PaymentMethodFields$paymentMethods$autoCheque? autoCheque,
    Fragment$PaymentMethodFields$paymentMethods$fasterpay? fasterpay,
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay?
    overnightFasterpay,
    Fragment$PaymentMethodFields$paymentMethods$cash? cash,
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash?
    autoChequeWithEncashmentCash,
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm?
    autoChequeWithEncashmentAtm,
    Fragment$PaymentMethodFields$paymentMethods$secorePrepaid? secorePrepaid,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm?
    digitalWalletWithAtm,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash?
    digitalWalletWithCash,
    Fragment$PaymentMethodFields$paymentMethods$splitPayment? splitPayment,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> get atm =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm.stub(_res);

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<TRes>
  get manualCheque =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes>
  get autoCheque =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes>
  get fasterpay =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay.stub(_res);

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<TRes>
  get overnightFasterpay =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> get cash =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash.stub(_res);

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
    TRes
  >
  get autoChequeWithEncashmentCash =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
    TRes
  >
  get autoChequeWithEncashmentAtm =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<TRes>
  get secorePrepaid =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
    TRes
  >
  get digitalWalletWithAtm =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
    TRes
  >
  get digitalWalletWithCash =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash.stub(
        _res,
      );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<TRes>
  get splitPayment =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment.stub(
        _res,
      );
}

class Fragment$PaymentMethodFields$paymentMethods$atm {
  Fragment$PaymentMethodFields$paymentMethods$atm({
    required this.rounding,
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'AtmPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$atm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rounding = json['rounding'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$atm(
      rounding:
          Fragment$PaymentMethodFields$paymentMethods$atm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentMethodFields$paymentMethods$atm$rounding rounding;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rounding = rounding;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rounding,
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$atm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$atm
    on Fragment$PaymentMethodFields$paymentMethods$atm {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<
    Fragment$PaymentMethodFields$paymentMethods$atm
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm(
    Fragment$PaymentMethodFields$paymentMethods$atm instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$atm) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm;

  TRes call({
    Fragment$PaymentMethodFields$paymentMethods$atm$rounding? rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<TRes>
  get rounding;
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$atm _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$atm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rounding = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$atm(
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Fragment$PaymentMethodFields$paymentMethods$atm$rounding),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<TRes>
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm(this._res);

  TRes _res;

  call({
    Fragment$PaymentMethodFields$paymentMethods$atm$rounding? rounding,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<TRes>
  get rounding =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding.stub(
        _res,
      );
}

class Fragment$PaymentMethodFields$paymentMethods$atm$rounding {
  Fragment$PaymentMethodFields$paymentMethods$atm$rounding({
    required this.value,
    required this.roundingType,
    this.$__typename = 'Rounding',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$atm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$value = json['value'];
    final l$roundingType = json['roundingType'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
      value: (l$value as num).toDouble(),
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final double value;

  final Enum$RoundingType roundingType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$roundingType = roundingType;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$roundingType, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$atm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$atm$rounding
    on Fragment$PaymentMethodFields$paymentMethods$atm$rounding {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
    Fragment$PaymentMethodFields$paymentMethods$atm$rounding
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
    Fragment$PaymentMethodFields$paymentMethods$atm$rounding instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$atm$rounding)
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding;

  TRes call({
    double? value,
    Enum$RoundingType? roundingType,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$atm$rounding _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$atm$rounding)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? roundingType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$atm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$atm$rounding(
    this._res,
  );

  TRes _res;

  call({double? value, Enum$RoundingType? roundingType, String? $__typename}) =>
      _res;
}

class Fragment$PaymentMethodFields$paymentMethods$manualCheque {
  Fragment$PaymentMethodFields$paymentMethods$manualCheque({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'ManualChequePaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$manualCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$manualCheque(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$manualCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$manualCheque
    on Fragment$PaymentMethodFields$paymentMethods$manualCheque {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
    Fragment$PaymentMethodFields$paymentMethods$manualCheque
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque(
    Fragment$PaymentMethodFields$paymentMethods$manualCheque instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$manualCheque)
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$manualCheque _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$manualCheque)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$manualCheque(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$manualCheque<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$manualCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$autoCheque {
  Fragment$PaymentMethodFields$paymentMethods$autoCheque({
    required this.enforceIdentification,
    required this.enabled,
    required this.paymentMethod,
    required this.logoPath,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequePaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$autoCheque.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enforceIdentification = json['enforceIdentification'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$logoPath = json['logoPath'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$autoCheque(
      enforceIdentification: (l$enforceIdentification as bool),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      logoPath: (l$logoPath as String),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enforceIdentification;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final String logoPath;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enforceIdentification = enforceIdentification;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$logoPath = logoPath;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enforceIdentification,
      l$enabled,
      l$paymentMethod,
      l$logoPath,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$autoCheque ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$autoCheque
    on Fragment$PaymentMethodFields$paymentMethods$autoCheque {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<
    Fragment$PaymentMethodFields$paymentMethods$autoCheque
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque(
    Fragment$PaymentMethodFields$paymentMethods$autoCheque instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$autoCheque) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque;

  TRes call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$autoCheque _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$autoCheque)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enforceIdentification = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? logoPath = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$autoCheque(
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoCheque<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoCheque(
    this._res,
  );

  TRes _res;

  call({
    bool? enforceIdentification,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    String? logoPath,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$fasterpay {
  Fragment$PaymentMethodFields$paymentMethods$fasterpay({
    required this.flatFeeValue,
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'FasterpayPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$fasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$flatFeeValue = json['flatFeeValue'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$fasterpay(
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double flatFeeValue;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$flatFeeValue = flatFeeValue;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$flatFeeValue,
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$fasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$fasterpay
    on Fragment$PaymentMethodFields$paymentMethods$fasterpay {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<
    Fragment$PaymentMethodFields$paymentMethods$fasterpay
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay(
    Fragment$PaymentMethodFields$paymentMethods$fasterpay instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$fasterpay) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay;

  TRes call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$fasterpay _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$fasterpay)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flatFeeValue = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$fasterpay(
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$fasterpay<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$fasterpay(
    this._res,
  );

  TRes _res;

  call({
    double? flatFeeValue,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay {
  Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay({
    required this.paymentMethod,
    required this.enabled,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'OvernightFasterpayPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$enabled,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay
    on Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$overnightFasterpay(
    this._res,
  );

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$cash {
  Fragment$PaymentMethodFields$paymentMethods$cash({
    required this.numberOfRemittancesToPrint,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'CashPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$cash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$numberOfRemittancesToPrint = json['numberOfRemittancesToPrint'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$cash(
      numberOfRemittancesToPrint: (l$numberOfRemittancesToPrint as int),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int numberOfRemittancesToPrint;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    _resultData['numberOfRemittancesToPrint'] = l$numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$numberOfRemittancesToPrint,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$cash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$numberOfRemittancesToPrint = numberOfRemittancesToPrint;
    final lOther$numberOfRemittancesToPrint = other.numberOfRemittancesToPrint;
    if (l$numberOfRemittancesToPrint != lOther$numberOfRemittancesToPrint) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$cash
    on Fragment$PaymentMethodFields$paymentMethods$cash {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<
    Fragment$PaymentMethodFields$paymentMethods$cash
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash(
    Fragment$PaymentMethodFields$paymentMethods$cash instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$cash) then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$cash;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$cash;

  TRes call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$cash<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$cash(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$cash _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$cash) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? numberOfRemittancesToPrint = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$cash(
      numberOfRemittancesToPrint:
          numberOfRemittancesToPrint == _undefined ||
              numberOfRemittancesToPrint == null
          ? _instance.numberOfRemittancesToPrint
          : (numberOfRemittancesToPrint as int),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$cash<TRes>
    implements CopyWith$Fragment$PaymentMethodFields$paymentMethods$cash<TRes> {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$cash(this._res);

  TRes _res;

  call({
    int? numberOfRemittancesToPrint,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash {
  Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentCashPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash
    on Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash
    instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentCash(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm {
  Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm({
    required this.agent,
    required this.commissionPercent,
    required this.enabled,
    required this.enforceIdentification,
    required this.flatFeeThreshold,
    required this.flatFeeValue,
    required this.logoPath,
    required this.minCommission,
    required this.minDenomination,
    required this.paymentMethod,
    required this.bankCode,
    required this.maxUpperLimit,
    this.$__typename = 'AutoChequeWithEncashmentAtmPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agent = json['agent'];
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$enforceIdentification = json['enforceIdentification'];
    final l$flatFeeThreshold = json['flatFeeThreshold'];
    final l$flatFeeValue = json['flatFeeValue'];
    final l$logoPath = json['logoPath'];
    final l$minCommission = json['minCommission'];
    final l$minDenomination = json['minDenomination'];
    final l$paymentMethod = json['paymentMethod'];
    final l$bankCode = json['bankCode'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
      agent: (l$agent as String),
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      enforceIdentification: (l$enforceIdentification as bool),
      flatFeeThreshold: (l$flatFeeThreshold as num).toDouble(),
      flatFeeValue: (l$flatFeeValue as num).toDouble(),
      logoPath: (l$logoPath as String),
      minCommission: (l$minCommission as num).toDouble(),
      minDenomination: (l$minDenomination as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      bankCode: (l$bankCode as String),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String agent;

  final double commissionPercent;

  final bool enabled;

  final bool enforceIdentification;

  final double flatFeeThreshold;

  final double flatFeeValue;

  final String logoPath;

  final double minCommission;

  final double minDenomination;

  final Enum$PaymentMethod paymentMethod;

  final String bankCode;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agent = agent;
    _resultData['agent'] = l$agent;
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$enforceIdentification = enforceIdentification;
    _resultData['enforceIdentification'] = l$enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    _resultData['flatFeeThreshold'] = l$flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    _resultData['flatFeeValue'] = l$flatFeeValue;
    final l$logoPath = logoPath;
    _resultData['logoPath'] = l$logoPath;
    final l$minCommission = minCommission;
    _resultData['minCommission'] = l$minCommission;
    final l$minDenomination = minDenomination;
    _resultData['minDenomination'] = l$minDenomination;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$bankCode = bankCode;
    _resultData['bankCode'] = l$bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agent = agent;
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$enforceIdentification = enforceIdentification;
    final l$flatFeeThreshold = flatFeeThreshold;
    final l$flatFeeValue = flatFeeValue;
    final l$logoPath = logoPath;
    final l$minCommission = minCommission;
    final l$minDenomination = minDenomination;
    final l$paymentMethod = paymentMethod;
    final l$bankCode = bankCode;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$agent,
      l$commissionPercent,
      l$enabled,
      l$enforceIdentification,
      l$flatFeeThreshold,
      l$flatFeeValue,
      l$logoPath,
      l$minCommission,
      l$minDenomination,
      l$paymentMethod,
      l$bankCode,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agent = agent;
    final lOther$agent = other.agent;
    if (l$agent != lOther$agent) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$enforceIdentification = enforceIdentification;
    final lOther$enforceIdentification = other.enforceIdentification;
    if (l$enforceIdentification != lOther$enforceIdentification) {
      return false;
    }
    final l$flatFeeThreshold = flatFeeThreshold;
    final lOther$flatFeeThreshold = other.flatFeeThreshold;
    if (l$flatFeeThreshold != lOther$flatFeeThreshold) {
      return false;
    }
    final l$flatFeeValue = flatFeeValue;
    final lOther$flatFeeValue = other.flatFeeValue;
    if (l$flatFeeValue != lOther$flatFeeValue) {
      return false;
    }
    final l$logoPath = logoPath;
    final lOther$logoPath = other.logoPath;
    if (l$logoPath != lOther$logoPath) {
      return false;
    }
    final l$minCommission = minCommission;
    final lOther$minCommission = other.minCommission;
    if (l$minCommission != lOther$minCommission) {
      return false;
    }
    final l$minDenomination = minDenomination;
    final lOther$minDenomination = other.minDenomination;
    if (l$minDenomination != lOther$minDenomination) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$bankCode = bankCode;
    final lOther$bankCode = other.bankCode;
    if (l$bankCode != lOther$bankCode) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm
    on Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm
    instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm;

  TRes call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agent = _undefined,
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? enforceIdentification = _undefined,
    Object? flatFeeThreshold = _undefined,
    Object? flatFeeValue = _undefined,
    Object? logoPath = _undefined,
    Object? minCommission = _undefined,
    Object? minDenomination = _undefined,
    Object? paymentMethod = _undefined,
    Object? bankCode = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
      agent: agent == _undefined || agent == null
          ? _instance.agent
          : (agent as String),
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      enforceIdentification:
          enforceIdentification == _undefined || enforceIdentification == null
          ? _instance.enforceIdentification
          : (enforceIdentification as bool),
      flatFeeThreshold:
          flatFeeThreshold == _undefined || flatFeeThreshold == null
          ? _instance.flatFeeThreshold
          : (flatFeeThreshold as double),
      flatFeeValue: flatFeeValue == _undefined || flatFeeValue == null
          ? _instance.flatFeeValue
          : (flatFeeValue as double),
      logoPath: logoPath == _undefined || logoPath == null
          ? _instance.logoPath
          : (logoPath as String),
      minCommission: minCommission == _undefined || minCommission == null
          ? _instance.minCommission
          : (minCommission as double),
      minDenomination: minDenomination == _undefined || minDenomination == null
          ? _instance.minDenomination
          : (minDenomination as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      bankCode: bankCode == _undefined || bankCode == null
          ? _instance.bankCode
          : (bankCode as String),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$autoChequeWithEncashmentAtm(
    this._res,
  );

  TRes _res;

  call({
    String? agent,
    double? commissionPercent,
    bool? enabled,
    bool? enforceIdentification,
    double? flatFeeThreshold,
    double? flatFeeValue,
    String? logoPath,
    double? minCommission,
    double? minDenomination,
    Enum$PaymentMethod? paymentMethod,
    String? bankCode,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$secorePrepaid {
  Fragment$PaymentMethodFields$paymentMethods$secorePrepaid({
    required this.commissionPercent,
    required this.paymentMethod,
    required this.enabled,
    required this.maxUpperLimit,
    this.$__typename = 'SecorePrepaidPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$secorePrepaid.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$paymentMethod = json['paymentMethod'];
    final l$enabled = json['enabled'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      enabled: (l$enabled as bool),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final Enum$PaymentMethod paymentMethod;

  final bool enabled;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$paymentMethod = paymentMethod;
    final l$enabled = enabled;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$paymentMethod,
      l$enabled,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$secorePrepaid ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid
    on Fragment$PaymentMethodFields$paymentMethods$secorePrepaid {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
    Fragment$PaymentMethodFields$paymentMethods$secorePrepaid
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
    Fragment$PaymentMethodFields$paymentMethods$secorePrepaid instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$secorePrepaid)
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid;

  TRes call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$secorePrepaid _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$secorePrepaid)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? paymentMethod = _undefined,
    Object? enabled = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$secorePrepaid(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    Enum$PaymentMethod? paymentMethod,
    bool? enabled,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm {
  Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithAtmPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm
    on Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding.stub(
        _res,
      );
}

class Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding {
  Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding
    on Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding
    instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithAtm$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash {
  Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash({
    required this.commissionPercent,
    required this.enabled,
    required this.paymentMethod,
    required this.rounding,
    required this.maxUpperLimit,
    this.$__typename = 'DigitalWalletWithCashPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$commissionPercent = json['commissionPercent'];
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$rounding = json['rounding'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
      commissionPercent: (l$commissionPercent as num).toDouble(),
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      rounding:
          Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding.fromJson(
            (l$rounding as Map<String, dynamic>),
          ),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double commissionPercent;

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding
  rounding;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$commissionPercent = commissionPercent;
    _resultData['commissionPercent'] = l$commissionPercent;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$rounding = rounding;
    _resultData['rounding'] = l$rounding.toJson();
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$commissionPercent = commissionPercent;
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$rounding = rounding;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$commissionPercent,
      l$enabled,
      l$paymentMethod,
      l$rounding,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$commissionPercent = commissionPercent;
    final lOther$commissionPercent = other.commissionPercent;
    if (l$commissionPercent != lOther$commissionPercent) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$rounding = rounding;
    final lOther$rounding = other.rounding;
    if (l$rounding != lOther$rounding) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash
    on Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash;

  TRes call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding;
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? commissionPercent = _undefined,
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? rounding = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
      commissionPercent:
          commissionPercent == _undefined || commissionPercent == null
          ? _instance.commissionPercent
          : (commissionPercent as double),
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      rounding: rounding == _undefined || rounding == null
          ? _instance.rounding
          : (rounding
                as Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding {
    final local$rounding = _instance.rounding;
    return CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
      local$rounding,
      (e) => call(rounding: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash(
    this._res,
  );

  TRes _res;

  call({
    double? commissionPercent,
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding?
    rounding,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
    TRes
  >
  get rounding =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding.stub(
        _res,
      );
}

class Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding {
  Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding({
    required this.roundingType,
    required this.value,
    this.$__typename = 'Rounding',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$roundingType = json['roundingType'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: fromJson$Enum$RoundingType((l$roundingType as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$RoundingType roundingType;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roundingType = roundingType;
    _resultData['roundingType'] = toJson$Enum$RoundingType(l$roundingType);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roundingType = roundingType;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$roundingType, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roundingType = roundingType;
    final lOther$roundingType = other.roundingType;
    if (l$roundingType != lOther$roundingType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding
    on Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding
    instance,
    TRes Function(
      Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding;

  TRes call({
    Enum$RoundingType? roundingType,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding
  _instance;

  final TRes Function(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roundingType = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
      roundingType: roundingType == _undefined || roundingType == null
          ? _instance.roundingType
          : (roundingType as Enum$RoundingType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$digitalWalletWithCash$rounding(
    this._res,
  );

  TRes _res;

  call({Enum$RoundingType? roundingType, double? value, String? $__typename}) =>
      _res;
}

class Fragment$PaymentMethodFields$paymentMethods$splitPayment {
  Fragment$PaymentMethodFields$paymentMethods$splitPayment({
    required this.enabled,
    required this.paymentMethod,
    required this.maxUpperLimit,
    this.$__typename = 'SplitPaymentMethod',
  });

  factory Fragment$PaymentMethodFields$paymentMethods$splitPayment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$paymentMethod = json['paymentMethod'];
    final l$maxUpperLimit = json['maxUpperLimit'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentMethodFields$paymentMethods$splitPayment(
      enabled: (l$enabled as bool),
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      maxUpperLimit: (l$maxUpperLimit as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final Enum$PaymentMethod paymentMethod;

  final double maxUpperLimit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$maxUpperLimit = maxUpperLimit;
    _resultData['maxUpperLimit'] = l$maxUpperLimit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$paymentMethod = paymentMethod;
    final l$maxUpperLimit = maxUpperLimit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$paymentMethod,
      l$maxUpperLimit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentMethodFields$paymentMethods$splitPayment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$maxUpperLimit = maxUpperLimit;
    final lOther$maxUpperLimit = other.maxUpperLimit;
    if (l$maxUpperLimit != lOther$maxUpperLimit) {
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

extension UtilityExtension$Fragment$PaymentMethodFields$paymentMethods$splitPayment
    on Fragment$PaymentMethodFields$paymentMethods$splitPayment {
  CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
    Fragment$PaymentMethodFields$paymentMethods$splitPayment
  >
  get copyWith =>
      CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
  TRes
> {
  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment(
    Fragment$PaymentMethodFields$paymentMethods$splitPayment instance,
    TRes Function(Fragment$PaymentMethodFields$paymentMethods$splitPayment)
    then,
  ) = _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment;

  factory CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment;

  TRes call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment(
    this._instance,
    this._then,
  );

  final Fragment$PaymentMethodFields$paymentMethods$splitPayment _instance;

  final TRes Function(Fragment$PaymentMethodFields$paymentMethods$splitPayment)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? paymentMethod = _undefined,
    Object? maxUpperLimit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentMethodFields$paymentMethods$splitPayment(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      maxUpperLimit: maxUpperLimit == _undefined || maxUpperLimit == null
          ? _instance.maxUpperLimit
          : (maxUpperLimit as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
  TRes
>
    implements
        CopyWith$Fragment$PaymentMethodFields$paymentMethods$splitPayment<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentMethodFields$paymentMethods$splitPayment(
    this._res,
  );

  TRes _res;

  call({
    bool? enabled,
    Enum$PaymentMethod? paymentMethod,
    double? maxUpperLimit,
    String? $__typename,
  }) => _res;
}
