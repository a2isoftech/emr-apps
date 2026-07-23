import 'package:json_annotation/json_annotation.dart';

part 'order_book.g.dart';

@JsonSerializable()
class OrderBook {
  const OrderBook(
    this.id,
    this.name,
    this.gradeType,
  );

    factory OrderBook.fromJson(Map<String, dynamic> json) =>
      _$OrderBookFromJson(json);

  Map<String, dynamic> toJson() => _$OrderBookToJson(this);

  final int id;
  final String gradeType;
  final String name;
}
