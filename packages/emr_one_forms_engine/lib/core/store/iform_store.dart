import 'package:emr_one_forms_engine/core/models/dto/dto_models.dart';
import 'package:emr_one_forms_engine/core/models/service/service_models.dart';
import 'package:emr_one_forms_engine/core/models/submit_parameters.dart';
import 'package:emr_one_forms_engine/core/services/interfaces/idisposable.dart';
import 'package:emr_one_forms_engine/core/store/data_providers/data_provider_bloc/data_provider_bloc.dart';

import 'components/section.dart';

abstract class IFormStore implements IAsyncDisposable {
  String? get title;

  Iterable<IFormSection> get formSections;

  String? get instanceId;

  String? get templateId;

  String? get scheduledItemId;

  InstanceJobData? get jobInfo;

  FormDataProviderBloc getDataProvider(String id);

  IFormComponent getComponent(String id);

  FormInstanceDTO getInstanceData();

  Future<void> submit(SubmitParameters params);

  bool validate();

  Future<void> waitForSave();
}
