import 'package:emr_one_elv_core/emr_one_elv_core.dart';

enum CatLocationEnum {
  frontOfEngine('Front of Engine'),
  midPipe('Mid-Pipe'),
  rearOfEngine('Rear of Engine'),
  pipe('Pipe'),
  maniFold('Manifold');

  const CatLocationEnum(this.label);
  final String label;

  static Map<int, String> territoryCatLocations(
      ElvTerritory territory,) {
    if (territory == ElvTerritory.uk) {
      return {
        0: CatLocationEnum.frontOfEngine.label,
        1: CatLocationEnum.midPipe.label,
        2: CatLocationEnum.rearOfEngine.label,
      };
    } else if (territory == ElvTerritory.usa) {
      return {
        3: CatLocationEnum.maniFold.label,
        4: CatLocationEnum.pipe.label,
      };
    }
    return {
      0: CatLocationEnum.frontOfEngine.label,
      1: CatLocationEnum.midPipe.label,
      2: CatLocationEnum.rearOfEngine.label,
      3: CatLocationEnum.pipe.label,
      4: CatLocationEnum.maniFold.label,
    };
  }
}
