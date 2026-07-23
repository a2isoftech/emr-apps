import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/trailers/transport_trailer.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class TrailerService {
  TrailerService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<TransportTrailer>>> searchTrailers(
    PagedFilterRequest body,
  ) async {
    final response = await _apiService.postList<TransportTrailer>(
      StringConstants.kTrailerSearch,
      body: body.toQueryParam(),
      fromJsonT: TransportTrailer.fromJson,
    );
    return response;
  }

  Future<TransportTrailer?> getTrailerById(String id) async {
    final encodedTrailerId = Uri.encodeComponent(id);

    final apiResponse = await _apiService.get<TransportTrailer>(
      '${StringConstants.kTrailerUrl}'
      '?encodedId=$encodedTrailerId',
      fromJsonT: (response) =>
          TransportTrailer.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }
}
