import 'package:emr_one_forms_engine/core/models/service/service_models.dart';

abstract class IFormSection {
  String id;
  String? header;
  List<IFormComponent> components = [];

  IFormSection(this.id, {this.header});
}

class FormSection implements IFormSection {
  @override
  List<IFormComponent> components = [];

  @override
  String id;

  @override
  String? header;

  FormSection(this.id, {this.header});
}
