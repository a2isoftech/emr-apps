import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getGplPublicationDetails {
  factory Variables$Query$getGplPublicationDetails(
          {required int contractHeaderId}) =>
      Variables$Query$getGplPublicationDetails._({
        r'contractHeaderId': contractHeaderId,
      });

  Variables$Query$getGplPublicationDetails._(this._$data);

  factory Variables$Query$getGplPublicationDetails.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$contractHeaderId = data['contractHeaderId'];
    result$data['contractHeaderId'] = (l$contractHeaderId as int);
    return Variables$Query$getGplPublicationDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  int get contractHeaderId => (_$data['contractHeaderId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$contractHeaderId = contractHeaderId;
    result$data['contractHeaderId'] = l$contractHeaderId;
    return result$data;
  }

  CopyWith$Variables$Query$getGplPublicationDetails<
          Variables$Query$getGplPublicationDetails>
      get copyWith => CopyWith$Variables$Query$getGplPublicationDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getGplPublicationDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contractHeaderId = contractHeaderId;
    return Object.hashAll([l$contractHeaderId]);
  }
}

abstract class CopyWith$Variables$Query$getGplPublicationDetails<TRes> {
  factory CopyWith$Variables$Query$getGplPublicationDetails(
    Variables$Query$getGplPublicationDetails instance,
    TRes Function(Variables$Query$getGplPublicationDetails) then,
  ) = _CopyWithImpl$Variables$Query$getGplPublicationDetails;

  factory CopyWith$Variables$Query$getGplPublicationDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getGplPublicationDetails;

  TRes call({int? contractHeaderId});
}

