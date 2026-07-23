import 'package:emr_one_elv_core/models/batch_quote_search_criteria.dart';
import 'package:equatable/equatable.dart';

class QuoteHistoryRequest extends Equatable {
  const QuoteHistoryRequest({
    required this.sortField,
    required this.sortAscending,
    required this.pageSize,
    required this.yardCodes,
    this.searchCriteria,
    this.quotedStatus,
    this.createdAfter,
    this.createdTo,
  });
  final String? searchCriteria;
  final List<String> yardCodes;
  final QuoteStatusEnum? quotedStatus;
  final DateTime? createdAfter;
  final DateTime? createdTo;
  final BatchQuoteSearchSortFieldEnum sortField;
  final bool sortAscending;
  final int pageSize;

  QuoteHistoryRequest empty() {
    return const QuoteHistoryRequest(
      sortField: BatchQuoteSearchSortFieldEnum.createdDate,
      sortAscending: false,
      pageSize: 10,
      yardCodes: [],
    );
  }

  @override
  List<Object?> get props => [
        searchCriteria,
        quotedStatus,
        createdAfter,
        createdTo,
        sortField,
        sortAscending,
        pageSize,
      ];
}
