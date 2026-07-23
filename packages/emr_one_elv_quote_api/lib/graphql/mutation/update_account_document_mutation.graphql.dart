import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountDocument {
  factory Variables$Mutation$UpdateAccountDocument(
          {required Input$AccountDocumentUploadRequestInput input}) =>
      Variables$Mutation$UpdateAccountDocument._({
        r'input': input,
      });

  Variables$Mutation$UpdateAccountDocument._(this._$data);

  factory Variables$Mutation$UpdateAccountDocument.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AccountDocumentUploadRequestInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateAccountDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountDocumentUploadRequestInput get input =>
      (_$data['input'] as Input$AccountDocumentUploadRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountDocument<
          Variables$Mutation$UpdateAccountDocument>
      get copyWith => CopyWith$Variables$Mutation$UpdateAccountDocument(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountDocument ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountDocument<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountDocument(
    Variables$Mutation$UpdateAccountDocument instance,
    TRes Function(Variables$Mutation$UpdateAccountDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountDocument;

  factory CopyWith$Variables$Mutation$UpdateAccountDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountDocument;

  TRes call({Input$AccountDocumentUploadRequestInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountDocument<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountDocument(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountDocument _instance;

  final TRes Function(Variables$Mutation$UpdateAccountDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateAccountDocument._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AccountDocumentUploadRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountDocument<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountDocument(this._res);

  TRes _res;

  call({Input$AccountDocumentUploadRequestInput? input}) => _res;
}

class Mutation$UpdateAccountDocument {
  Mutation$UpdateAccountDocument({
    required this.updateAccountDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountDocument.fromJson(Map<String, dynamic> json) {
    final l$updateAccountDocument = json['updateAccountDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountDocument(
      updateAccountDocument: (l$updateAccountDocument as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateAccountDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountDocument = updateAccountDocument;
    _resultData['updateAccountDocument'] = l$updateAccountDocument;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountDocument = updateAccountDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAccountDocument,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountDocument = updateAccountDocument;
    final lOther$updateAccountDocument = other.updateAccountDocument;
    if (l$updateAccountDocument != lOther$updateAccountDocument) {
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

extension UtilityExtension$Mutation$UpdateAccountDocument
    on Mutation$UpdateAccountDocument {
  CopyWith$Mutation$UpdateAccountDocument<Mutation$UpdateAccountDocument>
      get copyWith => CopyWith$Mutation$UpdateAccountDocument(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAccountDocument<TRes> {
  factory CopyWith$Mutation$UpdateAccountDocument(
    Mutation$UpdateAccountDocument instance,
    TRes Function(Mutation$UpdateAccountDocument) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountDocument;

  factory CopyWith$Mutation$UpdateAccountDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountDocument;

  TRes call({
    bool? updateAccountDocument,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountDocument<TRes>
    implements CopyWith$Mutation$UpdateAccountDocument<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountDocument(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountDocument _instance;

  final TRes Function(Mutation$UpdateAccountDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountDocument = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAccountDocument(
        updateAccountDocument:
            updateAccountDocument == _undefined || updateAccountDocument == null
                ? _instance.updateAccountDocument
                : (updateAccountDocument as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAccountDocument<TRes>
    implements CopyWith$Mutation$UpdateAccountDocument<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountDocument(this._res);

  TRes _res;

  call({
    bool? updateAccountDocument,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateAccountDocument = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAccountDocument'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AccountDocumentUploadRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAccountDocument'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
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
    ]),
  ),
]);