class _CopyWithImpl$Variables$Query$getGplPublicationDetails<TRes>
    implements CopyWith$Variables$Query$getGplPublicationDetails<TRes> {
  _CopyWithImpl$Variables$Query$getGplPublicationDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$getGplPublicationDetails _instance;

  final TRes Function(Variables$Query$getGplPublicationDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contractHeaderId = _undefined}) =>
      _then(Variables$Query$getGplPublicationDetails._({
        ..._instance._$data,
        if (contractHeaderId != _undefined && contractHeaderId != null)
          'contractHeaderId': (contractHeaderId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$getGplPublicationDetails<TRes>
    implements CopyWith$Variables$Query$getGplPublicationDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$getGplPublicationDetails(this._res);

  TRes _res;

  call({int? contractHeaderId}) => _res;
}

class Query$getGplPublicationDetails {
  Query$getGplPublicationDetails({
    required this.nfe,
    required this.fe,
    this.$__typename = 'Query',
  });

  factory Query$getGplPublicationDetails.fromJson(Map<String, dynamic> json) {
    final l$nfe = json['nfe'];
    final l$fe = json['fe'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails(
      nfe: (l$nfe as List<dynamic>)
          .map((e) => Query$getGplPublicationDetails$nfe.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      fe: (l$fe as List<dynamic>)
          .map((e) => Query$getGplPublicationDetails$fe.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getGplPublicationDetails$nfe> nfe;

  final List<Query$getGplPublicationDetails$fe> fe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nfe = nfe;
    _resultData['nfe'] = l$nfe.map((e) => e.toJson()).toList();
    final l$fe = fe;
    _resultData['fe'] = l$fe.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nfe = nfe;
    final l$fe = fe;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nfe.map((v) => v)),
      Object.hashAll(l$fe.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nfe = nfe;
    final lOther$nfe = other.nfe;
    if (l$nfe.length != lOther$nfe.length) {
      return false;
    }
    for (int i = 0; i < l$nfe.length; i++) {
      final l$nfe$entry = l$nfe[i];
      final lOther$nfe$entry = lOther$nfe[i];
      if (l$nfe$entry != lOther$nfe$entry) {
        return false;
      }
    }
    final l$fe = fe;
    final lOther$fe = other.fe;
    if (l$fe.length != lOther$fe.length) {
      return false;
    }
    for (int i = 0; i < l$fe.length; i++) {
      final l$fe$entry = l$fe[i];
      final lOther$fe$entry = lOther$fe[i];
      if (l$fe$entry != lOther$fe$entry) {
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

extension UtilityExtension$Query$getGplPublicationDetails
    on Query$getGplPublicationDetails {
  CopyWith$Query$getGplPublicationDetails<Query$getGplPublicationDetails>
      get copyWith => CopyWith$Query$getGplPublicationDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails<TRes> {
  factory CopyWith$Query$getGplPublicationDetails(
    Query$getGplPublicationDetails instance,
    TRes Function(Query$getGplPublicationDetails) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails;

  factory CopyWith$Query$getGplPublicationDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails;

  TRes call({
    List<Query$getGplPublicationDetails$nfe>? nfe,
    List<Query$getGplPublicationDetails$fe>? fe,
    String? $__typename,
  });
  TRes nfe(
      Iterable<Query$getGplPublicationDetails$nfe> Function(
              Iterable<
                  CopyWith$Query$getGplPublicationDetails$nfe<
                      Query$getGplPublicationDetails$nfe>>)
          _fn);
  TRes fe(
      Iterable<Query$getGplPublicationDetails$fe> Function(
              Iterable<
                  CopyWith$Query$getGplPublicationDetails$fe<
                      Query$getGplPublicationDetails$fe>>)
          _fn);
}

class _CopyWithImpl$Query$getGplPublicationDetails<TRes>
    implements CopyWith$Query$getGplPublicationDetails<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails _instance;

  final TRes Function(Query$getGplPublicationDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nfe = _undefined,
    Object? fe = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails(
        nfe: nfe == _undefined || nfe == null
            ? _instance.nfe
            : (nfe as List<Query$getGplPublicationDetails$nfe>),
        fe: fe == _undefined || fe == null
            ? _instance.fe
            : (fe as List<Query$getGplPublicationDetails$fe>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nfe(
          Iterable<Query$getGplPublicationDetails$nfe> Function(
                  Iterable<
                      CopyWith$Query$getGplPublicationDetails$nfe<
                          Query$getGplPublicationDetails$nfe>>)
              _fn) =>
      call(
          nfe: _fn(_instance.nfe
              .map((e) => CopyWith$Query$getGplPublicationDetails$nfe(
                    e,
                    (i) => i,
                  ))).toList());

  TRes fe(
          Iterable<Query$getGplPublicationDetails$fe> Function(
                  Iterable<
                      CopyWith$Query$getGplPublicationDetails$fe<
                          Query$getGplPublicationDetails$fe>>)
              _fn) =>
      call(
          fe: _fn(_instance.fe
              .map((e) => CopyWith$Query$getGplPublicationDetails$fe(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getGplPublicationDetails<TRes>
    implements CopyWith$Query$getGplPublicationDetails<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails(this._res);

  TRes _res;

  call({
    List<Query$getGplPublicationDetails$nfe>? nfe,
    List<Query$getGplPublicationDetails$fe>? fe,
    String? $__typename,
  }) =>
      _res;

  nfe(_fn) => _res;

  fe(_fn) => _res;
}

const documentNodeQuerygetGplPublicationDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getGplPublicationDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'contractHeaderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gplPriceBreakdown'),
        alias: NameNode(value: 'nfe'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'contractHeaderId'),
            value: VariableNode(name: NameNode(value: 'contractHeaderId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'gradeType'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: StringValueNode(
                      value: 'NONFER',
                      isBlock: false,
                    ),
                  )
                ]),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'contractHeaderId'),
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
            name: NameNode(value: 'gradeCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'basePrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'publicationYardDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'partyDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'partyYardDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'collected'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'delta'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'resultant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
            name: NameNode(value: 'delivered'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'delta'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'resultant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
        name: NameNode(value: 'gplPriceBreakdown'),
        alias: NameNode(value: 'fe'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'contractHeaderId'),
            value: VariableNode(name: NameNode(value: 'contractHeaderId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'gradeType'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'neq'),
                    value: StringValueNode(
                      value: 'NONFER',
                      isBlock: false,
                    ),
                  )
                ]),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'contractHeaderId'),
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
            name: NameNode(value: 'gradeCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'basePrice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'publicationYardDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'partyDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'partyYardDelta'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uom'),
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'collected'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'delta'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'resultant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
            name: NameNode(value: 'delivered'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'delta'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'resultant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
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

class Query$getGplPublicationDetails$nfe {
  Query$getGplPublicationDetails$nfe({
    required this.contractHeaderId,
    required this.yardCode,
    required this.gradeCode,
    required this.basePrice,
    required this.publicationYardDelta,
    required this.partyDelta,
    this.partyYardDelta,
    this.collected,
    this.delivered,
    this.$__typename = 'PriceListBreakdown',
  });

  factory Query$getGplPublicationDetails$nfe.fromJson(
      Map<String, dynamic> json) {
    final l$contractHeaderId = json['contractHeaderId'];
    final l$yardCode = json['yardCode'];
    final l$gradeCode = json['gradeCode'];
    final l$basePrice = json['basePrice'];
    final l$publicationYardDelta = json['publicationYardDelta'];
    final l$partyDelta = json['partyDelta'];
    final l$partyYardDelta = json['partyYardDelta'];
    final l$collected = json['collected'];
    final l$delivered = json['delivered'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe(
      contractHeaderId: (l$contractHeaderId as int),
      yardCode: (l$yardCode as String),
      gradeCode: (l$gradeCode as String),
      basePrice: Query$getGplPublicationDetails$nfe$basePrice.fromJson(
          (l$basePrice as Map<String, dynamic>)),
      publicationYardDelta:
          Query$getGplPublicationDetails$nfe$publicationYardDelta.fromJson(
              (l$publicationYardDelta as Map<String, dynamic>)),
      partyDelta: Query$getGplPublicationDetails$nfe$partyDelta.fromJson(
          (l$partyDelta as Map<String, dynamic>)),
      partyYardDelta: l$partyYardDelta == null
          ? null
          : Query$getGplPublicationDetails$nfe$partyYardDelta.fromJson(
              (l$partyYardDelta as Map<String, dynamic>)),
      collected: l$collected == null
          ? null
          : Query$getGplPublicationDetails$nfe$collected.fromJson(
              (l$collected as Map<String, dynamic>)),
      delivered: l$delivered == null
          ? null
          : Query$getGplPublicationDetails$nfe$delivered.fromJson(
              (l$delivered as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractHeaderId;

  final String yardCode;

  final String gradeCode;

  final Query$getGplPublicationDetails$nfe$basePrice basePrice;

  final Query$getGplPublicationDetails$nfe$publicationYardDelta
      publicationYardDelta;

  final Query$getGplPublicationDetails$nfe$partyDelta partyDelta;

  final Query$getGplPublicationDetails$nfe$partyYardDelta? partyYardDelta;

  final Query$getGplPublicationDetails$nfe$collected? collected;

  final Query$getGplPublicationDetails$nfe$delivered? delivered;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$basePrice = basePrice;
    _resultData['basePrice'] = l$basePrice.toJson();
    final l$publicationYardDelta = publicationYardDelta;
    _resultData['publicationYardDelta'] = l$publicationYardDelta.toJson();
    final l$partyDelta = partyDelta;
    _resultData['partyDelta'] = l$partyDelta.toJson();
    final l$partyYardDelta = partyYardDelta;
    _resultData['partyYardDelta'] = l$partyYardDelta?.toJson();
    final l$collected = collected;
    _resultData['collected'] = l$collected?.toJson();
    final l$delivered = delivered;
    _resultData['delivered'] = l$delivered?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractHeaderId = contractHeaderId;
    final l$yardCode = yardCode;
    final l$gradeCode = gradeCode;
    final l$basePrice = basePrice;
    final l$publicationYardDelta = publicationYardDelta;
    final l$partyDelta = partyDelta;
    final l$partyYardDelta = partyYardDelta;
    final l$collected = collected;
    final l$delivered = delivered;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractHeaderId,
      l$yardCode,
      l$gradeCode,
      l$basePrice,
      l$publicationYardDelta,
      l$partyDelta,
      l$partyYardDelta,
      l$collected,
      l$delivered,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$basePrice = basePrice;
    final lOther$basePrice = other.basePrice;
    if (l$basePrice != lOther$basePrice) {
      return false;
    }
    final l$publicationYardDelta = publicationYardDelta;
    final lOther$publicationYardDelta = other.publicationYardDelta;
    if (l$publicationYardDelta != lOther$publicationYardDelta) {
      return false;
    }
    final l$partyDelta = partyDelta;
    final lOther$partyDelta = other.partyDelta;
    if (l$partyDelta != lOther$partyDelta) {
      return false;
    }
    final l$partyYardDelta = partyYardDelta;
    final lOther$partyYardDelta = other.partyYardDelta;
    if (l$partyYardDelta != lOther$partyYardDelta) {
      return false;
    }
    final l$collected = collected;
    final lOther$collected = other.collected;
    if (l$collected != lOther$collected) {
      return false;
    }
    final l$delivered = delivered;
    final lOther$delivered = other.delivered;
    if (l$delivered != lOther$delivered) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe
    on Query$getGplPublicationDetails$nfe {
  CopyWith$Query$getGplPublicationDetails$nfe<
          Query$getGplPublicationDetails$nfe>
      get copyWith => CopyWith$Query$getGplPublicationDetails$nfe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe(
    Query$getGplPublicationDetails$nfe instance,
    TRes Function(Query$getGplPublicationDetails$nfe) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe;

  factory CopyWith$Query$getGplPublicationDetails$nfe.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe;

  TRes call({
    int? contractHeaderId,
    String? yardCode,
    String? gradeCode,
    Query$getGplPublicationDetails$nfe$basePrice? basePrice,
    Query$getGplPublicationDetails$nfe$publicationYardDelta?
        publicationYardDelta,
    Query$getGplPublicationDetails$nfe$partyDelta? partyDelta,
    Query$getGplPublicationDetails$nfe$partyYardDelta? partyYardDelta,
    Query$getGplPublicationDetails$nfe$collected? collected,
    Query$getGplPublicationDetails$nfe$delivered? delivered,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> get basePrice;
  CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<TRes>
      get publicationYardDelta;
  CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> get partyDelta;
  CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes>
      get partyYardDelta;
  CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> get collected;
  CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> get delivered;
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractHeaderId = _undefined,
    Object? yardCode = _undefined,
    Object? gradeCode = _undefined,
    Object? basePrice = _undefined,
    Object? publicationYardDelta = _undefined,
    Object? partyDelta = _undefined,
    Object? partyYardDelta = _undefined,
    Object? collected = _undefined,
    Object? delivered = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe(
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        basePrice: basePrice == _undefined || basePrice == null
            ? _instance.basePrice
            : (basePrice as Query$getGplPublicationDetails$nfe$basePrice),
        publicationYardDelta:
            publicationYardDelta == _undefined || publicationYardDelta == null
                ? _instance.publicationYardDelta
                : (publicationYardDelta
                    as Query$getGplPublicationDetails$nfe$publicationYardDelta),
        partyDelta: partyDelta == _undefined || partyDelta == null
            ? _instance.partyDelta
            : (partyDelta as Query$getGplPublicationDetails$nfe$partyDelta),
        partyYardDelta: partyYardDelta == _undefined
            ? _instance.partyYardDelta
            : (partyYardDelta
                as Query$getGplPublicationDetails$nfe$partyYardDelta?),
        collected: collected == _undefined
            ? _instance.collected
            : (collected as Query$getGplPublicationDetails$nfe$collected?),
        delivered: delivered == _undefined
            ? _instance.delivered
            : (delivered as Query$getGplPublicationDetails$nfe$delivered?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> get basePrice {
    final local$basePrice = _instance.basePrice;
    return CopyWith$Query$getGplPublicationDetails$nfe$basePrice(
        local$basePrice, (e) => call(basePrice: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<TRes>
      get publicationYardDelta {
    final local$publicationYardDelta = _instance.publicationYardDelta;
    return CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta(
        local$publicationYardDelta, (e) => call(publicationYardDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> get partyDelta {
    final local$partyDelta = _instance.partyDelta;
    return CopyWith$Query$getGplPublicationDetails$nfe$partyDelta(
        local$partyDelta, (e) => call(partyDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes>
      get partyYardDelta {
    final local$partyYardDelta = _instance.partyYardDelta;
    return local$partyYardDelta == null
        ? CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta(
            local$partyYardDelta, (e) => call(partyYardDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> get collected {
    final local$collected = _instance.collected;
    return local$collected == null
        ? CopyWith$Query$getGplPublicationDetails$nfe$collected.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$nfe$collected(
            local$collected, (e) => call(collected: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> get delivered {
    final local$delivered = _instance.delivered;
    return local$delivered == null
        ? CopyWith$Query$getGplPublicationDetails$nfe$delivered.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$nfe$delivered(
            local$delivered, (e) => call(delivered: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe(this._res);

  TRes _res;

  call({
    int? contractHeaderId,
    String? yardCode,
    String? gradeCode,
    Query$getGplPublicationDetails$nfe$basePrice? basePrice,
    Query$getGplPublicationDetails$nfe$publicationYardDelta?
        publicationYardDelta,
    Query$getGplPublicationDetails$nfe$partyDelta? partyDelta,
    Query$getGplPublicationDetails$nfe$partyYardDelta? partyYardDelta,
    Query$getGplPublicationDetails$nfe$collected? collected,
    Query$getGplPublicationDetails$nfe$delivered? delivered,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> get basePrice =>
      CopyWith$Query$getGplPublicationDetails$nfe$basePrice.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<TRes>
      get publicationYardDelta =>
          CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta.stub(
              _res);

  CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> get partyDelta =>
      CopyWith$Query$getGplPublicationDetails$nfe$partyDelta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes>
      get partyYardDelta =>
          CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> get collected =>
      CopyWith$Query$getGplPublicationDetails$nfe$collected.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> get delivered =>
      CopyWith$Query$getGplPublicationDetails$nfe$delivered.stub(_res);
}

class Query$getGplPublicationDetails$nfe$basePrice {
  Query$getGplPublicationDetails$nfe$basePrice({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$basePrice.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$basePrice(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$basePrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$basePrice
    on Query$getGplPublicationDetails$nfe$basePrice {
  CopyWith$Query$getGplPublicationDetails$nfe$basePrice<
          Query$getGplPublicationDetails$nfe$basePrice>
      get copyWith => CopyWith$Query$getGplPublicationDetails$nfe$basePrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$basePrice(
    Query$getGplPublicationDetails$nfe$basePrice instance,
    TRes Function(Query$getGplPublicationDetails$nfe$basePrice) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$basePrice;

  factory CopyWith$Query$getGplPublicationDetails$nfe$basePrice.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$basePrice;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$basePrice<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$basePrice(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$basePrice _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$basePrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$basePrice(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$basePrice<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$basePrice<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$basePrice(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$publicationYardDelta {
  Query$getGplPublicationDetails$nfe$publicationYardDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$publicationYardDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$publicationYardDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$publicationYardDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$publicationYardDelta
    on Query$getGplPublicationDetails$nfe$publicationYardDelta {
  CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<
          Query$getGplPublicationDetails$nfe$publicationYardDelta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta(
    Query$getGplPublicationDetails$nfe$publicationYardDelta instance,
    TRes Function(Query$getGplPublicationDetails$nfe$publicationYardDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta;

  factory CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$publicationYardDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$publicationYardDelta)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$publicationYardDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$publicationYardDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$publicationYardDelta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$partyDelta {
  Query$getGplPublicationDetails$nfe$partyDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$partyDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$partyDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$partyDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$partyDelta
    on Query$getGplPublicationDetails$nfe$partyDelta {
  CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<
          Query$getGplPublicationDetails$nfe$partyDelta>
      get copyWith => CopyWith$Query$getGplPublicationDetails$nfe$partyDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$partyDelta(
    Query$getGplPublicationDetails$nfe$partyDelta instance,
    TRes Function(Query$getGplPublicationDetails$nfe$partyDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyDelta;

  factory CopyWith$Query$getGplPublicationDetails$nfe$partyDelta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$partyDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$partyDelta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$partyDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$partyDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyDelta(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$partyYardDelta {
  Query$getGplPublicationDetails$nfe$partyYardDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$partyYardDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$partyYardDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$partyYardDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$partyYardDelta
    on Query$getGplPublicationDetails$nfe$partyYardDelta {
  CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<
          Query$getGplPublicationDetails$nfe$partyYardDelta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta(
    Query$getGplPublicationDetails$nfe$partyYardDelta instance,
    TRes Function(Query$getGplPublicationDetails$nfe$partyYardDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyYardDelta;

  factory CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyYardDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$partyYardDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$partyYardDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$partyYardDelta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$partyYardDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$partyYardDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$partyYardDelta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$collected {
  Query$getGplPublicationDetails$nfe$collected({
    required this.delta,
    this.resultant,
    this.$__typename = 'DeliveryMethodPrice',
  });

  factory Query$getGplPublicationDetails$nfe$collected.fromJson(
      Map<String, dynamic> json) {
    final l$delta = json['delta'];
    final l$resultant = json['resultant'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$collected(
      delta: Query$getGplPublicationDetails$nfe$collected$delta.fromJson(
          (l$delta as Map<String, dynamic>)),
      resultant: l$resultant == null
          ? null
          : Query$getGplPublicationDetails$nfe$collected$resultant.fromJson(
              (l$resultant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getGplPublicationDetails$nfe$collected$delta delta;

  final Query$getGplPublicationDetails$nfe$collected$resultant? resultant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delta = delta;
    _resultData['delta'] = l$delta.toJson();
    final l$resultant = resultant;
    _resultData['resultant'] = l$resultant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delta = delta;
    final l$resultant = resultant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delta,
      l$resultant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$collected ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delta = delta;
    final lOther$delta = other.delta;
    if (l$delta != lOther$delta) {
      return false;
    }
    final l$resultant = resultant;
    final lOther$resultant = other.resultant;
    if (l$resultant != lOther$resultant) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$collected
    on Query$getGplPublicationDetails$nfe$collected {
  CopyWith$Query$getGplPublicationDetails$nfe$collected<
          Query$getGplPublicationDetails$nfe$collected>
      get copyWith => CopyWith$Query$getGplPublicationDetails$nfe$collected(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$collected(
    Query$getGplPublicationDetails$nfe$collected instance,
    TRes Function(Query$getGplPublicationDetails$nfe$collected) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected;

  factory CopyWith$Query$getGplPublicationDetails$nfe$collected.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected;

  TRes call({
    Query$getGplPublicationDetails$nfe$collected$delta? delta,
    Query$getGplPublicationDetails$nfe$collected$resultant? resultant,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<TRes> get delta;
  CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<TRes>
      get resultant;
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$collected _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$collected) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delta = _undefined,
    Object? resultant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$collected(
        delta: delta == _undefined || delta == null
            ? _instance.delta
            : (delta as Query$getGplPublicationDetails$nfe$collected$delta),
        resultant: resultant == _undefined
            ? _instance.resultant
            : (resultant
                as Query$getGplPublicationDetails$nfe$collected$resultant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<TRes> get delta {
    final local$delta = _instance.delta;
    return CopyWith$Query$getGplPublicationDetails$nfe$collected$delta(
        local$delta, (e) => call(delta: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<TRes>
      get resultant {
    final local$resultant = _instance.resultant;
    return local$resultant == null
        ? CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant(
            local$resultant, (e) => call(resultant: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$collected<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected(this._res);

  TRes _res;

  call({
    Query$getGplPublicationDetails$nfe$collected$delta? delta,
    Query$getGplPublicationDetails$nfe$collected$resultant? resultant,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<TRes> get delta =>
      CopyWith$Query$getGplPublicationDetails$nfe$collected$delta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<TRes>
      get resultant =>
          CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant.stub(
              _res);
}

class Query$getGplPublicationDetails$nfe$collected$delta {
  Query$getGplPublicationDetails$nfe$collected$delta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$collected$delta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$collected$delta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$collected$delta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$collected$delta
    on Query$getGplPublicationDetails$nfe$collected$delta {
  CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<
          Query$getGplPublicationDetails$nfe$collected$delta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$collected$delta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$collected$delta(
    Query$getGplPublicationDetails$nfe$collected$delta instance,
    TRes Function(Query$getGplPublicationDetails$nfe$collected$delta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$delta;

  factory CopyWith$Query$getGplPublicationDetails$nfe$collected$delta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$delta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$delta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$collected$delta _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$collected$delta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$collected$delta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$collected$delta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$delta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$collected$resultant {
  Query$getGplPublicationDetails$nfe$collected$resultant({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$collected$resultant.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$collected$resultant(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$collected$resultant ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$collected$resultant
    on Query$getGplPublicationDetails$nfe$collected$resultant {
  CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<
          Query$getGplPublicationDetails$nfe$collected$resultant>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant(
    Query$getGplPublicationDetails$nfe$collected$resultant instance,
    TRes Function(Query$getGplPublicationDetails$nfe$collected$resultant) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$resultant;

  factory CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$resultant;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$resultant<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$collected$resultant(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$collected$resultant _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$collected$resultant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$collected$resultant(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$resultant<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$collected$resultant<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$collected$resultant(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$delivered {
  Query$getGplPublicationDetails$nfe$delivered({
    required this.delta,
    this.resultant,
    this.$__typename = 'DeliveryMethodPrice',
  });

  factory Query$getGplPublicationDetails$nfe$delivered.fromJson(
      Map<String, dynamic> json) {
    final l$delta = json['delta'];
    final l$resultant = json['resultant'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$delivered(
      delta: Query$getGplPublicationDetails$nfe$delivered$delta.fromJson(
          (l$delta as Map<String, dynamic>)),
      resultant: l$resultant == null
          ? null
          : Query$getGplPublicationDetails$nfe$delivered$resultant.fromJson(
              (l$resultant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getGplPublicationDetails$nfe$delivered$delta delta;

  final Query$getGplPublicationDetails$nfe$delivered$resultant? resultant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delta = delta;
    _resultData['delta'] = l$delta.toJson();
    final l$resultant = resultant;
    _resultData['resultant'] = l$resultant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delta = delta;
    final l$resultant = resultant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delta,
      l$resultant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$delivered ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delta = delta;
    final lOther$delta = other.delta;
    if (l$delta != lOther$delta) {
      return false;
    }
    final l$resultant = resultant;
    final lOther$resultant = other.resultant;
    if (l$resultant != lOther$resultant) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$delivered
    on Query$getGplPublicationDetails$nfe$delivered {
  CopyWith$Query$getGplPublicationDetails$nfe$delivered<
          Query$getGplPublicationDetails$nfe$delivered>
      get copyWith => CopyWith$Query$getGplPublicationDetails$nfe$delivered(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered(
    Query$getGplPublicationDetails$nfe$delivered instance,
    TRes Function(Query$getGplPublicationDetails$nfe$delivered) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered;

  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered;

  TRes call({
    Query$getGplPublicationDetails$nfe$delivered$delta? delta,
    Query$getGplPublicationDetails$nfe$delivered$resultant? resultant,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<TRes> get delta;
  CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes>
      get resultant;
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$delivered _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$delivered) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delta = _undefined,
    Object? resultant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$delivered(
        delta: delta == _undefined || delta == null
            ? _instance.delta
            : (delta as Query$getGplPublicationDetails$nfe$delivered$delta),
        resultant: resultant == _undefined
            ? _instance.resultant
            : (resultant
                as Query$getGplPublicationDetails$nfe$delivered$resultant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<TRes> get delta {
    final local$delta = _instance.delta;
    return CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta(
        local$delta, (e) => call(delta: e));
  }

  CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes>
      get resultant {
    final local$resultant = _instance.resultant;
    return local$resultant == null
        ? CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant(
            local$resultant, (e) => call(resultant: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered<TRes>
    implements CopyWith$Query$getGplPublicationDetails$nfe$delivered<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered(this._res);

  TRes _res;

  call({
    Query$getGplPublicationDetails$nfe$delivered$delta? delta,
    Query$getGplPublicationDetails$nfe$delivered$resultant? resultant,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<TRes> get delta =>
      CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes>
      get resultant =>
          CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant.stub(
              _res);
}

class Query$getGplPublicationDetails$nfe$delivered$delta {
  Query$getGplPublicationDetails$nfe$delivered$delta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$delivered$delta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$delivered$delta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$delivered$delta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$delivered$delta
    on Query$getGplPublicationDetails$nfe$delivered$delta {
  CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<
          Query$getGplPublicationDetails$nfe$delivered$delta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta(
    Query$getGplPublicationDetails$nfe$delivered$delta instance,
    TRes Function(Query$getGplPublicationDetails$nfe$delivered$delta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$delta;

  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$delta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$delta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$delivered$delta _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$delivered$delta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$delivered$delta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$delivered$delta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$delta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$nfe$delivered$resultant {
  Query$getGplPublicationDetails$nfe$delivered$resultant({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$nfe$delivered$resultant.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$nfe$delivered$resultant(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$nfe$delivered$resultant ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$nfe$delivered$resultant
    on Query$getGplPublicationDetails$nfe$delivered$resultant {
  CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<
          Query$getGplPublicationDetails$nfe$delivered$resultant>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant(
    Query$getGplPublicationDetails$nfe$delivered$resultant instance,
    TRes Function(Query$getGplPublicationDetails$nfe$delivered$resultant) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$resultant;

  factory CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$resultant;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$nfe$delivered$resultant(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$nfe$delivered$resultant _instance;

  final TRes Function(Query$getGplPublicationDetails$nfe$delivered$resultant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$nfe$delivered$resultant(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$resultant<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$nfe$delivered$resultant<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$nfe$delivered$resultant(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe {
  Query$getGplPublicationDetails$fe({
    required this.contractHeaderId,
    required this.yardCode,
    required this.gradeCode,
    required this.basePrice,
    required this.publicationYardDelta,
    required this.partyDelta,
    this.partyYardDelta,
    this.collected,
    this.delivered,
    this.$__typename = 'PriceListBreakdown',
  });

  factory Query$getGplPublicationDetails$fe.fromJson(
      Map<String, dynamic> json) {
    final l$contractHeaderId = json['contractHeaderId'];
    final l$yardCode = json['yardCode'];
    final l$gradeCode = json['gradeCode'];
    final l$basePrice = json['basePrice'];
    final l$publicationYardDelta = json['publicationYardDelta'];
    final l$partyDelta = json['partyDelta'];
    final l$partyYardDelta = json['partyYardDelta'];
    final l$collected = json['collected'];
    final l$delivered = json['delivered'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe(
      contractHeaderId: (l$contractHeaderId as int),
      yardCode: (l$yardCode as String),
      gradeCode: (l$gradeCode as String),
      basePrice: Query$getGplPublicationDetails$fe$basePrice.fromJson(
          (l$basePrice as Map<String, dynamic>)),
      publicationYardDelta:
          Query$getGplPublicationDetails$fe$publicationYardDelta.fromJson(
              (l$publicationYardDelta as Map<String, dynamic>)),
      partyDelta: Query$getGplPublicationDetails$fe$partyDelta.fromJson(
          (l$partyDelta as Map<String, dynamic>)),
      partyYardDelta: l$partyYardDelta == null
          ? null
          : Query$getGplPublicationDetails$fe$partyYardDelta.fromJson(
              (l$partyYardDelta as Map<String, dynamic>)),
      collected: l$collected == null
          ? null
          : Query$getGplPublicationDetails$fe$collected.fromJson(
              (l$collected as Map<String, dynamic>)),
      delivered: l$delivered == null
          ? null
          : Query$getGplPublicationDetails$fe$delivered.fromJson(
              (l$delivered as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int contractHeaderId;

  final String yardCode;

  final String gradeCode;

  final Query$getGplPublicationDetails$fe$basePrice basePrice;

  final Query$getGplPublicationDetails$fe$publicationYardDelta
      publicationYardDelta;

  final Query$getGplPublicationDetails$fe$partyDelta partyDelta;

  final Query$getGplPublicationDetails$fe$partyYardDelta? partyYardDelta;

  final Query$getGplPublicationDetails$fe$collected? collected;

  final Query$getGplPublicationDetails$fe$delivered? delivered;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contractHeaderId = contractHeaderId;
    _resultData['contractHeaderId'] = l$contractHeaderId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$basePrice = basePrice;
    _resultData['basePrice'] = l$basePrice.toJson();
    final l$publicationYardDelta = publicationYardDelta;
    _resultData['publicationYardDelta'] = l$publicationYardDelta.toJson();
    final l$partyDelta = partyDelta;
    _resultData['partyDelta'] = l$partyDelta.toJson();
    final l$partyYardDelta = partyYardDelta;
    _resultData['partyYardDelta'] = l$partyYardDelta?.toJson();
    final l$collected = collected;
    _resultData['collected'] = l$collected?.toJson();
    final l$delivered = delivered;
    _resultData['delivered'] = l$delivered?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contractHeaderId = contractHeaderId;
    final l$yardCode = yardCode;
    final l$gradeCode = gradeCode;
    final l$basePrice = basePrice;
    final l$publicationYardDelta = publicationYardDelta;
    final l$partyDelta = partyDelta;
    final l$partyYardDelta = partyYardDelta;
    final l$collected = collected;
    final l$delivered = delivered;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contractHeaderId,
      l$yardCode,
      l$gradeCode,
      l$basePrice,
      l$publicationYardDelta,
      l$partyDelta,
      l$partyYardDelta,
      l$collected,
      l$delivered,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contractHeaderId = contractHeaderId;
    final lOther$contractHeaderId = other.contractHeaderId;
    if (l$contractHeaderId != lOther$contractHeaderId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$basePrice = basePrice;
    final lOther$basePrice = other.basePrice;
    if (l$basePrice != lOther$basePrice) {
      return false;
    }
    final l$publicationYardDelta = publicationYardDelta;
    final lOther$publicationYardDelta = other.publicationYardDelta;
    if (l$publicationYardDelta != lOther$publicationYardDelta) {
      return false;
    }
    final l$partyDelta = partyDelta;
    final lOther$partyDelta = other.partyDelta;
    if (l$partyDelta != lOther$partyDelta) {
      return false;
    }
    final l$partyYardDelta = partyYardDelta;
    final lOther$partyYardDelta = other.partyYardDelta;
    if (l$partyYardDelta != lOther$partyYardDelta) {
      return false;
    }
    final l$collected = collected;
    final lOther$collected = other.collected;
    if (l$collected != lOther$collected) {
      return false;
    }
    final l$delivered = delivered;
    final lOther$delivered = other.delivered;
    if (l$delivered != lOther$delivered) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe
    on Query$getGplPublicationDetails$fe {
  CopyWith$Query$getGplPublicationDetails$fe<Query$getGplPublicationDetails$fe>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe(
    Query$getGplPublicationDetails$fe instance,
    TRes Function(Query$getGplPublicationDetails$fe) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe;

  factory CopyWith$Query$getGplPublicationDetails$fe.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe;

  TRes call({
    int? contractHeaderId,
    String? yardCode,
    String? gradeCode,
    Query$getGplPublicationDetails$fe$basePrice? basePrice,
    Query$getGplPublicationDetails$fe$publicationYardDelta?
        publicationYardDelta,
    Query$getGplPublicationDetails$fe$partyDelta? partyDelta,
    Query$getGplPublicationDetails$fe$partyYardDelta? partyYardDelta,
    Query$getGplPublicationDetails$fe$collected? collected,
    Query$getGplPublicationDetails$fe$delivered? delivered,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> get basePrice;
  CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes>
      get publicationYardDelta;
  CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> get partyDelta;
  CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes>
      get partyYardDelta;
  CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> get collected;
  CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> get delivered;
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe _instance;

  final TRes Function(Query$getGplPublicationDetails$fe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contractHeaderId = _undefined,
    Object? yardCode = _undefined,
    Object? gradeCode = _undefined,
    Object? basePrice = _undefined,
    Object? publicationYardDelta = _undefined,
    Object? partyDelta = _undefined,
    Object? partyYardDelta = _undefined,
    Object? collected = _undefined,
    Object? delivered = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe(
        contractHeaderId:
            contractHeaderId == _undefined || contractHeaderId == null
                ? _instance.contractHeaderId
                : (contractHeaderId as int),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        basePrice: basePrice == _undefined || basePrice == null
            ? _instance.basePrice
            : (basePrice as Query$getGplPublicationDetails$fe$basePrice),
        publicationYardDelta:
            publicationYardDelta == _undefined || publicationYardDelta == null
                ? _instance.publicationYardDelta
                : (publicationYardDelta
                    as Query$getGplPublicationDetails$fe$publicationYardDelta),
        partyDelta: partyDelta == _undefined || partyDelta == null
            ? _instance.partyDelta
            : (partyDelta as Query$getGplPublicationDetails$fe$partyDelta),
        partyYardDelta: partyYardDelta == _undefined
            ? _instance.partyYardDelta
            : (partyYardDelta
                as Query$getGplPublicationDetails$fe$partyYardDelta?),
        collected: collected == _undefined
            ? _instance.collected
            : (collected as Query$getGplPublicationDetails$fe$collected?),
        delivered: delivered == _undefined
            ? _instance.delivered
            : (delivered as Query$getGplPublicationDetails$fe$delivered?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> get basePrice {
    final local$basePrice = _instance.basePrice;
    return CopyWith$Query$getGplPublicationDetails$fe$basePrice(
        local$basePrice, (e) => call(basePrice: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes>
      get publicationYardDelta {
    final local$publicationYardDelta = _instance.publicationYardDelta;
    return CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta(
        local$publicationYardDelta, (e) => call(publicationYardDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> get partyDelta {
    final local$partyDelta = _instance.partyDelta;
    return CopyWith$Query$getGplPublicationDetails$fe$partyDelta(
        local$partyDelta, (e) => call(partyDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes>
      get partyYardDelta {
    final local$partyYardDelta = _instance.partyYardDelta;
    return local$partyYardDelta == null
        ? CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta(
            local$partyYardDelta, (e) => call(partyYardDelta: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> get collected {
    final local$collected = _instance.collected;
    return local$collected == null
        ? CopyWith$Query$getGplPublicationDetails$fe$collected.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$fe$collected(
            local$collected, (e) => call(collected: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> get delivered {
    final local$delivered = _instance.delivered;
    return local$delivered == null
        ? CopyWith$Query$getGplPublicationDetails$fe$delivered.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$fe$delivered(
            local$delivered, (e) => call(delivered: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe(this._res);

  TRes _res;

  call({
    int? contractHeaderId,
    String? yardCode,
    String? gradeCode,
    Query$getGplPublicationDetails$fe$basePrice? basePrice,
    Query$getGplPublicationDetails$fe$publicationYardDelta?
        publicationYardDelta,
    Query$getGplPublicationDetails$fe$partyDelta? partyDelta,
    Query$getGplPublicationDetails$fe$partyYardDelta? partyYardDelta,
    Query$getGplPublicationDetails$fe$collected? collected,
    Query$getGplPublicationDetails$fe$delivered? delivered,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> get basePrice =>
      CopyWith$Query$getGplPublicationDetails$fe$basePrice.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes>
      get publicationYardDelta =>
          CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta.stub(
              _res);

  CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> get partyDelta =>
      CopyWith$Query$getGplPublicationDetails$fe$partyDelta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes>
      get partyYardDelta =>
          CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> get collected =>
      CopyWith$Query$getGplPublicationDetails$fe$collected.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> get delivered =>
      CopyWith$Query$getGplPublicationDetails$fe$delivered.stub(_res);
}

class Query$getGplPublicationDetails$fe$basePrice {
  Query$getGplPublicationDetails$fe$basePrice({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$basePrice.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$basePrice(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$basePrice ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$basePrice
    on Query$getGplPublicationDetails$fe$basePrice {
  CopyWith$Query$getGplPublicationDetails$fe$basePrice<
          Query$getGplPublicationDetails$fe$basePrice>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe$basePrice(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$basePrice(
    Query$getGplPublicationDetails$fe$basePrice instance,
    TRes Function(Query$getGplPublicationDetails$fe$basePrice) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$basePrice;

  factory CopyWith$Query$getGplPublicationDetails$fe$basePrice.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$basePrice;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$basePrice<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$basePrice(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$basePrice _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$basePrice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$basePrice(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$basePrice<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$basePrice<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$basePrice(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$publicationYardDelta {
  Query$getGplPublicationDetails$fe$publicationYardDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$publicationYardDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$publicationYardDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$publicationYardDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$publicationYardDelta
    on Query$getGplPublicationDetails$fe$publicationYardDelta {
  CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<
          Query$getGplPublicationDetails$fe$publicationYardDelta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta(
    Query$getGplPublicationDetails$fe$publicationYardDelta instance,
    TRes Function(Query$getGplPublicationDetails$fe$publicationYardDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$publicationYardDelta;

  factory CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$publicationYardDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$publicationYardDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$publicationYardDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$publicationYardDelta)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$publicationYardDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$publicationYardDelta<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$publicationYardDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$publicationYardDelta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$partyDelta {
  Query$getGplPublicationDetails$fe$partyDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$partyDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$partyDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$partyDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$partyDelta
    on Query$getGplPublicationDetails$fe$partyDelta {
  CopyWith$Query$getGplPublicationDetails$fe$partyDelta<
          Query$getGplPublicationDetails$fe$partyDelta>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe$partyDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$partyDelta(
    Query$getGplPublicationDetails$fe$partyDelta instance,
    TRes Function(Query$getGplPublicationDetails$fe$partyDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$partyDelta;

  factory CopyWith$Query$getGplPublicationDetails$fe$partyDelta.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$partyDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$partyDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$partyDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$partyDelta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$partyDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$partyDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyDelta(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$partyYardDelta {
  Query$getGplPublicationDetails$fe$partyYardDelta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$partyYardDelta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$partyYardDelta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$partyYardDelta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$partyYardDelta
    on Query$getGplPublicationDetails$fe$partyYardDelta {
  CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<
          Query$getGplPublicationDetails$fe$partyYardDelta>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta(
    Query$getGplPublicationDetails$fe$partyYardDelta instance,
    TRes Function(Query$getGplPublicationDetails$fe$partyYardDelta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$partyYardDelta;

  factory CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyYardDelta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$partyYardDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$partyYardDelta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$partyYardDelta _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$partyYardDelta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$partyYardDelta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyYardDelta<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$partyYardDelta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$partyYardDelta(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$collected {
  Query$getGplPublicationDetails$fe$collected({
    required this.delta,
    this.resultant,
    this.$__typename = 'DeliveryMethodPrice',
  });

  factory Query$getGplPublicationDetails$fe$collected.fromJson(
      Map<String, dynamic> json) {
    final l$delta = json['delta'];
    final l$resultant = json['resultant'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$collected(
      delta: Query$getGplPublicationDetails$fe$collected$delta.fromJson(
          (l$delta as Map<String, dynamic>)),
      resultant: l$resultant == null
          ? null
          : Query$getGplPublicationDetails$fe$collected$resultant.fromJson(
              (l$resultant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getGplPublicationDetails$fe$collected$delta delta;

  final Query$getGplPublicationDetails$fe$collected$resultant? resultant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delta = delta;
    _resultData['delta'] = l$delta.toJson();
    final l$resultant = resultant;
    _resultData['resultant'] = l$resultant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delta = delta;
    final l$resultant = resultant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delta,
      l$resultant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$collected ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delta = delta;
    final lOther$delta = other.delta;
    if (l$delta != lOther$delta) {
      return false;
    }
    final l$resultant = resultant;
    final lOther$resultant = other.resultant;
    if (l$resultant != lOther$resultant) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$collected
    on Query$getGplPublicationDetails$fe$collected {
  CopyWith$Query$getGplPublicationDetails$fe$collected<
          Query$getGplPublicationDetails$fe$collected>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe$collected(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$collected(
    Query$getGplPublicationDetails$fe$collected instance,
    TRes Function(Query$getGplPublicationDetails$fe$collected) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$collected;

  factory CopyWith$Query$getGplPublicationDetails$fe$collected.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected;

  TRes call({
    Query$getGplPublicationDetails$fe$collected$delta? delta,
    Query$getGplPublicationDetails$fe$collected$resultant? resultant,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$fe$collected$delta<TRes> get delta;
  CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<TRes>
      get resultant;
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$collected<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$collected(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$collected _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$collected) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delta = _undefined,
    Object? resultant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$collected(
        delta: delta == _undefined || delta == null
            ? _instance.delta
            : (delta as Query$getGplPublicationDetails$fe$collected$delta),
        resultant: resultant == _undefined
            ? _instance.resultant
            : (resultant
                as Query$getGplPublicationDetails$fe$collected$resultant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$fe$collected$delta<TRes> get delta {
    final local$delta = _instance.delta;
    return CopyWith$Query$getGplPublicationDetails$fe$collected$delta(
        local$delta, (e) => call(delta: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<TRes>
      get resultant {
    final local$resultant = _instance.resultant;
    return local$resultant == null
        ? CopyWith$Query$getGplPublicationDetails$fe$collected$resultant.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$fe$collected$resultant(
            local$resultant, (e) => call(resultant: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$collected<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected(this._res);

  TRes _res;

  call({
    Query$getGplPublicationDetails$fe$collected$delta? delta,
    Query$getGplPublicationDetails$fe$collected$resultant? resultant,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$fe$collected$delta<TRes> get delta =>
      CopyWith$Query$getGplPublicationDetails$fe$collected$delta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<TRes>
      get resultant =>
          CopyWith$Query$getGplPublicationDetails$fe$collected$resultant.stub(
              _res);
}

class Query$getGplPublicationDetails$fe$collected$delta {
  Query$getGplPublicationDetails$fe$collected$delta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$collected$delta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$collected$delta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$collected$delta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$collected$delta
    on Query$getGplPublicationDetails$fe$collected$delta {
  CopyWith$Query$getGplPublicationDetails$fe$collected$delta<
          Query$getGplPublicationDetails$fe$collected$delta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$fe$collected$delta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$collected$delta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$collected$delta(
    Query$getGplPublicationDetails$fe$collected$delta instance,
    TRes Function(Query$getGplPublicationDetails$fe$collected$delta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$delta;

  factory CopyWith$Query$getGplPublicationDetails$fe$collected$delta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$delta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$collected$delta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$delta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$collected$delta _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$collected$delta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$collected$delta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$collected$delta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$delta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$collected$resultant {
  Query$getGplPublicationDetails$fe$collected$resultant({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$collected$resultant.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$collected$resultant(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$collected$resultant ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$collected$resultant
    on Query$getGplPublicationDetails$fe$collected$resultant {
  CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<
          Query$getGplPublicationDetails$fe$collected$resultant>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$fe$collected$resultant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$collected$resultant(
    Query$getGplPublicationDetails$fe$collected$resultant instance,
    TRes Function(Query$getGplPublicationDetails$fe$collected$resultant) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$resultant;

  factory CopyWith$Query$getGplPublicationDetails$fe$collected$resultant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$resultant;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$resultant<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$collected$resultant(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$collected$resultant _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$collected$resultant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$collected$resultant(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$resultant<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$collected$resultant<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$collected$resultant(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$delivered {
  Query$getGplPublicationDetails$fe$delivered({
    required this.delta,
    this.resultant,
    this.$__typename = 'DeliveryMethodPrice',
  });

  factory Query$getGplPublicationDetails$fe$delivered.fromJson(
      Map<String, dynamic> json) {
    final l$delta = json['delta'];
    final l$resultant = json['resultant'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$delivered(
      delta: Query$getGplPublicationDetails$fe$delivered$delta.fromJson(
          (l$delta as Map<String, dynamic>)),
      resultant: l$resultant == null
          ? null
          : Query$getGplPublicationDetails$fe$delivered$resultant.fromJson(
              (l$resultant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getGplPublicationDetails$fe$delivered$delta delta;

  final Query$getGplPublicationDetails$fe$delivered$resultant? resultant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delta = delta;
    _resultData['delta'] = l$delta.toJson();
    final l$resultant = resultant;
    _resultData['resultant'] = l$resultant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delta = delta;
    final l$resultant = resultant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delta,
      l$resultant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$delivered ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delta = delta;
    final lOther$delta = other.delta;
    if (l$delta != lOther$delta) {
      return false;
    }
    final l$resultant = resultant;
    final lOther$resultant = other.resultant;
    if (l$resultant != lOther$resultant) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$delivered
    on Query$getGplPublicationDetails$fe$delivered {
  CopyWith$Query$getGplPublicationDetails$fe$delivered<
          Query$getGplPublicationDetails$fe$delivered>
      get copyWith => CopyWith$Query$getGplPublicationDetails$fe$delivered(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$delivered(
    Query$getGplPublicationDetails$fe$delivered instance,
    TRes Function(Query$getGplPublicationDetails$fe$delivered) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered;

  factory CopyWith$Query$getGplPublicationDetails$fe$delivered.stub(TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered;

  TRes call({
    Query$getGplPublicationDetails$fe$delivered$delta? delta,
    Query$getGplPublicationDetails$fe$delivered$resultant? resultant,
    String? $__typename,
  });
  CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<TRes> get delta;
  CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<TRes>
      get resultant;
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$delivered _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$delivered) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delta = _undefined,
    Object? resultant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$delivered(
        delta: delta == _undefined || delta == null
            ? _instance.delta
            : (delta as Query$getGplPublicationDetails$fe$delivered$delta),
        resultant: resultant == _undefined
            ? _instance.resultant
            : (resultant
                as Query$getGplPublicationDetails$fe$delivered$resultant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<TRes> get delta {
    final local$delta = _instance.delta;
    return CopyWith$Query$getGplPublicationDetails$fe$delivered$delta(
        local$delta, (e) => call(delta: e));
  }

  CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<TRes>
      get resultant {
    final local$resultant = _instance.resultant;
    return local$resultant == null
        ? CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant.stub(
            _then(_instance))
        : CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant(
            local$resultant, (e) => call(resultant: e));
  }
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered<TRes>
    implements CopyWith$Query$getGplPublicationDetails$fe$delivered<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered(this._res);

  TRes _res;

  call({
    Query$getGplPublicationDetails$fe$delivered$delta? delta,
    Query$getGplPublicationDetails$fe$delivered$resultant? resultant,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<TRes> get delta =>
      CopyWith$Query$getGplPublicationDetails$fe$delivered$delta.stub(_res);

  CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<TRes>
      get resultant =>
          CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant.stub(
              _res);
}

class Query$getGplPublicationDetails$fe$delivered$delta {
  Query$getGplPublicationDetails$fe$delivered$delta({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$delivered$delta.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$delivered$delta(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$delivered$delta ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$delivered$delta
    on Query$getGplPublicationDetails$fe$delivered$delta {
  CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<
          Query$getGplPublicationDetails$fe$delivered$delta>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$fe$delivered$delta(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$delivered$delta(
    Query$getGplPublicationDetails$fe$delivered$delta instance,
    TRes Function(Query$getGplPublicationDetails$fe$delivered$delta) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$delta;

  factory CopyWith$Query$getGplPublicationDetails$fe$delivered$delta.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$delta;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$delta(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$delivered$delta _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$delivered$delta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$delivered$delta(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$delta<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$delivered$delta<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$delta(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$getGplPublicationDetails$fe$delivered$resultant {
  Query$getGplPublicationDetails$fe$delivered$resultant({
    required this.uom,
    required this.value,
    this.$__typename = 'UomValue',
  });

  factory Query$getGplPublicationDetails$fe$delivered$resultant.fromJson(
      Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$getGplPublicationDetails$fe$delivered$resultant(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getGplPublicationDetails$fe$delivered$resultant ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Query$getGplPublicationDetails$fe$delivered$resultant
    on Query$getGplPublicationDetails$fe$delivered$resultant {
  CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<
          Query$getGplPublicationDetails$fe$delivered$resultant>
      get copyWith =>
          CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<
    TRes> {
  factory CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant(
    Query$getGplPublicationDetails$fe$delivered$resultant instance,
    TRes Function(Query$getGplPublicationDetails$fe$delivered$resultant) then,
  ) = _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$resultant;

  factory CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$resultant;

  TRes call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$resultant<TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<TRes> {
  _CopyWithImpl$Query$getGplPublicationDetails$fe$delivered$resultant(
    this._instance,
    this._then,
  );

  final Query$getGplPublicationDetails$fe$delivered$resultant _instance;

  final TRes Function(Query$getGplPublicationDetails$fe$delivered$resultant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getGplPublicationDetails$fe$delivered$resultant(
        uom: uom == _undefined || uom == null
            ? _instance.uom
            : (uom as Enum$Uom),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$resultant<
        TRes>
    implements
        CopyWith$Query$getGplPublicationDetails$fe$delivered$resultant<TRes> {
  _CopyWithStubImpl$Query$getGplPublicationDetails$fe$delivered$resultant(
      this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    String? $__typename,
  }) =>
      _res;
}
