import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/store/components/component.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

class UrlComponent extends FormComponent {
  final String title;
  final String message;
  final String url;

  UrlComponent.forState({
    required super.state,
    required UrlComponentDTO super.component,
  }) : title = component.title ?? '',
       message = component.message ?? '',
       url = component.url ?? '',
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
