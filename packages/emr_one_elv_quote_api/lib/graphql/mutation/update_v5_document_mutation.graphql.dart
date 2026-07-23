import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateV5DocumentMutation {
  factory Variables$Mutation$UpdateV5DocumentMutation(
          {required Input$DocumentUploadRequestInput input}) =>
      Variables$Mutation$UpdateV5DocumentMutation._({
        r'input': input,
      });

  Variables$Mutation$UpdateV5DocumentMutation._(this._$data);

  factory Variables$Mutation$UpdateV5DocumentMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DocumentUploadRequestInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateV5DocumentMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DocumentUploadRequestInput get input =>
      (_$data['input'] as Input$DocumentUploadRequestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateV5DocumentMutation<
          Variables$Mutation$UpdateV5DocumentMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateV5DocumentMutation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateV5DocumentMutation ||
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

abstract class CopyWith$Variables$Mutation$UpdateV5DocumentMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateV5DocumentMutation(
    Variables$Mutation$UpdateV5DocumentMutation instance,
    TRes Function(Variables$Mutation$UpdateV5DocumentMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateV5DocumentMutation;

  factory CopyWith$Variables$Mutation$UpdateV5DocumentMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateV5DocumentMutation;

  TRes call({Input$DocumentUploadRequestInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateV5DocumentMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateV5DocumentMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateV5DocumentMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateV5DocumentMutation _instance;

  final TRes Function(Variables$Mutation$UpdateV5DocumentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateV5DocumentMutation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$DocumentUploadRequestInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateV5DocumentMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateV5DocumentMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateV5DocumentMutation(this._res);

  TRes _res;

  call({Input$DocumentUploadRequestInput? input}) => _res;
}

class Mutation$UpdateV5DocumentMutation {
  Mutation$UpdateV5DocumentMutation({
    required this.updateV5Document,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateV5DocumentMutation.fromJson(
      Map<String, dynamic> json) {
    final l$updateV5Document = json['updateV5Document'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateV5DocumentMutation(
      updateV5Document: (l$updateV5Document as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateV5Document;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateV5Document = updateV5Document;
    _resultData['updateV5Document'] = l$updateV5Document;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateV5Document = updateV5Document;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateV5Document,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateV5DocumentMutation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateV5Document = updateV5Document;
    final lOther$updateV5Document = other.updateV5Document;
    if (l$updateV5Document != lOther$updateV5Document) {
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

extension UtilityExtension$Mutation$UpdateV5DocumentMutation
    on Mutation$UpdateV5DocumentMutation {
  CopyWith$Mutation$UpdateV5DocumentMutation<Mutation$UpdateV5DocumentMutation>
      get copyWith => CopyWith$Mutation$UpdateV5DocumentMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateV5DocumentMutation<TRes> {
  factory CopyWith$Mutation$UpdateV5DocumentMutation(
    Mutation$UpdateV5DocumentMutation instance,
    TRes Function(Mutation$UpdateV5DocumentMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateV5DocumentMutation;

  factory CopyWith$Mutation$UpdateV5DocumentMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateV5DocumentMutation;

  TRes call({
    bool? updateV5Document,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateV5DocumentMutation<TRes>
    implements CopyWith$Mutation$UpdateV5DocumentMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateV5DocumentMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateV5DocumentMutation _instance;

  final TRes Function(Mutation$UpdateV5DocumentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateV5Document = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateV5DocumentMutation(
        updateV5Document:
            updateV5Document == _undefined || updateV5Document == null
                ? _instance.updateV5Document
                : (updateV5Document as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateV5DocumentMutation<TRes>
    implements CopyWith$Mutation$UpdateV5DocumentMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateV5DocumentMutation(this._res);

  TRes _res;

  call({
    bool? updateV5Document,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateV5DocumentMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateV5DocumentMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DocumentUploadRequestInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateV5Document'),
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
