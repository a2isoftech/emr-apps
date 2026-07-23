import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$SaveCompanyPreferences {
  factory Variables$Mutation$SaveCompanyPreferences(
          {required Input$CreateEditCompanyPreferenceInput
              companyPreference}) =>
      Variables$Mutation$SaveCompanyPreferences._({
        r'companyPreference': companyPreference,
      });

  Variables$Mutation$SaveCompanyPreferences._(this._$data);

  factory Variables$Mutation$SaveCompanyPreferences.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$companyPreference = data['companyPreference'];
    result$data['companyPreference'] =
        Input$CreateEditCompanyPreferenceInput.fromJson(
            (l$companyPreference as Map<String, dynamic>));
    return Variables$Mutation$SaveCompanyPreferences._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEditCompanyPreferenceInput get companyPreference =>
      (_$data['companyPreference'] as Input$CreateEditCompanyPreferenceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$companyPreference = companyPreference;
    result$data['companyPreference'] = l$companyPreference.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveCompanyPreferences<
          Variables$Mutation$SaveCompanyPreferences>
      get copyWith => CopyWith$Variables$Mutation$SaveCompanyPreferences(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveCompanyPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyPreference = companyPreference;
    final lOther$companyPreference = other.companyPreference;
    if (l$companyPreference != lOther$companyPreference) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$companyPreference = companyPreference;
    return Object.hashAll([l$companyPreference]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveCompanyPreferences<TRes> {
  factory CopyWith$Variables$Mutation$SaveCompanyPreferences(
    Variables$Mutation$SaveCompanyPreferences instance,
    TRes Function(Variables$Mutation$SaveCompanyPreferences) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveCompanyPreferences;

  factory CopyWith$Variables$Mutation$SaveCompanyPreferences.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveCompanyPreferences;

  TRes call({Input$CreateEditCompanyPreferenceInput? companyPreference});
}

class _CopyWithImpl$Variables$Mutation$SaveCompanyPreferences<TRes>
    implements CopyWith$Variables$Mutation$SaveCompanyPreferences<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveCompanyPreferences(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveCompanyPreferences _instance;

  final TRes Function(Variables$Mutation$SaveCompanyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? companyPreference = _undefined}) =>
      _then(Variables$Mutation$SaveCompanyPreferences._({
        ..._instance._$data,
        if (companyPreference != _undefined && companyPreference != null)
          'companyPreference':
              (companyPreference as Input$CreateEditCompanyPreferenceInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveCompanyPreferences<TRes>
    implements CopyWith$Variables$Mutation$SaveCompanyPreferences<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveCompanyPreferences(this._res);

  TRes _res;

  call({Input$CreateEditCompanyPreferenceInput? companyPreference}) => _res;
}

class Mutation$SaveCompanyPreferences {
  Mutation$SaveCompanyPreferences({
    required this.saveCompanyPreferences,
    this.$__typename = 'FormsMutations',
  });

  factory Mutation$SaveCompanyPreferences.fromJson(Map<String, dynamic> json) {
    final l$saveCompanyPreferences = json['saveCompanyPreferences'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveCompanyPreferences(
      saveCompanyPreferences:
          Mutation$SaveCompanyPreferences$saveCompanyPreferences.fromJson(
              (l$saveCompanyPreferences as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveCompanyPreferences$saveCompanyPreferences
      saveCompanyPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saveCompanyPreferences = saveCompanyPreferences;
    _resultData['saveCompanyPreferences'] = l$saveCompanyPreferences.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saveCompanyPreferences = saveCompanyPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saveCompanyPreferences,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveCompanyPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saveCompanyPreferences = saveCompanyPreferences;
    final lOther$saveCompanyPreferences = other.saveCompanyPreferences;
    if (l$saveCompanyPreferences != lOther$saveCompanyPreferences) {
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

extension UtilityExtension$Mutation$SaveCompanyPreferences
    on Mutation$SaveCompanyPreferences {
  CopyWith$Mutation$SaveCompanyPreferences<Mutation$SaveCompanyPreferences>
      get copyWith => CopyWith$Mutation$SaveCompanyPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveCompanyPreferences<TRes> {
  factory CopyWith$Mutation$SaveCompanyPreferences(
    Mutation$SaveCompanyPreferences instance,
    TRes Function(Mutation$SaveCompanyPreferences) then,
  ) = _CopyWithImpl$Mutation$SaveCompanyPreferences;

  factory CopyWith$Mutation$SaveCompanyPreferences.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveCompanyPreferences;

  TRes call({
    Mutation$SaveCompanyPreferences$saveCompanyPreferences?
        saveCompanyPreferences,
    String? $__typename,
  });
  CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes>
      get saveCompanyPreferences;
}

class _CopyWithImpl$Mutation$SaveCompanyPreferences<TRes>
    implements CopyWith$Mutation$SaveCompanyPreferences<TRes> {
  _CopyWithImpl$Mutation$SaveCompanyPreferences(
    this._instance,
    this._then,
  );

  final Mutation$SaveCompanyPreferences _instance;

  final TRes Function(Mutation$SaveCompanyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? saveCompanyPreferences = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveCompanyPreferences(
        saveCompanyPreferences: saveCompanyPreferences == _undefined ||
                saveCompanyPreferences == null
            ? _instance.saveCompanyPreferences
            : (saveCompanyPreferences
                as Mutation$SaveCompanyPreferences$saveCompanyPreferences),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes>
      get saveCompanyPreferences {
    final local$saveCompanyPreferences = _instance.saveCompanyPreferences;
    return CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences(
        local$saveCompanyPreferences, (e) => call(saveCompanyPreferences: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveCompanyPreferences<TRes>
    implements CopyWith$Mutation$SaveCompanyPreferences<TRes> {
  _CopyWithStubImpl$Mutation$SaveCompanyPreferences(this._res);

  TRes _res;

  call({
    Mutation$SaveCompanyPreferences$saveCompanyPreferences?
        saveCompanyPreferences,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes>
      get saveCompanyPreferences =>
          CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences.stub(
              _res);
}

const documentNodeMutationSaveCompanyPreferences = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveCompanyPreferences'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'companyPreference')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateEditCompanyPreferenceInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saveCompanyPreferences'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'companyPreference'),
            value: VariableNode(name: NameNode(value: 'companyPreference')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
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
]);

class Mutation$SaveCompanyPreferences$saveCompanyPreferences {
  Mutation$SaveCompanyPreferences$saveCompanyPreferences({
    this.message,
    this.$__typename = 'APIResult',
  });

  factory Mutation$SaveCompanyPreferences$saveCompanyPreferences.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveCompanyPreferences$saveCompanyPreferences(
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveCompanyPreferences$saveCompanyPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$SaveCompanyPreferences$saveCompanyPreferences
    on Mutation$SaveCompanyPreferences$saveCompanyPreferences {
  CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<
          Mutation$SaveCompanyPreferences$saveCompanyPreferences>
      get copyWith =>
          CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<
    TRes> {
  factory CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences(
    Mutation$SaveCompanyPreferences$saveCompanyPreferences instance,
    TRes Function(Mutation$SaveCompanyPreferences$saveCompanyPreferences) then,
  ) = _CopyWithImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences;

  factory CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes>
    implements
        CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes> {
  _CopyWithImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences(
    this._instance,
    this._then,
  );

  final Mutation$SaveCompanyPreferences$saveCompanyPreferences _instance;

  final TRes Function(Mutation$SaveCompanyPreferences$saveCompanyPreferences)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveCompanyPreferences$saveCompanyPreferences(
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences<
        TRes>
    implements
        CopyWith$Mutation$SaveCompanyPreferences$saveCompanyPreferences<TRes> {
  _CopyWithStubImpl$Mutation$SaveCompanyPreferences$saveCompanyPreferences(
      this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
