import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class DeclarationComponent extends FormComponent {
  final String? message;

  DeclarationComponent.forState({
    required super.state,
    required DeclarationComponentDTO super.component,
    DeclarationInstanceDTO? super.instanceData,
    super.isValid,
  }) : message = component.message,
       super.forState();

  static FormDataProviderState generateState(String id) =>
      FormComponent.generateState(id: id);

  @override
  void changeValue(String newValue) {
    _mapValue(newValue);
    super.changeValue(newValue);
  }

  void _mapValue(String newValue) {
    // checked = newValue;
  }

  @override
  FormComponentInstanceDTO? getData() =>
      DeclarationInstanceDTO(componentId: id, answer: false);

  @override
  bool validate() {
    return true; //todo
  }

  @override
  String? validationMessage;
}
