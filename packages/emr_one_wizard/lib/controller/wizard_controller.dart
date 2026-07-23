import 'package:flutter/material.dart';

import '../wizard_step.dart';

abstract class EOWizardController extends ChangeNotifier {
  final List<EOWizardStep> steps;
  int _currentStep = 0;
  int _stepReached = 0;

  EOWizardController(
    this.steps, {
    int initialStep = 0,
  }) {
    if (initialStep != 0) {
      _currentStep = initialStep;
    }
  }

  void nextStep() {
    if (_currentStep < steps.length - 1) {
      _currentStep++;
    } else {
      _currentStep = 0;
    }
    if (_stepReached < _currentStep) {
      _stepReached = _currentStep;
    }
    notifyListeners();
  }

  void previousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }

  void gotoStep(int step) {
    if (step < steps.length - 1) {
      _currentStep = step;
      notifyListeners();
    }
  }

  int getStepReached() {
    return _stepReached;
  }

  String? getCustomStepNumber() => null;

  String? getCustomStepNumberHeading() => null;

  int get getStepNumber => _currentStep;

  EOWizardStep get currentStep => steps[_currentStep];
}
