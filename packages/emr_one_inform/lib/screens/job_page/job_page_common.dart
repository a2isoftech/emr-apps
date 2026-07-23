import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart' as conn;
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/form_render.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/graphql/queries/formInstanceDocument.graphql.dart';
import 'package:emr_one_inform/graphql/queries/formTemplateDocument.graphql.dart';
import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/form_template.dart';
import 'package:emr_one_inform/models/json_template_document.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/job_page/job_page_controller.dart';
import 'package:emr_one_inform/service/interfaces/iconnectivity_service.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class JobPageCommon extends BasePage<JobPageController> {
  JobPageCommon({
    required this.scheduledItemId,
    required this.isPreview,
    required this.isDigitalSignatureRequired,
    required this.isAppBarRequired,
    required this.emailsToNotify,
    this.instanceId,
    this.templateId,
    this.jobData,
    super.key,
  });

  final String? templateId;
  final InstanceJobData? jobData;
  final String? instanceId;
  final String scheduledItemId;
  final bool isPreview;
  final bool isDigitalSignatureRequired;
  final bool isAppBarRequired;
  final List<String>? emailsToNotify;
  late final FormRenderer? formRenderer;

  void setBusy({bool value = false}) {
    setState(() {
      controller.isBusy = value;
    });
  }

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return jobData?.workOrderId ?? 'Job';
  }

  @override
  void initState(BuildContext context) {}

  @override
  Widget widgetBuilder(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) async {
        setBusy(value: true);
        await controller.refreshJobCounts();
        if (!context.mounted) return;
        context.pop();
      },
      child: FutureBuilder<LoadedFormData>(
        builder: (context, snapshot) {
          if (controller.isBusy) {
            return showSpinner();
          } else {
            if (snapshot.hasData) {
              if (!snapshot.data!.success) {
                return _loadingView(true);
              }
              try {
                return formRenderer!;
              } catch (e) {
                Provider.of<FormsEngine>(context, listen: false)
                    .loadTemplateFromJson(
                  snapshot.data!.templateDocument!,
                  scheduledItemId,
                  instanceJson: snapshot.data!.instanceDocument,
                  jobDetails: jobData,
                  isPreview: isPreview,
                  isDigitalSignatureRequired: isDigitalSignatureRequired,
                  isAppBarRequired: isAppBarRequired,
                  emailsToNotify: emailsToNotify,
                );
                formRenderer = Provider.of<FormsEngine>(context, listen: false)
                    .buildRenderer();
                return formRenderer!;
              }
            } else {
              return _loadingView(false);
            }
          }
        },
        future: _loadDetails(context),
      ),
    );
  }

  @override
  Widget? getBottomBar(Yard yard) => null;

  Future<LoadedFormData> _loadDetails(BuildContext context) async {
    String? instanceJson;
    var templateId = this.templateId;
    final userPreferencesRepository =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final formEngine = Provider.of<FormsEngine>(context, listen: false);
    final httpClient = Provider.of<ResilientHttpClient>(context, listen: false);

    /// if app is offline, return the json document from the instance.
    if (await connectivityStatus(context) == conn.ConnectivityResult.none) {
      final savedTemplates =
          await userPreferencesRepository.getTemplateDocument() ?? [];
      InformLogger.logEvent(
        EmrOneInformTelemetry.kYardSelection,
        params: {
          'message':
              '''Device offline Fetching instance data in local DB for $scheduledItemId - $instanceId''',
        },
      );
      final localData = await FormsEngine.services
          .get<IDatabaseManager>()
          .findLocalInstancesForTemplates();
      if (localData != null) {
        for (var i = 0; i < localData.length; i++) {
          if (localData[i].uuid == instanceId) {
            instanceJson = localData[i].json;
            templateId = FormInstanceDTO.fromJson(
              jsonDecode(localData[i].json) as Map<String, dynamic>,
            ).templateId;
            break;
          }
        }
        final cachedTemplate =
            savedTemplates.where((x) => x.templateId == templateId).first;
        final cachedTemplateDoc = cachedTemplate.document;

        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message':
                'Data available in local DB for $scheduledItemId - $instanceId',
          },
        );

        return LoadedFormData(
          templateDocument: cachedTemplateDoc,
          instanceDocument: instanceJson,
        );
      }
    }

    if (instanceId != null) {
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobPage,
        params: {
          'message': 'Waiting for FormsEngine to initialized',
        },
      );

      await formEngine.initialize;
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobPage,
        params: {
          'message': 'FormsEngine initialized',
        },
      );

      // see if there's a local instance that hasn't been uploaded first
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobPage,
        params: {
          'message':
              '''Checking if app has local data for $scheduledItemId - $instanceId''',
        },
      );

      final localData = await FormsEngine.services
          .get<IDatabaseManager>()
          .findInstance(instanceId!);

      if (localData?.isUploaded == false) {
        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message':
                '''Data found in localDB for $scheduledItemId - $instanceId, which has not uploaded to server''',
          },
        );

        instanceJson = localData!.json;
        templateId = FormInstanceDTO.fromJson(
          jsonDecode(localData.json) as Map<String, dynamic>,
        ).templateId;
      } else {
        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message':
                '''Data found in localDB for $scheduledItemId - $instanceId, which is uploaded to server, trying to get the latest version of data from server''',
          },
        );

        final details = await documentNodeQueryFormInstanceDocument.execute(
          httpClient,
          Query$FormInstanceDocument.fromJson,
          variables: Variables$Query$FormInstanceDocument(id: instanceId!),
        );

        if (details.hasErrors() || details.data?.formInstance == null) {
          InformLogger.logEvent(
            EmrOneInformTelemetry.kJobPage,
            params: {
              'message':
                  '''Fetching instance data for $scheduledItemId - $instanceId from server failed''',
            },
          );

          return LoadedFormData.failed();
        }

        final instance =
            FormInstance.fromJson(details.data!.formInstance!.toJson());

        if (instance.template?.document == null || instance.document == null) {
          InformLogger.logEvent(
            EmrOneInformTelemetry.kJobPage,
            params: {
              'message':
                  '''Instance data is not valid for $scheduledItemId - $instanceId''',
            },
          );

          return LoadedFormData.failed();
        }

        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message':
                'Loading forms engine for $scheduledItemId - $instanceId',
          },
        );

        return LoadedFormData(
          templateDocument: instance.template!.document,
          instanceDocument: instance.document,
        );
      }
    }

    if (templateId != null) {
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobPage,
        params: {
          'message':
              '''Trying to load new job in Engine. Fetching template: $templateId''',
        },
      );

      final details = await documentNodeQueryFormTemplateDocument.execute(
        httpClient,
        Query$FormTemplateDocument.fromJson,
        variables: Variables$Query$FormTemplateDocument(id: templateId),
      );

      if (details.hasErrors() || details.data?.formTemplate == null) {
        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message': 'Could not fetching template: $templateId',
          },
        );

        return LoadedFormData.failed();
      }

      final template =
          FormTemplate.fromJson(details.data!.formTemplate!.toJson());

      if (template.document == null) {
        InformLogger.logEvent(
          EmrOneInformTelemetry.kJobPage,
          params: {
            'message': 'Template: $templateId, invalid data found',
          },
        );

        return LoadedFormData.failed();
      }

      if (context.mounted) {
        await _saveTemplate(context, templateId, template);
      }

      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobPage,
        params: {
          'message': 'Loading forms engine for $scheduledItemId - $instanceId',
        },
      );

      return LoadedFormData(
        templateDocument: template.document,
        instanceDocument: instanceJson,
      );
    }

    return LoadedFormData.failed();
  }

  Future<void> _saveTemplate(
    BuildContext context,
    String templateId,
    FormTemplate template,
  ) async {
    final userPreferencesRepository =
        Provider.of<IUserPreferencesRepository>(context, listen: false);

    /// check if we have the template added previously.
    var savedTemplates =
        await Provider.of<IUserPreferencesRepository>(context, listen: false)
                .getTemplateDocument() ??
            [];
    if (savedTemplates.isEmpty) {
      savedTemplates.add(
        JsonTemplateDocument(
          templateId: templateId,
          document: template.document!,
        ),
      );
      await userPreferencesRepository.saveTemplateDocument(savedTemplates);
    }
    if (savedTemplates.isNotEmpty &&
        !savedTemplates.any((x) => x.templateId == templateId)) {
      /// add only if the template is not saved previously.
      savedTemplates.add(
        JsonTemplateDocument(
          templateId: templateId,
          document: template.document!,
        ),
      );
      await userPreferencesRepository.saveTemplateDocument(savedTemplates);
    }
    savedTemplates =
        await userPreferencesRepository.getTemplateDocument() ?? [];
  }

  Widget _loadingView(bool showError) => SafeArea(
        child: Center(
          child: showError
              ? const Text('Failed to load. Go back and try again')
              : const CircularProgressIndicator(),
        ),
      );

  Future<conn.ConnectivityResult> connectivityStatus(BuildContext context) {
    final connectivityService =
        Provider.of<IConnectivityService>(context, listen: false);
    return connectivityService.checkConnectivity();
  }
}

class LoadedFormData {
  LoadedFormData({this.templateDocument, this.instanceDocument});
  LoadedFormData.failed() : success = false;
  String? templateDocument;
  String? instanceDocument;
  bool success = true;
}
