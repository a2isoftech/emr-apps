import 'dart:typed_data';

import 'package:psnop/models/ticket_summary/ticket_summary_response_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary_search.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/repository_utils.dart';

class TicketSummaryRepository {
  TicketSummaryRepository({required this.apiHelper}) {
    _repositoryUtils = RepositoryUtils(apiHelper);
  }

  final PsnopApiHelper apiHelper;
  late final RepositoryUtils _repositoryUtils;

  Future<TicketSummaryResponseModel?> fetchTicketSummaries({
    required TicketSummarySearchModel filter,
  }) {
    return _repositoryUtils.post<TicketSummaryResponseModel>(
      url: '/api/ticketsummary/ticketsummary',
      body: filter.toJson(),
    );
  }

  Future<Uint8List?> exportToExcel({
    required TicketSummarySearchModel filter,
  }) {
    return _repositoryUtils.post<Uint8List>(
      url: '/api/ticketsummary/export',
      body: filter.toJson(),
      bodyAsJson: false,
    );
  }

  Future<Uint8List?> exportToPdf({
    required TicketSummarySearchModel filter,
  }) {
    return _repositoryUtils.post<Uint8List>(
      url: '/api/ticketsummary/export',
      body: filter.toJson(),
      accept: 'application/pdf',
      bodyAsJson: false,
    );
  }
}
