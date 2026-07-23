import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$Trade2TicketFields {
  Fragment$Trade2TicketFields({
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
  });

  factory Fragment$Trade2TicketFields.fromJson(Map<String, dynamic> json) {
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
    return Fragment$Trade2TicketFields(
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
            (e) => Fragment$Trade2TicketFields$lines.fromJson(
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

  final List<Fragment$Trade2TicketFields$lines> lines;

  final String currency;

  final DateTime ticketDate;

  final String? vehicleNo;

  final String? locationCode;

  final String? locationName;

  final String $__typename;

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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Trade2TicketFields ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$Trade2TicketFields
    on Fragment$Trade2TicketFields {
  CopyWith$Fragment$Trade2TicketFields<Fragment$Trade2TicketFields>
  get copyWith => CopyWith$Fragment$Trade2TicketFields(this, (i) => i);
}

abstract class CopyWith$Fragment$Trade2TicketFields<TRes> {
  factory CopyWith$Fragment$Trade2TicketFields(
    Fragment$Trade2TicketFields instance,
    TRes Function(Fragment$Trade2TicketFields) then,
  ) = _CopyWithImpl$Fragment$Trade2TicketFields;

  factory CopyWith$Fragment$Trade2TicketFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Trade2TicketFields;

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
    List<Fragment$Trade2TicketFields$lines>? lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
  });
  TRes lines(
    Iterable<Fragment$Trade2TicketFields$lines> Function(
      Iterable<
        CopyWith$Fragment$Trade2TicketFields$lines<
          Fragment$Trade2TicketFields$lines
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$Trade2TicketFields<TRes>
    implements CopyWith$Fragment$Trade2TicketFields<TRes> {
  _CopyWithImpl$Fragment$Trade2TicketFields(this._instance, this._then);

  final Fragment$Trade2TicketFields _instance;

  final TRes Function(Fragment$Trade2TicketFields) _then;

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
  }) => _then(
    Fragment$Trade2TicketFields(
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
          : (lines as List<Fragment$Trade2TicketFields$lines>),
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
    ),
  );

  TRes lines(
    Iterable<Fragment$Trade2TicketFields$lines> Function(
      Iterable<
        CopyWith$Fragment$Trade2TicketFields$lines<
          Fragment$Trade2TicketFields$lines
        >
      >,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Fragment$Trade2TicketFields$lines(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$Trade2TicketFields<TRes>
    implements CopyWith$Fragment$Trade2TicketFields<TRes> {
  _CopyWithStubImpl$Fragment$Trade2TicketFields(this._res);

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
    List<Fragment$Trade2TicketFields$lines>? lines,
    String? currency,
    DateTime? ticketDate,
    String? vehicleNo,
    String? locationCode,
    String? locationName,
    String? $__typename,
  }) => _res;

  lines(_fn) => _res;
}

const fragmentDefinitionTrade2TicketFields = FragmentDefinitionNode(
  name: NameNode(value: 'Trade2TicketFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Trade2Ticket'), isNonNull: false),
  ),
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
        name: NameNode(value: 'key'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'trade2Key'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'partyAccountNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'partyName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'depotNo'),
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
        name: NameNode(value: 'yardCode'),
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
        name: NameNode(value: 'ticketCategory'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'publishedToTrade'),
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
        name: NameNode(value: 'createdDateEpoch'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'lines'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'grossWeight'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
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
              name: NameNode(value: 'netWeight'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
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
              name: NameNode(value: 'gradeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'gradeCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'gradeName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'lineNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'heapId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'heapCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'rate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'uom'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
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
              name: NameNode(value: 'weightSerial'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isActive'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'price'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'ewcCode'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'partyContractRef'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'partyContractPart'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'priceOrigin'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'binNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'weighedBy'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'sealNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'consgnNo'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'comments'),
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
        name: NameNode(value: 'currency'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketDate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicleNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'locationCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'locationName'),
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
);
const documentNodeFragmentTrade2TicketFields = DocumentNode(
  definitions: [fragmentDefinitionTrade2TicketFields],
);

class Fragment$Trade2TicketFields$lines {
  Fragment$Trade2TicketFields$lines({
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

  factory Fragment$Trade2TicketFields$lines.fromJson(
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
    return Fragment$Trade2TicketFields$lines(
      grossWeight: Fragment$Trade2TicketFields$lines$grossWeight.fromJson(
        (l$grossWeight as Map<String, dynamic>),
      ),
      netWeight: Fragment$Trade2TicketFields$lines$netWeight.fromJson(
        (l$netWeight as Map<String, dynamic>),
      ),
      gradeId: (l$gradeId as String),
      gradeCode: (l$gradeCode as String),
      gradeName: (l$gradeName as String),
      lineNumber: (l$lineNumber as int),
      heapId: (l$heapId as String),
      heapCode: (l$heapCode as String),
      rate: Fragment$Trade2TicketFields$lines$rate.fromJson(
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

  final Fragment$Trade2TicketFields$lines$grossWeight grossWeight;

  final Fragment$Trade2TicketFields$lines$netWeight netWeight;

  final String gradeId;

  final String gradeCode;

  final String gradeName;

  final int lineNumber;

  final String heapId;

  final String heapCode;

  final Fragment$Trade2TicketFields$lines$rate rate;

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
    if (other is! Fragment$Trade2TicketFields$lines ||
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

extension UtilityExtension$Fragment$Trade2TicketFields$lines
    on Fragment$Trade2TicketFields$lines {
  CopyWith$Fragment$Trade2TicketFields$lines<Fragment$Trade2TicketFields$lines>
  get copyWith => CopyWith$Fragment$Trade2TicketFields$lines(this, (i) => i);
}

abstract class CopyWith$Fragment$Trade2TicketFields$lines<TRes> {
  factory CopyWith$Fragment$Trade2TicketFields$lines(
    Fragment$Trade2TicketFields$lines instance,
    TRes Function(Fragment$Trade2TicketFields$lines) then,
  ) = _CopyWithImpl$Fragment$Trade2TicketFields$lines;

  factory CopyWith$Fragment$Trade2TicketFields$lines.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Trade2TicketFields$lines;

  TRes call({
    Fragment$Trade2TicketFields$lines$grossWeight? grossWeight,
    Fragment$Trade2TicketFields$lines$netWeight? netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Fragment$Trade2TicketFields$lines$rate? rate,
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
  CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes> get grossWeight;
  CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> get netWeight;
  CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> get rate;
}

class _CopyWithImpl$Fragment$Trade2TicketFields$lines<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines<TRes> {
  _CopyWithImpl$Fragment$Trade2TicketFields$lines(this._instance, this._then);

  final Fragment$Trade2TicketFields$lines _instance;

  final TRes Function(Fragment$Trade2TicketFields$lines) _then;

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
    Fragment$Trade2TicketFields$lines(
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight as Fragment$Trade2TicketFields$lines$grossWeight),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight as Fragment$Trade2TicketFields$lines$netWeight),
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
          : (rate as Fragment$Trade2TicketFields$lines$rate),
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

  CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes> get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Fragment$Trade2TicketFields$lines$grossWeight(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Fragment$Trade2TicketFields$lines$netWeight(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Fragment$Trade2TicketFields$lines$rate(
      local$rate,
      (e) => call(rate: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$Trade2TicketFields$lines<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines<TRes> {
  _CopyWithStubImpl$Fragment$Trade2TicketFields$lines(this._res);

  TRes _res;

  call({
    Fragment$Trade2TicketFields$lines$grossWeight? grossWeight,
    Fragment$Trade2TicketFields$lines$netWeight? netWeight,
    String? gradeId,
    String? gradeCode,
    String? gradeName,
    int? lineNumber,
    String? heapId,
    String? heapCode,
    Fragment$Trade2TicketFields$lines$rate? rate,
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

  CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes>
  get grossWeight =>
      CopyWith$Fragment$Trade2TicketFields$lines$grossWeight.stub(_res);

  CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> get netWeight =>
      CopyWith$Fragment$Trade2TicketFields$lines$netWeight.stub(_res);

  CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> get rate =>
      CopyWith$Fragment$Trade2TicketFields$lines$rate.stub(_res);
}

class Fragment$Trade2TicketFields$lines$grossWeight {
  Fragment$Trade2TicketFields$lines$grossWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Fragment$Trade2TicketFields$lines$grossWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$Trade2TicketFields$lines$grossWeight(
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
    if (other is! Fragment$Trade2TicketFields$lines$grossWeight ||
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

extension UtilityExtension$Fragment$Trade2TicketFields$lines$grossWeight
    on Fragment$Trade2TicketFields$lines$grossWeight {
  CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<
    Fragment$Trade2TicketFields$lines$grossWeight
  >
  get copyWith =>
      CopyWith$Fragment$Trade2TicketFields$lines$grossWeight(this, (i) => i);
}

abstract class CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes> {
  factory CopyWith$Fragment$Trade2TicketFields$lines$grossWeight(
    Fragment$Trade2TicketFields$lines$grossWeight instance,
    TRes Function(Fragment$Trade2TicketFields$lines$grossWeight) then,
  ) = _CopyWithImpl$Fragment$Trade2TicketFields$lines$grossWeight;

  factory CopyWith$Fragment$Trade2TicketFields$lines$grossWeight.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$grossWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Fragment$Trade2TicketFields$lines$grossWeight<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes> {
  _CopyWithImpl$Fragment$Trade2TicketFields$lines$grossWeight(
    this._instance,
    this._then,
  );

  final Fragment$Trade2TicketFields$lines$grossWeight _instance;

  final TRes Function(Fragment$Trade2TicketFields$lines$grossWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$Trade2TicketFields$lines$grossWeight(
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

class _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$grossWeight<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$grossWeight<TRes> {
  _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$grossWeight(this._res);

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Fragment$Trade2TicketFields$lines$netWeight {
  Fragment$Trade2TicketFields$lines$netWeight({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Fragment$Trade2TicketFields$lines$netWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$Trade2TicketFields$lines$netWeight(
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
    if (other is! Fragment$Trade2TicketFields$lines$netWeight ||
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

extension UtilityExtension$Fragment$Trade2TicketFields$lines$netWeight
    on Fragment$Trade2TicketFields$lines$netWeight {
  CopyWith$Fragment$Trade2TicketFields$lines$netWeight<
    Fragment$Trade2TicketFields$lines$netWeight
  >
  get copyWith =>
      CopyWith$Fragment$Trade2TicketFields$lines$netWeight(this, (i) => i);
}

abstract class CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> {
  factory CopyWith$Fragment$Trade2TicketFields$lines$netWeight(
    Fragment$Trade2TicketFields$lines$netWeight instance,
    TRes Function(Fragment$Trade2TicketFields$lines$netWeight) then,
  ) = _CopyWithImpl$Fragment$Trade2TicketFields$lines$netWeight;

  factory CopyWith$Fragment$Trade2TicketFields$lines$netWeight.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$netWeight;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Fragment$Trade2TicketFields$lines$netWeight<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> {
  _CopyWithImpl$Fragment$Trade2TicketFields$lines$netWeight(
    this._instance,
    this._then,
  );

  final Fragment$Trade2TicketFields$lines$netWeight _instance;

  final TRes Function(Fragment$Trade2TicketFields$lines$netWeight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$Trade2TicketFields$lines$netWeight(
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

class _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$netWeight<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$netWeight<TRes> {
  _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$netWeight(this._res);

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}

class Fragment$Trade2TicketFields$lines$rate {
  Fragment$Trade2TicketFields$lines$rate({
    required this.uom,
    required this.value,
    required this.id,
    this.$__typename = 'Trade2UomValue',
  });

  factory Fragment$Trade2TicketFields$lines$rate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$Trade2TicketFields$lines$rate(
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
    if (other is! Fragment$Trade2TicketFields$lines$rate ||
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

extension UtilityExtension$Fragment$Trade2TicketFields$lines$rate
    on Fragment$Trade2TicketFields$lines$rate {
  CopyWith$Fragment$Trade2TicketFields$lines$rate<
    Fragment$Trade2TicketFields$lines$rate
  >
  get copyWith =>
      CopyWith$Fragment$Trade2TicketFields$lines$rate(this, (i) => i);
}

abstract class CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> {
  factory CopyWith$Fragment$Trade2TicketFields$lines$rate(
    Fragment$Trade2TicketFields$lines$rate instance,
    TRes Function(Fragment$Trade2TicketFields$lines$rate) then,
  ) = _CopyWithImpl$Fragment$Trade2TicketFields$lines$rate;

  factory CopyWith$Fragment$Trade2TicketFields$lines$rate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$rate;

  TRes call({Enum$Uom? uom, double? value, int? id, String? $__typename});
}

class _CopyWithImpl$Fragment$Trade2TicketFields$lines$rate<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> {
  _CopyWithImpl$Fragment$Trade2TicketFields$lines$rate(
    this._instance,
    this._then,
  );

  final Fragment$Trade2TicketFields$lines$rate _instance;

  final TRes Function(Fragment$Trade2TicketFields$lines$rate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$Trade2TicketFields$lines$rate(
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

class _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$rate<TRes>
    implements CopyWith$Fragment$Trade2TicketFields$lines$rate<TRes> {
  _CopyWithStubImpl$Fragment$Trade2TicketFields$lines$rate(this._res);

  TRes _res;

  call({Enum$Uom? uom, double? value, int? id, String? $__typename}) => _res;
}
