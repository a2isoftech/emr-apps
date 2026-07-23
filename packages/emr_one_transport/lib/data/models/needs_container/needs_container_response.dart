import 'package:emr_one_transport/data/models/needs_container/container_without_asset_number.dart';

class NeedsContainerResponse {
  NeedsContainerResponse(this.totalItems, this.containerList);

  final int totalItems;
  final List<ContainerWithoutAssetNumber> containerList;
}
