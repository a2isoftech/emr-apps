import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetLoadOutDetails {
  factory Variables$Query$GetLoadOutDetails({String? id, String? ticketId}) =>
      Variables$Query$GetLoadOutDetails._({
        if (id != null) r'id': id,
        if (ticketId != null) r'ticketId': ticketId,
      });

  Variables$Query$GetLoadOutDetails._(this._$data);

  factory Variables$Query$GetLoadOutDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('ticketId')) {
      final l$ticketId = data['ticketId'];
      result$data['ticketId'] = (l$ticketId as String?);
    }
    return Variables$Query$GetLoadOutDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get ticketId => (_$data['ticketId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('ticketId')) {
      final l$ticketId = ticketId;
      result$data['ticketId'] = l$ticketId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetLoadOutDetails<Variables$Query$GetLoadOutDetails>
  get copyWith => CopyWith$Variables$Query$GetLoadOutDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetLoadOutDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (_$data.containsKey('ticketId') !=
        other._$data.containsKey('ticketId')) {
      return false;
    }
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketId = ticketId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('ticketId') ? l$ticketId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetLoadOutDetails<TRes> {
  factory CopyWith$Variables$Query$GetLoadOutDetails(
    Variables$Query$GetLoadOutDetails instance,
    TRes Function(Variables$Query$GetLoadOutDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetLoadOutDetails;

  factory CopyWith$Variables$Query$GetLoadOutDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetLoadOutDetails;

  TRes call({String? id, String? ticketId});
}

class _CopyWithImpl$Variables$Query$GetLoadOutDetails<TRes>
    implements CopyWith$Variables$Query$GetLoadOutDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetLoadOutDetails(this._instance, this._then);

  final Variables$Query$GetLoadOutDetails _instance;

  final TRes Function(Variables$Query$GetLoadOutDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? ticketId = _undefined}) => _then(
    Variables$Query$GetLoadOutDetails._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as String?),
      if (ticketId != _undefined) 'ticketId': (ticketId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetLoadOutDetails<TRes>
    implements CopyWith$Variables$Query$GetLoadOutDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetLoadOutDetails(this._res);

  TRes _res;

  call({String? id, String? ticketId}) => _res;
}

class Query$GetLoadOutDetails {
  Query$GetLoadOutDetails({this.loadOut, this.$__typename = 'Query'});

  factory Query$GetLoadOutDetails.fromJson(Map<String, dynamic> json) {
    final l$loadOut = json['loadOut'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails(
      loadOut: l$loadOut == null
          ? null
          : Query$GetLoadOutDetails$loadOut.fromJson(
              (l$loadOut as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetLoadOutDetails$loadOut? loadOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loadOut = loadOut;
    _resultData['loadOut'] = l$loadOut?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loadOut = loadOut;
    final l$$__typename = $__typename;
    return Object.hashAll([l$loadOut, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loadOut = loadOut;
    final lOther$loadOut = other.loadOut;
    if (l$loadOut != lOther$loadOut) {
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

extension UtilityExtension$Query$GetLoadOutDetails on Query$GetLoadOutDetails {
  CopyWith$Query$GetLoadOutDetails<Query$GetLoadOutDetails> get copyWith =>
      CopyWith$Query$GetLoadOutDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetLoadOutDetails<TRes> {
  factory CopyWith$Query$GetLoadOutDetails(
    Query$GetLoadOutDetails instance,
    TRes Function(Query$GetLoadOutDetails) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails;

  factory CopyWith$Query$GetLoadOutDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLoadOutDetails;

  TRes call({Query$GetLoadOutDetails$loadOut? loadOut, String? $__typename});
  CopyWith$Query$GetLoadOutDetails$loadOut<TRes> get loadOut;
}

class _CopyWithImpl$Query$GetLoadOutDetails<TRes>
    implements CopyWith$Query$GetLoadOutDetails<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails(this._instance, this._then);

  final Query$GetLoadOutDetails _instance;

  final TRes Function(Query$GetLoadOutDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? loadOut = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetLoadOutDetails(
          loadOut: loadOut == _undefined
              ? _instance.loadOut
              : (loadOut as Query$GetLoadOutDetails$loadOut?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetLoadOutDetails$loadOut<TRes> get loadOut {
    final local$loadOut = _instance.loadOut;
    return local$loadOut == null
        ? CopyWith$Query$GetLoadOutDetails$loadOut.stub(_then(_instance))
        : CopyWith$Query$GetLoadOutDetails$loadOut(
            local$loadOut,
            (e) => call(loadOut: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetLoadOutDetails<TRes>
    implements CopyWith$Query$GetLoadOutDetails<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails(this._res);

  TRes _res;

  call({Query$GetLoadOutDetails$loadOut? loadOut, String? $__typename}) => _res;

  CopyWith$Query$GetLoadOutDetails$loadOut<TRes> get loadOut =>
      CopyWith$Query$GetLoadOutDetails$loadOut.stub(_res);
}

const documentNodeQueryGetLoadOutDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetLoadOutDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ticketId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'loadOut'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'ticketId'),
                value: VariableNode(name: NameNode(value: 'ticketId')),
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
                  name: NameNode(value: 'ticketId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'yardId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'completed'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'containerId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'containerSealDetails'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'sealNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sealType'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'imagePath'),
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
                  name: NameNode(value: 'containerSize'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'ticket'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'ticketNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'account'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'accountNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
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
                FieldNode(
                  name: NameNode(value: 'preConditionQuestions'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'sideIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'backIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'frontIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lockingIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cornerCastingIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'roofIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'floorIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'otherIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'maxPayloadIsSuitable'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'containerAgeIsSuitable'),
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
                  name: NameNode(value: 'postConditionQuestions'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'sideIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'backIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'frontIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lockingIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cornerCastingIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'roofIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'floorIsIntact'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'netWeightUnderPayload'),
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
                  name: NameNode(value: 'containerImages'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'heap'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'empty'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'halfLoadedWithContainerNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullyLoaded'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullyLoadedOneDoorShut'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'fullyLoadedOneDoorShutRadiation',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fullyLoadedBothDoorsShutSeals'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'leftSideQualityCheck'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rightSideQualityCheck'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'additionalImages'),
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

class Query$GetLoadOutDetails$loadOut {
  Query$GetLoadOutDetails$loadOut({
    required this.id,
    this.ticketId,
    required this.active,
    required this.yardId,
    required this.completed,
    this.containerId,
    required this.containerSealDetails,
    this.containerSize,
    this.ticket,
    required this.preConditionQuestions,
    required this.postConditionQuestions,
    required this.containerImages,
    this.$__typename = 'LoadOut',
  });

  factory Query$GetLoadOutDetails$loadOut.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$ticketId = json['ticketId'];
    final l$active = json['active'];
    final l$yardId = json['yardId'];
    final l$completed = json['completed'];
    final l$containerId = json['containerId'];
    final l$containerSealDetails = json['containerSealDetails'];
    final l$containerSize = json['containerSize'];
    final l$ticket = json['ticket'];
    final l$preConditionQuestions = json['preConditionQuestions'];
    final l$postConditionQuestions = json['postConditionQuestions'];
    final l$containerImages = json['containerImages'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut(
      id: (l$id as String),
      ticketId: (l$ticketId as String?),
      active: (l$active as bool),
      yardId: (l$yardId as String),
      completed: (l$completed as bool),
      containerId: (l$containerId as String?),
      containerSealDetails: (l$containerSealDetails as List<dynamic>)
          .map(
            (e) =>
                Query$GetLoadOutDetails$loadOut$containerSealDetails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      containerSize: l$containerSize == null
          ? null
          : fromJson$Enum$ContainerSize((l$containerSize as String)),
      ticket: l$ticket == null
          ? null
          : Query$GetLoadOutDetails$loadOut$ticket.fromJson(
              (l$ticket as Map<String, dynamic>),
            ),
      preConditionQuestions:
          Query$GetLoadOutDetails$loadOut$preConditionQuestions.fromJson(
            (l$preConditionQuestions as Map<String, dynamic>),
          ),
      postConditionQuestions:
          Query$GetLoadOutDetails$loadOut$postConditionQuestions.fromJson(
            (l$postConditionQuestions as Map<String, dynamic>),
          ),
      containerImages: Query$GetLoadOutDetails$loadOut$containerImages.fromJson(
        (l$containerImages as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? ticketId;

  final bool active;

  final String yardId;

  final bool completed;

  final String? containerId;

  final List<Query$GetLoadOutDetails$loadOut$containerSealDetails>
  containerSealDetails;

  final Enum$ContainerSize? containerSize;

  final Query$GetLoadOutDetails$loadOut$ticket? ticket;

  final Query$GetLoadOutDetails$loadOut$preConditionQuestions
  preConditionQuestions;

  final Query$GetLoadOutDetails$loadOut$postConditionQuestions
  postConditionQuestions;

  final Query$GetLoadOutDetails$loadOut$containerImages containerImages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketId = ticketId;
    _resultData['ticketId'] = l$ticketId;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$completed = completed;
    _resultData['completed'] = l$completed;
    final l$containerId = containerId;
    _resultData['containerId'] = l$containerId;
    final l$containerSealDetails = containerSealDetails;
    _resultData['containerSealDetails'] = l$containerSealDetails
        .map((e) => e.toJson())
        .toList();
    final l$containerSize = containerSize;
    _resultData['containerSize'] = l$containerSize == null
        ? null
        : toJson$Enum$ContainerSize(l$containerSize);
    final l$ticket = ticket;
    _resultData['ticket'] = l$ticket?.toJson();
    final l$preConditionQuestions = preConditionQuestions;
    _resultData['preConditionQuestions'] = l$preConditionQuestions.toJson();
    final l$postConditionQuestions = postConditionQuestions;
    _resultData['postConditionQuestions'] = l$postConditionQuestions.toJson();
    final l$containerImages = containerImages;
    _resultData['containerImages'] = l$containerImages.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketId = ticketId;
    final l$active = active;
    final l$yardId = yardId;
    final l$completed = completed;
    final l$containerId = containerId;
    final l$containerSealDetails = containerSealDetails;
    final l$containerSize = containerSize;
    final l$ticket = ticket;
    final l$preConditionQuestions = preConditionQuestions;
    final l$postConditionQuestions = postConditionQuestions;
    final l$containerImages = containerImages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$ticketId,
      l$active,
      l$yardId,
      l$completed,
      l$containerId,
      Object.hashAll(l$containerSealDetails.map((v) => v)),
      l$containerSize,
      l$ticket,
      l$preConditionQuestions,
      l$postConditionQuestions,
      l$containerImages,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$completed = completed;
    final lOther$completed = other.completed;
    if (l$completed != lOther$completed) {
      return false;
    }
    final l$containerId = containerId;
    final lOther$containerId = other.containerId;
    if (l$containerId != lOther$containerId) {
      return false;
    }
    final l$containerSealDetails = containerSealDetails;
    final lOther$containerSealDetails = other.containerSealDetails;
    if (l$containerSealDetails.length != lOther$containerSealDetails.length) {
      return false;
    }
    for (int i = 0; i < l$containerSealDetails.length; i++) {
      final l$containerSealDetails$entry = l$containerSealDetails[i];
      final lOther$containerSealDetails$entry = lOther$containerSealDetails[i];
      if (l$containerSealDetails$entry != lOther$containerSealDetails$entry) {
        return false;
      }
    }
    final l$containerSize = containerSize;
    final lOther$containerSize = other.containerSize;
    if (l$containerSize != lOther$containerSize) {
      return false;
    }
    final l$ticket = ticket;
    final lOther$ticket = other.ticket;
    if (l$ticket != lOther$ticket) {
      return false;
    }
    final l$preConditionQuestions = preConditionQuestions;
    final lOther$preConditionQuestions = other.preConditionQuestions;
    if (l$preConditionQuestions != lOther$preConditionQuestions) {
      return false;
    }
    final l$postConditionQuestions = postConditionQuestions;
    final lOther$postConditionQuestions = other.postConditionQuestions;
    if (l$postConditionQuestions != lOther$postConditionQuestions) {
      return false;
    }
    final l$containerImages = containerImages;
    final lOther$containerImages = other.containerImages;
    if (l$containerImages != lOther$containerImages) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut
    on Query$GetLoadOutDetails$loadOut {
  CopyWith$Query$GetLoadOutDetails$loadOut<Query$GetLoadOutDetails$loadOut>
  get copyWith => CopyWith$Query$GetLoadOutDetails$loadOut(this, (i) => i);
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut<TRes> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut(
    Query$GetLoadOutDetails$loadOut instance,
    TRes Function(Query$GetLoadOutDetails$loadOut) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut;

  factory CopyWith$Query$GetLoadOutDetails$loadOut.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut;

  TRes call({
    String? id,
    String? ticketId,
    bool? active,
    String? yardId,
    bool? completed,
    String? containerId,
    List<Query$GetLoadOutDetails$loadOut$containerSealDetails>?
    containerSealDetails,
    Enum$ContainerSize? containerSize,
    Query$GetLoadOutDetails$loadOut$ticket? ticket,
    Query$GetLoadOutDetails$loadOut$preConditionQuestions?
    preConditionQuestions,
    Query$GetLoadOutDetails$loadOut$postConditionQuestions?
    postConditionQuestions,
    Query$GetLoadOutDetails$loadOut$containerImages? containerImages,
    String? $__typename,
  });
  TRes containerSealDetails(
    Iterable<Query$GetLoadOutDetails$loadOut$containerSealDetails> Function(
      Iterable<
        CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<
          Query$GetLoadOutDetails$loadOut$containerSealDetails
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> get ticket;
  CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes>
  get preConditionQuestions;
  CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes>
  get postConditionQuestions;
  CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes>
  get containerImages;
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut(this._instance, this._then);

  final Query$GetLoadOutDetails$loadOut _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? ticketId = _undefined,
    Object? active = _undefined,
    Object? yardId = _undefined,
    Object? completed = _undefined,
    Object? containerId = _undefined,
    Object? containerSealDetails = _undefined,
    Object? containerSize = _undefined,
    Object? ticket = _undefined,
    Object? preConditionQuestions = _undefined,
    Object? postConditionQuestions = _undefined,
    Object? containerImages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketId: ticketId == _undefined
          ? _instance.ticketId
          : (ticketId as String?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      completed: completed == _undefined || completed == null
          ? _instance.completed
          : (completed as bool),
      containerId: containerId == _undefined
          ? _instance.containerId
          : (containerId as String?),
      containerSealDetails:
          containerSealDetails == _undefined || containerSealDetails == null
          ? _instance.containerSealDetails
          : (containerSealDetails
                as List<Query$GetLoadOutDetails$loadOut$containerSealDetails>),
      containerSize: containerSize == _undefined
          ? _instance.containerSize
          : (containerSize as Enum$ContainerSize?),
      ticket: ticket == _undefined
          ? _instance.ticket
          : (ticket as Query$GetLoadOutDetails$loadOut$ticket?),
      preConditionQuestions:
          preConditionQuestions == _undefined || preConditionQuestions == null
          ? _instance.preConditionQuestions
          : (preConditionQuestions
                as Query$GetLoadOutDetails$loadOut$preConditionQuestions),
      postConditionQuestions:
          postConditionQuestions == _undefined || postConditionQuestions == null
          ? _instance.postConditionQuestions
          : (postConditionQuestions
                as Query$GetLoadOutDetails$loadOut$postConditionQuestions),
      containerImages: containerImages == _undefined || containerImages == null
          ? _instance.containerImages
          : (containerImages
                as Query$GetLoadOutDetails$loadOut$containerImages),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes containerSealDetails(
    Iterable<Query$GetLoadOutDetails$loadOut$containerSealDetails> Function(
      Iterable<
        CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<
          Query$GetLoadOutDetails$loadOut$containerSealDetails
        >
      >,
    )
    _fn,
  ) => call(
    containerSealDetails: _fn(
      _instance.containerSealDetails.map(
        (e) => CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> get ticket {
    final local$ticket = _instance.ticket;
    return local$ticket == null
        ? CopyWith$Query$GetLoadOutDetails$loadOut$ticket.stub(_then(_instance))
        : CopyWith$Query$GetLoadOutDetails$loadOut$ticket(
            local$ticket,
            (e) => call(ticket: e),
          );
  }

  CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes>
  get preConditionQuestions {
    final local$preConditionQuestions = _instance.preConditionQuestions;
    return CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions(
      local$preConditionQuestions,
      (e) => call(preConditionQuestions: e),
    );
  }

  CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes>
  get postConditionQuestions {
    final local$postConditionQuestions = _instance.postConditionQuestions;
    return CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions(
      local$postConditionQuestions,
      (e) => call(postConditionQuestions: e),
    );
  }

  CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes>
  get containerImages {
    final local$containerImages = _instance.containerImages;
    return CopyWith$Query$GetLoadOutDetails$loadOut$containerImages(
      local$containerImages,
      (e) => call(containerImages: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut(this._res);

  TRes _res;

  call({
    String? id,
    String? ticketId,
    bool? active,
    String? yardId,
    bool? completed,
    String? containerId,
    List<Query$GetLoadOutDetails$loadOut$containerSealDetails>?
    containerSealDetails,
    Enum$ContainerSize? containerSize,
    Query$GetLoadOutDetails$loadOut$ticket? ticket,
    Query$GetLoadOutDetails$loadOut$preConditionQuestions?
    preConditionQuestions,
    Query$GetLoadOutDetails$loadOut$postConditionQuestions?
    postConditionQuestions,
    Query$GetLoadOutDetails$loadOut$containerImages? containerImages,
    String? $__typename,
  }) => _res;

  containerSealDetails(_fn) => _res;

  CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> get ticket =>
      CopyWith$Query$GetLoadOutDetails$loadOut$ticket.stub(_res);

  CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes>
  get preConditionQuestions =>
      CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions.stub(_res);

  CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes>
  get postConditionQuestions =>
      CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions.stub(
        _res,
      );

  CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes>
  get containerImages =>
      CopyWith$Query$GetLoadOutDetails$loadOut$containerImages.stub(_res);
}

class Query$GetLoadOutDetails$loadOut$containerSealDetails {
  Query$GetLoadOutDetails$loadOut$containerSealDetails({
    required this.sealNumber,
    required this.sealType,
    this.imagePath,
    this.$__typename = 'ContainerSealDetail',
  });

  factory Query$GetLoadOutDetails$loadOut$containerSealDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sealNumber = json['sealNumber'];
    final l$sealType = json['sealType'];
    final l$imagePath = json['imagePath'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$containerSealDetails(
      sealNumber: (l$sealNumber as String),
      sealType: fromJson$Enum$ContainerSealType((l$sealType as String)),
      imagePath: (l$imagePath as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sealNumber;

  final Enum$ContainerSealType sealType;

  final String? imagePath;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sealNumber = sealNumber;
    _resultData['sealNumber'] = l$sealNumber;
    final l$sealType = sealType;
    _resultData['sealType'] = toJson$Enum$ContainerSealType(l$sealType);
    final l$imagePath = imagePath;
    _resultData['imagePath'] = l$imagePath;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sealNumber = sealNumber;
    final l$sealType = sealType;
    final l$imagePath = imagePath;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sealNumber,
      l$sealType,
      l$imagePath,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$containerSealDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sealNumber = sealNumber;
    final lOther$sealNumber = other.sealNumber;
    if (l$sealNumber != lOther$sealNumber) {
      return false;
    }
    final l$sealType = sealType;
    final lOther$sealType = other.sealType;
    if (l$sealType != lOther$sealType) {
      return false;
    }
    final l$imagePath = imagePath;
    final lOther$imagePath = other.imagePath;
    if (l$imagePath != lOther$imagePath) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$containerSealDetails
    on Query$GetLoadOutDetails$loadOut$containerSealDetails {
  CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<
    Query$GetLoadOutDetails$loadOut$containerSealDetails
  >
  get copyWith => CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<
  TRes
> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails(
    Query$GetLoadOutDetails$loadOut$containerSealDetails instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$containerSealDetails) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails;

  TRes call({
    String? sealNumber,
    Enum$ContainerSealType? sealType,
    String? imagePath,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails<TRes>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$containerSealDetails _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$containerSealDetails)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sealNumber = _undefined,
    Object? sealType = _undefined,
    Object? imagePath = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$containerSealDetails(
      sealNumber: sealNumber == _undefined || sealNumber == null
          ? _instance.sealNumber
          : (sealNumber as String),
      sealType: sealType == _undefined || sealType == null
          ? _instance.sealType
          : (sealType as Enum$ContainerSealType),
      imagePath: imagePath == _undefined
          ? _instance.imagePath
          : (imagePath as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails<
  TRes
>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$containerSealDetails<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerSealDetails(
    this._res,
  );

  TRes _res;

  call({
    String? sealNumber,
    Enum$ContainerSealType? sealType,
    String? imagePath,
    String? $__typename,
  }) => _res;
}

class Query$GetLoadOutDetails$loadOut$ticket {
  Query$GetLoadOutDetails$loadOut$ticket({
    required this.id,
    required this.ticketNumber,
    required this.account,
    this.$__typename = 'Ticket',
  });

  factory Query$GetLoadOutDetails$loadOut$ticket.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$ticketNumber = json['ticketNumber'];
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$ticket(
      id: (l$id as String),
      ticketNumber: (l$ticketNumber as int),
      account: Query$GetLoadOutDetails$loadOut$ticket$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int ticketNumber;

  final Query$GetLoadOutDetails$loadOut$ticket$account account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$ticketNumber = ticketNumber;
    final l$account = account;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$ticketNumber, l$account, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$ticket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$ticket
    on Query$GetLoadOutDetails$loadOut$ticket {
  CopyWith$Query$GetLoadOutDetails$loadOut$ticket<
    Query$GetLoadOutDetails$loadOut$ticket
  >
  get copyWith =>
      CopyWith$Query$GetLoadOutDetails$loadOut$ticket(this, (i) => i);
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$ticket(
    Query$GetLoadOutDetails$loadOut$ticket instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$ticket) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$ticket.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket;

  TRes call({
    String? id,
    int? ticketNumber,
    Query$GetLoadOutDetails$loadOut$ticket$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> get account;
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$ticket _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$ticket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? ticketNumber = _undefined,
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$ticket(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Query$GetLoadOutDetails$loadOut$ticket$account),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account(
      local$account,
      (e) => call(account: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$ticket<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket(this._res);

  TRes _res;

  call({
    String? id,
    int? ticketNumber,
    Query$GetLoadOutDetails$loadOut$ticket$account? account,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> get account =>
      CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account.stub(_res);
}

class Query$GetLoadOutDetails$loadOut$ticket$account {
  Query$GetLoadOutDetails$loadOut$ticket$account({
    required this.accountNumber,
    required this.name,
    this.$__typename = 'TicketAccount',
  });

  factory Query$GetLoadOutDetails$loadOut$ticket$account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$ticket$account(
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accountNumber, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$ticket$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$ticket$account
    on Query$GetLoadOutDetails$loadOut$ticket$account {
  CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<
    Query$GetLoadOutDetails$loadOut$ticket$account
  >
  get copyWith =>
      CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account(this, (i) => i);
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account(
    Query$GetLoadOutDetails$loadOut$ticket$account instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$ticket$account) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket$account;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket$account;

  TRes call({String? accountNumber, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket$account<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$ticket$account(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$ticket$account _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$ticket$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$ticket$account(
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket$account<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$ticket$account<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$ticket$account(this._res);

  TRes _res;

  call({String? accountNumber, String? name, String? $__typename}) => _res;
}

class Query$GetLoadOutDetails$loadOut$preConditionQuestions {
  Query$GetLoadOutDetails$loadOut$preConditionQuestions({
    required this.sideIsIntact,
    required this.backIsIntact,
    required this.frontIsIntact,
    required this.lockingIsIntact,
    required this.cornerCastingIsIntact,
    required this.roofIsIntact,
    required this.floorIsIntact,
    this.otherIsIntact,
    required this.maxPayloadIsSuitable,
    required this.containerAgeIsSuitable,
    this.$__typename = 'PreContainerCondition',
  });

  factory Query$GetLoadOutDetails$loadOut$preConditionQuestions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sideIsIntact = json['sideIsIntact'];
    final l$backIsIntact = json['backIsIntact'];
    final l$frontIsIntact = json['frontIsIntact'];
    final l$lockingIsIntact = json['lockingIsIntact'];
    final l$cornerCastingIsIntact = json['cornerCastingIsIntact'];
    final l$roofIsIntact = json['roofIsIntact'];
    final l$floorIsIntact = json['floorIsIntact'];
    final l$otherIsIntact = json['otherIsIntact'];
    final l$maxPayloadIsSuitable = json['maxPayloadIsSuitable'];
    final l$containerAgeIsSuitable = json['containerAgeIsSuitable'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$preConditionQuestions(
      sideIsIntact: (l$sideIsIntact as bool),
      backIsIntact: (l$backIsIntact as bool),
      frontIsIntact: (l$frontIsIntact as bool),
      lockingIsIntact: (l$lockingIsIntact as bool),
      cornerCastingIsIntact: (l$cornerCastingIsIntact as bool),
      roofIsIntact: (l$roofIsIntact as bool),
      floorIsIntact: (l$floorIsIntact as bool),
      otherIsIntact: (l$otherIsIntact as String?),
      maxPayloadIsSuitable: (l$maxPayloadIsSuitable as bool),
      containerAgeIsSuitable: (l$containerAgeIsSuitable as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool sideIsIntact;

  final bool backIsIntact;

  final bool frontIsIntact;

  final bool lockingIsIntact;

  final bool cornerCastingIsIntact;

  final bool roofIsIntact;

  final bool floorIsIntact;

  final String? otherIsIntact;

  final bool maxPayloadIsSuitable;

  final bool containerAgeIsSuitable;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sideIsIntact = sideIsIntact;
    _resultData['sideIsIntact'] = l$sideIsIntact;
    final l$backIsIntact = backIsIntact;
    _resultData['backIsIntact'] = l$backIsIntact;
    final l$frontIsIntact = frontIsIntact;
    _resultData['frontIsIntact'] = l$frontIsIntact;
    final l$lockingIsIntact = lockingIsIntact;
    _resultData['lockingIsIntact'] = l$lockingIsIntact;
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    _resultData['cornerCastingIsIntact'] = l$cornerCastingIsIntact;
    final l$roofIsIntact = roofIsIntact;
    _resultData['roofIsIntact'] = l$roofIsIntact;
    final l$floorIsIntact = floorIsIntact;
    _resultData['floorIsIntact'] = l$floorIsIntact;
    final l$otherIsIntact = otherIsIntact;
    _resultData['otherIsIntact'] = l$otherIsIntact;
    final l$maxPayloadIsSuitable = maxPayloadIsSuitable;
    _resultData['maxPayloadIsSuitable'] = l$maxPayloadIsSuitable;
    final l$containerAgeIsSuitable = containerAgeIsSuitable;
    _resultData['containerAgeIsSuitable'] = l$containerAgeIsSuitable;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sideIsIntact = sideIsIntact;
    final l$backIsIntact = backIsIntact;
    final l$frontIsIntact = frontIsIntact;
    final l$lockingIsIntact = lockingIsIntact;
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    final l$roofIsIntact = roofIsIntact;
    final l$floorIsIntact = floorIsIntact;
    final l$otherIsIntact = otherIsIntact;
    final l$maxPayloadIsSuitable = maxPayloadIsSuitable;
    final l$containerAgeIsSuitable = containerAgeIsSuitable;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sideIsIntact,
      l$backIsIntact,
      l$frontIsIntact,
      l$lockingIsIntact,
      l$cornerCastingIsIntact,
      l$roofIsIntact,
      l$floorIsIntact,
      l$otherIsIntact,
      l$maxPayloadIsSuitable,
      l$containerAgeIsSuitable,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$preConditionQuestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sideIsIntact = sideIsIntact;
    final lOther$sideIsIntact = other.sideIsIntact;
    if (l$sideIsIntact != lOther$sideIsIntact) {
      return false;
    }
    final l$backIsIntact = backIsIntact;
    final lOther$backIsIntact = other.backIsIntact;
    if (l$backIsIntact != lOther$backIsIntact) {
      return false;
    }
    final l$frontIsIntact = frontIsIntact;
    final lOther$frontIsIntact = other.frontIsIntact;
    if (l$frontIsIntact != lOther$frontIsIntact) {
      return false;
    }
    final l$lockingIsIntact = lockingIsIntact;
    final lOther$lockingIsIntact = other.lockingIsIntact;
    if (l$lockingIsIntact != lOther$lockingIsIntact) {
      return false;
    }
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    final lOther$cornerCastingIsIntact = other.cornerCastingIsIntact;
    if (l$cornerCastingIsIntact != lOther$cornerCastingIsIntact) {
      return false;
    }
    final l$roofIsIntact = roofIsIntact;
    final lOther$roofIsIntact = other.roofIsIntact;
    if (l$roofIsIntact != lOther$roofIsIntact) {
      return false;
    }
    final l$floorIsIntact = floorIsIntact;
    final lOther$floorIsIntact = other.floorIsIntact;
    if (l$floorIsIntact != lOther$floorIsIntact) {
      return false;
    }
    final l$otherIsIntact = otherIsIntact;
    final lOther$otherIsIntact = other.otherIsIntact;
    if (l$otherIsIntact != lOther$otherIsIntact) {
      return false;
    }
    final l$maxPayloadIsSuitable = maxPayloadIsSuitable;
    final lOther$maxPayloadIsSuitable = other.maxPayloadIsSuitable;
    if (l$maxPayloadIsSuitable != lOther$maxPayloadIsSuitable) {
      return false;
    }
    final l$containerAgeIsSuitable = containerAgeIsSuitable;
    final lOther$containerAgeIsSuitable = other.containerAgeIsSuitable;
    if (l$containerAgeIsSuitable != lOther$containerAgeIsSuitable) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$preConditionQuestions
    on Query$GetLoadOutDetails$loadOut$preConditionQuestions {
  CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<
    Query$GetLoadOutDetails$loadOut$preConditionQuestions
  >
  get copyWith =>
      CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<
  TRes
> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions(
    Query$GetLoadOutDetails$loadOut$preConditionQuestions instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$preConditionQuestions) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions;

  TRes call({
    bool? sideIsIntact,
    bool? backIsIntact,
    bool? frontIsIntact,
    bool? lockingIsIntact,
    bool? cornerCastingIsIntact,
    bool? roofIsIntact,
    bool? floorIsIntact,
    String? otherIsIntact,
    bool? maxPayloadIsSuitable,
    bool? containerAgeIsSuitable,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$preConditionQuestions _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$preConditionQuestions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sideIsIntact = _undefined,
    Object? backIsIntact = _undefined,
    Object? frontIsIntact = _undefined,
    Object? lockingIsIntact = _undefined,
    Object? cornerCastingIsIntact = _undefined,
    Object? roofIsIntact = _undefined,
    Object? floorIsIntact = _undefined,
    Object? otherIsIntact = _undefined,
    Object? maxPayloadIsSuitable = _undefined,
    Object? containerAgeIsSuitable = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$preConditionQuestions(
      sideIsIntact: sideIsIntact == _undefined || sideIsIntact == null
          ? _instance.sideIsIntact
          : (sideIsIntact as bool),
      backIsIntact: backIsIntact == _undefined || backIsIntact == null
          ? _instance.backIsIntact
          : (backIsIntact as bool),
      frontIsIntact: frontIsIntact == _undefined || frontIsIntact == null
          ? _instance.frontIsIntact
          : (frontIsIntact as bool),
      lockingIsIntact: lockingIsIntact == _undefined || lockingIsIntact == null
          ? _instance.lockingIsIntact
          : (lockingIsIntact as bool),
      cornerCastingIsIntact:
          cornerCastingIsIntact == _undefined || cornerCastingIsIntact == null
          ? _instance.cornerCastingIsIntact
          : (cornerCastingIsIntact as bool),
      roofIsIntact: roofIsIntact == _undefined || roofIsIntact == null
          ? _instance.roofIsIntact
          : (roofIsIntact as bool),
      floorIsIntact: floorIsIntact == _undefined || floorIsIntact == null
          ? _instance.floorIsIntact
          : (floorIsIntact as bool),
      otherIsIntact: otherIsIntact == _undefined
          ? _instance.otherIsIntact
          : (otherIsIntact as String?),
      maxPayloadIsSuitable:
          maxPayloadIsSuitable == _undefined || maxPayloadIsSuitable == null
          ? _instance.maxPayloadIsSuitable
          : (maxPayloadIsSuitable as bool),
      containerAgeIsSuitable:
          containerAgeIsSuitable == _undefined || containerAgeIsSuitable == null
          ? _instance.containerAgeIsSuitable
          : (containerAgeIsSuitable as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions<
  TRes
>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$preConditionQuestions<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$preConditionQuestions(
    this._res,
  );

  TRes _res;

  call({
    bool? sideIsIntact,
    bool? backIsIntact,
    bool? frontIsIntact,
    bool? lockingIsIntact,
    bool? cornerCastingIsIntact,
    bool? roofIsIntact,
    bool? floorIsIntact,
    String? otherIsIntact,
    bool? maxPayloadIsSuitable,
    bool? containerAgeIsSuitable,
    String? $__typename,
  }) => _res;
}

class Query$GetLoadOutDetails$loadOut$postConditionQuestions {
  Query$GetLoadOutDetails$loadOut$postConditionQuestions({
    required this.sideIsIntact,
    required this.backIsIntact,
    required this.frontIsIntact,
    required this.lockingIsIntact,
    required this.cornerCastingIsIntact,
    required this.roofIsIntact,
    required this.floorIsIntact,
    required this.netWeightUnderPayload,
    this.$__typename = 'PostContainerCondition',
  });

  factory Query$GetLoadOutDetails$loadOut$postConditionQuestions.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sideIsIntact = json['sideIsIntact'];
    final l$backIsIntact = json['backIsIntact'];
    final l$frontIsIntact = json['frontIsIntact'];
    final l$lockingIsIntact = json['lockingIsIntact'];
    final l$cornerCastingIsIntact = json['cornerCastingIsIntact'];
    final l$roofIsIntact = json['roofIsIntact'];
    final l$floorIsIntact = json['floorIsIntact'];
    final l$netWeightUnderPayload = json['netWeightUnderPayload'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$postConditionQuestions(
      sideIsIntact: (l$sideIsIntact as bool),
      backIsIntact: (l$backIsIntact as bool),
      frontIsIntact: (l$frontIsIntact as bool),
      lockingIsIntact: (l$lockingIsIntact as bool),
      cornerCastingIsIntact: (l$cornerCastingIsIntact as bool),
      roofIsIntact: (l$roofIsIntact as bool),
      floorIsIntact: (l$floorIsIntact as bool),
      netWeightUnderPayload: (l$netWeightUnderPayload as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool sideIsIntact;

  final bool backIsIntact;

  final bool frontIsIntact;

  final bool lockingIsIntact;

  final bool cornerCastingIsIntact;

  final bool roofIsIntact;

  final bool floorIsIntact;

  final bool netWeightUnderPayload;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sideIsIntact = sideIsIntact;
    _resultData['sideIsIntact'] = l$sideIsIntact;
    final l$backIsIntact = backIsIntact;
    _resultData['backIsIntact'] = l$backIsIntact;
    final l$frontIsIntact = frontIsIntact;
    _resultData['frontIsIntact'] = l$frontIsIntact;
    final l$lockingIsIntact = lockingIsIntact;
    _resultData['lockingIsIntact'] = l$lockingIsIntact;
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    _resultData['cornerCastingIsIntact'] = l$cornerCastingIsIntact;
    final l$roofIsIntact = roofIsIntact;
    _resultData['roofIsIntact'] = l$roofIsIntact;
    final l$floorIsIntact = floorIsIntact;
    _resultData['floorIsIntact'] = l$floorIsIntact;
    final l$netWeightUnderPayload = netWeightUnderPayload;
    _resultData['netWeightUnderPayload'] = l$netWeightUnderPayload;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sideIsIntact = sideIsIntact;
    final l$backIsIntact = backIsIntact;
    final l$frontIsIntact = frontIsIntact;
    final l$lockingIsIntact = lockingIsIntact;
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    final l$roofIsIntact = roofIsIntact;
    final l$floorIsIntact = floorIsIntact;
    final l$netWeightUnderPayload = netWeightUnderPayload;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sideIsIntact,
      l$backIsIntact,
      l$frontIsIntact,
      l$lockingIsIntact,
      l$cornerCastingIsIntact,
      l$roofIsIntact,
      l$floorIsIntact,
      l$netWeightUnderPayload,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$postConditionQuestions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sideIsIntact = sideIsIntact;
    final lOther$sideIsIntact = other.sideIsIntact;
    if (l$sideIsIntact != lOther$sideIsIntact) {
      return false;
    }
    final l$backIsIntact = backIsIntact;
    final lOther$backIsIntact = other.backIsIntact;
    if (l$backIsIntact != lOther$backIsIntact) {
      return false;
    }
    final l$frontIsIntact = frontIsIntact;
    final lOther$frontIsIntact = other.frontIsIntact;
    if (l$frontIsIntact != lOther$frontIsIntact) {
      return false;
    }
    final l$lockingIsIntact = lockingIsIntact;
    final lOther$lockingIsIntact = other.lockingIsIntact;
    if (l$lockingIsIntact != lOther$lockingIsIntact) {
      return false;
    }
    final l$cornerCastingIsIntact = cornerCastingIsIntact;
    final lOther$cornerCastingIsIntact = other.cornerCastingIsIntact;
    if (l$cornerCastingIsIntact != lOther$cornerCastingIsIntact) {
      return false;
    }
    final l$roofIsIntact = roofIsIntact;
    final lOther$roofIsIntact = other.roofIsIntact;
    if (l$roofIsIntact != lOther$roofIsIntact) {
      return false;
    }
    final l$floorIsIntact = floorIsIntact;
    final lOther$floorIsIntact = other.floorIsIntact;
    if (l$floorIsIntact != lOther$floorIsIntact) {
      return false;
    }
    final l$netWeightUnderPayload = netWeightUnderPayload;
    final lOther$netWeightUnderPayload = other.netWeightUnderPayload;
    if (l$netWeightUnderPayload != lOther$netWeightUnderPayload) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$postConditionQuestions
    on Query$GetLoadOutDetails$loadOut$postConditionQuestions {
  CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<
    Query$GetLoadOutDetails$loadOut$postConditionQuestions
  >
  get copyWith =>
      CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<
  TRes
> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions(
    Query$GetLoadOutDetails$loadOut$postConditionQuestions instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$postConditionQuestions) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions;

  TRes call({
    bool? sideIsIntact,
    bool? backIsIntact,
    bool? frontIsIntact,
    bool? lockingIsIntact,
    bool? cornerCastingIsIntact,
    bool? roofIsIntact,
    bool? floorIsIntact,
    bool? netWeightUnderPayload,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$postConditionQuestions _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$postConditionQuestions)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sideIsIntact = _undefined,
    Object? backIsIntact = _undefined,
    Object? frontIsIntact = _undefined,
    Object? lockingIsIntact = _undefined,
    Object? cornerCastingIsIntact = _undefined,
    Object? roofIsIntact = _undefined,
    Object? floorIsIntact = _undefined,
    Object? netWeightUnderPayload = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$postConditionQuestions(
      sideIsIntact: sideIsIntact == _undefined || sideIsIntact == null
          ? _instance.sideIsIntact
          : (sideIsIntact as bool),
      backIsIntact: backIsIntact == _undefined || backIsIntact == null
          ? _instance.backIsIntact
          : (backIsIntact as bool),
      frontIsIntact: frontIsIntact == _undefined || frontIsIntact == null
          ? _instance.frontIsIntact
          : (frontIsIntact as bool),
      lockingIsIntact: lockingIsIntact == _undefined || lockingIsIntact == null
          ? _instance.lockingIsIntact
          : (lockingIsIntact as bool),
      cornerCastingIsIntact:
          cornerCastingIsIntact == _undefined || cornerCastingIsIntact == null
          ? _instance.cornerCastingIsIntact
          : (cornerCastingIsIntact as bool),
      roofIsIntact: roofIsIntact == _undefined || roofIsIntact == null
          ? _instance.roofIsIntact
          : (roofIsIntact as bool),
      floorIsIntact: floorIsIntact == _undefined || floorIsIntact == null
          ? _instance.floorIsIntact
          : (floorIsIntact as bool),
      netWeightUnderPayload:
          netWeightUnderPayload == _undefined || netWeightUnderPayload == null
          ? _instance.netWeightUnderPayload
          : (netWeightUnderPayload as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions<
  TRes
>
    implements
        CopyWith$Query$GetLoadOutDetails$loadOut$postConditionQuestions<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$postConditionQuestions(
    this._res,
  );

  TRes _res;

  call({
    bool? sideIsIntact,
    bool? backIsIntact,
    bool? frontIsIntact,
    bool? lockingIsIntact,
    bool? cornerCastingIsIntact,
    bool? roofIsIntact,
    bool? floorIsIntact,
    bool? netWeightUnderPayload,
    String? $__typename,
  }) => _res;
}

class Query$GetLoadOutDetails$loadOut$containerImages {
  Query$GetLoadOutDetails$loadOut$containerImages({
    this.heap,
    this.empty,
    this.halfLoadedWithContainerNumber,
    this.fullyLoaded,
    this.fullyLoadedOneDoorShut,
    this.fullyLoadedOneDoorShutRadiation,
    this.fullyLoadedBothDoorsShutSeals,
    this.leftSideQualityCheck,
    this.rightSideQualityCheck,
    required this.additionalImages,
    this.$__typename = 'ContainerImages',
  });

  factory Query$GetLoadOutDetails$loadOut$containerImages.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$heap = json['heap'];
    final l$empty = json['empty'];
    final l$halfLoadedWithContainerNumber =
        json['halfLoadedWithContainerNumber'];
    final l$fullyLoaded = json['fullyLoaded'];
    final l$fullyLoadedOneDoorShut = json['fullyLoadedOneDoorShut'];
    final l$fullyLoadedOneDoorShutRadiation =
        json['fullyLoadedOneDoorShutRadiation'];
    final l$fullyLoadedBothDoorsShutSeals =
        json['fullyLoadedBothDoorsShutSeals'];
    final l$leftSideQualityCheck = json['leftSideQualityCheck'];
    final l$rightSideQualityCheck = json['rightSideQualityCheck'];
    final l$additionalImages = json['additionalImages'];
    final l$$__typename = json['__typename'];
    return Query$GetLoadOutDetails$loadOut$containerImages(
      heap: (l$heap as String?),
      empty: (l$empty as String?),
      halfLoadedWithContainerNumber:
          (l$halfLoadedWithContainerNumber as String?),
      fullyLoaded: (l$fullyLoaded as String?),
      fullyLoadedOneDoorShut: (l$fullyLoadedOneDoorShut as String?),
      fullyLoadedOneDoorShutRadiation:
          (l$fullyLoadedOneDoorShutRadiation as String?),
      fullyLoadedBothDoorsShutSeals:
          (l$fullyLoadedBothDoorsShutSeals as String?),
      leftSideQualityCheck: (l$leftSideQualityCheck as String?),
      rightSideQualityCheck: (l$rightSideQualityCheck as String?),
      additionalImages: (l$additionalImages as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? heap;

  final String? empty;

  final String? halfLoadedWithContainerNumber;

  final String? fullyLoaded;

  final String? fullyLoadedOneDoorShut;

  final String? fullyLoadedOneDoorShutRadiation;

  final String? fullyLoadedBothDoorsShutSeals;

  final String? leftSideQualityCheck;

  final String? rightSideQualityCheck;

  final List<String> additionalImages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$heap = heap;
    _resultData['heap'] = l$heap;
    final l$empty = empty;
    _resultData['empty'] = l$empty;
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    _resultData['halfLoadedWithContainerNumber'] =
        l$halfLoadedWithContainerNumber;
    final l$fullyLoaded = fullyLoaded;
    _resultData['fullyLoaded'] = l$fullyLoaded;
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    _resultData['fullyLoadedOneDoorShut'] = l$fullyLoadedOneDoorShut;
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    _resultData['fullyLoadedOneDoorShutRadiation'] =
        l$fullyLoadedOneDoorShutRadiation;
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    _resultData['fullyLoadedBothDoorsShutSeals'] =
        l$fullyLoadedBothDoorsShutSeals;
    final l$leftSideQualityCheck = leftSideQualityCheck;
    _resultData['leftSideQualityCheck'] = l$leftSideQualityCheck;
    final l$rightSideQualityCheck = rightSideQualityCheck;
    _resultData['rightSideQualityCheck'] = l$rightSideQualityCheck;
    final l$additionalImages = additionalImages;
    _resultData['additionalImages'] = l$additionalImages.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$heap = heap;
    final l$empty = empty;
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    final l$fullyLoaded = fullyLoaded;
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    final l$leftSideQualityCheck = leftSideQualityCheck;
    final l$rightSideQualityCheck = rightSideQualityCheck;
    final l$additionalImages = additionalImages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$heap,
      l$empty,
      l$halfLoadedWithContainerNumber,
      l$fullyLoaded,
      l$fullyLoadedOneDoorShut,
      l$fullyLoadedOneDoorShutRadiation,
      l$fullyLoadedBothDoorsShutSeals,
      l$leftSideQualityCheck,
      l$rightSideQualityCheck,
      Object.hashAll(l$additionalImages.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetLoadOutDetails$loadOut$containerImages ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$heap = heap;
    final lOther$heap = other.heap;
    if (l$heap != lOther$heap) {
      return false;
    }
    final l$empty = empty;
    final lOther$empty = other.empty;
    if (l$empty != lOther$empty) {
      return false;
    }
    final l$halfLoadedWithContainerNumber = halfLoadedWithContainerNumber;
    final lOther$halfLoadedWithContainerNumber =
        other.halfLoadedWithContainerNumber;
    if (l$halfLoadedWithContainerNumber !=
        lOther$halfLoadedWithContainerNumber) {
      return false;
    }
    final l$fullyLoaded = fullyLoaded;
    final lOther$fullyLoaded = other.fullyLoaded;
    if (l$fullyLoaded != lOther$fullyLoaded) {
      return false;
    }
    final l$fullyLoadedOneDoorShut = fullyLoadedOneDoorShut;
    final lOther$fullyLoadedOneDoorShut = other.fullyLoadedOneDoorShut;
    if (l$fullyLoadedOneDoorShut != lOther$fullyLoadedOneDoorShut) {
      return false;
    }
    final l$fullyLoadedOneDoorShutRadiation = fullyLoadedOneDoorShutRadiation;
    final lOther$fullyLoadedOneDoorShutRadiation =
        other.fullyLoadedOneDoorShutRadiation;
    if (l$fullyLoadedOneDoorShutRadiation !=
        lOther$fullyLoadedOneDoorShutRadiation) {
      return false;
    }
    final l$fullyLoadedBothDoorsShutSeals = fullyLoadedBothDoorsShutSeals;
    final lOther$fullyLoadedBothDoorsShutSeals =
        other.fullyLoadedBothDoorsShutSeals;
    if (l$fullyLoadedBothDoorsShutSeals !=
        lOther$fullyLoadedBothDoorsShutSeals) {
      return false;
    }
    final l$leftSideQualityCheck = leftSideQualityCheck;
    final lOther$leftSideQualityCheck = other.leftSideQualityCheck;
    if (l$leftSideQualityCheck != lOther$leftSideQualityCheck) {
      return false;
    }
    final l$rightSideQualityCheck = rightSideQualityCheck;
    final lOther$rightSideQualityCheck = other.rightSideQualityCheck;
    if (l$rightSideQualityCheck != lOther$rightSideQualityCheck) {
      return false;
    }
    final l$additionalImages = additionalImages;
    final lOther$additionalImages = other.additionalImages;
    if (l$additionalImages.length != lOther$additionalImages.length) {
      return false;
    }
    for (int i = 0; i < l$additionalImages.length; i++) {
      final l$additionalImages$entry = l$additionalImages[i];
      final lOther$additionalImages$entry = lOther$additionalImages[i];
      if (l$additionalImages$entry != lOther$additionalImages$entry) {
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

extension UtilityExtension$Query$GetLoadOutDetails$loadOut$containerImages
    on Query$GetLoadOutDetails$loadOut$containerImages {
  CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<
    Query$GetLoadOutDetails$loadOut$containerImages
  >
  get copyWith =>
      CopyWith$Query$GetLoadOutDetails$loadOut$containerImages(this, (i) => i);
}

abstract class CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes> {
  factory CopyWith$Query$GetLoadOutDetails$loadOut$containerImages(
    Query$GetLoadOutDetails$loadOut$containerImages instance,
    TRes Function(Query$GetLoadOutDetails$loadOut$containerImages) then,
  ) = _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerImages;

  factory CopyWith$Query$GetLoadOutDetails$loadOut$containerImages.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerImages;

  TRes call({
    String? heap,
    String? empty,
    String? halfLoadedWithContainerNumber,
    String? fullyLoaded,
    String? fullyLoadedOneDoorShut,
    String? fullyLoadedOneDoorShutRadiation,
    String? fullyLoadedBothDoorsShutSeals,
    String? leftSideQualityCheck,
    String? rightSideQualityCheck,
    List<String>? additionalImages,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerImages<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes> {
  _CopyWithImpl$Query$GetLoadOutDetails$loadOut$containerImages(
    this._instance,
    this._then,
  );

  final Query$GetLoadOutDetails$loadOut$containerImages _instance;

  final TRes Function(Query$GetLoadOutDetails$loadOut$containerImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? heap = _undefined,
    Object? empty = _undefined,
    Object? halfLoadedWithContainerNumber = _undefined,
    Object? fullyLoaded = _undefined,
    Object? fullyLoadedOneDoorShut = _undefined,
    Object? fullyLoadedOneDoorShutRadiation = _undefined,
    Object? fullyLoadedBothDoorsShutSeals = _undefined,
    Object? leftSideQualityCheck = _undefined,
    Object? rightSideQualityCheck = _undefined,
    Object? additionalImages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetLoadOutDetails$loadOut$containerImages(
      heap: heap == _undefined ? _instance.heap : (heap as String?),
      empty: empty == _undefined ? _instance.empty : (empty as String?),
      halfLoadedWithContainerNumber: halfLoadedWithContainerNumber == _undefined
          ? _instance.halfLoadedWithContainerNumber
          : (halfLoadedWithContainerNumber as String?),
      fullyLoaded: fullyLoaded == _undefined
          ? _instance.fullyLoaded
          : (fullyLoaded as String?),
      fullyLoadedOneDoorShut: fullyLoadedOneDoorShut == _undefined
          ? _instance.fullyLoadedOneDoorShut
          : (fullyLoadedOneDoorShut as String?),
      fullyLoadedOneDoorShutRadiation:
          fullyLoadedOneDoorShutRadiation == _undefined
          ? _instance.fullyLoadedOneDoorShutRadiation
          : (fullyLoadedOneDoorShutRadiation as String?),
      fullyLoadedBothDoorsShutSeals: fullyLoadedBothDoorsShutSeals == _undefined
          ? _instance.fullyLoadedBothDoorsShutSeals
          : (fullyLoadedBothDoorsShutSeals as String?),
      leftSideQualityCheck: leftSideQualityCheck == _undefined
          ? _instance.leftSideQualityCheck
          : (leftSideQualityCheck as String?),
      rightSideQualityCheck: rightSideQualityCheck == _undefined
          ? _instance.rightSideQualityCheck
          : (rightSideQualityCheck as String?),
      additionalImages:
          additionalImages == _undefined || additionalImages == null
          ? _instance.additionalImages
          : (additionalImages as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerImages<TRes>
    implements CopyWith$Query$GetLoadOutDetails$loadOut$containerImages<TRes> {
  _CopyWithStubImpl$Query$GetLoadOutDetails$loadOut$containerImages(this._res);

  TRes _res;

  call({
    String? heap,
    String? empty,
    String? halfLoadedWithContainerNumber,
    String? fullyLoaded,
    String? fullyLoadedOneDoorShut,
    String? fullyLoadedOneDoorShutRadiation,
    String? fullyLoadedBothDoorsShutSeals,
    String? leftSideQualityCheck,
    String? rightSideQualityCheck,
    List<String>? additionalImages,
    String? $__typename,
  }) => _res;
}
