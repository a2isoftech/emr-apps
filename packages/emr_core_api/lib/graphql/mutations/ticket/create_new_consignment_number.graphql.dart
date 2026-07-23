import 'package:gql/ast.dart';

class Variables$Mutation$createNewConsignmentNumber {
  factory Variables$Mutation$createNewConsignmentNumber({
    required String partyName,
  }) => Variables$Mutation$createNewConsignmentNumber._({
    r'partyName': partyName,
  });

  Variables$Mutation$createNewConsignmentNumber._(this._$data);

  factory Variables$Mutation$createNewConsignmentNumber.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$partyName = data['partyName'];
    result$data['partyName'] = (l$partyName as String);
    return Variables$Mutation$createNewConsignmentNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyName => (_$data['partyName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyName = partyName;
    result$data['partyName'] = l$partyName;
    return result$data;
  }

  CopyWith$Variables$Mutation$createNewConsignmentNumber<
    Variables$Mutation$createNewConsignmentNumber
  >
  get copyWith =>
      CopyWith$Variables$Mutation$createNewConsignmentNumber(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createNewConsignmentNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyName = partyName;
    return Object.hashAll([l$partyName]);
  }
}

abstract class CopyWith$Variables$Mutation$createNewConsignmentNumber<TRes> {
  factory CopyWith$Variables$Mutation$createNewConsignmentNumber(
    Variables$Mutation$createNewConsignmentNumber instance,
    TRes Function(Variables$Mutation$createNewConsignmentNumber) then,
  ) = _CopyWithImpl$Variables$Mutation$createNewConsignmentNumber;

  factory CopyWith$Variables$Mutation$createNewConsignmentNumber.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNumber;

  TRes call({String? partyName});
}

class _CopyWithImpl$Variables$Mutation$createNewConsignmentNumber<TRes>
    implements CopyWith$Variables$Mutation$createNewConsignmentNumber<TRes> {
  _CopyWithImpl$Variables$Mutation$createNewConsignmentNumber(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createNewConsignmentNumber _instance;

  final TRes Function(Variables$Mutation$createNewConsignmentNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? partyName = _undefined}) => _then(
    Variables$Mutation$createNewConsignmentNumber._({
      ..._instance._$data,
      if (partyName != _undefined && partyName != null)
        'partyName': (partyName as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNumber<TRes>
    implements CopyWith$Variables$Mutation$createNewConsignmentNumber<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createNewConsignmentNumber(this._res);

  TRes _res;

  call({String? partyName}) => _res;
}

class Mutation$createNewConsignmentNumber {
  Mutation$createNewConsignmentNumber({
    required this.createNewConsignmentNumber,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createNewConsignmentNumber.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createNewConsignmentNumber = json['createNewConsignmentNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$createNewConsignmentNumber(
      createNewConsignmentNumber: (l$createNewConsignmentNumber as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String createNewConsignmentNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createNewConsignmentNumber = createNewConsignmentNumber;
    _resultData['createNewConsignmentNumber'] = l$createNewConsignmentNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createNewConsignmentNumber = createNewConsignmentNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createNewConsignmentNumber, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createNewConsignmentNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createNewConsignmentNumber = createNewConsignmentNumber;
    final lOther$createNewConsignmentNumber = other.createNewConsignmentNumber;
    if (l$createNewConsignmentNumber != lOther$createNewConsignmentNumber) {
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

extension UtilityExtension$Mutation$createNewConsignmentNumber
    on Mutation$createNewConsignmentNumber {
  CopyWith$Mutation$createNewConsignmentNumber<
    Mutation$createNewConsignmentNumber
  >
  get copyWith => CopyWith$Mutation$createNewConsignmentNumber(this, (i) => i);
}

abstract class CopyWith$Mutation$createNewConsignmentNumber<TRes> {
  factory CopyWith$Mutation$createNewConsignmentNumber(
    Mutation$createNewConsignmentNumber instance,
    TRes Function(Mutation$createNewConsignmentNumber) then,
  ) = _CopyWithImpl$Mutation$createNewConsignmentNumber;

  factory CopyWith$Mutation$createNewConsignmentNumber.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createNewConsignmentNumber;

  TRes call({String? createNewConsignmentNumber, String? $__typename});
}

class _CopyWithImpl$Mutation$createNewConsignmentNumber<TRes>
    implements CopyWith$Mutation$createNewConsignmentNumber<TRes> {
  _CopyWithImpl$Mutation$createNewConsignmentNumber(this._instance, this._then);

  final Mutation$createNewConsignmentNumber _instance;

  final TRes Function(Mutation$createNewConsignmentNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createNewConsignmentNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$createNewConsignmentNumber(
      createNewConsignmentNumber:
          createNewConsignmentNumber == _undefined ||
              createNewConsignmentNumber == null
          ? _instance.createNewConsignmentNumber
          : (createNewConsignmentNumber as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$createNewConsignmentNumber<TRes>
    implements CopyWith$Mutation$createNewConsignmentNumber<TRes> {
  _CopyWithStubImpl$Mutation$createNewConsignmentNumber(this._res);

  TRes _res;

  call({String? createNewConsignmentNumber, String? $__typename}) => _res;
}

const documentNodeMutationcreateNewConsignmentNumber = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createNewConsignmentNumber'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'partyName')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createNewConsignmentNumber'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'partyName'),
                value: VariableNode(name: NameNode(value: 'partyName')),
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
