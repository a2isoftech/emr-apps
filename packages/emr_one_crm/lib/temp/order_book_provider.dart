import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class OrderBookProvider extends EmrUtilSuggestionBaseApiProvider<OrderBook> {
  OrderBookProvider(this.orderBooks);
  final List<OrderBook> orderBooks;

  @override
  Future<List<OrderBook>> getSuggestions(String query) async {
    final pattern = RegExp(query, caseSensitive: false);

    return Future.value(
      orderBooks.where((element) => element.name.contains(pattern)).toList(),
    );
  }
}
