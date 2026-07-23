import 'package:emr_one_forms_engine/core/models/dto/instance/components/component_instance.dart';
import 'package:emr_one_forms_engine/core/models/dto/instance/components/submit_form_instance.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class SubmitFormComponent extends FormComponent {
  SubmitFormComponent()
    : super.forState(state: SubmitFormComponent.generateState(''));

  SubmitFormComponent.forState({required super.state}) : super.forState();

  static FormDataProviderState generateState(String id) =>
      FormComponent.generateState(id: id);

  @override
  FormComponentInstanceDTO? getData() => SubmitFormInstanceDTO(componentId: id);

  @override
  bool validate() {
    return true;
  }

  @override
  String? validationMessage;
}
