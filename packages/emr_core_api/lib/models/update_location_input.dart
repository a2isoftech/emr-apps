import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class UpdateLocationInput {
  UpdateLocationInput({
    required this.location,
    this.toBeDeleted,
  });

  Location location;
  bool? toBeDeleted;
}
