extension TerrirotyExtensions on String {
  static const euTerritories = {'A21', 'A24', 'A25', 'A26'};
  
  bool get isEuTerritory {
    final code = trim().toUpperCase();
    return euTerritories.contains(code);
  }
}
