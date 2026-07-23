import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class StaticLabelComponent extends FormComponent {
  final String title;
  final bool isHTML;
  final String message;
  final LabelTypes? messageType;

  StaticLabelComponent.forState({
    required super.state,
    required StaticLabelComponentDTO super.component,
  }) : title = component.title ?? '',
       isHTML = component.isHTML ?? false,
       message = component.message ?? '',
       messageType = component.messageType,
       super.forState();

  static FormDataProviderState generateState(String id) =>
      FormComponent.generateState(id: id);

  @override
  FormComponentInstanceDTO? getData() => null;

  @override
  bool validate() {
    return true;
  }

  @override
  String? validationMessage;
}
