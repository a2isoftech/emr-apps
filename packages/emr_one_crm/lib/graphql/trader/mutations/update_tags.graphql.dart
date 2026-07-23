import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateTags {
  factory Variables$Mutation$UpdateTags(
          {required Input$UpdateTagInput input}) =>
      Variables$Mutation$UpdateTags._({
        r'input': input,
      });

  Variables$Mutation$UpdateTags._(this._$data);

  factory Variables$Mutation$UpdateTags.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UpdateTagInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateTags._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateTagInput get input => (_$data['input'] as Input$UpdateTagInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateTags<Variables$Mutation$UpdateTags>
      get copyWith => CopyWith$Variables$Mutation$UpdateTags(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateTags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateTags<TRes> {
  factory CopyWith$Variables$Mutation$UpdateTags(
    Variables$Mutation$UpdateTags instance,
    TRes Function(Variables$Mutation$UpdateTags) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateTags;

  factory CopyWith$Variables$Mutation$UpdateTags.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateTags;

  TRes call({Input$UpdateTagInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateTags<TRes>
    implements CopyWith$Variables$Mutation$UpdateTags<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateTags(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateTags _instance;

  final TRes Function(Variables$Mutation$UpdateTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateTags._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateTagInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateTags<TRes>
    implements CopyWith$Variables$Mutation$UpdateTags<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateTags(this._res);

  TRes _res;

  call({Input$UpdateTagInput? input}) => _res;
}

class Mutation$UpdateTags {
  Mutation$UpdateTags({
    required this.updateTags,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateTags.fromJson(Map<String, dynamic> json) {
    final l$updateTags = json['updateTags'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTags(
      updateTags: Mutation$UpdateTags$updateTags.fromJson(
          (l$updateTags as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateTags$updateTags updateTags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTags = updateTags;
    _resultData['updateTags'] = l$updateTags.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTags = updateTags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTags,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTags || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTags = updateTags;
    final lOther$updateTags = other.updateTags;
    if (l$updateTags != lOther$updateTags) {
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

extension UtilityExtension$Mutation$UpdateTags on Mutation$UpdateTags {
  CopyWith$Mutation$UpdateTags<Mutation$UpdateTags> get copyWith =>
      CopyWith$Mutation$UpdateTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateTags<TRes> {
  factory CopyWith$Mutation$UpdateTags(
    Mutation$UpdateTags instance,
    TRes Function(Mutation$UpdateTags) then,
  ) = _CopyWithImpl$Mutation$UpdateTags;

  factory CopyWith$Mutation$UpdateTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTags;

  TRes call({
    Mutation$UpdateTags$updateTags? updateTags,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateTags$updateTags<TRes> get updateTags;
}

class _CopyWithImpl$Mutation$UpdateTags<TRes>
    implements CopyWith$Mutation$UpdateTags<TRes> {
  _CopyWithImpl$Mutation$UpdateTags(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTags _instance;

  final TRes Function(Mutation$UpdateTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTags(
        updateTags: updateTags == _undefined || updateTags == null
            ? _instance.updateTags
            : (updateTags as Mutation$UpdateTags$updateTags),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateTags$updateTags<TRes> get updateTags {
    final local$updateTags = _instance.updateTags;
    return CopyWith$Mutation$UpdateTags$updateTags(
        local$updateTags, (e) => call(updateTags: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateTags<TRes>
    implements CopyWith$Mutation$UpdateTags<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTags(this._res);

  TRes _res;

  call({
    Mutation$UpdateTags$updateTags? updateTags,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateTags$updateTags<TRes> get updateTags =>
      CopyWith$Mutation$UpdateTags$updateTags.stub(_res);
}

const documentNodeMutationUpdateTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateTags'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateTagInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateTags'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'contractHeaderId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'manager'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accountNo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'internalNotes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'externalNotes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deliveryNotes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'paymentNotes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longDescription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'listItems'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'contractLineId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lineStart'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lineEnd'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deliveryType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageAdjustment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageCharge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageRateUoMValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'haulageChargeUoM'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'publicationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'productCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'productDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'baseMaterialPriceUoMValue'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'baseMaterialPriceUoM'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'deltas'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'yard'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestCommercialDeltaUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestCommercialDeltaUoM'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestOperationalDeltaUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latestOperationalDeltaUoM'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'tags'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'tagId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'category'),
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
                    name: NameNode(value: 'active'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rateUoMValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rateUoM'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'functional'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$UpdateTags$updateTags {
  Mutation$UpdateTags$updateTags({
    this.id,
    required this.contractHeaderId,
    required this.manager,
    required this.accountNo,
    required this.internalNotes,
    required this.externalNotes,
    required this.deliveryNotes,
    required this.paymentNotes,
    required this.longDescription,
    required this.listItems,
    this.$__typename = 'PriceList',
  });

  factory Mutation$UpdateTags$updateTags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contractHeaderId = json['contractHeaderId'];
    final l$manager = json['manager'];
    final l$accountNo = json['accountNo'];
    final l$internalNotes = json['internalNotes'];
    final l$externalNotes = json['externalNotes'];
    final l$deliveryNotes = json['deliveryNotes'];
    final l$paymentNotes = json['paymentNotes'];
    final l$longDescription = json['longDescription'];
    final l$listItems = json['listItems'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTags$updateTags(
      id: (l$id as String?),
      contractHeaderId: (l$contractHeaderId as int),
      manager: (l$manager as String),
      accountNo: (l$accountNo as String),
      internalNotes: (l$internalNotes as String),
      externalNotes: (l$externalNotes as String),
      deliveryNotes: (l$deliveryNotes as String),
      paymentNotes: (l$paymentNotes as String),
      longDescription: (l$longDescription as String),
      listItems: (l$listItems as List<dynamic>)
          .map((e) => Mutation$UpdateTags$updateTags$listItems.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final int contractHeaderId;

  final String manager;

  final String accountNo;

  final String internalNotes;

  final String externalNotes;

  final String deliveryNotes;

  final String paymentNotes;

  final String longDescription;

  final List<Mutation$UpdateTags$updateTags$listItems> listItems;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$manager = manager;
    _resultData['manager'] = l$manager;
    final l$accountNo = accountNo;
    _resultData['accountNo'] = l$accountNo;
    final l$internalNotes = internalNotes;
    _resultData['internalNotes'] = l$internalNotes;
    final l$externalNotes = externalNotes;
    _resultData['externalNotes'] = l$externalNotes;
    final l$deliveryNotes = deliveryNotes;
    _resultData['deliveryNotes'] = l$deliveryNotes;
    final l$paymentNotes = paymentNotes;
    _resultData['paymentNotes'] = l$paymentNotes;
    final l$longDescription = longDescription;
    _resultData['longDescription'] = l$longDescription;
    final l$listItems = listItems;
    _resultData['listItems'] = l$listItems.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contractHeaderId = contractHeaderId;
    final l$manager = manager;
    final l$accountNo = accountNo;
    final l$internalNotes = internalNotes;
    final l$externalNotes = externalNotes;
    final l$deliveryNotes = deliveryNotes;
    final l$paymentNotes = paymentNotes;
    final l$longDescription = longDescription;
    final l$listItems = listItems;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$contractHeaderId,
      l$manager,
      l$accountNo,
      l$internalNotes,
      l$externalNotes,
      l$deliveryNotes,
      l$paymentNotes,
      l$longDescription,
      Object.hashAll(l$listItems.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTags$updateTags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    final l$manager = manager;
    final lOther$manager = other.manager;
    if (l$manager != lOther$manager) {
      return false;
    }
    final l$accountNo = accountNo;
    final lOther$accountNo = other.accountNo;
    if (l$accountNo != lOther$accountNo) {
      return false;
    }
    final l$internalNotes = internalNotes;
    final lOther$internalNotes = other.internalNotes;
    if (l$internalNotes != lOther$internalNotes) {
      return false;
    }
    final l$externalNotes = externalNotes;
    final lOther$externalNotes = other.externalNotes;
    if (l$externalNotes != lOther$externalNotes) {
      return false;
    }
    final l$deliveryNotes = deliveryNotes;
    final lOther$deliveryNotes = other.deliveryNotes;
    if (l$deliveryNotes != lOther$deliveryNotes) {
      return false;
    }
    final l$paymentNotes = paymentNotes;
    final lOther$paymentNotes = other.paymentNotes;
    if (l$paymentNotes != lOther$paymentNotes) {
      return false;
    }
    final l$longDescription = longDescription;
    final lOther$longDescription = other.longDescription;
    if (l$longDescription != lOther$longDescription) {
      return false;
    }
    final l$listItems = listItems;
    final lOther$listItems = other.listItems;
    if (l$listItems.length != lOther$listItems.length) {
      return false;
    }
    for (int i = 0; i < l$listItems.length; i++) {
      final l$listItems$entry = l$listItems[i];
      final lOther$listItems$entry = lOther$listItems[i];
      if (l$listItems$entry != lOther$listItems$entry) {
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

extension UtilityExtension$Mutation$UpdateTags$updateTags
    on Mutation$UpdateTags$updateTags {
  CopyWith$Mutation$UpdateTags$updateTags<Mutation$UpdateTags$updateTags>
      get copyWith => CopyWith$Mutation$UpdateTags$updateTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTags$updateTags<TRes> {
  factory CopyWith$Mutation$UpdateTags$updateTags(
    Mutation$UpdateTags$updateTags instance,
    TRes Function(Mutation$UpdateTags$updateTags) then,
  ) = _CopyWithImpl$Mutation$UpdateTags$updateTags;

  factory CopyWith$Mutation$UpdateTags$updateTags.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTags$updateTags;

  TRes call({
    String? id,
    int? contractHeaderId,
    String? manager,
    String? accountNo,
    String? internalNotes,
    String? externalNotes,
    String? deliveryNotes,
    String? paymentNotes,
    String? longDescription,
    List<Mutation$UpdateTags$updateTags$listItems>? listItems,
    String? $__typename,
  });
  TRes listItems(
      Iterable<Mutation$UpdateTags$updateTags$listItems> Function(
              Iterable<
                  CopyWith$Mutation$UpdateTags$updateTags$listItems<
                      Mutation$UpdateTags$updateTags$listItems>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateTags$updateTags<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags<TRes> {
  _CopyWithImpl$Mutation$UpdateTags$updateTags(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTags$updateTags _instance;

  final TRes Function(Mutation$UpdateTags$updateTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contractHeaderId = _undefined,
    Object? manager = _undefined,
    Object? accountNo = _undefined,
    Object? internalNotes = _undefined,
    Object? externalNotes = _undefined,
    Object? deliveryNotes = _undefined,
    Object? paymentNotes = _undefined,
    Object? longDescription = _undefined,
    Object? listItems = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTags$updateTags(
        id: id == _undefined ? _instance.id : (id as String?),
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        manager: manager == _undefined || manager == null
            ? _instance.manager
            : (manager as String),
        accountNo: accountNo == _undefined || accountNo == null
            ? _instance.accountNo
            : (accountNo as String),
        internalNotes: internalNotes == _undefined || internalNotes == null
            ? _instance.internalNotes
            : (internalNotes as String),
        externalNotes: externalNotes == _undefined || externalNotes == null
            ? _instance.externalNotes
            : (externalNotes as String),
        deliveryNotes: deliveryNotes == _undefined || deliveryNotes == null
            ? _instance.deliveryNotes
            : (deliveryNotes as String),
        paymentNotes: paymentNotes == _undefined || paymentNotes == null
            ? _instance.paymentNotes
            : (paymentNotes as String),
        longDescription:
            longDescription == _undefined || longDescription == null
                ? _instance.longDescription
                : (longDescription as String),
        listItems: listItems == _undefined || listItems == null
            ? _instance.listItems
            : (listItems as List<Mutation$UpdateTags$updateTags$listItems>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes listItems(
          Iterable<Mutation$UpdateTags$updateTags$listItems> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateTags$updateTags$listItems<
                          Mutation$UpdateTags$updateTags$listItems>>)
              _fn) =>
      call(
          listItems: _fn(_instance.listItems
              .map((e) => CopyWith$Mutation$UpdateTags$updateTags$listItems(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateTags$updateTags<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTags$updateTags(this._res);

  TRes _res;

  call({
    String? id,
    int? contractHeaderId,
    String? manager,
    String? accountNo,
    String? internalNotes,
    String? externalNotes,
    String? deliveryNotes,
    String? paymentNotes,
    String? longDescription,
    List<Mutation$UpdateTags$updateTags$listItems>? listItems,
    String? $__typename,
  }) =>
      _res;

  listItems(_fn) => _res;
}

class Mutation$UpdateTags$updateTags$listItems {
  Mutation$UpdateTags$updateTags$listItems({
    required this.contractLineId,
    required this.lineStart,
    required this.lineEnd,
    required this.deliveryType,
    this.haulageAdjustment,
    this.haulageCharge,
    this.haulageRateUoMValue,
    required this.haulageChargeUoM,
    required this.publicationId,
    required this.productCode,
    required this.productDescription,
    this.baseMaterialPriceUoMValue,
    required this.baseMaterialPriceUoM,
    required this.deltas,
    required this.tags,
    this.$__typename = 'ContractLineItem',
  });

  factory Mutation$UpdateTags$updateTags$listItems.fromJson(
      Map<String, dynamic> json) {
    final l$contractLineId = json['contractLineId'];
    final l$lineStart = json['lineStart'];
    final l$lineEnd = json['lineEnd'];
    final l$deliveryType = json['deliveryType'];
    final l$haulageAdjustment = json['haulageAdjustment'];
    final l$haulageCharge = json['haulageCharge'];
    final l$haulageRateUoMValue = json['haulageRateUoMValue'];
    final l$haulageChargeUoM = json['haulageChargeUoM'];
    final l$publicationId = json['publicationId'];
    final l$productCode = json['productCode'];
    final l$productDescription = json['productDescription'];
    final l$baseMaterialPriceUoMValue = json['baseMaterialPriceUoMValue'];
    final l$baseMaterialPriceUoM = json['baseMaterialPriceUoM'];
    final l$deltas = json['deltas'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTags$updateTags$listItems(
      contractLineId: (l$contractLineId as int),
      lineStart: DateTime.parse((l$lineStart as String)),
      lineEnd: DateTime.parse((l$lineEnd as String)),
      deliveryType: (l$deliveryType as String),
      haulageAdjustment: (l$haulageAdjustment as num?)?.toDouble(),
      haulageCharge: (l$haulageCharge as num?)?.toDouble(),
      haulageRateUoMValue: (l$haulageRateUoMValue as num?)?.toDouble(),
      haulageChargeUoM: (l$haulageChargeUoM as String),
      publicationId: (l$publicationId as int),
      productCode: (l$productCode as String),
      productDescription: (l$productDescription as String),
      baseMaterialPriceUoMValue:
          (l$baseMaterialPriceUoMValue as num?)?.toDouble(),
      baseMaterialPriceUoM: (l$baseMaterialPriceUoM as String),
      deltas: (l$deltas as List<dynamic>)
          .map((e) => Mutation$UpdateTags$updateTags$listItems$deltas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Mutation$UpdateTags$updateTags$listItems$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractLineId;

  final DateTime lineStart;

  final DateTime lineEnd;

  final String deliveryType;

  final double? haulageAdjustment;

  final double? haulageCharge;

  final double? haulageRateUoMValue;

  final String haulageChargeUoM;

  final int publicationId;

  final String productCode;

  final String productDescription;

  final double? baseMaterialPriceUoMValue;

  final String baseMaterialPriceUoM;

  final List<Mutation$UpdateTags$updateTags$listItems$deltas> deltas;

  final List<Mutation$UpdateTags$updateTags$listItems$tags> tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$lineStart = lineStart;
    _resultData['lineStart'] = l$lineStart.toIso8601String();
    final l$lineEnd = lineEnd;
    _resultData['lineEnd'] = l$lineEnd.toIso8601String();
    final l$deliveryType = deliveryType;
    _resultData['deliveryType'] = l$deliveryType;
    final l$haulageAdjustment = haulageAdjustment;
    _resultData['haulageAdjustment'] = l$haulageAdjustment;
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge;
    final l$haulageRateUoMValue = haulageRateUoMValue;
    _resultData['haulageRateUoMValue'] = l$haulageRateUoMValue;
    final l$haulageChargeUoM = haulageChargeUoM;
    _resultData['haulageChargeUoM'] = l$haulageChargeUoM;
    final l$publicationId = publicationId;
    _resultData['publicationId'] = l$publicationId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$productDescription = productDescription;
    _resultData['productDescription'] = l$productDescription;
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    _resultData['baseMaterialPriceUoMValue'] = l$baseMaterialPriceUoMValue;
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    _resultData['baseMaterialPriceUoM'] = l$baseMaterialPriceUoM;
    final l$deltas = deltas;
    _resultData['deltas'] = l$deltas.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractLineId = contractLineId;
    final l$lineStart = lineStart;
    final l$lineEnd = lineEnd;
    final l$deliveryType = deliveryType;
    final l$haulageAdjustment = haulageAdjustment;
    final l$haulageCharge = haulageCharge;
    final l$haulageRateUoMValue = haulageRateUoMValue;
    final l$haulageChargeUoM = haulageChargeUoM;
    final l$publicationId = publicationId;
    final l$productCode = productCode;
    final l$productDescription = productDescription;
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    final l$deltas = deltas;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractLineId,
      l$lineStart,
      l$lineEnd,
      l$deliveryType,
      l$haulageAdjustment,
      l$haulageCharge,
      l$haulageRateUoMValue,
      l$haulageChargeUoM,
      l$publicationId,
      l$productCode,
      l$productDescription,
      l$baseMaterialPriceUoMValue,
      l$baseMaterialPriceUoM,
      Object.hashAll(l$deltas.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTags$updateTags$listItems ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
      return false;
    }
    final l$lineStart = lineStart;
    final lOther$lineStart = other.lineStart;
    if (l$lineStart != lOther$lineStart) {
      return false;
    }
    final l$lineEnd = lineEnd;
    final lOther$lineEnd = other.lineEnd;
    if (l$lineEnd != lOther$lineEnd) {
      return false;
    }
    final l$deliveryType = deliveryType;
    final lOther$deliveryType = other.deliveryType;
    if (l$deliveryType != lOther$deliveryType) {
      return false;
    }
    final l$haulageAdjustment = haulageAdjustment;
    final lOther$haulageAdjustment = other.haulageAdjustment;
    if (l$haulageAdjustment != lOther$haulageAdjustment) {
      return false;
    }
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$haulageRateUoMValue = haulageRateUoMValue;
    final lOther$haulageRateUoMValue = other.haulageRateUoMValue;
    if (l$haulageRateUoMValue != lOther$haulageRateUoMValue) {
      return false;
    }
    final l$haulageChargeUoM = haulageChargeUoM;
    final lOther$haulageChargeUoM = other.haulageChargeUoM;
    if (l$haulageChargeUoM != lOther$haulageChargeUoM) {
      return false;
    }
    final l$publicationId = publicationId;
    final lOther$publicationId = other.publicationId;
    if (l$publicationId != lOther$publicationId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$productDescription = productDescription;
    final lOther$productDescription = other.productDescription;
    if (l$productDescription != lOther$productDescription) {
      return false;
    }
    final l$baseMaterialPriceUoMValue = baseMaterialPriceUoMValue;
    final lOther$baseMaterialPriceUoMValue = other.baseMaterialPriceUoMValue;
    if (l$baseMaterialPriceUoMValue != lOther$baseMaterialPriceUoMValue) {
      return false;
    }
    final l$baseMaterialPriceUoM = baseMaterialPriceUoM;
    final lOther$baseMaterialPriceUoM = other.baseMaterialPriceUoM;
    if (l$baseMaterialPriceUoM != lOther$baseMaterialPriceUoM) {
      return false;
    }
    final l$deltas = deltas;
    final lOther$deltas = other.deltas;
    if (l$deltas.length != lOther$deltas.length) {
      return false;
    }
    for (int i = 0; i < l$deltas.length; i++) {
      final l$deltas$entry = l$deltas[i];
      final lOther$deltas$entry = lOther$deltas[i];
      if (l$deltas$entry != lOther$deltas$entry) {
        return false;
      }
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateTags$updateTags$listItems
    on Mutation$UpdateTags$updateTags$listItems {
  CopyWith$Mutation$UpdateTags$updateTags$listItems<
          Mutation$UpdateTags$updateTags$listItems>
      get copyWith => CopyWith$Mutation$UpdateTags$updateTags$listItems(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTags$updateTags$listItems<TRes> {
  factory CopyWith$Mutation$UpdateTags$updateTags$listItems(
    Mutation$UpdateTags$updateTags$listItems instance,
    TRes Function(Mutation$UpdateTags$updateTags$listItems) then,
  ) = _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems;

  factory CopyWith$Mutation$UpdateTags$updateTags$listItems.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems;

  TRes call({
    int? contractLineId,
    DateTime? lineStart,
    DateTime? lineEnd,
    String? deliveryType,
    double? haulageAdjustment,
    double? haulageCharge,
    double? haulageRateUoMValue,
    String? haulageChargeUoM,
    int? publicationId,
    String? productCode,
    String? productDescription,
    double? baseMaterialPriceUoMValue,
    String? baseMaterialPriceUoM,
    List<Mutation$UpdateTags$updateTags$listItems$deltas>? deltas,
    List<Mutation$UpdateTags$updateTags$listItems$tags>? tags,
    String? $__typename,
  });
  TRes deltas(
      Iterable<Mutation$UpdateTags$updateTags$listItems$deltas> Function(
              Iterable<
                  CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<
                      Mutation$UpdateTags$updateTags$listItems$deltas>>)
          _fn);
  TRes tags(
      Iterable<Mutation$UpdateTags$updateTags$listItems$tags> Function(
              Iterable<
                  CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<
                      Mutation$UpdateTags$updateTags$listItems$tags>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems<TRes> {
  _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTags$updateTags$listItems _instance;

  final TRes Function(Mutation$UpdateTags$updateTags$listItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractLineId = _undefined,
    Object? lineStart = _undefined,
    Object? lineEnd = _undefined,
    Object? deliveryType = _undefined,
    Object? haulageAdjustment = _undefined,
    Object? haulageCharge = _undefined,
    Object? haulageRateUoMValue = _undefined,
    Object? haulageChargeUoM = _undefined,
    Object? publicationId = _undefined,
    Object? productCode = _undefined,
    Object? productDescription = _undefined,
    Object? baseMaterialPriceUoMValue = _undefined,
    Object? baseMaterialPriceUoM = _undefined,
    Object? deltas = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTags$updateTags$listItems(
        contractLineId: contractLineId == _undefined || contractLineId == null
            ? _instance.contractLineId
            : (contractLineId as int),
        lineStart: lineStart == _undefined || lineStart == null
            ? _instance.lineStart
            : (lineStart as DateTime),
        lineEnd: lineEnd == _undefined || lineEnd == null
            ? _instance.lineEnd
            : (lineEnd as DateTime),
        deliveryType: deliveryType == _undefined || deliveryType == null
            ? _instance.deliveryType
            : (deliveryType as String),
        haulageAdjustment: haulageAdjustment == _undefined
            ? _instance.haulageAdjustment
            : (haulageAdjustment as double?),
        haulageCharge: haulageCharge == _undefined
            ? _instance.haulageCharge
            : (haulageCharge as double?),
        haulageRateUoMValue: haulageRateUoMValue == _undefined
            ? _instance.haulageRateUoMValue
            : (haulageRateUoMValue as double?),
        haulageChargeUoM:
            haulageChargeUoM == _undefined || haulageChargeUoM == null
                ? _instance.haulageChargeUoM
                : (haulageChargeUoM as String),
        publicationId: publicationId == _undefined || publicationId == null
            ? _instance.publicationId
            : (publicationId as int),
        productCode: productCode == _undefined || productCode == null
            ? _instance.productCode
            : (productCode as String),
        productDescription:
            productDescription == _undefined || productDescription == null
                ? _instance.productDescription
                : (productDescription as String),
        baseMaterialPriceUoMValue: baseMaterialPriceUoMValue == _undefined
            ? _instance.baseMaterialPriceUoMValue
            : (baseMaterialPriceUoMValue as double?),
        baseMaterialPriceUoM:
            baseMaterialPriceUoM == _undefined || baseMaterialPriceUoM == null
                ? _instance.baseMaterialPriceUoM
                : (baseMaterialPriceUoM as String),
        deltas: deltas == _undefined || deltas == null
            ? _instance.deltas
            : (deltas as List<Mutation$UpdateTags$updateTags$listItems$deltas>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Mutation$UpdateTags$updateTags$listItems$tags>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deltas(
          Iterable<Mutation$UpdateTags$updateTags$listItems$deltas> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<
                          Mutation$UpdateTags$updateTags$listItems$deltas>>)
              _fn) =>
      call(
          deltas: _fn(_instance.deltas.map(
              (e) => CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas(
                    e,
                    (i) => i,
                  ))).toList());

  TRes tags(
          Iterable<Mutation$UpdateTags$updateTags$listItems$tags> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<
                          Mutation$UpdateTags$updateTags$listItems$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags.map(
              (e) => CopyWith$Mutation$UpdateTags$updateTags$listItems$tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems(this._res);

  TRes _res;

  call({
    int? contractLineId,
    DateTime? lineStart,
    DateTime? lineEnd,
    String? deliveryType,
    double? haulageAdjustment,
    double? haulageCharge,
    double? haulageRateUoMValue,
    String? haulageChargeUoM,
    int? publicationId,
    String? productCode,
    String? productDescription,
    double? baseMaterialPriceUoMValue,
    String? baseMaterialPriceUoM,
    List<Mutation$UpdateTags$updateTags$listItems$deltas>? deltas,
    List<Mutation$UpdateTags$updateTags$listItems$tags>? tags,
    String? $__typename,
  }) =>
      _res;

  deltas(_fn) => _res;

  tags(_fn) => _res;
}

class Mutation$UpdateTags$updateTags$listItems$deltas {
  Mutation$UpdateTags$updateTags$listItems$deltas({
    required this.yard,
    this.latestCommercialDeltaUoMValue,
    required this.latestCommercialDeltaUoM,
    this.latestOperationalDeltaUoMValue,
    required this.latestOperationalDeltaUoM,
    this.$__typename = 'Delta',
  });

  factory Mutation$UpdateTags$updateTags$listItems$deltas.fromJson(
      Map<String, dynamic> json) {
    final l$yard = json['yard'];
    final l$latestCommercialDeltaUoMValue =
        json['latestCommercialDeltaUoMValue'];
    final l$latestCommercialDeltaUoM = json['latestCommercialDeltaUoM'];
    final l$latestOperationalDeltaUoMValue =
        json['latestOperationalDeltaUoMValue'];
    final l$latestOperationalDeltaUoM = json['latestOperationalDeltaUoM'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTags$updateTags$listItems$deltas(
      yard: (l$yard as String),
      latestCommercialDeltaUoMValue:
          (l$latestCommercialDeltaUoMValue as num?)?.toDouble(),
      latestCommercialDeltaUoM: (l$latestCommercialDeltaUoM as String),
      latestOperationalDeltaUoMValue:
          (l$latestOperationalDeltaUoMValue as num?)?.toDouble(),
      latestOperationalDeltaUoM: (l$latestOperationalDeltaUoM as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String yard;

  final double? latestCommercialDeltaUoMValue;

  final String latestCommercialDeltaUoM;

  final double? latestOperationalDeltaUoMValue;

  final String latestOperationalDeltaUoM;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yard = yard;
    _resultData['yard'] = l$yard;
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    _resultData['latestCommercialDeltaUoMValue'] =
        l$latestCommercialDeltaUoMValue;
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    _resultData['latestCommercialDeltaUoM'] = l$latestCommercialDeltaUoM;
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    _resultData['latestOperationalDeltaUoMValue'] =
        l$latestOperationalDeltaUoMValue;
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    _resultData['latestOperationalDeltaUoM'] = l$latestOperationalDeltaUoM;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yard = yard;
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yard,
      l$latestCommercialDeltaUoMValue,
      l$latestCommercialDeltaUoM,
      l$latestOperationalDeltaUoMValue,
      l$latestOperationalDeltaUoM,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTags$updateTags$listItems$deltas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yard = yard;
    final lOther$yard = other.yard;
    if (l$yard != lOther$yard) {
      return false;
    }
    final l$latestCommercialDeltaUoMValue = latestCommercialDeltaUoMValue;
    final lOther$latestCommercialDeltaUoMValue =
        other.latestCommercialDeltaUoMValue;
    if (l$latestCommercialDeltaUoMValue !=
        lOther$latestCommercialDeltaUoMValue) {
      return false;
    }
    final l$latestCommercialDeltaUoM = latestCommercialDeltaUoM;
    final lOther$latestCommercialDeltaUoM = other.latestCommercialDeltaUoM;
    if (l$latestCommercialDeltaUoM != lOther$latestCommercialDeltaUoM) {
      return false;
    }
    final l$latestOperationalDeltaUoMValue = latestOperationalDeltaUoMValue;
    final lOther$latestOperationalDeltaUoMValue =
        other.latestOperationalDeltaUoMValue;
    if (l$latestOperationalDeltaUoMValue !=
        lOther$latestOperationalDeltaUoMValue) {
      return false;
    }
    final l$latestOperationalDeltaUoM = latestOperationalDeltaUoM;
    final lOther$latestOperationalDeltaUoM = other.latestOperationalDeltaUoM;
    if (l$latestOperationalDeltaUoM != lOther$latestOperationalDeltaUoM) {
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

extension UtilityExtension$Mutation$UpdateTags$updateTags$listItems$deltas
    on Mutation$UpdateTags$updateTags$listItems$deltas {
  CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<
          Mutation$UpdateTags$updateTags$listItems$deltas>
      get copyWith => CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<TRes> {
  factory CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas(
    Mutation$UpdateTags$updateTags$listItems$deltas instance,
    TRes Function(Mutation$UpdateTags$updateTags$listItems$deltas) then,
  ) = _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$deltas;

  factory CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$deltas;

  TRes call({
    String? yard,
    double? latestCommercialDeltaUoMValue,
    String? latestCommercialDeltaUoM,
    double? latestOperationalDeltaUoMValue,
    String? latestOperationalDeltaUoM,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$deltas<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<TRes> {
  _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$deltas(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTags$updateTags$listItems$deltas _instance;

  final TRes Function(Mutation$UpdateTags$updateTags$listItems$deltas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yard = _undefined,
    Object? latestCommercialDeltaUoMValue = _undefined,
    Object? latestCommercialDeltaUoM = _undefined,
    Object? latestOperationalDeltaUoMValue = _undefined,
    Object? latestOperationalDeltaUoM = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTags$updateTags$listItems$deltas(
        yard: yard == _undefined || yard == null
            ? _instance.yard
            : (yard as String),
        latestCommercialDeltaUoMValue:
            latestCommercialDeltaUoMValue == _undefined
                ? _instance.latestCommercialDeltaUoMValue
                : (latestCommercialDeltaUoMValue as double?),
        latestCommercialDeltaUoM: latestCommercialDeltaUoM == _undefined ||
                latestCommercialDeltaUoM == null
            ? _instance.latestCommercialDeltaUoM
            : (latestCommercialDeltaUoM as String),
        latestOperationalDeltaUoMValue:
            latestOperationalDeltaUoMValue == _undefined
                ? _instance.latestOperationalDeltaUoMValue
                : (latestOperationalDeltaUoMValue as double?),
        latestOperationalDeltaUoM: latestOperationalDeltaUoM == _undefined ||
                latestOperationalDeltaUoM == null
            ? _instance.latestOperationalDeltaUoM
            : (latestOperationalDeltaUoM as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$deltas<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems$deltas<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$deltas(this._res);

  TRes _res;

  call({
    String? yard,
    double? latestCommercialDeltaUoMValue,
    String? latestCommercialDeltaUoM,
    double? latestOperationalDeltaUoMValue,
    String? latestOperationalDeltaUoM,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateTags$updateTags$listItems$tags {
  Mutation$UpdateTags$updateTags$listItems$tags({
    this.id,
    required this.tagId,
    required this.category,
    required this.reason,
    required this.active,
    this.startDate,
    this.endDate,
    this.rate,
    this.rateUoMValue,
    required this.rateUoM,
    required this.functional,
    this.$__typename = 'ItemTag',
  });

  factory Mutation$UpdateTags$updateTags$listItems$tags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$tagId = json['tagId'];
    final l$category = json['category'];
    final l$reason = json['reason'];
    final l$active = json['active'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$rate = json['rate'];
    final l$rateUoMValue = json['rateUoMValue'];
    final l$rateUoM = json['rateUoM'];
    final l$functional = json['functional'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTags$updateTags$listItems$tags(
      id: (l$id as String?),
      tagId: (l$tagId as int),
      category: (l$category as String),
      reason: (l$reason as String),
      active: (l$active as bool),
      startDate:
          l$startDate == null ? null : DateTime.parse((l$startDate as String)),
      endDate: l$endDate == null ? null : DateTime.parse((l$endDate as String)),
      rate: (l$rate as num?)?.toDouble(),
      rateUoMValue: (l$rateUoMValue as num?)?.toDouble(),
      rateUoM: (l$rateUoM as String),
      functional: (l$functional as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final int tagId;

  final String category;

  final String reason;

  final bool active;

  final DateTime? startDate;

  final DateTime? endDate;

  final double? rate;

  final double? rateUoMValue;

  final String rateUoM;

  final bool functional;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$tagId = tagId;
    _resultData['tagId'] = l$tagId;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toIso8601String();
    final l$rate = rate;
    _resultData['rate'] = l$rate;
    final l$rateUoMValue = rateUoMValue;
    _resultData['rateUoMValue'] = l$rateUoMValue;
    final l$rateUoM = rateUoM;
    _resultData['rateUoM'] = l$rateUoM;
    final l$functional = functional;
    _resultData['functional'] = l$functional;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$tagId = tagId;
    final l$category = category;
    final l$reason = reason;
    final l$active = active;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$rate = rate;
    final l$rateUoMValue = rateUoMValue;
    final l$rateUoM = rateUoM;
    final l$functional = functional;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$tagId,
      l$category,
      l$reason,
      l$active,
      l$startDate,
      l$endDate,
      l$rate,
      l$rateUoMValue,
      l$rateUoM,
      l$functional,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTags$updateTags$listItems$tags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (l$tagId != lOther$tagId) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$rateUoMValue = rateUoMValue;
    final lOther$rateUoMValue = other.rateUoMValue;
    if (l$rateUoMValue != lOther$rateUoMValue) {
      return false;
    }
    final l$rateUoM = rateUoM;
    final lOther$rateUoM = other.rateUoM;
    if (l$rateUoM != lOther$rateUoM) {
      return false;
    }
    final l$functional = functional;
    final lOther$functional = other.functional;
    if (l$functional != lOther$functional) {
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

extension UtilityExtension$Mutation$UpdateTags$updateTags$listItems$tags
    on Mutation$UpdateTags$updateTags$listItems$tags {
  CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<
          Mutation$UpdateTags$updateTags$listItems$tags>
      get copyWith => CopyWith$Mutation$UpdateTags$updateTags$listItems$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<TRes> {
  factory CopyWith$Mutation$UpdateTags$updateTags$listItems$tags(
    Mutation$UpdateTags$updateTags$listItems$tags instance,
    TRes Function(Mutation$UpdateTags$updateTags$listItems$tags) then,
  ) = _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$tags;

  factory CopyWith$Mutation$UpdateTags$updateTags$listItems$tags.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$tags;

  TRes call({
    String? id,
    int? tagId,
    String? category,
    String? reason,
    bool? active,
    DateTime? startDate,
    DateTime? endDate,
    double? rate,
    double? rateUoMValue,
    String? rateUoM,
    bool? functional,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$tags<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<TRes> {
  _CopyWithImpl$Mutation$UpdateTags$updateTags$listItems$tags(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTags$updateTags$listItems$tags _instance;

  final TRes Function(Mutation$UpdateTags$updateTags$listItems$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? tagId = _undefined,
    Object? category = _undefined,
    Object? reason = _undefined,
    Object? active = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? rate = _undefined,
    Object? rateUoMValue = _undefined,
    Object? rateUoM = _undefined,
    Object? functional = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateTags$updateTags$listItems$tags(
        id: id == _undefined ? _instance.id : (id as String?),
        tagId: tagId == _undefined || tagId == null
            ? _instance.tagId
            : (tagId as int),
        category: category == _undefined || category == null
            ? _instance.category
            : (category as String),
        reason: reason == _undefined || reason == null
            ? _instance.reason
            : (reason as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as DateTime?),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as DateTime?),
        rate: rate == _undefined ? _instance.rate : (rate as double?),
        rateUoMValue: rateUoMValue == _undefined
            ? _instance.rateUoMValue
            : (rateUoMValue as double?),
        rateUoM: rateUoM == _undefined || rateUoM == null
            ? _instance.rateUoM
            : (rateUoM as String),
        functional: functional == _undefined || functional == null
            ? _instance.functional
            : (functional as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$tags<TRes>
    implements CopyWith$Mutation$UpdateTags$updateTags$listItems$tags<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTags$updateTags$listItems$tags(this._res);

  TRes _res;

  call({
    String? id,
    int? tagId,
    String? category,
    String? reason,
    bool? active,
    DateTime? startDate,
    DateTime? endDate,
    double? rate,
    double? rateUoMValue,
    String? rateUoM,
    bool? functional,
    String? $__typename,
  }) =>
      _res;
}
