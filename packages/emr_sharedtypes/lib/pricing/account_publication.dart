import 'package:emr_sharedtypes/pricing/publication.dart';
import 'package:emr_sharedtypes/pricing/publication_allowed_products.dart';

class AccountPublication {
  AccountPublication({
    required this.publication,
    required this.allowedProducts,
  });

  final Publication publication;
  final PublicationAllowedProducts allowedProducts;
}
