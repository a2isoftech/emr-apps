import 'package:flutter/material.dart';

class BeamModel extends ChangeNotifier {
  bool hasShearStuds = false;
  bool hasBoltHoles = false;
  bool hasWebStiffeners = false;
  bool hasStructuralPenetrations = false;
  bool hasFabricationItems = false;

  int? countWebStiffeners;
  int? countStructuralPenetrations;

  double? grossWeight;
  double? _heightOfSection;
  double? widthOfSection;
  double? _webThickness;
  double? _flangeThickness;
  double? l1;
  double? l2;
  double? _flangeWidth;
  double? straightnessQxx;
  double? straightnessQyy;

  String? approvedBy;
  String? fabricatedMembers;

  // Height of section getter and setter.
  double? get heightOfSection => _heightOfSection;

  set heightOfSection(double? value) {
    _heightOfSection = value;
    notifyListeners();
  }

  // Flange width getter and setter.
  double? get flangeWidth => _flangeWidth;

  set flangeWidth(double? value) {
    _flangeWidth = value;
    notifyListeners();
  }

  // Web thickness getter and setter.
  double? get webThickness => _webThickness;

  set webThickness(double? value) {
    _webThickness = value;
    notifyListeners();
  }

  // Flange thickness getter and setter.
  double? get flangeThickness => _flangeThickness;

  set flangeThickness(double? value) {
    _flangeThickness = value;
    notifyListeners();
  }
}
