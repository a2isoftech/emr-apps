import 'package:emr_sharedtypes/models/models.dart';

class StocktakeScale extends Scale {
  StocktakeScale({
    required super.name,
    required super.url,
    required super.scaleNumber,
    required super.cameras,
    required super.assetCode,
    required this.profile,
    required this.knownTares,
  });
  final String profile;
  final List<WeightDeduction> knownTares;

  String get key => '${profile}_${name}_$scaleNumber';
}
