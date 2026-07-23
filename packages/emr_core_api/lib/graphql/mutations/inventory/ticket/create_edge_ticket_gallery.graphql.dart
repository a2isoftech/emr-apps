import '../../../fragments/inventory/ticket/account_details_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/media_asset_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_account.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/ticket_line_fragment.graphql.dart';
import '../../../fragments/inventory/ticket/uom_value.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../fragments/payments/payment_deduction.graphql.dart';
import '../../../fragments/payments/payment_deduction_items.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateEdgeTicketGallery {
  factory Variables$Mutation$CreateEdgeTicketGallery({
    required Input$CreateEdgeTicketGalleryInput input,
  }) => Variables$Mutation$CreateEdgeTicketGallery._({r'input': input});

  Variables$Mutation$CreateEdgeTicketGallery._(this._$data);

  factory Variables$Mutation$CreateEdgeTicketGallery.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateEdgeTicketGalleryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateEdgeTicketGallery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEdgeTicketGalleryInput get input =>
      (_$data['input'] as Input$CreateEdgeTicketGalleryInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateEdgeTicketGallery<
    Variables$Mutation$CreateEdgeTicketGallery
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateEdgeTicketGallery(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateEdgeTicketGallery ||
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

abstract class CopyWith$Variables$Mutation$CreateEdgeTicketGallery<TRes> {
  factory CopyWith$Variables$Mutation$CreateEdgeTicketGallery(
    Variables$Mutation$CreateEdgeTicketGallery instance,
    TRes Function(Variables$Mutation$CreateEdgeTicketGallery) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateEdgeTicketGallery;

  factory CopyWith$Variables$Mutation$CreateEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateEdgeTicketGallery;

  TRes call({Input$CreateEdgeTicketGalleryInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$CreateEdgeTicketGallery<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateEdgeTicketGallery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateEdgeTicketGallery _instance;

  final TRes Function(Variables$Mutation$CreateEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateEdgeTicketGallery._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateEdgeTicketGalleryInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateEdgeTicketGallery<TRes>
    implements CopyWith$Variables$Mutation$CreateEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateEdgeTicketGallery(this._res);

  TRes _res;

  call({Input$CreateEdgeTicketGalleryInput? input}) => _res;
}

class Mutation$CreateEdgeTicketGallery {
  Mutation$CreateEdgeTicketGallery({
    required this.createEdgeTicketGallery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateEdgeTicketGallery.fromJson(Map<String, dynamic> json) {
    final l$createEdgeTicketGallery = json['createEdgeTicketGallery'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEdgeTicketGallery(
      createEdgeTicketGallery:
          Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery.fromJson(
            (l$createEdgeTicketGallery as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery
  createEdgeTicketGallery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createEdgeTicketGallery = createEdgeTicketGallery;
    _resultData['createEdgeTicketGallery'] = l$createEdgeTicketGallery.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createEdgeTicketGallery = createEdgeTicketGallery;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createEdgeTicketGallery, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createEdgeTicketGallery = createEdgeTicketGallery;
    final lOther$createEdgeTicketGallery = other.createEdgeTicketGallery;
    if (l$createEdgeTicketGallery != lOther$createEdgeTicketGallery) {
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

extension UtilityExtension$Mutation$CreateEdgeTicketGallery
    on Mutation$CreateEdgeTicketGallery {
  CopyWith$Mutation$CreateEdgeTicketGallery<Mutation$CreateEdgeTicketGallery>
  get copyWith => CopyWith$Mutation$CreateEdgeTicketGallery(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateEdgeTicketGallery<TRes> {
  factory CopyWith$Mutation$CreateEdgeTicketGallery(
    Mutation$CreateEdgeTicketGallery instance,
    TRes Function(Mutation$CreateEdgeTicketGallery) then,
  ) = _CopyWithImpl$Mutation$CreateEdgeTicketGallery;

  factory CopyWith$Mutation$CreateEdgeTicketGallery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery;

  TRes call({
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery?
    createEdgeTicketGallery,
    String? $__typename,
  });
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<TRes>
  get createEdgeTicketGallery;
}

class _CopyWithImpl$Mutation$CreateEdgeTicketGallery<TRes>
    implements CopyWith$Mutation$CreateEdgeTicketGallery<TRes> {
  _CopyWithImpl$Mutation$CreateEdgeTicketGallery(this._instance, this._then);

  final Mutation$CreateEdgeTicketGallery _instance;

  final TRes Function(Mutation$CreateEdgeTicketGallery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createEdgeTicketGallery = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateEdgeTicketGallery(
      createEdgeTicketGallery:
          createEdgeTicketGallery == _undefined ||
              createEdgeTicketGallery == null
          ? _instance.createEdgeTicketGallery
          : (createEdgeTicketGallery
                as Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<TRes>
  get createEdgeTicketGallery {
    final local$createEdgeTicketGallery = _instance.createEdgeTicketGallery;
    return CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
      local$createEdgeTicketGallery,
      (e) => call(createEdgeTicketGallery: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery<TRes>
    implements CopyWith$Mutation$CreateEdgeTicketGallery<TRes> {
  _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery(this._res);

  TRes _res;

  call({
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery?
    createEdgeTicketGallery,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<TRes>
  get createEdgeTicketGallery =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery.stub(
        _res,
      );
}

const documentNodeMutationCreateEdgeTicketGallery = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateEdgeTicketGallery'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateEdgeTicketGalleryInput'),
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
            name: NameNode(value: 'createEdgeTicketGallery'),
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
                        name: NameNode(value: 'TicketFields'),
                        directives: [],
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
                  name: NameNode(value: 'created'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userInfoId'),
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
                  name: NameNode(value: 'modified'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'at'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userInfoId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userName'),
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
                  name: NameNode(value: 'tags'),
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
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
  ],
);

class Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery {
  Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery({
    required this.id,
    required this.title,
    required this.excludedImageUrls,
    this.publicUrl,
    required this.tickets,
    required this.created,
    required this.modified,
    required this.tags,
    required this.active,
    this.$__typename = 'EdgeTicketGallery',
  });

  factory Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$excludedImageUrls = json['excludedImageUrls'];
    final l$publicUrl = json['publicUrl'];
    final l$tickets = json['tickets'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$tags = json['tags'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
      id: (l$id as String),
      title: (l$title as String),
      excludedImageUrls: (l$excludedImageUrls as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      publicUrl: (l$publicUrl as String?),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      created:
          Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created.fromJson(
            (l$created as Map<String, dynamic>),
          ),
      modified:
          Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified.fromJson(
            (l$modified as Map<String, dynamic>),
          ),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final List<String> excludedImageUrls;

  final String? publicUrl;

  final List<Fragment$TicketFields> tickets;

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created
  created;

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified
  modified;

  final List<String> tags;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$excludedImageUrls = excludedImageUrls;
    final l$publicUrl = publicUrl;
    final l$tickets = tickets;
    final l$created = created;
    final l$modified = modified;
    final l$tags = tags;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$excludedImageUrls.map((v) => v)),
      l$publicUrl,
      Object.hashAll(l$tickets.map((v) => v)),
      l$created,
      l$modified,
      Object.hashAll(l$tags.map((v) => v)),
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery ||
        runtimeType != other.runtimeType) {
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery
    on Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery {
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery
  >
  get copyWith =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
  TRes
> {
  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery instance,
    TRes Function(Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery)
    then,
  ) = _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery;

  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery;

  TRes call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    List<Fragment$TicketFields>? tickets,
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created? created,
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified? modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  });
  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  );
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
    TRes
  >
  get created;
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
    TRes
  >
  get modified;
}

class _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
    this._instance,
    this._then,
  );

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery _instance;

  final TRes Function(Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? excludedImageUrls = _undefined,
    Object? publicUrl = _undefined,
    Object? tickets = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? tags = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
      id: id == _undefined || id == null ? _instance.id : (id as String),
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
          : (tickets as List<Fragment$TicketFields>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created
                as Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map((e) => CopyWith$Fragment$TicketFields(e, (i) => i)),
    ).toList(),
  );

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
    TRes
  >
  get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
    TRes
  >
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? title,
    List<String>? excludedImageUrls,
    String? publicUrl,
    List<Fragment$TicketFields>? tickets,
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created? created,
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified? modified,
    List<String>? tags,
    bool? active,
    String? $__typename,
  }) => _res;

  tickets(_fn) => _res;

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
    TRes
  >
  get created =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created.stub(
        _res,
      );

  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
    TRes
  >
  get modified =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified.stub(
        _res,
      );
}

class Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created {
  Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created
    on Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created {
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created
  >
  get copyWith =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
  TRes
> {
  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created instance,
    TRes Function(
      Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created;

  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
    this._instance,
    this._then,
  );

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created
  _instance;

  final TRes Function(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified {
  Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified({
    required this.at,
    required this.userInfoId,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
      at: DateTime.parse((l$at as String)),
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userInfoId;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userInfoId, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified
    on Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified {
  CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified
  >
  get copyWith =>
      CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
  TRes
> {
  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified instance,
    TRes Function(
      Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified;

  factory CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified;

  TRes call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
    this._instance,
    this._then,
  );

  final Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified
  _instance;

  final TRes Function(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
  TRes
>
    implements
        CopyWith$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateEdgeTicketGallery$createEdgeTicketGallery$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userInfoId,
    String? userName,
    String? $__typename,
  }) => _res;
}
