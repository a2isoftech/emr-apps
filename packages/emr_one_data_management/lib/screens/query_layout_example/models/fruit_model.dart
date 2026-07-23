import 'package:emr_one_data_management/screens/query_layout_example/models/fruit_types.dart';

class Fruit {
  Fruit({
    required this.type,
    required this.name,
    required this.color,
    required this.calories,
    required this.sugarContent,
  });

  final FruitType type;
  final String name;
  final String color;
  final int calories; // per 100g
  final double sugarContent; // grams per 100g
}
