import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class Publication {
  Publication({
    required this.id,
    required this.name,
    this.availableProducts,
    this.availableYards,
  });

  final String id;
  final String name;
  final List<Product>? availableProducts;
  final List<Yard>? availableYards;
}
