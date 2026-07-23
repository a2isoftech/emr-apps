import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_prefs/graphql/user_order_books.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:http/http.dart';

class OrderBookService {
  OrderBookService(
    this.httpClient,
  );

  final BaseClient httpClient;

  Future<List<OrderBook>> getOrderBooksForUser() async {
    final orderBookList = <OrderBook>[];

    String? nextPage;
    var hasNextPage = true;

    while (hasNextPage) {
      final response = await documentNodeQueryUserOrderBooks.execute(
        httpClient,
        Query$UserOrderBooks.fromJson,
        variables: {'first': 50, 'after': nextPage},
      );

      if (!response.hasErrors() &&
          (response.data?.userOrderBooks?.nodes?.isNotEmpty ?? false)) {
        orderBookList.addAll(
          response.data!.userOrderBooks!.nodes!.map(
            (e) => OrderBook(e.orderBookTypeId, e.orderBookName, e.gradeType),
          ),
        );
        nextPage = response.data?.userOrderBooks?.pageInfo.endCursor;
        hasNextPage =
            response.data?.userOrderBooks?.pageInfo.hasNextPage ?? false;
      } else {
        hasNextPage = false;
      }
    }

    return orderBookList;
  }
}
