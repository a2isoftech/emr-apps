import 'package:collection/collection.dart';
import 'package:emr_one_fire_register/data/shared_preferences_service.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';

class SelectYardController {
  SelectYardController({
    required this.fireRegisterService,
    required this.sharedPreferences,
  });

  final FireRegisterService fireRegisterService;
  final SharedPreferencesService sharedPreferences;
  late String? selectedYard;
  late List<String> possibleYards;

  Future<bool> loadYards() async {
    final device = await fireRegisterService.getPunchDevices();
    possibleYards = device
        .map((device) => device.yardCode.toUpperCase())
        .toSet()
        .toList()
        .sortedBy(
          (yard) => yard,
        );

    return possibleYards.isNotEmpty;
  }

  Future<String> getYard() async {
    await loadYards();
    selectedYard = await sharedPreferences.getDefaultYard();

    if (selectedYard != null &&
        possibleYards.any(
          (yard) => yard.toUpperCase() == selectedYard,
        )) {
      return selectedYard!;
    }

    return '';
  }

  Future<String> setYard(String yard) async {
    await sharedPreferences.setDefaultYard(yard.toUpperCase());
    return yard;
  }
}
