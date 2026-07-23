import 'package:emr_account_registration/models/yard.dart';

abstract class StandingDataInterface {
  Future<List<Yard>> populateYard(String countryCode, String selectYardText);

  List<Yard> get yards;
}
