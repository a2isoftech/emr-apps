import 'package:emr_core_api/graphql/queries/yard_app/load_outs/search_load_outs.graphql.dart';

extension LoadOutSearchExt on Query$SearchLoadOuts$loadOuts$nodes {
  int totalImages() {
    final images = [
      containerImages.heap,
      containerImages.empty,
      containerImages.halfLoadedWithContainerNumber,
      containerImages.fullyLoaded,
      containerImages.fullyLoadedOneDoorShut,
      containerImages.fullyLoadedOneDoorShutRadiation,
      containerImages.fullyLoadedBothDoorsShutSeals,
      containerImages.leftSideQualityCheck,
      containerImages.rightSideQualityCheck,
    ];
    images.addAll(containerImages.additionalImages);
    images.addAll(containerSealDetails.map((s) => s.imagePath));
    return images
        .where((path) => path != null && path.trim().isNotEmpty)
        .length;
  }
}
