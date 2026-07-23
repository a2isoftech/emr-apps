import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreatePartyDocument {
  factory Variables$Mutation$CreatePartyDocument(
          {required Input$CreateOrUpdateDocumentsInput input}) =>
      Variables$Mutation$CreatePartyDocument._({
        r'input': input,
      });

  Variables$Mutation$CreatePartyDocument._(this._$data);

  factory Variables$Mutation$CreatePartyDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateDocumentsInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreatePartyDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateDocumentsInput get input =>
      (_$data['input'] as Input$CreateOrUpdateDocumentsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePartyDocument<
          Variables$Mutation$CreatePartyDocument>
      get copyWith => CopyWith$Variables$Mutation$CreatePartyDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePartyDocument ||
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

abstract class CopyWith$Variables$Mutation$CreatePartyDocument<TRes> {
  factory CopyWith$Variables$Mutation$CreatePartyDocument(
    Variables$Mutation$CreatePartyDocument instance,
    TRes Function(Variables$Mutation$CreatePartyDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePartyDocument;

  factory CopyWith$Variables$Mutation$CreatePartyDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePartyDocument;

  TRes call({Input$CreateOrUpdateDocumentsInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreatePartyDocument<TRes>
    implements CopyWith$Variables$Mutation$CreatePartyDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePartyDocument(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePartyDocument _instance;

  final TRes Function(Variables$Mutation$CreatePartyDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreatePartyDocument._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOrUpdateDocumentsInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePartyDocument<TRes>
    implements CopyWith$Variables$Mutation$CreatePartyDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePartyDocument(this._res);

  TRes _res;

  call({Input$CreateOrUpdateDocumentsInput? input}) => _res;
}

class Mutation$CreatePartyDocument {
  Mutation$CreatePartyDocument({
    this.createOrUpdateDocuments,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePartyDocument.fromJson(Map<String, dynamic> json) {
    final l$createOrUpdateDocuments = json['createOrUpdateDocuments'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePartyDocument(
      createOrUpdateDocuments: l$createOrUpdateDocuments == null
          ? null
          : Mutation$CreatePartyDocument$createOrUpdateDocuments.fromJson(
              (l$createOrUpdateDocuments as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  @Deprecated('This mutation is no longer supported')
  final Mutation$CreatePartyDocument$createOrUpdateDocuments?
      createOrUpdateDocuments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOrUpdateDocuments = createOrUpdateDocuments;
    _resultData['createOrUpdateDocuments'] =
        l$createOrUpdateDocuments?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOrUpdateDocuments = createOrUpdateDocuments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOrUpdateDocuments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePartyDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOrUpdateDocuments = createOrUpdateDocuments;
    final lOther$createOrUpdateDocuments = other.createOrUpdateDocuments;
    if (l$createOrUpdateDocuments != lOther$createOrUpdateDocuments) {
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

extension UtilityExtension$Mutation$CreatePartyDocument
    on Mutation$CreatePartyDocument {
  CopyWith$Mutation$CreatePartyDocument<Mutation$CreatePartyDocument>
      get copyWith => CopyWith$Mutation$CreatePartyDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePartyDocument<TRes> {
  factory CopyWith$Mutation$CreatePartyDocument(
    Mutation$CreatePartyDocument instance,
    TRes Function(Mutation$CreatePartyDocument) then,
  ) = _CopyWithImpl$Mutation$CreatePartyDocument;

  factory CopyWith$Mutation$CreatePartyDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePartyDocument;

  TRes call({
    Mutation$CreatePartyDocument$createOrUpdateDocuments?
        createOrUpdateDocuments,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes>
      get createOrUpdateDocuments;
}

class _CopyWithImpl$Mutation$CreatePartyDocument<TRes>
    implements CopyWith$Mutation$CreatePartyDocument<TRes> {
  _CopyWithImpl$Mutation$CreatePartyDocument(
    this._instance,
    this._then,
  );

  final Mutation$CreatePartyDocument _instance;

  final TRes Function(Mutation$CreatePartyDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOrUpdateDocuments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePartyDocument(
        createOrUpdateDocuments: createOrUpdateDocuments == _undefined
            ? _instance.createOrUpdateDocuments
            : (createOrUpdateDocuments
                as Mutation$CreatePartyDocument$createOrUpdateDocuments?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes>
      get createOrUpdateDocuments {
    final local$createOrUpdateDocuments = _instance.createOrUpdateDocuments;
    return local$createOrUpdateDocuments == null
        ? CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments.stub(
            _then(_instance))
        : CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments(
            local$createOrUpdateDocuments,
            (e) => call(createOrUpdateDocuments: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePartyDocument<TRes>
    implements CopyWith$Mutation$CreatePartyDocument<TRes> {
  _CopyWithStubImpl$Mutation$CreatePartyDocument(this._res);

  TRes _res;

  call({
    Mutation$CreatePartyDocument$createOrUpdateDocuments?
        createOrUpdateDocuments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes>
      get createOrUpdateDocuments =>
          CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments.stub(
              _res);
}

const documentNodeMutationCreatePartyDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePartyDocument'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOrUpdateDocumentsInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOrUpdateDocuments'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createDocumentInput'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'information'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedEntityIds'),
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

class Mutation$CreatePartyDocument$createOrUpdateDocuments {
  Mutation$CreatePartyDocument$createOrUpdateDocuments({
    this.information,
    this.modifiedEntityIds,
    this.$__typename = 'GraphQlCreateOrUpdateEntityOutput',
  });

  factory Mutation$CreatePartyDocument$createOrUpdateDocuments.fromJson(
      Map<String, dynamic> json) {
    final l$information = json['information'];
    final l$modifiedEntityIds = json['modifiedEntityIds'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePartyDocument$createOrUpdateDocuments(
      information: (l$information as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      modifiedEntityIds: (l$modifiedEntityIds as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? information;

  final List<int>? modifiedEntityIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$information = information;
    _resultData['information'] = l$information?.map((e) => e).toList();
    final l$modifiedEntityIds = modifiedEntityIds;
    _resultData['modifiedEntityIds'] =
        l$modifiedEntityIds?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$information = information;
    final l$modifiedEntityIds = modifiedEntityIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$information == null
          ? null
          : Object.hashAll(l$information.map((v) => v)),
      l$modifiedEntityIds == null
          ? null
          : Object.hashAll(l$modifiedEntityIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePartyDocument$createOrUpdateDocuments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$information = information;
    final lOther$information = other.information;
    if (l$information != null && lOther$information != null) {
      if (l$information.length != lOther$information.length) {
        return false;
      }
      for (int i = 0; i < l$information.length; i++) {
        final l$information$entry = l$information[i];
        final lOther$information$entry = lOther$information[i];
        if (l$information$entry != lOther$information$entry) {
          return false;
        }
      }
    } else if (l$information != lOther$information) {
      return false;
    }
    final l$modifiedEntityIds = modifiedEntityIds;
    final lOther$modifiedEntityIds = other.modifiedEntityIds;
    if (l$modifiedEntityIds != null && lOther$modifiedEntityIds != null) {
      if (l$modifiedEntityIds.length != lOther$modifiedEntityIds.length) {
        return false;
      }
      for (int i = 0; i < l$modifiedEntityIds.length; i++) {
        final l$modifiedEntityIds$entry = l$modifiedEntityIds[i];
        final lOther$modifiedEntityIds$entry = lOther$modifiedEntityIds[i];
        if (l$modifiedEntityIds$entry != lOther$modifiedEntityIds$entry) {
          return false;
        }
      }
    } else if (l$modifiedEntityIds != lOther$modifiedEntityIds) {
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

extension UtilityExtension$Mutation$CreatePartyDocument$createOrUpdateDocuments
    on Mutation$CreatePartyDocument$createOrUpdateDocuments {
  CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<
          Mutation$CreatePartyDocument$createOrUpdateDocuments>
      get copyWith =>
          CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<
    TRes> {
  factory CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments(
    Mutation$CreatePartyDocument$createOrUpdateDocuments instance,
    TRes Function(Mutation$CreatePartyDocument$createOrUpdateDocuments) then,
  ) = _CopyWithImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments;

  factory CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments;

  TRes call({
    List<String?>? information,
    List<int>? modifiedEntityIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes>
    implements
        CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes> {
  _CopyWithImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments(
    this._instance,
    this._then,
  );

  final Mutation$CreatePartyDocument$createOrUpdateDocuments _instance;

  final TRes Function(Mutation$CreatePartyDocument$createOrUpdateDocuments)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? information = _undefined,
    Object? modifiedEntityIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePartyDocument$createOrUpdateDocuments(
        information: information == _undefined
            ? _instance.information
            : (information as List<String?>?),
        modifiedEntityIds: modifiedEntityIds == _undefined
            ? _instance.modifiedEntityIds
            : (modifiedEntityIds as List<int>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments<
        TRes>
    implements
        CopyWith$Mutation$CreatePartyDocument$createOrUpdateDocuments<TRes> {
  _CopyWithStubImpl$Mutation$CreatePartyDocument$createOrUpdateDocuments(
      this._res);

  TRes _res;

  call({
    List<String?>? information,
    List<int>? modifiedEntityIds,
    String? $__typename,
  }) =>
      _res;
}
