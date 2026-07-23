import 'package:emr_one_tickets/models/beam.dart';
import 'package:emr_one_tickets/services/beams_service.dart';
import 'package:flutter/material.dart';

class BeamController {
  BeamController({
    required this.beamsService,
  }) {
    formKey = GlobalKey<FormState>();
    model = BeamModel();
  }

  final BeamsService beamsService;
  late final GlobalKey<FormState> formKey;

  late BeamModel model;

  void saveBeam() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      beamsService.saveBeam(model);
    }
  }
}
