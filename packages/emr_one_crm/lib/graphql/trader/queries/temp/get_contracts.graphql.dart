import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetContracts {
  factory Variables$Query$GetContracts({
    List<String>? partyAccountNos,
    int? take,
    List<int>? contractHeaderIds,
    String? cursor,
    Enum$SortEnumType? dateSort,
    Enum$ContractSearchMode? filterType,
    DateTime? activeFromDate,
  }) =>
      Variables$Query$GetContracts._({
        if (partyAccountNos != null) r'partyAccountNos': partyAccountNos,
        if (take != null) r'take': take,
        if (contractHeaderIds != null) r'contractHeaderIds': contractHeaderIds,
        if (cursor != null) r'cursor': cursor,
        if (dateSort != null) r'dateSort': dateSort,
        if (filterType != null) r'filterType': filterType,
        if (activeFromDate != null) r'activeFromDate': activeFromDate,
      });

  Variables$Query$GetContracts._(this._$data);

  factory Variables$Query$GetContracts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('partyAccountNos')) {
      final l$partyAccountNos = data['partyAccountNos'];
      result$data['partyAccountNos'] = (l$partyAccountNos as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('contractHeaderIds')) {
      final l$contractHeaderIds = data['contractHeaderIds'];
      result$data['contractHeaderIds'] = (l$contractHeaderIds as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('cursor')) {
      final l$cursor = data['cursor'];
      result$data['cursor'] = (l$cursor as String?);
    }
    if (data.containsKey('dateSort')) {
      final l$dateSort = data['dateSort'];
      result$data['dateSort'] =
          fromJson$Enum$SortEnumType((l$dateSort as String));
    }
    if (data.containsKey('filterType')) {
      final l$filterType = data['filterType'];
      result$data['filterType'] =
          fromJson$Enum$ContractSearchMode((l$filterType as String));
    }
    if (data.containsKey('activeFromDate')) {
      final l$activeFromDate = data['activeFromDate'];
      result$data['activeFromDate'] = l$activeFromDate == null
          ? null
          : DateTime.parse((l$activeFromDate as String));
    }
    return Variables$Query$GetContracts._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get partyAccountNos =>
      (_$data['partyAccountNos'] as List<String>?);

  int? get take => (_$data['take'] as int?);

  List<int>? get contractHeaderIds =>
      (_$data['contractHeaderIds'] as List<int>?);

  String? get cursor => (_$data['cursor'] as String?);

  Enum$SortEnumType? get dateSort => (_$data['dateSort'] as Enum$SortEnumType?);

  Enum$ContractSearchMode? get filterType =>
      (_$data['filterType'] as Enum$ContractSearchMode?);

  DateTime? get activeFromDate => (_$data['activeFromDate'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('partyAccountNos')) {
      final l$partyAccountNos = partyAccountNos;
      result$data['partyAccountNos'] =
          l$partyAccountNos?.map((e) => e).toList();
    }
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    if (_$data.containsKey('contractHeaderIds')) {
      final l$contractHeaderIds = contractHeaderIds;
      result$data['contractHeaderIds'] =
          l$contractHeaderIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('cursor')) {
      final l$cursor = cursor;
      result$data['cursor'] = l$cursor;
    }
    if (_$data.containsKey('dateSort')) {
      final l$dateSort = dateSort;
      result$data['dateSort'] =
          toJson$Enum$SortEnumType((l$dateSort as Enum$SortEnumType));
    }
    if (_$data.containsKey('filterType')) {
      final l$filterType = filterType;
      result$data['filterType'] = toJson$Enum$ContractSearchMode(
          (l$filterType as Enum$ContractSearchMode));
    }
    if (_$data.containsKey('activeFromDate')) {
      final l$activeFromDate = activeFromDate;
      result$data['activeFromDate'] = l$activeFromDate?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetContracts<Variables$Query$GetContracts>
      get copyWith => CopyWith$Variables$Query$GetContracts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetContracts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNos = partyAccountNos;
    final lOther$partyAccountNos = other.partyAccountNos;
    if (_$data.containsKey('partyAccountNos') !=
        other._$data.containsKey('partyAccountNos')) {
      return false;
    }
    if (l$partyAccountNos != null && lOther$partyAccountNos != null) {
      if (l$partyAccountNos.length != lOther$partyAccountNos.length) {
        return false;
      }
      for (int i = 0; i < l$partyAccountNos.length; i++) {
        final l$partyAccountNos$entry = l$partyAccountNos[i];
        final lOther$partyAccountNos$entry = lOther$partyAccountNos[i];
        if (l$partyAccountNos$entry != lOther$partyAccountNos$entry) {
          return false;
        }
      }
    } else if (l$partyAccountNos != lOther$partyAccountNos) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (_$data.containsKey('take') != other._$data.containsKey('take')) {
      return false;
    }
    if (l$take != lOther$take) {
      return false;
    }
    final l$contractHeaderIds = contractHeaderIds;
    final lOther$contractHeaderIds = other.contractHeaderIds;
    if (_$data.containsKey('contractHeaderIds') !=
        other._$data.containsKey('contractHeaderIds')) {
      return false;
    }
    if (l$contractHeaderIds != null && lOther$contractHeaderIds != null) {
      if (l$contractHeaderIds.length != lOther$contractHeaderIds.length) {
        return false;
      }
      for (int i = 0; i < l$contractHeaderIds.length; i++) {
        final l$contractHeaderIds$entry = l$contractHeaderIds[i];
        final lOther$contractHeaderIds$entry = lOther$contractHeaderIds[i];
        if (l$contractHeaderIds$entry != lOther$contractHeaderIds$entry) {
          return false;
        }
      }
    } else if (l$contractHeaderIds != lOther$contractHeaderIds) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (_$data.containsKey('cursor') != other._$data.containsKey('cursor')) {
      return false;
    }
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$dateSort = dateSort;
    final lOther$dateSort = other.dateSort;
    if (_$data.containsKey('dateSort') !=
        other._$data.containsKey('dateSort')) {
      return false;
    }
    if (l$dateSort != lOther$dateSort) {
      return false;
    }
    final l$filterType = filterType;
    final lOther$filterType = other.filterType;
    if (_$data.containsKey('filterType') !=
        other._$data.containsKey('filterType')) {
      return false;
    }
    if (l$filterType != lOther$filterType) {
      return false;
    }
    final l$activeFromDate = activeFromDate;
    final lOther$activeFromDate = other.activeFromDate;
    if (_$data.containsKey('activeFromDate') !=
        other._$data.containsKey('activeFromDate')) {
      return false;
    }
    if (l$activeFromDate != lOther$activeFromDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNos = partyAccountNos;
    final l$take = take;
    final l$contractHeaderIds = contractHeaderIds;
    final l$cursor = cursor;
    final l$dateSort = dateSort;
    final l$filterType = filterType;
    final l$activeFromDate = activeFromDate;
    return Object.hashAll([
      _$data.containsKey('partyAccountNos')
          ? l$partyAccountNos == null
              ? null
              : Object.hashAll(l$partyAccountNos.map((v) => v))
          : const {},
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('contractHeaderIds')
          ? l$contractHeaderIds == null
              ? null
              : Object.hashAll(l$contractHeaderIds.map((v) => v))
          : const {},
      _$data.containsKey('cursor') ? l$cursor : const {},
      _$data.containsKey('dateSort') ? l$dateSort : const {},
      _$data.containsKey('filterType') ? l$filterType : const {},
      _$data.containsKey('activeFromDate') ? l$activeFromDate : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetContracts<TRes> {
  factory CopyWith$Variables$Query$GetContracts(
    Variables$Query$GetContracts instance,
    TRes Function(Variables$Query$GetContracts) then,
  ) = _CopyWithImpl$Variables$Query$GetContracts;

  factory CopyWith$Variables$Query$GetContracts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetContracts;

  TRes call({
    List<String>? partyAccountNos,
    int? take,
    List<int>? contractHeaderIds,
    String? cursor,
    Enum$SortEnumType? dateSort,
    Enum$ContractSearchMode? filterType,
    DateTime? activeFromDate,
  });
}

class _CopyWithImpl$Variables$Query$GetContracts<TRes>
    implements CopyWith$Variables$Query$GetContracts<TRes> {
  _CopyWithImpl$Variables$Query$GetContracts(
    this._instance,
    this._then,
  );

  final Variables$Query$GetContracts _instance;

  final TRes Function(Variables$Query$GetContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNos = _undefined,
    Object? take = _undefined,
    Object? contractHeaderIds = _undefined,
    Object? cursor = _undefined,
    Object? dateSort = _undefined,
    Object? filterType = _undefined,
    Object? activeFromDate = _undefined,
  }) =>
      _then(Variables$Query$GetContracts._({
        ..._instance._$data,
        if (partyAccountNos != _undefined)
          'partyAccountNos': (partyAccountNos as List<String>?),
        if (take != _undefined) 'take': (take as int?),
        if (contractHeaderIds != _undefined)
          'contractHeaderIds': (contractHeaderIds as List<int>?),
        if (cursor != _undefined) 'cursor': (cursor as String?),
        if (dateSort != _undefined && dateSort != null)
          'dateSort': (dateSort as Enum$SortEnumType),
        if (filterType != _undefined && filterType != null)
          'filterType': (filterType as Enum$ContractSearchMode),
        if (activeFromDate != _undefined)
          'activeFromDate': (activeFromDate as DateTime?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetContracts<TRes>
    implements CopyWith$Variables$Query$GetContracts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetContracts(this._res);

  TRes _res;

  call({
    List<String>? partyAccountNos,
    int? take,
    List<int>? contractHeaderIds,
    String? cursor,
    Enum$SortEnumType? dateSort,
    Enum$ContractSearchMode? filterType,
    DateTime? activeFromDate,
  }) =>
      _res;
}

class Query$GetContracts {
  Query$GetContracts({
    this.contracts,
    this.$__typename = 'Query',
  });

  factory Query$GetContracts.fromJson(Map<String, dynamic> json) {
    final l$contracts = json['contracts'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts(
      contracts: l$contracts == null
          ? null
          : Query$GetContracts$contracts.fromJson(
              (l$contracts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contracts? contracts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contracts = contracts;
    _resultData['contracts'] = l$contracts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contracts = contracts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contracts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contracts = contracts;
    final lOther$contracts = other.contracts;
    if (l$contracts != lOther$contracts) {
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

extension UtilityExtension$Query$GetContracts on Query$GetContracts {
  CopyWith$Query$GetContracts<Query$GetContracts> get copyWith =>
      CopyWith$Query$GetContracts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetContracts<TRes> {
  factory CopyWith$Query$GetContracts(
    Query$GetContracts instance,
    TRes Function(Query$GetContracts) then,
  ) = _CopyWithImpl$Query$GetContracts;

  factory CopyWith$Query$GetContracts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts;

  TRes call({
    Query$GetContracts$contracts? contracts,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts<TRes> get contracts;
}

class _CopyWithImpl$Query$GetContracts<TRes>
    implements CopyWith$Query$GetContracts<TRes> {
  _CopyWithImpl$Query$GetContracts(
    this._instance,
    this._then,
  );

  final Query$GetContracts _instance;

  final TRes Function(Query$GetContracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contracts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts(
        contracts: contracts == _undefined
            ? _instance.contracts
            : (contracts as Query$GetContracts$contracts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContracts$contracts<TRes> get contracts {
    final local$contracts = _instance.contracts;
    return local$contracts == null
        ? CopyWith$Query$GetContracts$contracts.stub(_then(_instance))
        : CopyWith$Query$GetContracts$contracts(
            local$contracts, (e) => call(contracts: e));
  }
}

class _CopyWithStubImpl$Query$GetContracts<TRes>
    implements CopyWith$Query$GetContracts<TRes> {
  _CopyWithStubImpl$Query$GetContracts(this._res);

  TRes _res;

  call({
    Query$GetContracts$contracts? contracts,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContracts$contracts<TRes> get contracts =>
      CopyWith$Query$GetContracts$contracts.stub(_res);
}

const documentNodeQueryGetContracts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetContracts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNos')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'take')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'contractHeaderIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cursor')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dateSort')),
        type: NamedTypeNode(
          name: NameNode(value: 'SortEnumType'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(
            value: EnumValueNode(name: NameNode(value: 'DESC'))),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filterType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContractSearchMode'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(
            value: EnumValueNode(name: NameNode(value: 'ALL'))),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activeFromDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'contracts'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'take')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'cursor')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'filterType')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'partyAccountNo'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'in'),
                          value: VariableNode(
                              name: NameNode(value: 'partyAccountNos')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'contractHeaderId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'in'),
                          value: VariableNode(
                              name: NameNode(value: 'contractHeaderIds')),
                        )
                      ]),
                    )
                  ]),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'contractStatusId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'neq'),
                          value: IntValueNode(value: '4'),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'contractStatusId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'neq'),
                          value: IntValueNode(value: '5'),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'or'),
                      value: ListValueNode(values: [
                        ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'endDate'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'gte'),
                                value: VariableNode(
                                    name: NameNode(value: 'activeFromDate')),
                              )
                            ]),
                          )
                        ]),
                        ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'endDate'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'eq'),
                                value: NullValueNode(),
                              )
                            ]),
                          )
                        ]),
                      ]),
                    )
                  ]),
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: ListValueNode(values: [
              ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'startDate'),
                  value: VariableNode(name: NameNode(value: 'dateSort')),
                )
              ])
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'contractStatusId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSpot'),
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
                name: NameNode(value: 'contractOrderBookTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderBook'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'contractOrderBookTypeName'),
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
                name: NameNode(value: 'contractRef'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accountManager'),
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
                name: NameNode(value: 'contractStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'contractStatusId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contractStatusName'),
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
                name: NameNode(value: 'contractType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'contractTypeId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contractTypeName'),
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
                name: NameNode(value: 'targetLoads'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'customerContractRef'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'partyAccountNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'comment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'internalComments'),
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
                name: NameNode(value: 'priceTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'modifiedDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'contractLines'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'active'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'eq'),
                            value: BooleanValueNode(value: true),
                          )
                        ]),
                      )
                    ]),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'depotPremiums'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'depotPremiumId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'contractLineId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'depotNo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'depot'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'shortName'),
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
                        name: NameNode(value: 'rateDelta'),
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
                        name: NameNode(value: 'rateUomValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rateUomId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rateDeltaTypeId'),
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
                    name: NameNode(value: 'lineLocations'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'locationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullyCharged'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectedPriceDeltaUomId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'collectedPriceDeltaUomValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'haulageChargeUomId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'haulageChargeUomValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'location'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'locationCode'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'description'),
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
                    name: NameNode(value: 'msGrade'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'gradeCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'gradeGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'gradeType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'comment'),
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
                    name: NameNode(value: 'contractLineId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isSpotPrice'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deliveredLoads'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deliveredTonnage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'grade'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'materialDescription'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contractLineDeliveryMethodId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'partyArisingPointId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'targetTonnageUomValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'targetTonnageUomId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commodityRateUomValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commodityRateUomId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name:
                        NameNode(value: 'haulageChargeAdjustmentRateUomValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'haulageChargeAdjustmentRateUomId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'ctoFadjustment'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'targetLoads'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commodityRateCollectedUomId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commodityRateCollectedUomValue'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contractLineStatusId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'brokerReference'),
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

class Query$GetContracts$contracts {
  Query$GetContracts$contracts({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'ContractsConnection',
  });

  factory Query$GetContracts$contracts.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts(
      pageInfo: Query$GetContracts$contracts$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetContracts$contracts$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetContracts$contracts$pageInfo pageInfo;

  final List<Query$GetContracts$contracts$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetContracts$contracts
    on Query$GetContracts$contracts {
  CopyWith$Query$GetContracts$contracts<Query$GetContracts$contracts>
      get copyWith => CopyWith$Query$GetContracts$contracts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts<TRes> {
  factory CopyWith$Query$GetContracts$contracts(
    Query$GetContracts$contracts instance,
    TRes Function(Query$GetContracts$contracts) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts;

  factory CopyWith$Query$GetContracts$contracts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts;

  TRes call({
    Query$GetContracts$contracts$pageInfo? pageInfo,
    List<Query$GetContracts$contracts$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetContracts$contracts$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetContracts$contracts$nodes<
                      Query$GetContracts$contracts$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetContracts$contracts<TRes>
    implements CopyWith$Query$GetContracts$contracts<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts _instance;

  final TRes Function(Query$GetContracts$contracts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetContracts$contracts$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetContracts$contracts$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetContracts$contracts$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetContracts$contracts$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetContracts$contracts$nodes<
                          Query$GetContracts$contracts$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$GetContracts$contracts$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetContracts$contracts<TRes>
    implements CopyWith$Query$GetContracts$contracts<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts(this._res);

  TRes _res;

  call({
    Query$GetContracts$contracts$pageInfo? pageInfo,
    List<Query$GetContracts$contracts$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContracts$contracts$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetContracts$contracts$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetContracts$contracts$pageInfo {
  Query$GetContracts$contracts$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetContracts$contracts$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$GetContracts$contracts$pageInfo
    on Query$GetContracts$contracts$pageInfo {
  CopyWith$Query$GetContracts$contracts$pageInfo<
          Query$GetContracts$contracts$pageInfo>
      get copyWith => CopyWith$Query$GetContracts$contracts$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  factory CopyWith$Query$GetContracts$contracts$pageInfo(
    Query$GetContracts$contracts$pageInfo instance,
    TRes Function(Query$GetContracts$contracts$pageInfo) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$pageInfo;

  factory CopyWith$Query$GetContracts$contracts$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$pageInfo<TRes>
    implements CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$pageInfo _instance;

  final TRes Function(Query$GetContracts$contracts$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo<TRes>
    implements CopyWith$Query$GetContracts$contracts$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes {
  Query$GetContracts$contracts$nodes({
    this.contractStatusId,
    this.isSpot,
    required this.contractHeaderId,
    this.contractOrderBookTypeId,
    this.orderBook,
    this.startDate,
    this.endDate,
    this.contractRef,
    this.accountManager,
    this.currencyCode,
    this.contractStatus,
    this.contractType,
    this.targetLoads,
    this.customerContractRef,
    required this.partyAccountNo,
    this.comment,
    this.internalComments,
    this.deliveryNotes,
    this.paymentNotes,
    required this.priceTypeId,
    this.modifiedDate,
    required this.contractLines,
    this.$__typename = 'T2ContractHeader',
  });

  factory Query$GetContracts$contracts$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$contractStatusId = json['contractStatusId'];
    final l$isSpot = json['isSpot'];
    final l$contractHeaderId = json['contractHeaderId'];
    final l$contractOrderBookTypeId = json['contractOrderBookTypeId'];
    final l$orderBook = json['orderBook'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$contractRef = json['contractRef'];
    final l$accountManager = json['accountManager'];
    final l$currencyCode = json['currencyCode'];
    final l$contractStatus = json['contractStatus'];
    final l$contractType = json['contractType'];
    final l$targetLoads = json['targetLoads'];
    final l$customerContractRef = json['customerContractRef'];
    final l$partyAccountNo = json['partyAccountNo'];
    final l$comment = json['comment'];
    final l$internalComments = json['internalComments'];
    final l$deliveryNotes = json['deliveryNotes'];
    final l$paymentNotes = json['paymentNotes'];
    final l$priceTypeId = json['priceTypeId'];
    final l$modifiedDate = json['modifiedDate'];
    final l$contractLines = json['contractLines'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes(
      contractStatusId: (l$contractStatusId as int?),
      isSpot: (l$isSpot as bool?),
      contractHeaderId: (l$contractHeaderId as int),
      contractOrderBookTypeId: (l$contractOrderBookTypeId as int?),
      orderBook: l$orderBook == null
          ? null
          : Query$GetContracts$contracts$nodes$orderBook.fromJson(
              (l$orderBook as Map<String, dynamic>)),
      startDate:
          l$startDate == null ? null : DateTime.parse((l$startDate as String)),
      endDate: l$endDate == null ? null : DateTime.parse((l$endDate as String)),
      contractRef: (l$contractRef as String?),
      accountManager: (l$accountManager as String?),
      currencyCode: (l$currencyCode as String?),
      contractStatus: l$contractStatus == null
          ? null
          : Query$GetContracts$contracts$nodes$contractStatus.fromJson(
              (l$contractStatus as Map<String, dynamic>)),
      contractType: l$contractType == null
          ? null
          : Query$GetContracts$contracts$nodes$contractType.fromJson(
              (l$contractType as Map<String, dynamic>)),
      targetLoads: (l$targetLoads as int?),
      customerContractRef: (l$customerContractRef as String?),
      partyAccountNo: (l$partyAccountNo as String),
      comment: (l$comment as String?),
      internalComments: (l$internalComments as String?),
      deliveryNotes: (l$deliveryNotes as String?),
      paymentNotes: (l$paymentNotes as String?),
      priceTypeId: (l$priceTypeId as int),
      modifiedDate: l$modifiedDate == null
          ? null
          : DateTime.parse((l$modifiedDate as String)),
      contractLines: (l$contractLines as List<dynamic>)
          .map((e) => Query$GetContracts$contracts$nodes$contractLines.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? contractStatusId;

  final bool? isSpot;

  final int contractHeaderId;

  final int? contractOrderBookTypeId;

  final Query$GetContracts$contracts$nodes$orderBook? orderBook;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? contractRef;

  final String? accountManager;

  final String? currencyCode;

  final Query$GetContracts$contracts$nodes$contractStatus? contractStatus;

  final Query$GetContracts$contracts$nodes$contractType? contractType;

  final int? targetLoads;

  final String? customerContractRef;

  final String partyAccountNo;

  final String? comment;

  final String? internalComments;

  final String? deliveryNotes;

  final String? paymentNotes;

  final int priceTypeId;

  final DateTime? modifiedDate;

  final List<Query$GetContracts$contracts$nodes$contractLines> contractLines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractStatusId = contractStatusId;
    _resultData['contractStatusId'] = l$contractStatusId;
    final l$isSpot = isSpot;
    _resultData['isSpot'] = l$isSpot;
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$contractOrderBookTypeId = contractOrderBookTypeId;
    _resultData['contractOrderBookTypeId'] = l$contractOrderBookTypeId;
    final l$orderBook = orderBook;
    _resultData['orderBook'] = l$orderBook?.toJson();
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toIso8601String();
    final l$contractRef = contractRef;
    _resultData['contractRef'] = l$contractRef;
    final l$accountManager = accountManager;
    _resultData['accountManager'] = l$accountManager;
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$contractStatus = contractStatus;
    _resultData['contractStatus'] = l$contractStatus?.toJson();
    final l$contractType = contractType;
    _resultData['contractType'] = l$contractType?.toJson();
    final l$targetLoads = targetLoads;
    _resultData['targetLoads'] = l$targetLoads;
    final l$customerContractRef = customerContractRef;
    _resultData['customerContractRef'] = l$customerContractRef;
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$internalComments = internalComments;
    _resultData['internalComments'] = l$internalComments;
    final l$deliveryNotes = deliveryNotes;
    _resultData['deliveryNotes'] = l$deliveryNotes;
    final l$paymentNotes = paymentNotes;
    _resultData['paymentNotes'] = l$paymentNotes;
    final l$priceTypeId = priceTypeId;
    _resultData['priceTypeId'] = l$priceTypeId;
    final l$modifiedDate = modifiedDate;
    _resultData['modifiedDate'] = l$modifiedDate?.toIso8601String();
    final l$contractLines = contractLines;
    _resultData['contractLines'] =
        l$contractLines.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractStatusId = contractStatusId;
    final l$isSpot = isSpot;
    final l$contractHeaderId = contractHeaderId;
    final l$contractOrderBookTypeId = contractOrderBookTypeId;
    final l$orderBook = orderBook;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$contractRef = contractRef;
    final l$accountManager = accountManager;
    final l$currencyCode = currencyCode;
    final l$contractStatus = contractStatus;
    final l$contractType = contractType;
    final l$targetLoads = targetLoads;
    final l$customerContractRef = customerContractRef;
    final l$partyAccountNo = partyAccountNo;
    final l$comment = comment;
    final l$internalComments = internalComments;
    final l$deliveryNotes = deliveryNotes;
    final l$paymentNotes = paymentNotes;
    final l$priceTypeId = priceTypeId;
    final l$modifiedDate = modifiedDate;
    final l$contractLines = contractLines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractStatusId,
      l$isSpot,
      l$contractHeaderId,
      l$contractOrderBookTypeId,
      l$orderBook,
      l$startDate,
      l$endDate,
      l$contractRef,
      l$accountManager,
      l$currencyCode,
      l$contractStatus,
      l$contractType,
      l$targetLoads,
      l$customerContractRef,
      l$partyAccountNo,
      l$comment,
      l$internalComments,
      l$deliveryNotes,
      l$paymentNotes,
      l$priceTypeId,
      l$modifiedDate,
      Object.hashAll(l$contractLines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractStatusId = contractStatusId;
    final lOther$contractStatusId = other.contractStatusId;
    if (l$contractStatusId != lOther$contractStatusId) {
      return false;
    }
    final l$isSpot = isSpot;
    final lOther$isSpot = other.isSpot;
    if (l$isSpot != lOther$isSpot) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    final l$contractOrderBookTypeId = contractOrderBookTypeId;
    final lOther$contractOrderBookTypeId = other.contractOrderBookTypeId;
    if (l$contractOrderBookTypeId != lOther$contractOrderBookTypeId) {
      return false;
    }
    final l$orderBook = orderBook;
    final lOther$orderBook = other.orderBook;
    if (l$orderBook != lOther$orderBook) {
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
    final l$contractRef = contractRef;
    final lOther$contractRef = other.contractRef;
    if (l$contractRef != lOther$contractRef) {
      return false;
    }
    final l$accountManager = accountManager;
    final lOther$accountManager = other.accountManager;
    if (l$accountManager != lOther$accountManager) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$contractStatus = contractStatus;
    final lOther$contractStatus = other.contractStatus;
    if (l$contractStatus != lOther$contractStatus) {
      return false;
    }
    final l$contractType = contractType;
    final lOther$contractType = other.contractType;
    if (l$contractType != lOther$contractType) {
      return false;
    }
    final l$targetLoads = targetLoads;
    final lOther$targetLoads = other.targetLoads;
    if (l$targetLoads != lOther$targetLoads) {
      return false;
    }
    final l$customerContractRef = customerContractRef;
    final lOther$customerContractRef = other.customerContractRef;
    if (l$customerContractRef != lOther$customerContractRef) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$internalComments = internalComments;
    final lOther$internalComments = other.internalComments;
    if (l$internalComments != lOther$internalComments) {
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
    final l$priceTypeId = priceTypeId;
    final lOther$priceTypeId = other.priceTypeId;
    if (l$priceTypeId != lOther$priceTypeId) {
      return false;
    }
    final l$modifiedDate = modifiedDate;
    final lOther$modifiedDate = other.modifiedDate;
    if (l$modifiedDate != lOther$modifiedDate) {
      return false;
    }
    final l$contractLines = contractLines;
    final lOther$contractLines = other.contractLines;
    if (l$contractLines.length != lOther$contractLines.length) {
      return false;
    }
    for (int i = 0; i < l$contractLines.length; i++) {
      final l$contractLines$entry = l$contractLines[i];
      final lOther$contractLines$entry = lOther$contractLines[i];
      if (l$contractLines$entry != lOther$contractLines$entry) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes
    on Query$GetContracts$contracts$nodes {
  CopyWith$Query$GetContracts$contracts$nodes<
          Query$GetContracts$contracts$nodes>
      get copyWith => CopyWith$Query$GetContracts$contracts$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes(
    Query$GetContracts$contracts$nodes instance,
    TRes Function(Query$GetContracts$contracts$nodes) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes;

  factory CopyWith$Query$GetContracts$contracts$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes;

  TRes call({
    int? contractStatusId,
    bool? isSpot,
    int? contractHeaderId,
    int? contractOrderBookTypeId,
    Query$GetContracts$contracts$nodes$orderBook? orderBook,
    DateTime? startDate,
    DateTime? endDate,
    String? contractRef,
    String? accountManager,
    String? currencyCode,
    Query$GetContracts$contracts$nodes$contractStatus? contractStatus,
    Query$GetContracts$contracts$nodes$contractType? contractType,
    int? targetLoads,
    String? customerContractRef,
    String? partyAccountNo,
    String? comment,
    String? internalComments,
    String? deliveryNotes,
    String? paymentNotes,
    int? priceTypeId,
    DateTime? modifiedDate,
    List<Query$GetContracts$contracts$nodes$contractLines>? contractLines,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> get orderBook;
  CopyWith$Query$GetContracts$contracts$nodes$contractStatus<TRes>
      get contractStatus;
  CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes>
      get contractType;
  TRes contractLines(
      Iterable<Query$GetContracts$contracts$nodes$contractLines> Function(
              Iterable<
                  CopyWith$Query$GetContracts$contracts$nodes$contractLines<
                      Query$GetContracts$contracts$nodes$contractLines>>)
          _fn);
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes _instance;

  final TRes Function(Query$GetContracts$contracts$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractStatusId = _undefined,
    Object? isSpot = _undefined,
    Object? contractHeaderId = _undefined,
    Object? contractOrderBookTypeId = _undefined,
    Object? orderBook = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? contractRef = _undefined,
    Object? accountManager = _undefined,
    Object? currencyCode = _undefined,
    Object? contractStatus = _undefined,
    Object? contractType = _undefined,
    Object? targetLoads = _undefined,
    Object? customerContractRef = _undefined,
    Object? partyAccountNo = _undefined,
    Object? comment = _undefined,
    Object? internalComments = _undefined,
    Object? deliveryNotes = _undefined,
    Object? paymentNotes = _undefined,
    Object? priceTypeId = _undefined,
    Object? modifiedDate = _undefined,
    Object? contractLines = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes(
        contractStatusId: contractStatusId == _undefined
            ? _instance.contractStatusId
            : (contractStatusId as int?),
        isSpot: isSpot == _undefined ? _instance.isSpot : (isSpot as bool?),
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        contractOrderBookTypeId: contractOrderBookTypeId == _undefined
            ? _instance.contractOrderBookTypeId
            : (contractOrderBookTypeId as int?),
        orderBook: orderBook == _undefined
            ? _instance.orderBook
            : (orderBook as Query$GetContracts$contracts$nodes$orderBook?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as DateTime?),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as DateTime?),
        contractRef: contractRef == _undefined
            ? _instance.contractRef
            : (contractRef as String?),
        accountManager: accountManager == _undefined
            ? _instance.accountManager
            : (accountManager as String?),
        currencyCode: currencyCode == _undefined
            ? _instance.currencyCode
            : (currencyCode as String?),
        contractStatus: contractStatus == _undefined
            ? _instance.contractStatus
            : (contractStatus
                as Query$GetContracts$contracts$nodes$contractStatus?),
        contractType: contractType == _undefined
            ? _instance.contractType
            : (contractType
                as Query$GetContracts$contracts$nodes$contractType?),
        targetLoads: targetLoads == _undefined
            ? _instance.targetLoads
            : (targetLoads as int?),
        customerContractRef: customerContractRef == _undefined
            ? _instance.customerContractRef
            : (customerContractRef as String?),
        partyAccountNo: partyAccountNo == _undefined || partyAccountNo == null
            ? _instance.partyAccountNo
            : (partyAccountNo as String),
        comment:
            comment == _undefined ? _instance.comment : (comment as String?),
        internalComments: internalComments == _undefined
            ? _instance.internalComments
            : (internalComments as String?),
        deliveryNotes: deliveryNotes == _undefined
            ? _instance.deliveryNotes
            : (deliveryNotes as String?),
        paymentNotes: paymentNotes == _undefined
            ? _instance.paymentNotes
            : (paymentNotes as String?),
        priceTypeId: priceTypeId == _undefined || priceTypeId == null
            ? _instance.priceTypeId
            : (priceTypeId as int),
        modifiedDate: modifiedDate == _undefined
            ? _instance.modifiedDate
            : (modifiedDate as DateTime?),
        contractLines: contractLines == _undefined || contractLines == null
            ? _instance.contractLines
            : (contractLines
                as List<Query$GetContracts$contracts$nodes$contractLines>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> get orderBook {
    final local$orderBook = _instance.orderBook;
    return local$orderBook == null
        ? CopyWith$Query$GetContracts$contracts$nodes$orderBook.stub(
            _then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$orderBook(
            local$orderBook, (e) => call(orderBook: e));
  }

  CopyWith$Query$GetContracts$contracts$nodes$contractStatus<TRes>
      get contractStatus {
    final local$contractStatus = _instance.contractStatus;
    return local$contractStatus == null
        ? CopyWith$Query$GetContracts$contracts$nodes$contractStatus.stub(
            _then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$contractStatus(
            local$contractStatus, (e) => call(contractStatus: e));
  }

  CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes>
      get contractType {
    final local$contractType = _instance.contractType;
    return local$contractType == null
        ? CopyWith$Query$GetContracts$contracts$nodes$contractType.stub(
            _then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$contractType(
            local$contractType, (e) => call(contractType: e));
  }

  TRes contractLines(
          Iterable<Query$GetContracts$contracts$nodes$contractLines> Function(
                  Iterable<
                      CopyWith$Query$GetContracts$contracts$nodes$contractLines<
                          Query$GetContracts$contracts$nodes$contractLines>>)
              _fn) =>
      call(
          contractLines: _fn(_instance.contractLines.map(
              (e) => CopyWith$Query$GetContracts$contracts$nodes$contractLines(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes(this._res);

  TRes _res;

  call({
    int? contractStatusId,
    bool? isSpot,
    int? contractHeaderId,
    int? contractOrderBookTypeId,
    Query$GetContracts$contracts$nodes$orderBook? orderBook,
    DateTime? startDate,
    DateTime? endDate,
    String? contractRef,
    String? accountManager,
    String? currencyCode,
    Query$GetContracts$contracts$nodes$contractStatus? contractStatus,
    Query$GetContracts$contracts$nodes$contractType? contractType,
    int? targetLoads,
    String? customerContractRef,
    String? partyAccountNo,
    String? comment,
    String? internalComments,
    String? deliveryNotes,
    String? paymentNotes,
    int? priceTypeId,
    DateTime? modifiedDate,
    List<Query$GetContracts$contracts$nodes$contractLines>? contractLines,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> get orderBook =>
      CopyWith$Query$GetContracts$contracts$nodes$orderBook.stub(_res);

  CopyWith$Query$GetContracts$contracts$nodes$contractStatus<TRes>
      get contractStatus =>
          CopyWith$Query$GetContracts$contracts$nodes$contractStatus.stub(_res);

  CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes>
      get contractType =>
          CopyWith$Query$GetContracts$contracts$nodes$contractType.stub(_res);

  contractLines(_fn) => _res;
}

class Query$GetContracts$contracts$nodes$orderBook {
  Query$GetContracts$contracts$nodes$orderBook({
    this.contractOrderBookTypeName,
    this.$__typename = 'T2ContractOrderBookType',
  });

  factory Query$GetContracts$contracts$nodes$orderBook.fromJson(
      Map<String, dynamic> json) {
    final l$contractOrderBookTypeName = json['contractOrderBookTypeName'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$orderBook(
      contractOrderBookTypeName: (l$contractOrderBookTypeName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? contractOrderBookTypeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    _resultData['contractOrderBookTypeName'] = l$contractOrderBookTypeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractOrderBookTypeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$orderBook ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final lOther$contractOrderBookTypeName = other.contractOrderBookTypeName;
    if (l$contractOrderBookTypeName != lOther$contractOrderBookTypeName) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$orderBook
    on Query$GetContracts$contracts$nodes$orderBook {
  CopyWith$Query$GetContracts$contracts$nodes$orderBook<
          Query$GetContracts$contracts$nodes$orderBook>
      get copyWith => CopyWith$Query$GetContracts$contracts$nodes$orderBook(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$orderBook(
    Query$GetContracts$contracts$nodes$orderBook instance,
    TRes Function(Query$GetContracts$contracts$nodes$orderBook) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$orderBook;

  factory CopyWith$Query$GetContracts$contracts$nodes$orderBook.stub(TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$orderBook;

  TRes call({
    String? contractOrderBookTypeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$orderBook<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$orderBook(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$orderBook _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$orderBook) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractOrderBookTypeName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$orderBook(
        contractOrderBookTypeName: contractOrderBookTypeName == _undefined
            ? _instance.contractOrderBookTypeName
            : (contractOrderBookTypeName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$orderBook<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$orderBook<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$orderBook(this._res);

  TRes _res;

  call({
    String? contractOrderBookTypeName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes$contractStatus {
  Query$GetContracts$contracts$nodes$contractStatus({
    required this.contractStatusId,
    this.contractStatusName,
    this.$__typename = 'T2ContractStatus',
  });

  factory Query$GetContracts$contracts$nodes$contractStatus.fromJson(
      Map<String, dynamic> json) {
    final l$contractStatusId = json['contractStatusId'];
    final l$contractStatusName = json['contractStatusName'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractStatus(
      contractStatusId: (l$contractStatusId as int),
      contractStatusName: (l$contractStatusName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractStatusId;

  final String? contractStatusName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractStatusId = contractStatusId;
    _resultData['contractStatusId'] = l$contractStatusId;
    final l$contractStatusName = contractStatusName;
    _resultData['contractStatusName'] = l$contractStatusName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractStatusId = contractStatusId;
    final l$contractStatusName = contractStatusName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractStatusId,
      l$contractStatusName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$contractStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractStatusId = contractStatusId;
    final lOther$contractStatusId = other.contractStatusId;
    if (l$contractStatusId != lOther$contractStatusId) {
      return false;
    }
    final l$contractStatusName = contractStatusName;
    final lOther$contractStatusName = other.contractStatusName;
    if (l$contractStatusName != lOther$contractStatusName) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractStatus
    on Query$GetContracts$contracts$nodes$contractStatus {
  CopyWith$Query$GetContracts$contracts$nodes$contractStatus<
          Query$GetContracts$contracts$nodes$contractStatus>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractStatus<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractStatus(
    Query$GetContracts$contracts$nodes$contractStatus instance,
    TRes Function(Query$GetContracts$contracts$nodes$contractStatus) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractStatus;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractStatus.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractStatus;

  TRes call({
    int? contractStatusId,
    String? contractStatusName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractStatus<TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractStatus<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractStatus(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractStatus _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$contractStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractStatusId = _undefined,
    Object? contractStatusName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractStatus(
        contractStatusId:
            contractStatusId == _undefined || contractStatusId == null
                ? _instance.contractStatusId
                : (contractStatusId as int),
        contractStatusName: contractStatusName == _undefined
            ? _instance.contractStatusName
            : (contractStatusName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractStatus<TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractStatus<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractStatus(
      this._res);

  TRes _res;

  call({
    int? contractStatusId,
    String? contractStatusName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes$contractType {
  Query$GetContracts$contracts$nodes$contractType({
    required this.contractTypeId,
    this.contractTypeName,
    this.$__typename = 'T2ContractType',
  });

  factory Query$GetContracts$contracts$nodes$contractType.fromJson(
      Map<String, dynamic> json) {
    final l$contractTypeId = json['contractTypeId'];
    final l$contractTypeName = json['contractTypeName'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractType(
      contractTypeId: (l$contractTypeId as int),
      contractTypeName: (l$contractTypeName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractTypeId;

  final String? contractTypeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractTypeId = contractTypeId;
    _resultData['contractTypeId'] = l$contractTypeId;
    final l$contractTypeName = contractTypeName;
    _resultData['contractTypeName'] = l$contractTypeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractTypeId = contractTypeId;
    final l$contractTypeName = contractTypeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractTypeId,
      l$contractTypeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$contractType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractTypeId = contractTypeId;
    final lOther$contractTypeId = other.contractTypeId;
    if (l$contractTypeId != lOther$contractTypeId) {
      return false;
    }
    final l$contractTypeName = contractTypeName;
    final lOther$contractTypeName = other.contractTypeName;
    if (l$contractTypeName != lOther$contractTypeName) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractType
    on Query$GetContracts$contracts$nodes$contractType {
  CopyWith$Query$GetContracts$contracts$nodes$contractType<
          Query$GetContracts$contracts$nodes$contractType>
      get copyWith => CopyWith$Query$GetContracts$contracts$nodes$contractType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractType(
    Query$GetContracts$contracts$nodes$contractType instance,
    TRes Function(Query$GetContracts$contracts$nodes$contractType) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractType;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractType;

  TRes call({
    int? contractTypeId,
    String? contractTypeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractType<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractType(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractType _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$contractType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractTypeId = _undefined,
    Object? contractTypeName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractType(
        contractTypeId: contractTypeId == _undefined || contractTypeId == null
            ? _instance.contractTypeId
            : (contractTypeId as int),
        contractTypeName: contractTypeName == _undefined
            ? _instance.contractTypeName
            : (contractTypeName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractType<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$contractType<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractType(this._res);

  TRes _res;

  call({
    int? contractTypeId,
    String? contractTypeName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes$contractLines {
  Query$GetContracts$contracts$nodes$contractLines({
    required this.depotPremiums,
    required this.lineLocations,
    this.msGrade,
    required this.contractLineId,
    required this.isSpotPrice,
    this.deliveredLoads,
    this.deliveredTonnage,
    this.grade,
    this.materialDescription,
    this.contractLineDeliveryMethodId,
    this.partyArisingPointId,
    this.targetTonnageUomValue,
    this.targetTonnageUomId,
    this.commodityRateUomValue,
    this.commodityRateUomId,
    this.haulageChargeAdjustmentRateUomValue,
    this.haulageChargeAdjustmentRateUomId,
    this.ctoFadjustment,
    this.targetLoads,
    this.commodityRateCollectedUomId,
    this.commodityRateCollectedUomValue,
    this.contractLineStatusId,
    this.brokerReference,
    this.$__typename = 'T2ContractLine',
  });

  factory Query$GetContracts$contracts$nodes$contractLines.fromJson(
      Map<String, dynamic> json) {
    final l$depotPremiums = json['depotPremiums'];
    final l$lineLocations = json['lineLocations'];
    final l$msGrade = json['msGrade'];
    final l$contractLineId = json['contractLineId'];
    final l$isSpotPrice = json['isSpotPrice'];
    final l$deliveredLoads = json['deliveredLoads'];
    final l$deliveredTonnage = json['deliveredTonnage'];
    final l$grade = json['grade'];
    final l$materialDescription = json['materialDescription'];
    final l$contractLineDeliveryMethodId = json['contractLineDeliveryMethodId'];
    final l$partyArisingPointId = json['partyArisingPointId'];
    final l$targetTonnageUomValue = json['targetTonnageUomValue'];
    final l$targetTonnageUomId = json['targetTonnageUomId'];
    final l$commodityRateUomValue = json['commodityRateUomValue'];
    final l$commodityRateUomId = json['commodityRateUomId'];
    final l$haulageChargeAdjustmentRateUomValue =
        json['haulageChargeAdjustmentRateUomValue'];
    final l$haulageChargeAdjustmentRateUomId =
        json['haulageChargeAdjustmentRateUomId'];
    final l$ctoFadjustment = json['ctoFadjustment'];
    final l$targetLoads = json['targetLoads'];
    final l$commodityRateCollectedUomId = json['commodityRateCollectedUomId'];
    final l$commodityRateCollectedUomValue =
        json['commodityRateCollectedUomValue'];
    final l$contractLineStatusId = json['contractLineStatusId'];
    final l$brokerReference = json['brokerReference'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines(
      depotPremiums: (l$depotPremiums as List<dynamic>)
          .map((e) =>
              Query$GetContracts$contracts$nodes$contractLines$depotPremiums
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      lineLocations: (l$lineLocations as List<dynamic>)
          .map((e) =>
              Query$GetContracts$contracts$nodes$contractLines$lineLocations
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      msGrade: l$msGrade == null
          ? null
          : Query$GetContracts$contracts$nodes$contractLines$msGrade.fromJson(
              (l$msGrade as Map<String, dynamic>)),
      contractLineId: (l$contractLineId as int),
      isSpotPrice: (l$isSpotPrice as bool),
      deliveredLoads: (l$deliveredLoads as int?),
      deliveredTonnage: (l$deliveredTonnage as num?)?.toDouble(),
      grade: (l$grade as String?),
      materialDescription: (l$materialDescription as String?),
      contractLineDeliveryMethodId: (l$contractLineDeliveryMethodId as int?),
      partyArisingPointId: (l$partyArisingPointId as int?),
      targetTonnageUomValue: (l$targetTonnageUomValue as num?)?.toDouble(),
      targetTonnageUomId: (l$targetTonnageUomId as int?),
      commodityRateUomValue: (l$commodityRateUomValue as num?)?.toDouble(),
      commodityRateUomId: (l$commodityRateUomId as int?),
      haulageChargeAdjustmentRateUomValue:
          (l$haulageChargeAdjustmentRateUomValue as num?)?.toDouble(),
      haulageChargeAdjustmentRateUomId:
          (l$haulageChargeAdjustmentRateUomId as int?),
      ctoFadjustment: (l$ctoFadjustment as num?)?.toDouble(),
      targetLoads: (l$targetLoads as int?),
      commodityRateCollectedUomId: (l$commodityRateCollectedUomId as int?),
      commodityRateCollectedUomValue:
          (l$commodityRateCollectedUomValue as num?)?.toDouble(),
      contractLineStatusId: (l$contractLineStatusId as int?),
      brokerReference: (l$brokerReference as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetContracts$contracts$nodes$contractLines$depotPremiums>
      depotPremiums;

  final List<Query$GetContracts$contracts$nodes$contractLines$lineLocations>
      lineLocations;

  final Query$GetContracts$contracts$nodes$contractLines$msGrade? msGrade;

  final int contractLineId;

  final bool isSpotPrice;

  final int? deliveredLoads;

  final double? deliveredTonnage;

  final String? grade;

  final String? materialDescription;

  final int? contractLineDeliveryMethodId;

  final int? partyArisingPointId;

  final double? targetTonnageUomValue;

  final int? targetTonnageUomId;

  final double? commodityRateUomValue;

  final int? commodityRateUomId;

  final double? haulageChargeAdjustmentRateUomValue;

  final int? haulageChargeAdjustmentRateUomId;

  final double? ctoFadjustment;

  final int? targetLoads;

  final int? commodityRateCollectedUomId;

  final double? commodityRateCollectedUomValue;

  final int? contractLineStatusId;

  final String? brokerReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotPremiums = depotPremiums;
    _resultData['depotPremiums'] =
        l$depotPremiums.map((e) => e.toJson()).toList();
    final l$lineLocations = lineLocations;
    _resultData['lineLocations'] =
        l$lineLocations.map((e) => e.toJson()).toList();
    final l$msGrade = msGrade;
    _resultData['msGrade'] = l$msGrade?.toJson();
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$isSpotPrice = isSpotPrice;
    _resultData['isSpotPrice'] = l$isSpotPrice;
    final l$deliveredLoads = deliveredLoads;
    _resultData['deliveredLoads'] = l$deliveredLoads;
    final l$deliveredTonnage = deliveredTonnage;
    _resultData['deliveredTonnage'] = l$deliveredTonnage;
    final l$grade = grade;
    _resultData['grade'] = l$grade;
    final l$materialDescription = materialDescription;
    _resultData['materialDescription'] = l$materialDescription;
    final l$contractLineDeliveryMethodId = contractLineDeliveryMethodId;
    _resultData['contractLineDeliveryMethodId'] =
        l$contractLineDeliveryMethodId;
    final l$partyArisingPointId = partyArisingPointId;
    _resultData['partyArisingPointId'] = l$partyArisingPointId;
    final l$targetTonnageUomValue = targetTonnageUomValue;
    _resultData['targetTonnageUomValue'] = l$targetTonnageUomValue;
    final l$targetTonnageUomId = targetTonnageUomId;
    _resultData['targetTonnageUomId'] = l$targetTonnageUomId;
    final l$commodityRateUomValue = commodityRateUomValue;
    _resultData['commodityRateUomValue'] = l$commodityRateUomValue;
    final l$commodityRateUomId = commodityRateUomId;
    _resultData['commodityRateUomId'] = l$commodityRateUomId;
    final l$haulageChargeAdjustmentRateUomValue =
        haulageChargeAdjustmentRateUomValue;
    _resultData['haulageChargeAdjustmentRateUomValue'] =
        l$haulageChargeAdjustmentRateUomValue;
    final l$haulageChargeAdjustmentRateUomId = haulageChargeAdjustmentRateUomId;
    _resultData['haulageChargeAdjustmentRateUomId'] =
        l$haulageChargeAdjustmentRateUomId;
    final l$ctoFadjustment = ctoFadjustment;
    _resultData['ctoFadjustment'] = l$ctoFadjustment;
    final l$targetLoads = targetLoads;
    _resultData['targetLoads'] = l$targetLoads;
    final l$commodityRateCollectedUomId = commodityRateCollectedUomId;
    _resultData['commodityRateCollectedUomId'] = l$commodityRateCollectedUomId;
    final l$commodityRateCollectedUomValue = commodityRateCollectedUomValue;
    _resultData['commodityRateCollectedUomValue'] =
        l$commodityRateCollectedUomValue;
    final l$contractLineStatusId = contractLineStatusId;
    _resultData['contractLineStatusId'] = l$contractLineStatusId;
    final l$brokerReference = brokerReference;
    _resultData['brokerReference'] = l$brokerReference;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotPremiums = depotPremiums;
    final l$lineLocations = lineLocations;
    final l$msGrade = msGrade;
    final l$contractLineId = contractLineId;
    final l$isSpotPrice = isSpotPrice;
    final l$deliveredLoads = deliveredLoads;
    final l$deliveredTonnage = deliveredTonnage;
    final l$grade = grade;
    final l$materialDescription = materialDescription;
    final l$contractLineDeliveryMethodId = contractLineDeliveryMethodId;
    final l$partyArisingPointId = partyArisingPointId;
    final l$targetTonnageUomValue = targetTonnageUomValue;
    final l$targetTonnageUomId = targetTonnageUomId;
    final l$commodityRateUomValue = commodityRateUomValue;
    final l$commodityRateUomId = commodityRateUomId;
    final l$haulageChargeAdjustmentRateUomValue =
        haulageChargeAdjustmentRateUomValue;
    final l$haulageChargeAdjustmentRateUomId = haulageChargeAdjustmentRateUomId;
    final l$ctoFadjustment = ctoFadjustment;
    final l$targetLoads = targetLoads;
    final l$commodityRateCollectedUomId = commodityRateCollectedUomId;
    final l$commodityRateCollectedUomValue = commodityRateCollectedUomValue;
    final l$contractLineStatusId = contractLineStatusId;
    final l$brokerReference = brokerReference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$depotPremiums.map((v) => v)),
      Object.hashAll(l$lineLocations.map((v) => v)),
      l$msGrade,
      l$contractLineId,
      l$isSpotPrice,
      l$deliveredLoads,
      l$deliveredTonnage,
      l$grade,
      l$materialDescription,
      l$contractLineDeliveryMethodId,
      l$partyArisingPointId,
      l$targetTonnageUomValue,
      l$targetTonnageUomId,
      l$commodityRateUomValue,
      l$commodityRateUomId,
      l$haulageChargeAdjustmentRateUomValue,
      l$haulageChargeAdjustmentRateUomId,
      l$ctoFadjustment,
      l$targetLoads,
      l$commodityRateCollectedUomId,
      l$commodityRateCollectedUomValue,
      l$contractLineStatusId,
      l$brokerReference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$contractLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotPremiums = depotPremiums;
    final lOther$depotPremiums = other.depotPremiums;
    if (l$depotPremiums.length != lOther$depotPremiums.length) {
      return false;
    }
    for (int i = 0; i < l$depotPremiums.length; i++) {
      final l$depotPremiums$entry = l$depotPremiums[i];
      final lOther$depotPremiums$entry = lOther$depotPremiums[i];
      if (l$depotPremiums$entry != lOther$depotPremiums$entry) {
        return false;
      }
    }
    final l$lineLocations = lineLocations;
    final lOther$lineLocations = other.lineLocations;
    if (l$lineLocations.length != lOther$lineLocations.length) {
      return false;
    }
    for (int i = 0; i < l$lineLocations.length; i++) {
      final l$lineLocations$entry = l$lineLocations[i];
      final lOther$lineLocations$entry = lOther$lineLocations[i];
      if (l$lineLocations$entry != lOther$lineLocations$entry) {
        return false;
      }
    }
    final l$msGrade = msGrade;
    final lOther$msGrade = other.msGrade;
    if (l$msGrade != lOther$msGrade) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
      return false;
    }
    final l$isSpotPrice = isSpotPrice;
    final lOther$isSpotPrice = other.isSpotPrice;
    if (l$isSpotPrice != lOther$isSpotPrice) {
      return false;
    }
    final l$deliveredLoads = deliveredLoads;
    final lOther$deliveredLoads = other.deliveredLoads;
    if (l$deliveredLoads != lOther$deliveredLoads) {
      return false;
    }
    final l$deliveredTonnage = deliveredTonnage;
    final lOther$deliveredTonnage = other.deliveredTonnage;
    if (l$deliveredTonnage != lOther$deliveredTonnage) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (l$grade != lOther$grade) {
      return false;
    }
    final l$materialDescription = materialDescription;
    final lOther$materialDescription = other.materialDescription;
    if (l$materialDescription != lOther$materialDescription) {
      return false;
    }
    final l$contractLineDeliveryMethodId = contractLineDeliveryMethodId;
    final lOther$contractLineDeliveryMethodId =
        other.contractLineDeliveryMethodId;
    if (l$contractLineDeliveryMethodId != lOther$contractLineDeliveryMethodId) {
      return false;
    }
    final l$partyArisingPointId = partyArisingPointId;
    final lOther$partyArisingPointId = other.partyArisingPointId;
    if (l$partyArisingPointId != lOther$partyArisingPointId) {
      return false;
    }
    final l$targetTonnageUomValue = targetTonnageUomValue;
    final lOther$targetTonnageUomValue = other.targetTonnageUomValue;
    if (l$targetTonnageUomValue != lOther$targetTonnageUomValue) {
      return false;
    }
    final l$targetTonnageUomId = targetTonnageUomId;
    final lOther$targetTonnageUomId = other.targetTonnageUomId;
    if (l$targetTonnageUomId != lOther$targetTonnageUomId) {
      return false;
    }
    final l$commodityRateUomValue = commodityRateUomValue;
    final lOther$commodityRateUomValue = other.commodityRateUomValue;
    if (l$commodityRateUomValue != lOther$commodityRateUomValue) {
      return false;
    }
    final l$commodityRateUomId = commodityRateUomId;
    final lOther$commodityRateUomId = other.commodityRateUomId;
    if (l$commodityRateUomId != lOther$commodityRateUomId) {
      return false;
    }
    final l$haulageChargeAdjustmentRateUomValue =
        haulageChargeAdjustmentRateUomValue;
    final lOther$haulageChargeAdjustmentRateUomValue =
        other.haulageChargeAdjustmentRateUomValue;
    if (l$haulageChargeAdjustmentRateUomValue !=
        lOther$haulageChargeAdjustmentRateUomValue) {
      return false;
    }
    final l$haulageChargeAdjustmentRateUomId = haulageChargeAdjustmentRateUomId;
    final lOther$haulageChargeAdjustmentRateUomId =
        other.haulageChargeAdjustmentRateUomId;
    if (l$haulageChargeAdjustmentRateUomId !=
        lOther$haulageChargeAdjustmentRateUomId) {
      return false;
    }
    final l$ctoFadjustment = ctoFadjustment;
    final lOther$ctoFadjustment = other.ctoFadjustment;
    if (l$ctoFadjustment != lOther$ctoFadjustment) {
      return false;
    }
    final l$targetLoads = targetLoads;
    final lOther$targetLoads = other.targetLoads;
    if (l$targetLoads != lOther$targetLoads) {
      return false;
    }
    final l$commodityRateCollectedUomId = commodityRateCollectedUomId;
    final lOther$commodityRateCollectedUomId =
        other.commodityRateCollectedUomId;
    if (l$commodityRateCollectedUomId != lOther$commodityRateCollectedUomId) {
      return false;
    }
    final l$commodityRateCollectedUomValue = commodityRateCollectedUomValue;
    final lOther$commodityRateCollectedUomValue =
        other.commodityRateCollectedUomValue;
    if (l$commodityRateCollectedUomValue !=
        lOther$commodityRateCollectedUomValue) {
      return false;
    }
    final l$contractLineStatusId = contractLineStatusId;
    final lOther$contractLineStatusId = other.contractLineStatusId;
    if (l$contractLineStatusId != lOther$contractLineStatusId) {
      return false;
    }
    final l$brokerReference = brokerReference;
    final lOther$brokerReference = other.brokerReference;
    if (l$brokerReference != lOther$brokerReference) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines
    on Query$GetContracts$contracts$nodes$contractLines {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines<
          Query$GetContracts$contracts$nodes$contractLines>
      get copyWith => CopyWith$Query$GetContracts$contracts$nodes$contractLines(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines<TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines(
    Query$GetContracts$contracts$nodes$contractLines instance,
    TRes Function(Query$GetContracts$contracts$nodes$contractLines) then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines;

  TRes call({
    List<Query$GetContracts$contracts$nodes$contractLines$depotPremiums>?
        depotPremiums,
    List<Query$GetContracts$contracts$nodes$contractLines$lineLocations>?
        lineLocations,
    Query$GetContracts$contracts$nodes$contractLines$msGrade? msGrade,
    int? contractLineId,
    bool? isSpotPrice,
    int? deliveredLoads,
    double? deliveredTonnage,
    String? grade,
    String? materialDescription,
    int? contractLineDeliveryMethodId,
    int? partyArisingPointId,
    double? targetTonnageUomValue,
    int? targetTonnageUomId,
    double? commodityRateUomValue,
    int? commodityRateUomId,
    double? haulageChargeAdjustmentRateUomValue,
    int? haulageChargeAdjustmentRateUomId,
    double? ctoFadjustment,
    int? targetLoads,
    int? commodityRateCollectedUomId,
    double? commodityRateCollectedUomValue,
    int? contractLineStatusId,
    String? brokerReference,
    String? $__typename,
  });
  TRes depotPremiums(
      Iterable<Query$GetContracts$contracts$nodes$contractLines$depotPremiums> Function(
              Iterable<
                  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
                      Query$GetContracts$contracts$nodes$contractLines$depotPremiums>>)
          _fn);
  TRes lineLocations(
      Iterable<Query$GetContracts$contracts$nodes$contractLines$lineLocations> Function(
              Iterable<
                  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
                      Query$GetContracts$contracts$nodes$contractLines$lineLocations>>)
          _fn);
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<TRes>
      get msGrade;
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$contractLines<TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$contractLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotPremiums = _undefined,
    Object? lineLocations = _undefined,
    Object? msGrade = _undefined,
    Object? contractLineId = _undefined,
    Object? isSpotPrice = _undefined,
    Object? deliveredLoads = _undefined,
    Object? deliveredTonnage = _undefined,
    Object? grade = _undefined,
    Object? materialDescription = _undefined,
    Object? contractLineDeliveryMethodId = _undefined,
    Object? partyArisingPointId = _undefined,
    Object? targetTonnageUomValue = _undefined,
    Object? targetTonnageUomId = _undefined,
    Object? commodityRateUomValue = _undefined,
    Object? commodityRateUomId = _undefined,
    Object? haulageChargeAdjustmentRateUomValue = _undefined,
    Object? haulageChargeAdjustmentRateUomId = _undefined,
    Object? ctoFadjustment = _undefined,
    Object? targetLoads = _undefined,
    Object? commodityRateCollectedUomId = _undefined,
    Object? commodityRateCollectedUomValue = _undefined,
    Object? contractLineStatusId = _undefined,
    Object? brokerReference = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractLines(
        depotPremiums: depotPremiums == _undefined || depotPremiums == null
            ? _instance.depotPremiums
            : (depotPremiums as List<
                Query$GetContracts$contracts$nodes$contractLines$depotPremiums>),
        lineLocations: lineLocations == _undefined || lineLocations == null
            ? _instance.lineLocations
            : (lineLocations as List<
                Query$GetContracts$contracts$nodes$contractLines$lineLocations>),
        msGrade: msGrade == _undefined
            ? _instance.msGrade
            : (msGrade
                as Query$GetContracts$contracts$nodes$contractLines$msGrade?),
        contractLineId: contractLineId == _undefined || contractLineId == null
            ? _instance.contractLineId
            : (contractLineId as int),
        isSpotPrice: isSpotPrice == _undefined || isSpotPrice == null
            ? _instance.isSpotPrice
            : (isSpotPrice as bool),
        deliveredLoads: deliveredLoads == _undefined
            ? _instance.deliveredLoads
            : (deliveredLoads as int?),
        deliveredTonnage: deliveredTonnage == _undefined
            ? _instance.deliveredTonnage
            : (deliveredTonnage as double?),
        grade: grade == _undefined ? _instance.grade : (grade as String?),
        materialDescription: materialDescription == _undefined
            ? _instance.materialDescription
            : (materialDescription as String?),
        contractLineDeliveryMethodId: contractLineDeliveryMethodId == _undefined
            ? _instance.contractLineDeliveryMethodId
            : (contractLineDeliveryMethodId as int?),
        partyArisingPointId: partyArisingPointId == _undefined
            ? _instance.partyArisingPointId
            : (partyArisingPointId as int?),
        targetTonnageUomValue: targetTonnageUomValue == _undefined
            ? _instance.targetTonnageUomValue
            : (targetTonnageUomValue as double?),
        targetTonnageUomId: targetTonnageUomId == _undefined
            ? _instance.targetTonnageUomId
            : (targetTonnageUomId as int?),
        commodityRateUomValue: commodityRateUomValue == _undefined
            ? _instance.commodityRateUomValue
            : (commodityRateUomValue as double?),
        commodityRateUomId: commodityRateUomId == _undefined
            ? _instance.commodityRateUomId
            : (commodityRateUomId as int?),
        haulageChargeAdjustmentRateUomValue:
            haulageChargeAdjustmentRateUomValue == _undefined
                ? _instance.haulageChargeAdjustmentRateUomValue
                : (haulageChargeAdjustmentRateUomValue as double?),
        haulageChargeAdjustmentRateUomId:
            haulageChargeAdjustmentRateUomId == _undefined
                ? _instance.haulageChargeAdjustmentRateUomId
                : (haulageChargeAdjustmentRateUomId as int?),
        ctoFadjustment: ctoFadjustment == _undefined
            ? _instance.ctoFadjustment
            : (ctoFadjustment as double?),
        targetLoads: targetLoads == _undefined
            ? _instance.targetLoads
            : (targetLoads as int?),
        commodityRateCollectedUomId: commodityRateCollectedUomId == _undefined
            ? _instance.commodityRateCollectedUomId
            : (commodityRateCollectedUomId as int?),
        commodityRateCollectedUomValue:
            commodityRateCollectedUomValue == _undefined
                ? _instance.commodityRateCollectedUomValue
                : (commodityRateCollectedUomValue as double?),
        contractLineStatusId: contractLineStatusId == _undefined
            ? _instance.contractLineStatusId
            : (contractLineStatusId as int?),
        brokerReference: brokerReference == _undefined
            ? _instance.brokerReference
            : (brokerReference as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes depotPremiums(
          Iterable<Query$GetContracts$contracts$nodes$contractLines$depotPremiums> Function(
                  Iterable<
                      CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
                          Query$GetContracts$contracts$nodes$contractLines$depotPremiums>>)
              _fn) =>
      call(
          depotPremiums: _fn(_instance.depotPremiums.map((e) =>
              CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
                e,
                (i) => i,
              ))).toList());

  TRes lineLocations(
          Iterable<Query$GetContracts$contracts$nodes$contractLines$lineLocations> Function(
                  Iterable<
                      CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
                          Query$GetContracts$contracts$nodes$contractLines$lineLocations>>)
              _fn) =>
      call(
          lineLocations: _fn(_instance.lineLocations.map((e) =>
              CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<TRes>
      get msGrade {
    final local$msGrade = _instance.msGrade;
    return local$msGrade == null
        ? CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade
            .stub(_then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade(
            local$msGrade, (e) => call(msGrade: e));
  }
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines<TRes>
    implements CopyWith$Query$GetContracts$contracts$nodes$contractLines<TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines(this._res);

  TRes _res;

  call({
    List<Query$GetContracts$contracts$nodes$contractLines$depotPremiums>?
        depotPremiums,
    List<Query$GetContracts$contracts$nodes$contractLines$lineLocations>?
        lineLocations,
    Query$GetContracts$contracts$nodes$contractLines$msGrade? msGrade,
    int? contractLineId,
    bool? isSpotPrice,
    int? deliveredLoads,
    double? deliveredTonnage,
    String? grade,
    String? materialDescription,
    int? contractLineDeliveryMethodId,
    int? partyArisingPointId,
    double? targetTonnageUomValue,
    int? targetTonnageUomId,
    double? commodityRateUomValue,
    int? commodityRateUomId,
    double? haulageChargeAdjustmentRateUomValue,
    int? haulageChargeAdjustmentRateUomId,
    double? ctoFadjustment,
    int? targetLoads,
    int? commodityRateCollectedUomId,
    double? commodityRateCollectedUomValue,
    int? contractLineStatusId,
    String? brokerReference,
    String? $__typename,
  }) =>
      _res;

  depotPremiums(_fn) => _res;

  lineLocations(_fn) => _res;

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<TRes>
      get msGrade =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade
              .stub(_res);
}

class Query$GetContracts$contracts$nodes$contractLines$depotPremiums {
  Query$GetContracts$contracts$nodes$contractLines$depotPremiums({
    required this.depotPremiumId,
    this.contractLineId,
    this.depotNo,
    this.depot,
    this.rateDelta,
    this.rate,
    this.rateUomValue,
    this.rateUomId,
    this.rateDeltaTypeId,
    this.$__typename = 'T2ContractLineDepotPremium',
  });

  factory Query$GetContracts$contracts$nodes$contractLines$depotPremiums.fromJson(
      Map<String, dynamic> json) {
    final l$depotPremiumId = json['depotPremiumId'];
    final l$contractLineId = json['contractLineId'];
    final l$depotNo = json['depotNo'];
    final l$depot = json['depot'];
    final l$rateDelta = json['rateDelta'];
    final l$rate = json['rate'];
    final l$rateUomValue = json['rateUomValue'];
    final l$rateUomId = json['rateUomId'];
    final l$rateDeltaTypeId = json['rateDeltaTypeId'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
      depotPremiumId: (l$depotPremiumId as int),
      contractLineId: (l$contractLineId as int?),
      depotNo: (l$depotNo as String?),
      depot: l$depot == null
          ? null
          : Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
              .fromJson((l$depot as Map<String, dynamic>)),
      rateDelta: (l$rateDelta as num?)?.toDouble(),
      rate: (l$rate as num?)?.toDouble(),
      rateUomValue: (l$rateUomValue as num?)?.toDouble(),
      rateUomId: (l$rateUomId as int?),
      rateDeltaTypeId: (l$rateDeltaTypeId as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int depotPremiumId;

  final int? contractLineId;

  final String? depotNo;

  final Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot?
      depot;

  final double? rateDelta;

  final double? rate;

  final double? rateUomValue;

  final int? rateUomId;

  final int? rateDeltaTypeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depotPremiumId = depotPremiumId;
    _resultData['depotPremiumId'] = l$depotPremiumId;
    final l$contractLineId = contractLineId;
    _resultData['contractLineId'] = l$contractLineId;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$depot = depot;
    _resultData['depot'] = l$depot?.toJson();
    final l$rateDelta = rateDelta;
    _resultData['rateDelta'] = l$rateDelta;
    final l$rate = rate;
    _resultData['rate'] = l$rate;
    final l$rateUomValue = rateUomValue;
    _resultData['rateUomValue'] = l$rateUomValue;
    final l$rateUomId = rateUomId;
    _resultData['rateUomId'] = l$rateUomId;
    final l$rateDeltaTypeId = rateDeltaTypeId;
    _resultData['rateDeltaTypeId'] = l$rateDeltaTypeId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depotPremiumId = depotPremiumId;
    final l$contractLineId = contractLineId;
    final l$depotNo = depotNo;
    final l$depot = depot;
    final l$rateDelta = rateDelta;
    final l$rate = rate;
    final l$rateUomValue = rateUomValue;
    final l$rateUomId = rateUomId;
    final l$rateDeltaTypeId = rateDeltaTypeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$depotPremiumId,
      l$contractLineId,
      l$depotNo,
      l$depot,
      l$rateDelta,
      l$rate,
      l$rateUomValue,
      l$rateUomId,
      l$rateDeltaTypeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetContracts$contracts$nodes$contractLines$depotPremiums ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$depotPremiumId = depotPremiumId;
    final lOther$depotPremiumId = other.depotPremiumId;
    if (l$depotPremiumId != lOther$depotPremiumId) {
      return false;
    }
    final l$contractLineId = contractLineId;
    final lOther$contractLineId = other.contractLineId;
    if (l$contractLineId != lOther$contractLineId) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$depot = depot;
    final lOther$depot = other.depot;
    if (l$depot != lOther$depot) {
      return false;
    }
    final l$rateDelta = rateDelta;
    final lOther$rateDelta = other.rateDelta;
    if (l$rateDelta != lOther$rateDelta) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$rateUomValue = rateUomValue;
    final lOther$rateUomValue = other.rateUomValue;
    if (l$rateUomValue != lOther$rateUomValue) {
      return false;
    }
    final l$rateUomId = rateUomId;
    final lOther$rateUomId = other.rateUomId;
    if (l$rateUomId != lOther$rateUomId) {
      return false;
    }
    final l$rateDeltaTypeId = rateDeltaTypeId;
    final lOther$rateDeltaTypeId = other.rateDeltaTypeId;
    if (l$rateDeltaTypeId != lOther$rateDeltaTypeId) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines$depotPremiums
    on Query$GetContracts$contracts$nodes$contractLines$depotPremiums {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
          Query$GetContracts$contracts$nodes$contractLines$depotPremiums>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
    Query$GetContracts$contracts$nodes$contractLines$depotPremiums instance,
    TRes Function(
            Query$GetContracts$contracts$nodes$contractLines$depotPremiums)
        then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums;

  TRes call({
    int? depotPremiumId,
    int? contractLineId,
    String? depotNo,
    Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot? depot,
    double? rateDelta,
    double? rate,
    double? rateUomValue,
    int? rateUomId,
    int? rateDeltaTypeId,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
      TRes> get depot;
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
            TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines$depotPremiums
      _instance;

  final TRes Function(
      Query$GetContracts$contracts$nodes$contractLines$depotPremiums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? depotPremiumId = _undefined,
    Object? contractLineId = _undefined,
    Object? depotNo = _undefined,
    Object? depot = _undefined,
    Object? rateDelta = _undefined,
    Object? rate = _undefined,
    Object? rateUomValue = _undefined,
    Object? rateUomId = _undefined,
    Object? rateDeltaTypeId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
        depotPremiumId: depotPremiumId == _undefined || depotPremiumId == null
            ? _instance.depotPremiumId
            : (depotPremiumId as int),
        contractLineId: contractLineId == _undefined
            ? _instance.contractLineId
            : (contractLineId as int?),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        depot: depot == _undefined
            ? _instance.depot
            : (depot
                as Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot?),
        rateDelta: rateDelta == _undefined
            ? _instance.rateDelta
            : (rateDelta as double?),
        rate: rate == _undefined ? _instance.rate : (rate as double?),
        rateUomValue: rateUomValue == _undefined
            ? _instance.rateUomValue
            : (rateUomValue as double?),
        rateUomId:
            rateUomId == _undefined ? _instance.rateUomId : (rateUomId as int?),
        rateDeltaTypeId: rateDeltaTypeId == _undefined
            ? _instance.rateDeltaTypeId
            : (rateDeltaTypeId as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
      TRes> get depot {
    final local$depot = _instance.depot;
    return local$depot == null
        ? CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
            .stub(_then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
            local$depot, (e) => call(depot: e));
  }
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums<
            TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums(
      this._res);

  TRes _res;

  call({
    int? depotPremiumId,
    int? contractLineId,
    String? depotNo,
    Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot? depot,
    double? rateDelta,
    double? rate,
    double? rateUomValue,
    int? rateUomId,
    int? rateDeltaTypeId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
          TRes>
      get depot =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
              .stub(_res);
}

class Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot {
  Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot({
    required this.shortName,
    this.$__typename = 'Depot',
  });

  factory Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot.fromJson(
      Map<String, dynamic> json) {
    final l$shortName = json['shortName'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
      shortName: (l$shortName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String shortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortName = shortName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
    on Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
          Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
    Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
        instance,
    TRes Function(
            Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot)
        then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot;

  TRes call({
    String? shortName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
            TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot
      _instance;

  final TRes Function(
          Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shortName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot<
            TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$depotPremiums$depot(
      this._res);

  TRes _res;

  call({
    String? shortName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes$contractLines$lineLocations {
  Query$GetContracts$contracts$nodes$contractLines$lineLocations({
    required this.locationId,
    required this.fullyCharged,
    this.collectedPriceDeltaUomId,
    this.collectedPriceDeltaUomValue,
    this.haulageChargeUomId,
    this.haulageChargeUomValue,
    this.location,
    this.$__typename = 'T2ContractLineLocation',
  });

  factory Query$GetContracts$contracts$nodes$contractLines$lineLocations.fromJson(
      Map<String, dynamic> json) {
    final l$locationId = json['locationId'];
    final l$fullyCharged = json['fullyCharged'];
    final l$collectedPriceDeltaUomId = json['collectedPriceDeltaUomId'];
    final l$collectedPriceDeltaUomValue = json['collectedPriceDeltaUomValue'];
    final l$haulageChargeUomId = json['haulageChargeUomId'];
    final l$haulageChargeUomValue = json['haulageChargeUomValue'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines$lineLocations(
      locationId: (l$locationId as int),
      fullyCharged: (l$fullyCharged as bool),
      collectedPriceDeltaUomId: (l$collectedPriceDeltaUomId as int?),
      collectedPriceDeltaUomValue:
          (l$collectedPriceDeltaUomValue as num?)?.toDouble(),
      haulageChargeUomId: (l$haulageChargeUomId as int?),
      haulageChargeUomValue: (l$haulageChargeUomValue as num?)?.toDouble(),
      location: l$location == null
          ? null
          : Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
              .fromJson((l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int locationId;

  final bool fullyCharged;

  final int? collectedPriceDeltaUomId;

  final double? collectedPriceDeltaUomValue;

  final int? haulageChargeUomId;

  final double? haulageChargeUomValue;

  final Query$GetContracts$contracts$nodes$contractLines$lineLocations$location?
      location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$fullyCharged = fullyCharged;
    _resultData['fullyCharged'] = l$fullyCharged;
    final l$collectedPriceDeltaUomId = collectedPriceDeltaUomId;
    _resultData['collectedPriceDeltaUomId'] = l$collectedPriceDeltaUomId;
    final l$collectedPriceDeltaUomValue = collectedPriceDeltaUomValue;
    _resultData['collectedPriceDeltaUomValue'] = l$collectedPriceDeltaUomValue;
    final l$haulageChargeUomId = haulageChargeUomId;
    _resultData['haulageChargeUomId'] = l$haulageChargeUomId;
    final l$haulageChargeUomValue = haulageChargeUomValue;
    _resultData['haulageChargeUomValue'] = l$haulageChargeUomValue;
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationId = locationId;
    final l$fullyCharged = fullyCharged;
    final l$collectedPriceDeltaUomId = collectedPriceDeltaUomId;
    final l$collectedPriceDeltaUomValue = collectedPriceDeltaUomValue;
    final l$haulageChargeUomId = haulageChargeUomId;
    final l$haulageChargeUomValue = haulageChargeUomValue;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locationId,
      l$fullyCharged,
      l$collectedPriceDeltaUomId,
      l$collectedPriceDeltaUomValue,
      l$haulageChargeUomId,
      l$haulageChargeUomValue,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetContracts$contracts$nodes$contractLines$lineLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$fullyCharged = fullyCharged;
    final lOther$fullyCharged = other.fullyCharged;
    if (l$fullyCharged != lOther$fullyCharged) {
      return false;
    }
    final l$collectedPriceDeltaUomId = collectedPriceDeltaUomId;
    final lOther$collectedPriceDeltaUomId = other.collectedPriceDeltaUomId;
    if (l$collectedPriceDeltaUomId != lOther$collectedPriceDeltaUomId) {
      return false;
    }
    final l$collectedPriceDeltaUomValue = collectedPriceDeltaUomValue;
    final lOther$collectedPriceDeltaUomValue =
        other.collectedPriceDeltaUomValue;
    if (l$collectedPriceDeltaUomValue != lOther$collectedPriceDeltaUomValue) {
      return false;
    }
    final l$haulageChargeUomId = haulageChargeUomId;
    final lOther$haulageChargeUomId = other.haulageChargeUomId;
    if (l$haulageChargeUomId != lOther$haulageChargeUomId) {
      return false;
    }
    final l$haulageChargeUomValue = haulageChargeUomValue;
    final lOther$haulageChargeUomValue = other.haulageChargeUomValue;
    if (l$haulageChargeUomValue != lOther$haulageChargeUomValue) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines$lineLocations
    on Query$GetContracts$contracts$nodes$contractLines$lineLocations {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
          Query$GetContracts$contracts$nodes$contractLines$lineLocations>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations(
    Query$GetContracts$contracts$nodes$contractLines$lineLocations instance,
    TRes Function(
            Query$GetContracts$contracts$nodes$contractLines$lineLocations)
        then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations;

  TRes call({
    int? locationId,
    bool? fullyCharged,
    int? collectedPriceDeltaUomId,
    double? collectedPriceDeltaUomValue,
    int? haulageChargeUomId,
    double? haulageChargeUomValue,
    Query$GetContracts$contracts$nodes$contractLines$lineLocations$location?
        location,
    String? $__typename,
  });
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
      TRes> get location;
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
            TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines$lineLocations
      _instance;

  final TRes Function(
      Query$GetContracts$contracts$nodes$contractLines$lineLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationId = _undefined,
    Object? fullyCharged = _undefined,
    Object? collectedPriceDeltaUomId = _undefined,
    Object? collectedPriceDeltaUomValue = _undefined,
    Object? haulageChargeUomId = _undefined,
    Object? haulageChargeUomValue = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractLines$lineLocations(
        locationId: locationId == _undefined || locationId == null
            ? _instance.locationId
            : (locationId as int),
        fullyCharged: fullyCharged == _undefined || fullyCharged == null
            ? _instance.fullyCharged
            : (fullyCharged as bool),
        collectedPriceDeltaUomId: collectedPriceDeltaUomId == _undefined
            ? _instance.collectedPriceDeltaUomId
            : (collectedPriceDeltaUomId as int?),
        collectedPriceDeltaUomValue: collectedPriceDeltaUomValue == _undefined
            ? _instance.collectedPriceDeltaUomValue
            : (collectedPriceDeltaUomValue as double?),
        haulageChargeUomId: haulageChargeUomId == _undefined
            ? _instance.haulageChargeUomId
            : (haulageChargeUomId as int?),
        haulageChargeUomValue: haulageChargeUomValue == _undefined
            ? _instance.haulageChargeUomValue
            : (haulageChargeUomValue as double?),
        location: location == _undefined
            ? _instance.location
            : (location
                as Query$GetContracts$contracts$nodes$contractLines$lineLocations$location?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
      TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
            .stub(_then(_instance))
        : CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
            local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations<
            TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations(
      this._res);

  TRes _res;

  call({
    int? locationId,
    bool? fullyCharged,
    int? collectedPriceDeltaUomId,
    double? collectedPriceDeltaUomValue,
    int? haulageChargeUomId,
    double? haulageChargeUomValue,
    Query$GetContracts$contracts$nodes$contractLines$lineLocations$location?
        location,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
          TRes>
      get location =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
              .stub(_res);
}

class Query$GetContracts$contracts$nodes$contractLines$lineLocations$location {
  Query$GetContracts$contracts$nodes$contractLines$lineLocations$location({
    required this.locationCode,
    required this.description,
    this.$__typename = 'T2Location',
  });

  factory Query$GetContracts$contracts$nodes$contractLines$lineLocations$location.fromJson(
      Map<String, dynamic> json) {
    final l$locationCode = json['locationCode'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
      locationCode: (l$locationCode as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String locationCode;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationCode = locationCode;
    _resultData['locationCode'] = l$locationCode;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationCode = locationCode;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locationCode,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetContracts$contracts$nodes$contractLines$lineLocations$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationCode = locationCode;
    final lOther$locationCode = other.locationCode;
    if (l$locationCode != lOther$locationCode) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
    on Query$GetContracts$contracts$nodes$contractLines$lineLocations$location {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
          Query$GetContracts$contracts$nodes$contractLines$lineLocations$location>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
    Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
        instance,
    TRes Function(
            Query$GetContracts$contracts$nodes$contractLines$lineLocations$location)
        then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location;

  TRes call({
    String? locationCode,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
            TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines$lineLocations$location
      _instance;

  final TRes Function(
          Query$GetContracts$contracts$nodes$contractLines$lineLocations$location)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationCode = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
        locationCode: locationCode == _undefined || locationCode == null
            ? _instance.locationCode
            : (locationCode as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location<
            TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$lineLocations$location(
      this._res);

  TRes _res;

  call({
    String? locationCode,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetContracts$contracts$nodes$contractLines$msGrade {
  Query$GetContracts$contracts$nodes$contractLines$msGrade({
    required this.gradeCode,
    required this.gradeGroup,
    required this.gradeType,
    required this.comment,
    this.$__typename = 'Grade',
  });

  factory Query$GetContracts$contracts$nodes$contractLines$msGrade.fromJson(
      Map<String, dynamic> json) {
    final l$gradeCode = json['gradeCode'];
    final l$gradeGroup = json['gradeGroup'];
    final l$gradeType = json['gradeType'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Query$GetContracts$contracts$nodes$contractLines$msGrade(
      gradeCode: (l$gradeCode as String),
      gradeGroup: (l$gradeGroup as String),
      gradeType: (l$gradeType as String),
      comment: (l$comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeCode;

  final String gradeGroup;

  final String gradeType;

  final String comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$gradeGroup = gradeGroup;
    _resultData['gradeGroup'] = l$gradeGroup;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeCode = gradeCode;
    final l$gradeGroup = gradeGroup;
    final l$gradeType = gradeType;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeCode,
      l$gradeGroup,
      l$gradeType,
      l$comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetContracts$contracts$nodes$contractLines$msGrade ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$gradeGroup = gradeGroup;
    final lOther$gradeGroup = other.gradeGroup;
    if (l$gradeGroup != lOther$gradeGroup) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
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

extension UtilityExtension$Query$GetContracts$contracts$nodes$contractLines$msGrade
    on Query$GetContracts$contracts$nodes$contractLines$msGrade {
  CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<
          Query$GetContracts$contracts$nodes$contractLines$msGrade>
      get copyWith =>
          CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<
    TRes> {
  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade(
    Query$GetContracts$contracts$nodes$contractLines$msGrade instance,
    TRes Function(Query$GetContracts$contracts$nodes$contractLines$msGrade)
        then,
  ) = _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade;

  factory CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade;

  TRes call({
    String? gradeCode,
    String? gradeGroup,
    String? gradeType,
    String? comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<
            TRes> {
  _CopyWithImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade(
    this._instance,
    this._then,
  );

  final Query$GetContracts$contracts$nodes$contractLines$msGrade _instance;

  final TRes Function(Query$GetContracts$contracts$nodes$contractLines$msGrade)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeCode = _undefined,
    Object? gradeGroup = _undefined,
    Object? gradeType = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetContracts$contracts$nodes$contractLines$msGrade(
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        gradeGroup: gradeGroup == _undefined || gradeGroup == null
            ? _instance.gradeGroup
            : (gradeGroup as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade<
        TRes>
    implements
        CopyWith$Query$GetContracts$contracts$nodes$contractLines$msGrade<
            TRes> {
  _CopyWithStubImpl$Query$GetContracts$contracts$nodes$contractLines$msGrade(
      this._res);

  TRes _res;

  call({
    String? gradeCode,
    String? gradeGroup,
    String? gradeType,
    String? comment,
    String? $__typename,
  }) =>
      _res;
}
