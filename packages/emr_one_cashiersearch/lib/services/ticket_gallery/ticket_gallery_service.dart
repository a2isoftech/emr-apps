import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:http/http.dart';

class TicketGalleryService {
  TicketGalleryService({
    required this.httpClient,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;

  Future<Query$getMyEdgeTicketGalleries> getMyTicketGalleries({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<Input$EdgeTicketGallerySortInput>? order,
  }) async {
    final response = await documentNodeQuerygetMyEdgeTicketGalleries.execute(
      httpClient,
      Query$getMyEdgeTicketGalleries.fromJson,
      variables: Variables$Query$getMyEdgeTicketGalleries(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        searchString: query,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!;
  }
}
