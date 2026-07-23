import '../../../../fragments/inventory/ticket/trade2_ticket_fragment.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateTicketGallery {
  factory Variables$Mutation$CreateTicketGallery({
    required Input$CreateTicketGalleryInput input,
  }) => Variables$Mutation$CreateTicketGallery._({r'input': input});

  Variables$Mutation$CreateTicketGallery._(this._$data);

  factory Variables$Mutation$CreateTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateTicketGalleryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateTicketGalleryInput get input =>
      (_$data['input'] as Input$CreateTicketGalleryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateTicketGallery<
    Variables$Mutation$CreateTicketGallery
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateTicketGallery ||
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

abstract class CopyWith$Variables$Mutation$CreateTicketGallery<TRes> {
  factory CopyWith$Variables$Mutation$CreateTicketGallery(
    Variables$Mutation$CreateTicketGallery instance,
    TRes Function(Variables$Mutation$CreateTicketGallery) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateTicketGallery;

  factory CopyWith$Variables$Mutation$CreateTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateTicketGallery;

  TRes call({Input$CreateTicketGalleryInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$CreateTicketGallery<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateTicketGallery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateTicketGallery _instance;

  final TRes Function(Variables$Mutation$CreateTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateTicketGallery._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateTicketGalleryInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$CreateTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateTicketGallery(this._res);

  TRes _res;

  call({Input$CreateTicketGalleryInput? input}) => _res;
}

class Mutation$CreateTicketGallery {
  Mutation$CreateTicketGallery({
    required this.createTicketGallery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$createTicketGallery = json['createTicketGallery'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery(
      createTicketGallery:
          Mutation$CreateTicketGallery$createTicketGallery.fromJson(
            (l$createTicketGallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTicketGallery$createTicketGallery createTicketGallery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTicketGallery = createTicketGallery;
    _resultData['createTicketGallery'] = l$createTicketGallery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTicketGallery = createTicketGallery;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createTicketGallery, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTicketGallery = createTicketGallery;
    final lOther$createTicketGallery = other.createTicketGallery;
    if (l$createTicketGallery != lOther$createTicketGallery) {
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

extension UtilityExtension$Mutation$CreateTicketGallery
    on Mutation$CreateTicketGallery {
  CopyWith$Mutation$CreateTicketGallery<Mutation$CreateTicketGallery>
  get copyWith => CopyWith$Mutation$CreateTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTicketGallery<TRes> {
  factory CopyWith$Mutation$CreateTicketGallery(
    Mutation$CreateTicketGallery instance,
    TRes Function(Mutation$CreateTicketGallery) then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery;

  factory CopyWith$Mutation$CreateTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateTicketGallery;

  TRes call({
    Mutation$CreateTicketGallery$createTicketGallery? createTicketGallery,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes>
  get createTicketGallery;
}

class _CopyWithImpl$Mutation$CreateTicketGallery<TRes>
    implements CopyWith$Mutation$CreateTicketGallery<TRes> {
  _CopyWithImpl$Mutation$CreateTicketGallery(this._instance, this._then);

  final Mutation$CreateTicketGallery _instance;

  final TRes Function(Mutation$CreateTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createTicketGallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery(
      createTicketGallery:
          createTicketGallery == _undefined || createTicketGallery == null
          ? _instance.createTicketGallery
          : (createTicketGallery
                as Mutation$CreateTicketGallery$createTicketGallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes>
  get createTicketGallery {
    final local$createTicketGallery = _instance.createTicketGallery;
    return CopyWith$Mutation$CreateTicketGallery$createTicketGallery(
      local$createTicketGallery,
      (e) => call(createTicketGallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery<TRes>
    implements CopyWith$Mutation$CreateTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$CreateTicketGallery(this._res);

  TRes _res;

  call({
    Mutation$CreateTicketGallery$createTicketGallery? createTicketGallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes>
  get createTicketGallery =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery.stub(_res);
}

const documentNodeMutationCreateTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateTicketGallery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateTicketGalleryInput'),
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
            name: NameNode(value: 'createTicketGallery'),
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
                  name: NameNode(value: 'createdBy'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'createdDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'excludedImageUrls'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'publicUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'tickets'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Trade2TicketFields'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaAssets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'url'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'type'),
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
    fragmentDefinitionTrade2TicketFields,
  ],
);

class Mutation$CreateTicketGallery$createTicketGallery {
  Mutation$CreateTicketGallery$createTicketGallery({
    required this.createdBy,
    required this.createdDate,
    this.id,
    required this.title,
    required this.excludedImageUrls,
    this.publicUrl,
    required this.tickets,
    this.$__typename = 'TicketGallery',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$publicUrl = json['publicUrl'];
    final l$tickets = json['tickets'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery(
      createdBy: (l$createdBy as String),
      createdDate: DateTime.parse((l$createdDate as String)),
      id: (l$id as String?),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      publicUrl: (l$publicUrl as String?),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateTicketGallery$createTicketGallery$tickets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String createdBy;

  final DateTime createdDate;

  final String? id;

  final String title;

  final List<String> excludedImageUrls;

  final String? publicUrl;

  final List<Mutation$CreateTicketGallery$createTicketGallery$tickets> tickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$excludedImageUrls = excludedImageUrls;
    _resultData['excludedImageUrls'] = l$excludedImageUrls
        .map((e) => e)
        .toList();
    final l$publicUrl = publicUrl;
    _resultData['publicUrl'] = l$publicUrl;
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$id = id;
    final l$title = title;
    final l$excludedImageUrls = excludedImageUrls;
    final l$publicUrl = publicUrl;
    final l$tickets = tickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdBy,
      l$createdDate,
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      l$publicUrl,
      Object.hashAll(l$tickets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTicketGallery$createTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$excludedImageUrls = excludedImageUrls;
    final lOther$excludedImageUrls = other.excludedImageUrls;
    if (l$excludedImageUrls.length != lOther$excludedImageUrls.length) {
      return false;
    }
    for (int i = 0; i < l$excludedImageUrls.length; i++) {
      final l$excludedImageUrls$entry = l$excludedImageUrls[i];
      final lOther$excludedImageUrls$entry = lOther$excludedImageUrls[i];
      if (l$excludedImageUrls$entry != lOther$excludedImageUrls$entry) {
        return false;
      }
    }
    final l$publicUrl = publicUrl;
    final lOther$publicUrl = other.publicUrl;
    if (l$publicUrl != lOther$publicUrl) {
      return false;
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets.length != lOther$tickets.length) {
      return false;
    }
    for (int i = 0; i < l$tickets.length; i++) {
      final l$tickets$entry = l$tickets[i];
      final lOther$tickets$entry = lOther$tickets[i];
      if (l$tickets$entry != lOther$tickets$entry) {
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery
    on Mutation$CreateTicketGallery$createTicketGallery {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery<
    Mutation$CreateTicketGallery$createTicketGallery
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery(
    Mutation$CreateTicketGallery$createTicketGallery instance,
    TRes Function(Mutation$CreateTicketGallery$createTicketGallery) then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery;

  TRes call({
    String? createdBy,
    DateTime? createdDate,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets>? tickets,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Mutation$CreateTicketGallery$createTicketGallery$tickets> Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
          Mutation$CreateTicketGallery$createTicketGallery$tickets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery<TRes>
    implements CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes> {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery _instance;

  final TRes Function(Mutation$CreateTicketGallery$createTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? publicUrl = _undefined,
    Object? tickets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery(
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      id: id == _undefined ? _instance.id : (id as String?),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      excludedImageUrls:
          excludedImageUrls == _undefined || excludedImageUrls == null
          ? _instance.excludedImageUrls
          : (excludedImageUrls as List<String>),
      publicUrl: publicUrl == _undefined
          ? _instance.publicUrl
          : (publicUrl as String?),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets
                as List<
                  Mutation$CreateTicketGallery$createTicketGallery$tickets
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tickets(
    Iterable<Mutation$CreateTicketGallery$createTicketGallery$tickets> Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
          Mutation$CreateTicketGallery$createTicketGallery$tickets
        >
      >,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map(
        (e) =>
            CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery<TRes>
    implements CopyWith$Mutation$CreateTicketGallery$createTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery(this._res);

  TRes _res;

  call({
    String? createdBy,
    DateTime? createdDate,
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets>? tickets,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets
    implements Fragment$Trade2TicketFields {
  Mutation$CreateTicketGallery$createTicketGallery$tickets({
    this.id,
    required this.key,
    this.trade2Key,
    this.partyAccountNo,
    this.partyName,
    required this.depotNo,
    required this.yardId,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketCategory,
    required this.ticketStatus,
    required this.ticketType,
    this.publishedToTrade,
    required this.createdDate,
    required this.createdDateEpoch,
    required this.createdBy,
    required this.price,
    required this.lines,
    required this.currency,
    required this.ticketDate,
    this.vehicleNo,
    this.locationCode,
    this.locationName,
    this.$__typename = 'Trade2Ticket',
    required this.mediaAssets,
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$key = json['key'];
    final l$trade2Key = json['trade2Key'];
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$depotNo = json['depotNo'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketStatus = json['ticketStatus'];
    final l$ticketType = json['ticketType'];
    final l$publishedToTrade = json['publishedToTrade'];
    final l$createdDate = json['createdDate'];
    final l$createdDateEpoch = json['createdDateEpoch'];
    final l$createdBy = json['createdBy'];
    final l$price = json['price'];
    final l$lines = json['lines'];
    final l$currency = json['currency'];
    final l$ticketDate = json['ticketDate'];
    final l$vehicleNo = json['vehicleNo'];
    final l$locationCode = json['locationCode'];
    final l$locationName = json['locationName'];
    final l$$__typename = json['__typename'];
    final l$mediaAssets = json['mediaAssets'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets(
      id: (l$id as String?),
      key: (l$key as String),
      trade2Key: (l$trade2Key as int?),
      partyAccountNo: (l$partyAccountNo as String?),
      partyName: (l$partyName as String?),
      depotNo: (l$depotNo as String),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketCategory: fromJson$Enum$Trade2TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketStatus: fromJson$Enum$Trade2TicketStatus(
        (l$ticketStatus as String),
      ),
      ticketType: fromJson$Enum$Trade2TicketType((l$ticketType as String)),
      publishedToTrade: l$publishedToTrade == null
          ? null
          : DateTime.parse((l$publishedToTrade as String)),
      createdDate: DateTime.parse((l$createdDate as String)),
      createdDateEpoch: (l$createdDateEpoch as int),
      createdBy: (l$createdBy as String),
      price: (l$price as num).toDouble(),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateTicketGallery$createTicketGallery$tickets$lines.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      currency: (l$currency as String),
      ticketDate: DateTime.parse((l$ticketDate as String)),
      vehicleNo: (l$vehicleNo as String?),
      locationCode: (l$locationCode as String?),
      locationName: (l$locationName as String?),
      $__typename: (l$$__typename as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
    );
  }

  final String? id;

  final String key;

  final int? trade2Key;

  final String? partyAccountNo;

  final String? partyName;

  final String depotNo;

  final String yardId;

  final String yardCode;

  final int ticketNumber;

  final Enum$Trade2TicketCategory ticketCategory;

  final Enum$Trade2TicketStatus ticketStatus;

  final Enum$Trade2TicketType ticketType;

  final DateTime? publishedToTrade;

  final DateTime createdDate;

  final int createdDateEpoch;

  final String createdBy;

  final double price;

  final List<Mutation$CreateTicketGallery$createTicketGallery$tickets$lines>
  lines;

  final String currency;

  final DateTime ticketDate;

  final String? vehicleNo;

  final String? locationCode;

  final String? locationName;

  final String $__typename;

  final List<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
  >
  mediaAssets;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$trade2Key = trade2Key;
    _resultData['trade2Key'] = l$trade2Key;
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$Trade2TicketCategory(
      l$ticketCategory,
    );
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$Trade2TicketStatus(
      l$ticketStatus,
    );
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$Trade2TicketType(l$ticketType);
    final l$publishedToTrade = publishedToTrade;
    _resultData['publishedToTrade'] = l$publishedToTrade?.toIso8601String();
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$createdDateEpoch = createdDateEpoch;
    _resultData['createdDateEpoch'] = l$createdDateEpoch;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$ticketDate = ticketDate;
    _resultData['ticketDate'] = l$ticketDate.toIso8601String();
    final l$vehicleNo = vehicleNo;
    _resultData['vehicleNo'] = l$vehicleNo;
    final l$locationCode = locationCode;
    _resultData['locationCode'] = l$locationCode;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$key = key;
    final l$trade2Key = trade2Key;
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$depotNo = depotNo;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketCategory = ticketCategory;
    final l$ticketStatus = ticketStatus;
    final l$ticketType = ticketType;
    final l$publishedToTrade = publishedToTrade;
    final l$createdDate = createdDate;
    final l$createdDateEpoch = createdDateEpoch;
    final l$createdBy = createdBy;
    final l$price = price;
    final l$lines = lines;
    final l$currency = currency;
    final l$ticketDate = ticketDate;
    final l$vehicleNo = vehicleNo;
    final l$locationCode = locationCode;
    final l$locationName = locationName;
    final l$$__typename = $__typename;
    final l$mediaAssets = mediaAssets;
    return Object.hashAll([
      l$id,
      l$key,
      l$trade2Key,
      l$partyAccountNo,
      l$partyName,
      l$depotNo,
      l$yardId,
      l$yardCode,
      l$ticketNumber,
      l$ticketCategory,
      l$ticketStatus,
      l$ticketType,
      l$publishedToTrade,
      l$createdDate,
      l$createdDateEpoch,
      l$createdBy,
      l$price,
      Object.hashAll(l$lines.map((v) => v)),
      l$currency,
      l$ticketDate,
      l$vehicleNo,
      l$locationCode,
      l$locationName,
      l$$__typename,
      Object.hashAll(l$mediaAssets.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateTicketGallery$createTicketGallery$tickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$trade2Key = trade2Key;
    final lOther$trade2Key = other.trade2Key;
    if (l$trade2Key != lOther$trade2Key) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$publishedToTrade = publishedToTrade;
    final lOther$publishedToTrade = other.publishedToTrade;
    if (l$publishedToTrade != lOther$publishedToTrade) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$createdDateEpoch = createdDateEpoch;
    final lOther$createdDateEpoch = other.createdDateEpoch;
    if (l$createdDateEpoch != lOther$createdDateEpoch) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$vehicleNo = vehicleNo;
    final lOther$vehicleNo = other.vehicleNo;
    if (l$vehicleNo != lOther$vehicleNo) {
      return false;
    }
    final l$locationCode = locationCode;
    final lOther$locationCode = other.locationCode;
    if (l$locationCode != lOther$locationCode) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets
    on Mutation$CreateTicketGallery$createTicketGallery$tickets {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
    Mutation$CreateTicketGallery$createTicketGallery$tickets
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets(
    Mutation$CreateTicketGallery$createTicketGallery$tickets instance,
    TRes Function(Mutation$CreateTicketGallery$createTicketGallery$tickets)
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets;

  TRes call({
    String? id,
    String? key,
    int? trade2Key,
    String? partyAccountNo,
    String? partyName,
    String? depotNo,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    DateTime? publishedToTrade,
    DateTime? createdDate,
    int? createdDateEpoch,
    String? createdBy,
    double? price,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets$lines>? lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets>?
    mediaAssets,
  });
  TRes lines(
    Iterable<Mutation$CreateTicketGallery$createTicketGallery$tickets$lines>
    Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
          Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<
      Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
          Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets _instance;

  final TRes Function(Mutation$CreateTicketGallery$createTicketGallery$tickets)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? trade2Key = _undefined,
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? depotNo = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketStatus = _undefined,
    Object? ticketType = _undefined,
    Object? publishedToTrade = _undefined,
    Object? createdDate = _undefined,
    Object? createdDateEpoch = _undefined,
    Object? createdBy = _undefined,
    Object? price = _undefined,
    Object? lines = _undefined,
    Object? currency = _undefined,
    Object? ticketDate = _undefined,
    Object? vehicleNo = _undefined,
    Object? locationCode = _undefined,
    Object? locationName = _undefined,
    Object? $__typename = _undefined,
    Object? mediaAssets = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets(
      id: id == _undefined ? _instance.id : (id as String?),
      key: key == _undefined || key == null ? _instance.key : (key as String),
      trade2Key: trade2Key == _undefined
          ? _instance.trade2Key
          : (trade2Key as int?),
      partyAccountNo: partyAccountNo == _undefined
          ? _instance.partyAccountNo
          : (partyAccountNo as String?),
      partyName: partyName == _undefined
          ? _instance.partyName
          : (partyName as String?),
      depotNo: depotNo == _undefined || depotNo == null
          ? _instance.depotNo
          : (depotNo as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$Trade2TicketCategory),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$Trade2TicketStatus),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$Trade2TicketType),
      publishedToTrade: publishedToTrade == _undefined
          ? _instance.publishedToTrade
          : (publishedToTrade as DateTime?),
      createdDate: createdDate == _undefined || createdDate == null
          ? _instance.createdDate
          : (createdDate as DateTime),
      createdDateEpoch:
          createdDateEpoch == _undefined || createdDateEpoch == null
          ? _instance.createdDateEpoch
          : (createdDateEpoch as int),
      createdBy: createdBy == _undefined || createdBy == null
          ? _instance.createdBy
          : (createdBy as String),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines
                as List<
                  Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
                >),
      currency: currency == _undefined || currency == null
          ? _instance.currency
          : (currency as String),
      ticketDate: ticketDate == _undefined || ticketDate == null
          ? _instance.ticketDate
          : (ticketDate as DateTime),
      vehicleNo: vehicleNo == _undefined
          ? _instance.vehicleNo
          : (vehicleNo as String?),
      locationCode: locationCode == _undefined
          ? _instance.locationCode
          : (locationCode as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<
                  Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
                >),
    ),
  );

  TRes lines(
    Iterable<Mutation$CreateTicketGallery$createTicketGallery$tickets$lines>
    Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
          Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) =>
            CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<
      Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
          Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) =>
            CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? key,
    int? trade2Key,
    String? partyAccountNo,
    String? partyName,
    String? depotNo,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$Trade2TicketCategory? ticketCategory,
    Enum$Trade2TicketStatus? ticketStatus,
    Enum$Trade2TicketType? ticketType,
    DateTime? publishedToTrade,
    DateTime? createdDate,
    int? createdDateEpoch,
    String? createdBy,
    double? price,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets$lines>? lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
    List<Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets>?
    mediaAssets,
  }) => _res;

  lines(_fn) => _res;

  mediaAssets(_fn) => _res;
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
    implements Fragment$Trade2TicketFields$lines {
  Mutation$CreateTicketGallery$createTicketGallery$tickets$lines({
    required this.grossWeight,
    required this.netWeight,
    required this.gradeId,
    required this.gradeCode,
    required this.gradeName,
    required this.lineNumber,
    required this.heapId,
    required this.heapCode,
    required this.rate,
    this.weightSerial,
    required this.isActive,
    required this.price,
    required this.ewcCode,
    this.partyContractRef,
    this.partyContractPart,
    required this.priceOrigin,
    this.binNo,
    this.weighedBy,
    this.sealNo,
    this.consgnNo,
    this.comments,
    this.$__typename = 'Trade2TicketLine',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets$lines.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$grossWeight = json['grossWeight'];
    final l$netWeight = json['netWeight'];
    final l$gradeId = json['gradeId'];
    final l$gradeCode = json['gradeCode'];
    final l$gradeName = json['gradeName'];
    final l$lineNumber = json['lineNumber'];
    final l$heapId = json['heapId'];
    final l$heapCode = json['heapCode'];
    final l$rate = json['rate'];
    final l$weightSerial = json['weightSerial'];
    final l$isActive = json['isActive'];
    final l$price = json['price'];
    final l$ewcCode = json['ewcCode'];
    final l$partyContractRef = json['partyContractRef'];
    final l$partyContractPart = json['partyContractPart'];
    final l$priceOrigin = json['priceOrigin'];
    final l$binNo = json['binNo'];
    final l$weighedBy = json['weighedBy'];
    final l$sealNo = json['sealNo'];
    final l$consgnNo = json['consgnNo'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
      grossWeight:
          Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight.fromJson(
            (l$grossWeight as Map<String, dynamic>),
          ),
      netWeight:
          Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight.fromJson(
            (l$netWeight as Map<String, dynamic>),
          ),
      gradeId: (l$gradeId as String),
      gradeCode: (l$gradeCode as String),
      gradeName: (l$gradeName as String),
      lineNumber: (l$lineNumber as int),
      heapId: (l$heapId as String),
      heapCode: (l$heapCode as String),
      rate:
          Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate.fromJson(
            (l$rate as Map<String, dynamic>),
          ),
      weightSerial: (l$weightSerial as String?),
      isActive: (l$isActive as bool),
      price: (l$price as num).toDouble(),
      ewcCode: (l$ewcCode as String),
      partyContractRef: (l$partyContractRef as String?),
      partyContractPart: (l$partyContractPart as String?),
      priceOrigin: fromJson$Enum$Trade2PriceOriginType(
        (l$priceOrigin as String),
      ),
      binNo: (l$binNo as String?),
      weighedBy: (l$weighedBy as String?),
      sealNo: (l$sealNo as String?),
      consgnNo: (l$consgnNo as String?),
      comments: (l$comments as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
  grossWeight;

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
  netWeight;

  final String gradeId;

  final String gradeCode;

  final String gradeName;

  final int lineNumber;

  final String heapId;

  final String heapCode;

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
  rate;

  final String? weightSerial;

  final bool isActive;

  final double price;

  final String ewcCode;

  final String? partyContractRef;

  final String? partyContractPart;

  final Enum$Trade2PriceOriginType priceOrigin;

  final String? binNo;

  final String? weighedBy;

  final String? sealNo;

  final String? consgnNo;

  final String? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight.toJson();
    final l$gradeId = gradeId;
    _resultData['gradeId'] = l$gradeId;
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$gradeName = gradeName;
    _resultData['gradeName'] = l$gradeName;
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$heapId = heapId;
    _resultData['heapId'] = l$heapId;
    final l$heapCode = heapCode;
    _resultData['heapCode'] = l$heapCode;
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$ewcCode = ewcCode;
    _resultData['ewcCode'] = l$ewcCode;
    final l$partyContractRef = partyContractRef;
    _resultData['partyContractRef'] = l$partyContractRef;
    final l$partyContractPart = partyContractPart;
    _resultData['partyContractPart'] = l$partyContractPart;
    final l$priceOrigin = priceOrigin;
    _resultData['priceOrigin'] = toJson$Enum$Trade2PriceOriginType(
      l$priceOrigin,
    );
    final l$binNo = binNo;
    _resultData['binNo'] = l$binNo;
    final l$weighedBy = weighedBy;
    _resultData['weighedBy'] = l$weighedBy;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$consgnNo = consgnNo;
    _resultData['consgnNo'] = l$consgnNo;
    final l$comments = comments;
    _resultData['comments'] = l$comments;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grossWeight = grossWeight;
    final l$netWeight = netWeight;
    final l$gradeId = gradeId;
    final l$gradeCode = gradeCode;
    final l$gradeName = gradeName;
    final l$lineNumber = lineNumber;
    final l$heapId = heapId;
    final l$heapCode = heapCode;
    final l$rate = rate;
    final l$weightSerial = weightSerial;
    final l$isActive = isActive;
    final l$price = price;
    final l$ewcCode = ewcCode;
    final l$partyContractRef = partyContractRef;
    final l$partyContractPart = partyContractPart;
    final l$priceOrigin = priceOrigin;
    final l$binNo = binNo;
    final l$weighedBy = weighedBy;
    final l$sealNo = sealNo;
    final l$consgnNo = consgnNo;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grossWeight,
      l$netWeight,
      l$gradeId,
      l$gradeCode,
      l$gradeName,
      l$lineNumber,
      l$heapId,
      l$heapCode,
      l$rate,
      l$weightSerial,
      l$isActive,
      l$price,
      l$ewcCode,
      l$partyContractRef,
      l$partyContractPart,
      l$priceOrigin,
      l$binNo,
      l$weighedBy,
      l$sealNo,
      l$consgnNo,
      l$comments,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTicketGallery$createTicketGallery$tickets$lines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$gradeId = gradeId;
    final lOther$gradeId = other.gradeId;
    if (l$gradeId != lOther$gradeId) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$gradeName = gradeName;
    final lOther$gradeName = other.gradeName;
    if (l$gradeName != lOther$gradeName) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$heapId = heapId;
    final lOther$heapId = other.heapId;
    if (l$heapId != lOther$heapId) {
      return false;
    }
    final l$heapCode = heapCode;
    final lOther$heapCode = other.heapCode;
    if (l$heapCode != lOther$heapCode) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$ewcCode = ewcCode;
    final lOther$ewcCode = other.ewcCode;
    if (l$ewcCode != lOther$ewcCode) {
      return false;
    }
    final l$partyContractRef = partyContractRef;
    final lOther$partyContractRef = other.partyContractRef;
    if (l$partyContractRef != lOther$partyContractRef) {
      return false;
    }
    final l$partyContractPart = partyContractPart;
    final lOther$partyContractPart = other.partyContractPart;
    if (l$partyContractPart != lOther$partyContractPart) {
      return false;
    }
    final l$priceOrigin = priceOrigin;
    final lOther$priceOrigin = other.priceOrigin;
    if (l$priceOrigin != lOther$priceOrigin) {
      return false;
    }
    final l$binNo = binNo;
    final lOther$binNo = other.binNo;
    if (l$binNo != lOther$binNo) {
      return false;
    }
    final l$weighedBy = weighedBy;
    final lOther$weighedBy = other.weighedBy;
    if (l$weighedBy != lOther$weighedBy) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$consgnNo = consgnNo;
    final lOther$consgnNo = other.consgnNo;
    if (l$consgnNo != lOther$consgnNo) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
    on Mutation$CreateTicketGallery$createTicketGallery$tickets$lines {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines instance,
    TRes Function(
      Mutation$CreateTicketGallery$createTicketGallery$tickets$lines,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines;

  TRes call({
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight?
    grossWeight,
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight?
    netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate? rate,
    String? weightSerial,
    bool? isActive,
    double? price,
    String? ewcCode,
    String? partyContractRef,
    String? partyContractPart,
    Enum$Trade2PriceOriginType? priceOrigin,
    String? binNo,
    String? weighedBy,
    String? sealNo,
    String? consgnNo,
    String? comments,
    String? $__typename,
  });
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight;
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight;
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
    TRes
  >
  get rate;
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines
  _instance;

  final TRes Function(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossWeight = _undefined,
    Object? netWeight = _undefined,
    Object? gradeId = _undefined,
    Object? gradeCode = _undefined,
    Object? gradeName = _undefined,
    Object? lineNumber = _undefined,
    Object? heapId = _undefined,
    Object? heapCode = _undefined,
    Object? rate = _undefined,
    Object? weightSerial = _undefined,
    Object? isActive = _undefined,
    Object? price = _undefined,
    Object? ewcCode = _undefined,
    Object? partyContractRef = _undefined,
    Object? partyContractPart = _undefined,
    Object? priceOrigin = _undefined,
    Object? binNo = _undefined,
    Object? weighedBy = _undefined,
    Object? sealNo = _undefined,
    Object? consgnNo = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight
                as Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight
                as Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight),
      gradeId: gradeId == _undefined || gradeId == null
          ? _instance.gradeId
          : (gradeId as String),
      gradeCode: gradeCode == _undefined || gradeCode == null
          ? _instance.gradeCode
          : (gradeCode as String),
      gradeName: gradeName == _undefined || gradeName == null
          ? _instance.gradeName
          : (gradeName as String),
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      heapId: heapId == _undefined || heapId == null
          ? _instance.heapId
          : (heapId as String),
      heapCode: heapCode == _undefined || heapCode == null
          ? _instance.heapCode
          : (heapCode as String),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate
                as Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      ewcCode: ewcCode == _undefined || ewcCode == null
          ? _instance.ewcCode
          : (ewcCode as String),
      partyContractRef: partyContractRef == _undefined
          ? _instance.partyContractRef
          : (partyContractRef as String?),
      partyContractPart: partyContractPart == _undefined
          ? _instance.partyContractPart
          : (partyContractPart as String?),
      priceOrigin: priceOrigin == _undefined || priceOrigin == null
          ? _instance.priceOrigin
          : (priceOrigin as Enum$Trade2PriceOriginType),
      binNo: binNo == _undefined ? _instance.binNo : (binNo as String?),
      weighedBy: weighedBy == _undefined
          ? _instance.weighedBy
          : (weighedBy as String?),
      sealNo: sealNo == _undefined ? _instance.sealNo : (sealNo as String?),
      consgnNo: consgnNo == _undefined
          ? _instance.consgnNo
          : (consgnNo as String?),
      comments: comments == _undefined
          ? _instance.comments
          : (comments as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
    TRes
  >
  get rate {
    final local$rate = _instance.rate;
    return CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines(
    this._res,
  );

  TRes _res;

  call({
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight?
    grossWeight,
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight?
    netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate? rate,
    String? weightSerial,
    bool? isActive,
    double? price,
    String? ewcCode,
    String? partyContractRef,
    String? partyContractPart,
    Enum$Trade2PriceOriginType? priceOrigin,
    String? binNo,
    String? weighedBy,
    String? sealNo,
    String? consgnNo,
    String? comments,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
    TRes
  >
  get grossWeight =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight.stub(
        _res,
      );

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
    TRes
  >
  get netWeight =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight.stub(
        _res,
      );

  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
    TRes
  >
  get rate =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate.stub(
        _res,
      );
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
    implements Fragment$Trade2TicketFields$lines$grossWeight {
  Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight ||
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
    on Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
    instance,
    TRes Function(
      Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight
  _instance;

  final TRes Function(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$grossWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
    implements Fragment$Trade2TicketFields$lines$netWeight {
  Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight ||
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
    on Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
    instance,
    TRes Function(
      Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight
  _instance;

  final TRes Function(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$netWeight(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
    implements Fragment$Trade2TicketFields$lines$rate {
  Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uom, l$value, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate ||
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
    on Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
    instance,
    TRes Function(
      Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate
  _instance;

  final TRes Function(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$lines$rate(
    this._res,
  );

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets {
  Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets({
    required this.url,
    required this.type,
    this.$__typename = 'Trade2MediaAsset',
  });

  factory Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
      url: (l$url as String),
      type: fromJson$Enum$Trade2MediaAssetType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final Enum$Trade2MediaAssetType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$type = type;
    _resultData['type'] = toJson$Enum$Trade2MediaAssetType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$type, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
    on Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets {
  CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
    Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
  >
  get copyWith =>
      CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
  TRes
> {
  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
    instance,
    TRes Function(
      Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets;

  factory CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets;

  TRes call({
    String? url,
    Enum$Trade2MediaAssetType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
    this._instance,
    this._then,
  );

  final Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets
  _instance;

  final TRes Function(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$Trade2MediaAssetType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
  TRes
>
    implements
        CopyWith$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateTicketGallery$createTicketGallery$tickets$mediaAssets(
    this._res,
  );

  TRes _res;

  call({String? url, Enum$Trade2MediaAssetType? type, String? $__typename}) =>
      _res;
}
