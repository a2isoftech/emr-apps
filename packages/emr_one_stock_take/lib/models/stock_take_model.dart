import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_stock_take/models/models.dart';

class StockTake {
  StockTake({
    required this.name,
    required this.yardCode,
    required this.createdDate,
    required this.conductedBy,
    required this.status,
    required this.originator,
    required this.originatorId,
    required this.productFamily,
    required this.currencyCode,
    required this.defaultUom,
    required this.modifiedDate,
    this.locations = const [],
    this.conductor,
    this.id,
    this.comments = const [],
    this.isRoutineCheck = false,
    this.currentWfEmails = const [],
    this.currentWfLevel,
    this.isVotedCurrentLevel = false,
    this.submitter,
  });
  String? id;
  String name;
  String yardCode;
  DateTime createdDate;
  DateTime modifiedDate;
  String conductedBy;
  Enum$StocktakeStatus status;
  DateTime? stockTakeDateTime;
  String originator;
  String originatorId;
  List<StocktakeLocation> locations;
  String? conductor;
  String productFamily;
  final List<CommentModel> comments;
  bool isRoutineCheck;
  final int? currentWfLevel;
  final List<String> currentWfEmails;
  String currencyCode;
  Enum$Uom defaultUom;
  bool isVotedCurrentLevel;
  String? submitter;
}
