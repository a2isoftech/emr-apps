import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpsertTicketInspectionDetails {
  factory Variables$Mutation$UpsertTicketInspectionDetails({
    required Input$TicketInspectionInput input,
  }) => Variables$Mutation$UpsertTicketInspectionDetails._({r'input': input});

  Variables$Mutation$UpsertTicketInspectionDetails._(this._$data);

  factory Variables$Mutation$UpsertTicketInspectionDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$TicketInspectionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpsertTicketInspectionDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TicketInspectionInput get input =>
      (_$data['input'] as Input$TicketInspectionInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpsertTicketInspectionDetails<
    Variables$Mutation$UpsertTicketInspectionDetails
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpsertTicketInspectionDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpsertTicketInspectionDetails ||
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

abstract class CopyWith$Variables$Mutation$UpsertTicketInspectionDetails<TRes> {
  factory CopyWith$Variables$Mutation$UpsertTicketInspectionDetails(
    Variables$Mutation$UpsertTicketInspectionDetails instance,
    TRes Function(Variables$Mutation$UpsertTicketInspectionDetails) then,
  ) = _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionDetails;

  factory CopyWith$Variables$Mutation$UpsertTicketInspectionDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionDetails;

  TRes call({Input$TicketInspectionInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionDetails<TRes>
    implements CopyWith$Variables$Mutation$UpsertTicketInspectionDetails<TRes> {
  _CopyWithImpl$Variables$Mutation$UpsertTicketInspectionDetails(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpsertTicketInspectionDetails _instance;

  final TRes Function(Variables$Mutation$UpsertTicketInspectionDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpsertTicketInspectionDetails._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$TicketInspectionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionDetails<TRes>
    implements CopyWith$Variables$Mutation$UpsertTicketInspectionDetails<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpsertTicketInspectionDetails(this._res);

  TRes _res;

  call({Input$TicketInspectionInput? input}) => _res;
}

class Mutation$UpsertTicketInspectionDetails {
  Mutation$UpsertTicketInspectionDetails({
    required this.upsertTicketInspection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpsertTicketInspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$upsertTicketInspection = json['upsertTicketInspection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertTicketInspectionDetails(
      upsertTicketInspection:
          Mutation$UpsertTicketInspectionDetails$upsertTicketInspection.fromJson(
            (l$upsertTicketInspection as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpsertTicketInspectionDetails$upsertTicketInspection
  upsertTicketInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$upsertTicketInspection = upsertTicketInspection;
    _resultData['upsertTicketInspection'] = l$upsertTicketInspection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$upsertTicketInspection = upsertTicketInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([l$upsertTicketInspection, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpsertTicketInspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$upsertTicketInspection = upsertTicketInspection;
    final lOther$upsertTicketInspection = other.upsertTicketInspection;
    if (l$upsertTicketInspection != lOther$upsertTicketInspection) {
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

extension UtilityExtension$Mutation$UpsertTicketInspectionDetails
    on Mutation$UpsertTicketInspectionDetails {
  CopyWith$Mutation$UpsertTicketInspectionDetails<
    Mutation$UpsertTicketInspectionDetails
  >
  get copyWith =>
      CopyWith$Mutation$UpsertTicketInspectionDetails(this, (i) => i);
}

abstract class CopyWith$Mutation$UpsertTicketInspectionDetails<TRes> {
  factory CopyWith$Mutation$UpsertTicketInspectionDetails(
    Mutation$UpsertTicketInspectionDetails instance,
    TRes Function(Mutation$UpsertTicketInspectionDetails) then,
  ) = _CopyWithImpl$Mutation$UpsertTicketInspectionDetails;

  factory CopyWith$Mutation$UpsertTicketInspectionDetails.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails;

  TRes call({
    Mutation$UpsertTicketInspectionDetails$upsertTicketInspection?
    upsertTicketInspection,
    String? $__typename,
  });
  CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<TRes>
  get upsertTicketInspection;
}

class _CopyWithImpl$Mutation$UpsertTicketInspectionDetails<TRes>
    implements CopyWith$Mutation$UpsertTicketInspectionDetails<TRes> {
  _CopyWithImpl$Mutation$UpsertTicketInspectionDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpsertTicketInspectionDetails _instance;

  final TRes Function(Mutation$UpsertTicketInspectionDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? upsertTicketInspection = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpsertTicketInspectionDetails(
      upsertTicketInspection:
          upsertTicketInspection == _undefined || upsertTicketInspection == null
          ? _instance.upsertTicketInspection
          : (upsertTicketInspection
                as Mutation$UpsertTicketInspectionDetails$upsertTicketInspection),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<TRes>
  get upsertTicketInspection {
    final local$upsertTicketInspection = _instance.upsertTicketInspection;
    return CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
      local$upsertTicketInspection,
      (e) => call(upsertTicketInspection: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails<TRes>
    implements CopyWith$Mutation$UpsertTicketInspectionDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails(this._res);

  TRes _res;

  call({
    Mutation$UpsertTicketInspectionDetails$upsertTicketInspection?
    upsertTicketInspection,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<TRes>
  get upsertTicketInspection =>
      CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection.stub(
        _res,
      );
}

const documentNodeMutationUpsertTicketInspectionDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpsertTicketInspectionDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'TicketInspectionInput'),
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
            name: NameNode(value: 'upsertTicketInspection'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'ticketInspectionInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
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

class Mutation$UpsertTicketInspectionDetails$upsertTicketInspection {
  Mutation$UpsertTicketInspectionDetails$upsertTicketInspection({
    required this.id,
    this.$__typename = 'Ticket',
  });

  factory Mutation$UpsertTicketInspectionDetails$upsertTicketInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpsertTicketInspectionDetails$upsertTicketInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection
    on Mutation$UpsertTicketInspectionDetails$upsertTicketInspection {
  CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
    Mutation$UpsertTicketInspectionDetails$upsertTicketInspection
  >
  get copyWith =>
      CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
  TRes
> {
  factory CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
    Mutation$UpsertTicketInspectionDetails$upsertTicketInspection instance,
    TRes Function(Mutation$UpsertTicketInspectionDetails$upsertTicketInspection)
    then,
  ) = _CopyWithImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection;

  factory CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
  TRes
>
    implements
        CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
          TRes
        > {
  _CopyWithImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
    this._instance,
    this._then,
  );

  final Mutation$UpsertTicketInspectionDetails$upsertTicketInspection _instance;

  final TRes Function(
    Mutation$UpsertTicketInspectionDetails$upsertTicketInspection,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
  TRes
>
    implements
        CopyWith$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpsertTicketInspectionDetails$upsertTicketInspection(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
