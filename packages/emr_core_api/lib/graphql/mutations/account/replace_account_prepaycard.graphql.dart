import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ReplaceCard {
  factory Variables$Mutation$ReplaceCard({
    required Input$ReplacePrepayCardInput input,
  }) => Variables$Mutation$ReplaceCard._({r'input': input});

  Variables$Mutation$ReplaceCard._(this._$data);

  factory Variables$Mutation$ReplaceCard.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ReplacePrepayCardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$ReplaceCard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ReplacePrepayCardInput get input =>
      (_$data['input'] as Input$ReplacePrepayCardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ReplaceCard<Variables$Mutation$ReplaceCard>
  get copyWith => CopyWith$Variables$Mutation$ReplaceCard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ReplaceCard ||
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

abstract class CopyWith$Variables$Mutation$ReplaceCard<TRes> {
  factory CopyWith$Variables$Mutation$ReplaceCard(
    Variables$Mutation$ReplaceCard instance,
    TRes Function(Variables$Mutation$ReplaceCard) then,
  ) = _CopyWithImpl$Variables$Mutation$ReplaceCard;

  factory CopyWith$Variables$Mutation$ReplaceCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ReplaceCard;

  TRes call({Input$ReplacePrepayCardInput? input});
}

class _CopyWithImpl$Variables$Mutation$ReplaceCard<TRes>
    implements CopyWith$Variables$Mutation$ReplaceCard<TRes> {
  _CopyWithImpl$Variables$Mutation$ReplaceCard(this._instance, this._then);

  final Variables$Mutation$ReplaceCard _instance;

  final TRes Function(Variables$Mutation$ReplaceCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$ReplaceCard._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ReplacePrepayCardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ReplaceCard<TRes>
    implements CopyWith$Variables$Mutation$ReplaceCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ReplaceCard(this._res);

  TRes _res;

  call({Input$ReplacePrepayCardInput? input}) => _res;
}

class Mutation$ReplaceCard {
  Mutation$ReplaceCard({
    required this.replacePrepayCard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ReplaceCard.fromJson(Map<String, dynamic> json) {
    final l$replacePrepayCard = json['replacePrepayCard'];
    final l$$__typename = json['__typename'];
    return Mutation$ReplaceCard(
      replacePrepayCard: Mutation$ReplaceCard$replacePrepayCard.fromJson(
        (l$replacePrepayCard as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ReplaceCard$replacePrepayCard replacePrepayCard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$replacePrepayCard = replacePrepayCard;
    _resultData['replacePrepayCard'] = l$replacePrepayCard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$replacePrepayCard = replacePrepayCard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$replacePrepayCard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReplaceCard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$replacePrepayCard = replacePrepayCard;
    final lOther$replacePrepayCard = other.replacePrepayCard;
    if (l$replacePrepayCard != lOther$replacePrepayCard) {
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

extension UtilityExtension$Mutation$ReplaceCard on Mutation$ReplaceCard {
  CopyWith$Mutation$ReplaceCard<Mutation$ReplaceCard> get copyWith =>
      CopyWith$Mutation$ReplaceCard(this, (i) => i);
}

abstract class CopyWith$Mutation$ReplaceCard<TRes> {
  factory CopyWith$Mutation$ReplaceCard(
    Mutation$ReplaceCard instance,
    TRes Function(Mutation$ReplaceCard) then,
  ) = _CopyWithImpl$Mutation$ReplaceCard;

  factory CopyWith$Mutation$ReplaceCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReplaceCard;

  TRes call({
    Mutation$ReplaceCard$replacePrepayCard? replacePrepayCard,
    String? $__typename,
  });
  CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> get replacePrepayCard;
}

class _CopyWithImpl$Mutation$ReplaceCard<TRes>
    implements CopyWith$Mutation$ReplaceCard<TRes> {
  _CopyWithImpl$Mutation$ReplaceCard(this._instance, this._then);

  final Mutation$ReplaceCard _instance;

  final TRes Function(Mutation$ReplaceCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? replacePrepayCard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReplaceCard(
      replacePrepayCard:
          replacePrepayCard == _undefined || replacePrepayCard == null
          ? _instance.replacePrepayCard
          : (replacePrepayCard as Mutation$ReplaceCard$replacePrepayCard),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> get replacePrepayCard {
    final local$replacePrepayCard = _instance.replacePrepayCard;
    return CopyWith$Mutation$ReplaceCard$replacePrepayCard(
      local$replacePrepayCard,
      (e) => call(replacePrepayCard: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ReplaceCard<TRes>
    implements CopyWith$Mutation$ReplaceCard<TRes> {
  _CopyWithStubImpl$Mutation$ReplaceCard(this._res);

  TRes _res;

  call({
    Mutation$ReplaceCard$replacePrepayCard? replacePrepayCard,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> get replacePrepayCard =>
      CopyWith$Mutation$ReplaceCard$replacePrepayCard.stub(_res);
}

const documentNodeMutationReplaceCard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ReplaceCard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ReplacePrepayCardInput'),
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
            name: NameNode(value: 'replacePrepayCard'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'isSuccess'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'result'),
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

class Mutation$ReplaceCard$replacePrepayCard {
  Mutation$ReplaceCard$replacePrepayCard({
    required this.isSuccess,
    required this.result,
    this.$__typename = 'ApiResponseOfBoolean',
  });

  factory Mutation$ReplaceCard$replacePrepayCard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation$ReplaceCard$replacePrepayCard(
      isSuccess: (l$isSuccess as bool),
      result: (l$result as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final bool result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
    final l$result = result;
    _resultData['result'] = l$result;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isSuccess = isSuccess;
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isSuccess, l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReplaceCard$replacePrepayCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isSuccess = isSuccess;
    final lOther$isSuccess = other.isSuccess;
    if (l$isSuccess != lOther$isSuccess) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension$Mutation$ReplaceCard$replacePrepayCard
    on Mutation$ReplaceCard$replacePrepayCard {
  CopyWith$Mutation$ReplaceCard$replacePrepayCard<
    Mutation$ReplaceCard$replacePrepayCard
  >
  get copyWith =>
      CopyWith$Mutation$ReplaceCard$replacePrepayCard(this, (i) => i);
}

abstract class CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> {
  factory CopyWith$Mutation$ReplaceCard$replacePrepayCard(
    Mutation$ReplaceCard$replacePrepayCard instance,
    TRes Function(Mutation$ReplaceCard$replacePrepayCard) then,
  ) = _CopyWithImpl$Mutation$ReplaceCard$replacePrepayCard;

  factory CopyWith$Mutation$ReplaceCard$replacePrepayCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReplaceCard$replacePrepayCard;

  TRes call({bool? isSuccess, bool? result, String? $__typename});
}

class _CopyWithImpl$Mutation$ReplaceCard$replacePrepayCard<TRes>
    implements CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> {
  _CopyWithImpl$Mutation$ReplaceCard$replacePrepayCard(
    this._instance,
    this._then,
  );

  final Mutation$ReplaceCard$replacePrepayCard _instance;

  final TRes Function(Mutation$ReplaceCard$replacePrepayCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReplaceCard$replacePrepayCard(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      result: result == _undefined || result == null
          ? _instance.result
          : (result as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ReplaceCard$replacePrepayCard<TRes>
    implements CopyWith$Mutation$ReplaceCard$replacePrepayCard<TRes> {
  _CopyWithStubImpl$Mutation$ReplaceCard$replacePrepayCard(this._res);

  TRes _res;

  call({bool? isSuccess, bool? result, String? $__typename}) => _res;
}
