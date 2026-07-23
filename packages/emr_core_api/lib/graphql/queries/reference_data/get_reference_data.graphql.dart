import 'package:gql/ast.dart';

class Variables$Query$GetReferenceData {
  factory Variables$Query$GetReferenceData({required String name}) =>
      Variables$Query$GetReferenceData._({r'name': name});

  Variables$Query$GetReferenceData._(this._$data);

  factory Variables$Query$GetReferenceData.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$GetReferenceData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$GetReferenceData<Variables$Query$GetReferenceData>
  get copyWith => CopyWith$Variables$Query$GetReferenceData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetReferenceData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Variables$Query$GetReferenceData<TRes> {
  factory CopyWith$Variables$Query$GetReferenceData(
    Variables$Query$GetReferenceData instance,
    TRes Function(Variables$Query$GetReferenceData) then,
  ) = _CopyWithImpl$Variables$Query$GetReferenceData;

  factory CopyWith$Variables$Query$GetReferenceData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetReferenceData;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$GetReferenceData<TRes>
    implements CopyWith$Variables$Query$GetReferenceData<TRes> {
  _CopyWithImpl$Variables$Query$GetReferenceData(this._instance, this._then);

  final Variables$Query$GetReferenceData _instance;

  final TRes Function(Variables$Query$GetReferenceData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Variables$Query$GetReferenceData._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetReferenceData<TRes>
    implements CopyWith$Variables$Query$GetReferenceData<TRes> {
  _CopyWithStubImpl$Variables$Query$GetReferenceData(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$GetReferenceData {
  Query$GetReferenceData({this.referenceData, this.$__typename = 'Query'});

  factory Query$GetReferenceData.fromJson(Map<String, dynamic> json) {
    final l$referenceData = json['referenceData'];
    final l$$__typename = json['__typename'];
    return Query$GetReferenceData(
      referenceData: (l$referenceData as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final Map<String, dynamic>? referenceData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$referenceData = referenceData;
    _resultData['referenceData'] = l$referenceData;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$referenceData = referenceData;
    final l$$__typename = $__typename;
    return Object.hashAll([l$referenceData, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetReferenceData || runtimeType != other.runtimeType) {
      return false;
    }
    final l$referenceData = referenceData;
    final lOther$referenceData = other.referenceData;
    if (l$referenceData != lOther$referenceData) {
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

extension UtilityExtension$Query$GetReferenceData on Query$GetReferenceData {
  CopyWith$Query$GetReferenceData<Query$GetReferenceData> get copyWith =>
      CopyWith$Query$GetReferenceData(this, (i) => i);
}

abstract class CopyWith$Query$GetReferenceData<TRes> {
  factory CopyWith$Query$GetReferenceData(
    Query$GetReferenceData instance,
    TRes Function(Query$GetReferenceData) then,
  ) = _CopyWithImpl$Query$GetReferenceData;

  factory CopyWith$Query$GetReferenceData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReferenceData;

  TRes call({Map<String, dynamic>? referenceData, String? $__typename});
}

class _CopyWithImpl$Query$GetReferenceData<TRes>
    implements CopyWith$Query$GetReferenceData<TRes> {
  _CopyWithImpl$Query$GetReferenceData(this._instance, this._then);

  final Query$GetReferenceData _instance;

  final TRes Function(Query$GetReferenceData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? referenceData = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetReferenceData(
      referenceData: referenceData == _undefined
          ? _instance.referenceData
          : (referenceData as Map<String, dynamic>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetReferenceData<TRes>
    implements CopyWith$Query$GetReferenceData<TRes> {
  _CopyWithStubImpl$Query$GetReferenceData(this._res);

  TRes _res;

  call({Map<String, dynamic>? referenceData, String? $__typename}) => _res;
}

const documentNodeQueryGetReferenceData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetReferenceData'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'referenceData'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'name'),
                value: VariableNode(name: NameNode(value: 'name')),
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
